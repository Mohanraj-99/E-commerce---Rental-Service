import { Component, OnInit } from '@angular/core';
import {ProductInfo} from "../../models/productInfo";
import {JwtResponse} from "../../response/JwtResponse";
import { ProductService } from 'src/app/services/product.service';
import {ActivatedRoute, Router} from "@angular/router";
import { UserService } from 'src/app/services/user.service';

@Component({
  selector: 'app-product-new',
  templateUrl: './product-new.component.html',
  styleUrls: ['./product-new.component.css']
})
export class ProductNewComponent implements OnInit {

  product = new ProductInfo();
  currentUser: JwtResponse;

  constructor(private productService: ProductService,
    private userService : UserService,
    private route: ActivatedRoute,
    private router: Router) { }

  ngOnInit() {
  }

  add() {
    this.currentUser = this.userService.currentUserValue;
    this.product.productOwner = this.currentUser.name;
    this.productService.create(this.product).subscribe(prod => {
            if (!prod) throw new Error;
            this.router.navigate(['/seller/product']);
        },
        e => {
        });
}

onSubmit() {
  this.add();
}

ngAfterContentChecked(): void {
  console.log(this.product);
}

}
