package rentalserviceapi.service;

import rentalserviceapi.entity.Cart;
import rentalserviceapi.entity.ProductInOrder;
import rentalserviceapi.entity.User;

import java.util.Collection;

public interface CartService {
    Cart getCart(User user);

    void mergeLocalCart(Collection<ProductInOrder> productInOrders, User user);

    void delete(String itemId, User user);

    void checkout(User user);
}
