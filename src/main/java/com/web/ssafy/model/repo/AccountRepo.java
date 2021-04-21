package com.web.ssafy.model.repo;

import java.util.List;

import com.web.ssafy.model.dto.Account;
import org.springframework.data.jpa.repository.JpaRepository;

public interface AccountRepo extends JpaRepository<Account, Long> {


    Account findByEmail(String email);

    void deleteByEmail(String email);

    List<Account> findByPlaceId(int place);

    List<Account> findAllByOrderByAuthorityAsc();

}
