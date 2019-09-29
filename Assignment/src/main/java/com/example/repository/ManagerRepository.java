package com.example.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.example.pojo.Manager;

public interface ManagerRepository extends JpaRepository<Manager, Integer> {
@Query("from Manager m where m.email=?1 and m.password=?2")
public Manager managerLogin(String email,String password);

}
