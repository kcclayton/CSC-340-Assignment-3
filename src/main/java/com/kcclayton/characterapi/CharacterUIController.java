package com.kcclayton.characterapi;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.ui.Model;

@Controller
@RequestMapping("/ui/characters") // can't conflict with API
public class CharacterUIController {

    @Autowired
    private CharacterService characterService;
    
    @GetMapping("/about-character") 
    public String about() {

        return "about.ftlh";

    }

    @GetMapping("/all-characters")
    public String getAllCharacters(Model model) {
        List<Character> characters = characterService.getAllCharacters();
        model.addAttribute("characters", characters);
        return "all-characters.ftlh";
    }

    @GetMapping("/{characterId}")
    public String getCharacterById(@PathVariable Long characterId, Model model) {

        Character character = characterService.getCharacterById(characterId).orElse(null);
        model.addAttribute("character", character);
        
        if (character == null) {
            return "character-details";
        } else {
            return "about";
        }

    }

}