package rentalserviceapi.repository;


import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import rentalserviceapi.entity.User;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.Collection;

public interface UserRepository extends JpaRepository<User, String> {
    User findByEmail(String email);
    Collection<User> findAllByRole(String role);
    Page<User> findAllByOrderById(Pageable pageable);
}
