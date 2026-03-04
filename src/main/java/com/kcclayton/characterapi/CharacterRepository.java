package com.kcclayton.characterapi;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import java.util.List;

@Repository
public interface CharacterRepository extends JpaRepository<Character, Long> {

    // Query 1
    List<Character> findByNameContainingIgnoreCase(String name);

    // Query 2
    List<Character> findByYear(double year);
    
}
