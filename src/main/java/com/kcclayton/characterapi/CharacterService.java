package com.kcclayton.characterapi;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.List;
import java.util.Optional;

@Service
public class CharacterService {
    
    @Autowired
    private CharacterRepository characterRepository;

    // Get all characters
    public List<Character> getAllCharacters() {

        return characterRepository.findAll();

    }

    // Get by ID
    public Optional<Character> getCharacterById(Long id) {

        return characterRepository.findById(id);
        
    }

    // Add new character
    public Character addCharacter(Character character) {

        return characterRepository.save(character);

    }

    // Update existing character
    public Character updateCharacter(Long id, Character updatedCharacter) {

        updatedCharacter.setCharacterId(id);
        return characterRepository.save(updatedCharacter);

    }

    // Delete a character
    public void deleteCharacter(Long id) {

        characterRepository.deleteById(id);

    }

    // Get by year
    public List<Character> getByYear(double year) {

        return characterRepository.findByYear(year);

    }

    // Search by name substring
    public List<Character> searchByName(String name) {

        return characterRepository.findByNameContainingIgnoreCase(name);

    }

}
