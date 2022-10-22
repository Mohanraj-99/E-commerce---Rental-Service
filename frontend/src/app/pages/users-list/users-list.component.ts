import { Component, OnInit } from '@angular/core';
import {JwtResponse} from "../../response/JwtResponse";
import { UserService } from 'src/app/services/user.service';
import {Subscription} from "rxjs";
import {ActivatedRoute} from "@angular/router";
import {ProductStatus} from "../../enum/ProductStatus";
import {User} from "../../models/User";
import {Role} from "../../enum/Role";

@Component({
  selector: 'app-users-list',
  templateUrl: './users-list.component.html',
  styleUrls: ['./users-list.component.css']
})
export class UsersListComponent implements OnInit {

  constructor(private userService : UserService,
              private route: ActivatedRoute) { }

    Role = Role;
    currentUser: JwtResponse;
    page: any;
    ProductStatus = ProductStatus;
    private querySub: Subscription;
  
  ngOnInit() {
    
    this.currentUser = this.userService.currentUserValue;
    this.querySub = this.route.queryParams.subscribe(() => {
        this.update();
    });
}

ngOnDestroy(): void {
    this.querySub.unsubscribe();
}

update() {
    if (this.route.snapshot.queryParamMap.get('page')) {
        const currentPage = +this.route.snapshot.queryParamMap.get('page');
        const size = +this.route.snapshot.queryParamMap.get('size');
        this.getUsers(currentPage, size);
    } else {
        this.getUsers();
    }
}

// here
getUsers(page: number = 1, size: number = 5) {
    this.userService.getAllInPage(+page, +size)
        .subscribe(page => {
            this.page = page;
        });

}

remove(userInfos: User[], userInfo) {
    console.log(userInfo);
    this.userService.delete(userInfo).subscribe(_ => {
            userInfos = userInfos.filter(e => e.email != userInfo);
        },
        err => {
        });
}

changeRole(userInfo: string) {
  console.log(userInfo);
  this.userService.changeRole(userInfo).subscribe(_ => {
},
err => {
});
}


}
