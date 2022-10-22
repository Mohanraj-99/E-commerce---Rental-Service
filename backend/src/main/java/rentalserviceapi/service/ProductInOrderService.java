package rentalserviceapi.service;

import rentalserviceapi.entity.ProductInOrder;
import rentalserviceapi.entity.User;

public interface ProductInOrderService {
    void update(String itemId, Integer quantity, User user);
    ProductInOrder findOne(String itemId, User user);
}
