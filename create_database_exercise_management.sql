-- Drop the database if it exists
DROP DATABASE IF EXISTS exercise_management;

-- Create the database
CREATE DATABASE exercise_management;
USE exercise_management;

-- Create Trainers table
CREATE TABLE Trainers (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL,
    specialty VARCHAR(100),
    biography TEXT
);

-- Create Subscribers table
CREATE TABLE Subscribers (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL,
    registrationDate DATE NOT NULL
);

-- Create Routines table
CREATE TABLE Routines (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    description TEXT,
    duration INT NOT NULL,  -- Duration in minutes
    difficultyLevel VARCHAR(50),
    trainingType VARCHAR(50),
    trainer_id INT,
    FOREIGN KEY (trainer_id) REFERENCES Trainers(id)
);

-- Create Exercises table
CREATE TABLE Exercises (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    description TEXT,
    duration INT NOT NULL,  -- Duration in minutes
    type VARCHAR(50)
);

-- Create Configured Exercises table
CREATE TABLE ConfiguredExercises (
    orderIndex INT NOT NULL,
    repetitions INT NOT NULL,
    series INT NOT NULL,
    exercise_id INT,
    routine_id INT,
    PRIMARY KEY (orderIndex, routine_id, exercise_id),
    FOREIGN KEY (exercise_id) REFERENCES Exercises(id),
    FOREIGN KEY (routine_id) REFERENCES Routines(id)
);

-- Create Subscriptions table
CREATE TABLE Subscriptions (
    id INT AUTO_INCREMENT PRIMARY KEY,
    startDate DATE NOT NULL,
    endDate DATE NOT NULL,
    status VARCHAR(50),
    user_id INT,
    routine_id INT,
    FOREIGN KEY (user_id) REFERENCES Subscribers(id),
    FOREIGN KEY (routine_id) REFERENCES Routines(id)
);

-- Create Evaluations table
CREATE TABLE Evaluations (
    id INT AUTO_INCREMENT PRIMARY KEY,
    rating INT NOT NULL CHECK (rating BETWEEN 1 AND 5),  -- Assuming rating is from 1 to 5
    comment TEXT,
    date DATE NOT NULL,
    subscriber_id INT,
    routine_id INT,
    FOREIGN KEY (subscriber_id) REFERENCES Subscribers(id),
    FOREIGN KEY (routine_id) REFERENCES Routines(id)
);
