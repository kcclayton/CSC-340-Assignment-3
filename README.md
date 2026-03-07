# Disney Princess Character API - Spring Boot

A comprehensive RESTful API for managing Disney Princess character records, built with Spring Boot, Spring Data JPA, and PostgreSQL.

## Table of Contents

- [What is This Project?](#what-is-this-project)
- [Technology Stack](#technology-stack)
- [Installation & Setup](#installation--setup)
- [Running the Application](#running-the-application)
- [Project Architecture](#project-architecture)
- [API Endpoints](#api-endpoints)
- [Database Schema](#database-schema)
- [Demo Video](#demo-video)

---

## What is This Project?

This is a **CRUD API** (Create, Read, Update, Delete) that manages Disney Princess character records. It demonstrates:

- How to build a REST API with Spring Boot
- How to connect to a PostgreSQL database using JPA
- How to structure a Spring Boot application with layers (Controller, Service, Repository)
- How to handle HTTP requests and responses
- How to perform database operations

**CRUD** stands for:

- **C**reate - Add new character records
- **R**ead - Retrieve character records
- **U**pdate - Modify existing character records
- **D**elete - Remove character records

---

## Technology Stack

| Technology          | Version | Purpose                                |
| ------------------- | ------- | -------------------------------------- |
| **Java**            | 25      | Programming language                   |
| **Spring Boot**     | 4.0.3   | Framework for building the application |
| **Spring Data JPA** | Latest  | ORM layer for database access          |
| **Hibernate**       | Latest  | JPA implementation                     |
| **PostgreSQL**      | Latest  | Relational database                    |
| **Maven**           | Latest  | Build and dependency management        |

---

## Installation & Setup

### Prerequisites

Before you begin, ensure you have installed:

1. **Java 25 JDK**
   - Download from [Oracle Java](https://www.oracle.com/java/technologies/downloads/) or use a package manager
   - Verify installation: `java -version`

2. **Neon.tech PostgreSQL Database** (Cloud-based, Serverless)
   - This project uses [Neon.tech](https://neon.tech), a serverless PostgreSQL database in the cloud
   - You do not need to install PostgreSQL locally
   - Sign up for a free account at [Neon.tech](https://neon.tech)

3. **Git**
   - Download from [Git Official Site](https://git-scm.com/)

### Setup Instructions

1. **Clone the Repository**

   ```bash
   git clone https://github.com/kcclayton/CSC-340-Assignment-3.git
   cd CSC-340-Assignment-3
   ```

2. **Install Dependencies**

   The Maven Wrapper will automatically download dependencies from `pom.xml`:

   **On Windows**:
   ```cmd
   mvnw.cmd clean install
   ```

   **On Mac/Linux**:
   ```bash
   ./mvnw clean install
   ```

3. **Database Configuration (Neon.tech)**

   #### Step 1: Get Your Neon.tech Connection String

   1. Navigate to [Neon.tech](https://neon.tech) and sign in
   2. In your project dashboard, find your connection string
   3. Select **Java** from the language dropdown
   4. It will look like: `jdbc:postgresql://host:5432/dbname?user=username&password=password&sslmode=require`

   #### Step 2: Stop Tracking `application.properties` Locally

   To prevent accidentally committing your database credentials to Git:

   ```bash
   git update-index --skip-worktree src/main/resources/application.properties
   ```

   #### Step 3: Update Your Connection String

   Edit `src/main/resources/application.properties`:

   ```properties
   spring.datasource.url=jdbc:postgresql://host:5432/dbname?user=username&password=password&sslmode=require
   spring.datasource.username=your_neon_username
   spring.datasource.password=your_neon_password
   spring.jpa.hibernate.ddl-auto=update

   #Log out sql queries
   logging.level.org.hibernate.SQL=DEBUG
   logging.level.org.hibernate.type.descriptor.sql.BasicBinder=TRACE
   logging.level.org.hibernate.orm.jdbc.bind=TRACE
   ```

---

## Running the Application

### Using Maven Wrapper

**On Windows**:
```cmd
mvnw.cmd spring-boot:run
```

**On Mac/Linux**:
```bash
./mvnw spring-boot:run
```

The application will start on **http://localhost:8080**

You should see output like:
```
Tomcat started on port 8080
Started CharacterapiApplication in X seconds
```

### Using VS Code

1. Open the project folder in VS Code
2. Navigate to `src > main > java > com > kcclayton > characterapi > CharacterapiApplication.java`
3. Click the **Run** button above the main method, or right-click and select **Run Java**

### Stopping the Application

Press `Ctrl+C` in your terminal, or click the **Stop** button in VS Code.

---

## Project Architecture

### Folder Structure

```
src/main/java/com/kcclayton/characterapi/
├── CharacterApiApplication.java     # Entry point of the application
├── CharacterController.java         # Handles HTTP requests
├── CharacterService.java            # Business logic layer
├── CharacterRepository.java         # Database access layer
└── Character.java                   # Entity/Model class

src/main/resources/
└── application.properties           # Configuration file
```

### Layered Architecture

```
HTTP Client (REST Client, Browser)
            |
    Controller Layer
   (CharacterController)
  - Handles HTTP requests/responses
  - Maps URLs to methods (endpoints)
            |
     Service Layer
   (CharacterService)
  - Contains business logic
  - Processes data from repositories
            |
   Repository Layer
  (CharacterRepository)
  - Communicates with database
  - Performs CRUD operations
            |
       Database
     (PostgreSQL)
```

---

## API Endpoints

All endpoints use the base URL: `http://localhost:8080/characters`

---

### 1. Get All Characters

```http
GET /characters
```

**Description**: Retrieve a list of all Disney Princess characters in the database.

**Parameters**: None

**Response**:
- **Status Code**: `200 OK`
- **Body**: Array of Character objects

#### Example Response (Status: 200 OK)

```json
[
  {
    "name": "Moana",
    "description": "Moana is a strong-willed, independent wayfinder. She has great pride in who she is 
                    and where she comes from, and doesn’t back away from new challenges.",
    "movie": "Moana",
    "year": 2016,
    "characterId": 1
  },
  {
    "name": "Rapunzel",
    "description": "Despite not knowing the world beyond her tower, Rapunzel finds the courage to push 
                    herself forward and discover new friends, find her true family and pursue her dreams.",
    "movie": "Rapunzel",
    "year": 2010,
    "characterId": 2
  }
]
```

---

### 2. Get Character by ID

```http
GET /characters/{id}
```

**Description**: Retrieve a single character by their ID.

**Path Parameters**:
- `id` (Long, required): The unique identifier of the character

**Response**:
- **Status Code**: `200 OK` (if found) or `404 Not Found` (if not found)
- **Body**: Character object

#### Example Request

```
GET /characters/1
```

#### Example Response (Status: 200 OK)

```json
{
  "name": "Tiana",
  "description": "A visionary who dreamt—with her father—of sharing the joys of good food with others
                  Tiana is passionately focused on achieving her goal of opening her restaurant.",
  "movie": "The Princess and the Frog",
  "year": 2009,
  "characterId": 3
}
```

---

### 3. Add a New Character

```http
POST /characters
```

**Description**: Add a new Disney Princess character to the database.

**Request Body**: Character object with the following fields:
- `name` (String, required): Character's name
- `description` (String, required): Character's description
- `movie` (String): The movie the character is from
- `year` (int): The year the movie was released

**Note**: Do NOT include `characterId` — it is auto-generated.

**Response**:
- **Status Code**: `200 OK`
- **Body**: Created Character object with assigned `characterId`

#### Example Request Body

```json
{
  "name": "Ariel",
  "description": "Driven by her independent spirit and curiosity, Ariel is always looking to learn 
                  about the treasures she finds and the people around her.",
  "movie": "The Little Mermaid",
  "year": 1989
}
```

#### Example Response (Status: 200 OK)

```json
{
  "name": "Ariel",
  "description": "Driven by her independent spirit and curiosity, Ariel is always looking to learn 
                  about the treasures she finds and the people around her.",
  "movie": "The Little Mermaid",
  "year": 1989,
  "characterId": 4
}
```

---

### 4. Update an Existing Character

```http
PUT /characters/{id}
```

**Description**: Update an existing character's information.

**Path Parameters**:
- `id` (Long, required): The ID of the character to update

**Request Body**: Character object with fields to update. Do NOT include `characterId` in the body — it is taken from the URL.

**Response**:
- **Status Code**: `200 OK`
- **Body**: Updated Character object

#### Example Request

```
PUT /characters/3
```

#### Example Request Body

```json
{
  "name": "Cinderella",
  "description": "Cinderella, updated description",
  "movie": "Cinderella",
  "year": 1950
}
```

#### Example Response (Status: 200 OK)

```json
{
  "name": "Cinderella",
  "description": "Cinderella, updated description",
  "movie": "Cinderella",
  "year": 1950,
  "characterId": 5
}
```

---

### 5. Delete a Character

```http
DELETE /characters/{id}
```

**Description**: Delete an existing character record from the database.

**Path Parameters**:
- `id` (Long, required): The ID of the character to delete

**Response**:
- **Status Code**: `200 OK`
- **Body**: Confirmation message string

#### Example Request

```
DELETE /characters/1
```

#### Example Response

```
Character with ID 1 has been deleted.
```

---

### 6. Get Characters by year

```http
GET /characters/category/{year}
```

**Description**: Retrieve all characters from movies released in a specific year.

**Path Parameters**:
- `year` (String, required): The year to filter by

**Response**:
- **Status Code**: `200 OK`
- **Body**: Array of Character objects from that year

#### Example Request

```
GET /characters/category/2016
```

#### Example Response (Status: 200 OK)

```json
[
  {
    "name": "Mulan",
    "description": "Mulan is clever and down-to-earth, and with the help of her new friends, proves 
                    her worth to her family and country by becoming a legendary warrior and savior of China.",
    "movie": "Mulan",
    "year": 1998,
    "characterId": 6,
  }
]
```

---

### 7. Search Characters by Name

```http
GET /characters/search?name={substring}
```

**Description**: Search for characters whose name contains the given substring. Case-insensitive.

**Query Parameters**:
- `name` (String, required): The name or partial name to search for

**Response**:
- **Status Code**: `200 OK`
- **Body**: Array of matching Character objects

#### Example Request

```
GET /characters/search?name=be
```

#### Example Response (Status: 200 OK)

```json
[
  {
    "name": "Belle",
    "description": "Belle is imaginative and smart, and comfortable being authentically herself. 
                    She adores a good book, because different stories bring her to new places, 
                    introduce her to new people, and allow her to see new perspectives.",
    "movie": "Beauty and the Beast",
    "year": 1991,
    "characterId": 7,
  }
]
```

---

## Database Schema

### CHARACTERS Table

| Column        | Type         | Constraints | Description                         |
| ------------- | ------------ | ----------- | ----------------------------------- |
| `character_id`| SERIAL       | PRIMARY KEY | Auto-incrementing unique identifier |
| `name`        | VARCHAR(255) | NOT NULL    | Character's name                    |
| `description` | VARCHAR(255) | NOT NULL    | Character's description             |
| `movie`       | VARCHAR(255) |             | The movie the character is from     |
| `year`        | INTEGER      |             | Year the movie was released         |

**Note**: This schema is automatically created by Hibernate based on the entity class when `spring.jpa.hibernate.ddl-auto=update` is set in `application.properties`.

---

## Demo Video

[Watch the demo here](https://uncg-my.sharepoint.com/:v:/g/personal/kcclayton_uncg_edu/IQD-ZR0OvDxAQ7smkmk6yFNGARWuzIZ8XX6HbZQMGjeywxg?nav=eyJyZWZlcnJhbEluZm8iOnsicmVmZXJyYWxBcHAiOiJPbmVEcml2ZUZvckJ1c2luZXNzIiwicmVmZXJyYWxBcHBQbGF0Zm9ybSI6IldlYiIsInJlZmVycmFsTW9kZSI6InZpZXciLCJyZWZlcnJhbFZpZXciOiJNeUZpbGVzTGlua0NvcHkifX0&e=w149Cu)