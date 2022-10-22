import {Component, OnDestroy, OnInit} from '@angular/core';
import {ProductService} from "../../services/product.service";
import {JwtResponse} from "../../response/JwtResponse";
import {Subscription} from "rxjs";
import {ActivatedRoute} from "@angular/router";
import {CategoryType} from "../../enum/CategoryType";
import {ProductStatus} from "../../enum/ProductStatus";
import {ProductInfo} from "../../models/productInfo";
import {Role} from "../../enum/Role";
import { UserService } from 'src/app/services/user.service';

@Component({
    selector: 'app-product.list',
    templateUrl: './product.list.component.html',
    styleUrls: ['./product.list.component.css']
})
export class ProductListComponent implements OnInit, OnDestroy {

    constructor(private userService : UserService,
                private productService: ProductService,
                private route: ActivatedRoute) {
    }

    Role = Role;
    currentUser: JwtResponse;
    page: any;
    CategoryType = CategoryType;
    ProductStatus = ProductStatus;
    private querySub: Subscription;

    ngOnInit() {
        this.currentUser = this.userService.currentUserValue;
        this.querySub = this.route.queryParams.subscribe(() => {
            if(this.currentUser.role == 'ROLE_MANAGER')
            this.updates();
            else
            this.update(this.currentUser.name);
        });
    }

    ngOnDestroy(): void {
        this.querySub.unsubscribe();
    }

    update(name : string) {
        if (this.route.snapshot.queryParamMap.get('page')) {
            const currentPage = +this.route.snapshot.queryParamMap.get('page');
            const size = +this.route.snapshot.queryParamMap.get('size');
            this.getProd(currentPage, size ,name);
        } else {
            this.getProd(1 , 5 ,name);
        }
    }

    updates() {
        if (this.route.snapshot.queryParamMap.get('page')) {
            const currentPage = +this.route.snapshot.queryParamMap.get('page');
            const size = +this.route.snapshot.queryParamMap.get('size');
            this.getProds(currentPage, size);
        } else {
            this.getProds(1 , 5 );
        }
    }

    getProd(page: number, size: number, name:string) {
        this.productService.getAllInPage(+page, +size , name)
            .subscribe(page => {
                this.page = page;
            });

    }

    getProds(page: number, size: number) {
        this.productService.getAllInPages(+page, +size)
            .subscribe(page => {
                this.page = page;
            });

    }

    remove(productInfos: ProductInfo[], productInfo) {
        console.log(productInfo);
        this.productService.delete(productInfo).subscribe(_ => {
                productInfos = productInfos.filter(e => e.productId != productInfo);
            },
            err => {
            });
    }


}
