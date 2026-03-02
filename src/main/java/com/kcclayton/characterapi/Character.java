package com.kcclayton.characterapi;

import jakarta.persistence.*;

@Entity 
@Table(name="characters")
public class Character {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long characterId;

    @Column(nullable = false)
    private String name;

    @Column(nullable = false)
    private String description;

    private String movie;

    private double year;

    // CONSTRUCTORS
    public Character() {}

    public Character(String name, String description, String movie, double year) {

        this.name = name;
        this.description = description;
        this.movie = movie;
        this.year = year;

    }

    // GETTERS
    public Long getCharacterId() { return characterId; }
    public String getName() { return name; }
    public String getDescription() { return description; }
    public String getMovie() { return movie; }
    public double getYear() { return year; }

    // SETTERS
    public void setCharacterId(Long characterId) { this.characterId = characterId; }
    public void setName(String name) { this.name = name; }
    public void setDescription(String description) { this.description = description; }
    public void setMovie(String movie) { this.movie = movie; }
    public void setYear(double year) { this.year = year; }
    
}
