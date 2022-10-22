import {Injectable} from '@angular/core';
import {HttpClient} from '@angular/common/http';
import {apiUrl} from '../../environments/environment';
import {BehaviorSubject, Observable, of, Subject} from 'rxjs';
import {catchError, tap} from 'rxjs/operators';
import {JwtResponse} from '../response/JwtResponse';
import {CookieService} from 'ngx-cookie-service';
import {User} from "../models/User";

@Injectable({
    providedIn: 'root'
})
export class UserService {

    private currentUserSubject: BehaviorSubject<JwtResponse>;
    public currentUser: Observable<JwtResponse>;
    public nameTerms = new Subject<string>();
    public name$ = this.nameTerms.asObservable();

    constructor(private http: HttpClient,
                private cookieService: CookieService) {
        const memo = localStorage.getItem('currentUser');
        this.currentUserSubject = new BehaviorSubject<JwtResponse>(JSON.parse(memo));
        this.currentUser = this.currentUserSubject.asObservable();
        cookieService.set('currentUser', memo);
    }

    get currentUserValue() {
        return this.currentUserSubject.value;
    }


    login(loginForm): Observable<JwtResponse> {
        const url = `${apiUrl}/login`;
        return this.http.post<JwtResponse>(url, loginForm).pipe(
            tap(user => {
                if (user && user.token) {
                    this.cookieService.set('currentUser', JSON.stringify(user));
                    if (loginForm.remembered) {
                        localStorage.setItem('currentUser', JSON.stringify(user));
                    }
                    console.log((user.name));
                    this.nameTerms.next(user.name);
                    this.currentUserSubject.next(user);
                    return user;
                }
            }),
            catchError(this.handleError('Login Failed', null))
        );
    }

    logout() {
        this.currentUserSubject.next(null);
        localStorage.removeItem('currentUser');
        this.cookieService.delete('currentUser');
    }

    signUp(user: User): Observable<User> {
        const url = `${apiUrl}/register`;
        return this.http.post<User>(url, user);
    }

    update(user: User): Observable<User> {
        const url = `${apiUrl}/profile`;
        return this.http.put<User>(url, user);    }

    get(email: string): Observable<User> {
        const url = `${apiUrl}/profile/${email}`;
        return this.http.get<User>(url);
    }

    getAllInPage(page: number, size: number): Observable<any> {
        const url = `${apiUrl}/users?page=${page}&size=${size}`;
        return this.http.get(url)
            .pipe(
                // tap(_ => console.log(_)),
            )
    }

    delete(userInfo: User): Observable<any> {
        const url = `${apiUrl}/${userInfo}/delete`;
        return this.http.delete(url);
    }

    changeRole(userInfo:string): Observable<User>{
        userInfo = userInfo.split("@")[0];
        const url = `${apiUrl}/${userInfo}/update`;
        console.log(url);
        return this.http.get<User>(url);
    }


    /**
     * Handle Http operation that failed.
     * Let the app continue.
     * @param operation - name of the operation that failed
     * @param result - optional value to return as the observable result
     */
    private handleError<T>(operation = 'operation', result?: T) {
        return (error: any): Observable<T> => {

            console.log(error); // log to console instead

            // Let the app keep running by returning an empty result.
            return of(result as T);
        };
    }
}
