package rentalserviceapi.service;


import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import rentalserviceapi.entity.User;

import java.util.Collection;

public interface UserService {
    User findOne(String email);

    Page<User> findAll(Pageable pageable);

    Collection<User> findByRole(String role);

    User save(User user);

    User update(User user);

    void delete(String email);
}
