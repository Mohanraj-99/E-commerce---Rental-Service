import {ProductInfo} from "./productInfo";

export class ProductInOrder {
    productId: string;
    productName: string;
    productPrice: number;
    productStock: number;
    productDescription: string;
    productOwner: string;
    productIcon: string;
    productStatus: number;
    categoryType: number;
    count: number;
    dealerContactNo: string;
    productLocation: string;

    constructor(productInfo:ProductInfo, quantity = 1){
        this.productId = productInfo.productId;
        this.productName = productInfo.productName;
        this.productPrice = productInfo.productPrice;
        this.productStock = productInfo.productStock;
        this.productStatus = productInfo.productStatus;
        this.productDescription = productInfo.productDescription;;
        this.productOwner = productInfo.productOwner;
        this.productIcon = productInfo.productIcon;
        this.categoryType = productInfo.categoryType;
        this.dealerContactNo = productInfo.dealerContactNo;
        this.productLocation = productInfo.productLocation;
        this.count = quantity;
    }
}
