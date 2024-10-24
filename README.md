## Karate Tutorial Project
This document outlines the process followed to work with Karate.

## Table of Contents
1. [Installation](#Installation)
2. [Test](#Test)
3. [Usage](#Usage)


## Installation
For this project, you'll need to install the following plugins in Visual Studio Code (VSCode):

Karate (basic Karate support)
Karate Syntax (syntax highlighting for Karate)
Karate Snippets (code snippets for Karate)
Karate Formatter (automatic formatting for Karate scripts)

## Tests
This project uses a mock API: https://jsonplaceholder.typicode.com/, which allows us to make reservations. The full API documentation is available here.

The following tests are included in the project:
- Create a new user
- Create a new comment
- Retrieve comments for user
- Request list of comments
- Retrieve a comment

## Usage
The data for the test execution is stored in the data.feature file, which can be modified if needed.

To run the tests, ensure you have Maven installed. Open a terminal in the project's root folder and run the following commands:

- mvn install
- mvn test


You can access the reports in the karate-report folder.
