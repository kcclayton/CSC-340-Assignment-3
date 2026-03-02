package com.kcclayton.characterapi;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import java.util.List;
import java.util.Optional;

@RestController
@RequestMapping("/ characters")
public class CharacterController {

    @Autowired
    private CharacterService characterService;

    // GET all characters
    // localhost:8080/characters
    @GetMapping
    public List<Character> getAllCharacters() {

        return characterService.getAllCharacters();

    }

    // GET character by ID
    // localhost:8080/characters/1
    @GetMapping("/{id}")
    public Optional<Character> getCharacterById(@PathVariable Long id) {

        return characterService.getCharacterById(id);

    }
    
    // POST - add new character
    // localhost:8080/characters
    @PostMapping
    public Character addCharacter(@RequestBody Character character) {

        return characterService.addCharacter(character);

    }

    // PUT - delete a character
    // localhost:8080/characters/1
    @DeleteMapping("/{id}")
    public String deleteCharacter(@PathVariable Long id) {

        characterService.deleteCharacter(id);
        return "Character with ID " + id + " has been deleted.";

    }

    // GET by year
    // localhost:8080/characters/category/year
    @GetMapping("/category/{year}")
    public List<Character> getByYear(@PathVariable double year) {

        return characterService.getByYear(year);

    }

    // GET search by name substring
    // localhost:8080/characters/search?name=moana
    @GetMapping("/search")
    public List<Character> searchByName(@RequestParam String name) {

        return characterService.searchByName(name);

    }

}
