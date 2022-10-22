import {ProductInOrder} from "./ProductInOrder";

export class ProductInfo {
    productId: string;
    productName: string;
    productPrice: number;
    productStock: number;
    productDescription: string;
    productOwner: string;
    productIcon: string;
    productStatus: number; // 0: onsale 1: offsale
    categoryType: number;
    createTime: string;
    updateTime: string;
    dealerContactNo: string;
    productLocation: string;


    constructor(productInOrder?: ProductInOrder) {
        if (productInOrder) {
            this.productId = productInOrder.productId;
            this.productName = productInOrder.productName;
            this.productPrice = productInOrder.productPrice;
            this.productStock = productInOrder.productStock;
            this.productDescription = productInOrder.productDescription;
            this.productIcon = productInOrder.productIcon;
            this.categoryType = productInOrder.categoryType;
            this.productOwner = productInOrder.productOwner;
            this.productStatus = 0;
            this.dealerContactNo = productInOrder.dealerContactNo;
            this.productLocation = productInOrder.productLocation;
        } else {
            this.productId = '';
            this.productName = '';
            this.productPrice = 500;
            this.productStock = 1;
            this.productDescription = '';
            this.productIcon = '';
            this.productOwner = '';
            this.categoryType = 0;
            this.productStatus = 0;
            this.productOwner = '';
            this.dealerContactNo = '';
            this.productLocation = '';
        }
    }
}

