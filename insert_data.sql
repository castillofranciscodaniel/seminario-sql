-- Insert data into Trainers
INSERT INTO Trainers (name, email, password, specialty, biography) VALUES
('John Doe', 'john.doe@example.com', 'password123', 'Fitness', 'Certified fitness trainer with 5 years of experience.'),
('Jane Smith', 'jane.smith@example.com', 'password123', 'Yoga', 'Yoga instructor specializing in Hatha and Vinyasa styles.'),
('Mike Johnson', 'mike.johnson@example.com', 'password123', 'Nutrition', 'Nutritionist with a focus on sports nutrition.');

-- Insert data into Subscribers
INSERT INTO Subscribers (name, email, password, registrationDate) VALUES
('Alice Brown', 'alice.brown@example.com', 'password123', '2023-01-15'),
('Bob White', 'bob.white@example.com', 'password123', '2023-02-20'),
('Charlie Green', 'charlie.green@example.com', 'password123', '2023-03-05');

-- Insert data into Routines
INSERT INTO Routines (name, description, duration, difficultyLevel, trainingType, trainer_id) VALUES
('Full Body Workout', 'A complete workout routine targeting all major muscle groups.', 60, 'Intermediate', 'Strength', 1),
('Morning Yoga', 'A gentle yoga routine to start the day with energy.', 30, 'Beginner', 'Yoga', 2),
('Nutrition and Fitness', 'A combination of workout and nutrition advice.', 90, 'Advanced', 'Nutrition', 3);

-- Insert data into Exercises
INSERT INTO Exercises (name, description, duration, type) VALUES
('Push-Up', 'A basic strength exercise for the upper body.', 1, 'Strength'),
('Squat', 'A lower body exercise targeting the quadriceps and glutes.', 1, 'Strength'),
('Downward Dog', 'A yoga pose for stretching and relaxation.', 2, 'Yoga'),
('Plank', 'An isometric core strength exercise.', 1, 'Strength'),
('Burpee', 'A full-body exercise combining a squat, push-up, and jump.', 2, 'Cardio');

-- Insert data into Configured Exercises
INSERT INTO ConfiguredExercises (orderIndex, repetitions, series, exercise_id, routine_id) VALUES
(1, 15, 3, 1, 1),
(2, 10, 3, 2, 1),
(3, 5, 3, 4, 1),
(1, 5, 1, 3, 2),
(2, 10, 2, 1, 3),
(3, 10, 2, 5, 3);

-- Insert data into Subscriptions
INSERT INTO Subscriptions (startDate, endDate, status, user_id, routine_id) VALUES
('2023-01-20', '2023-06-20', 'Active', 1, 1),
('2023-02-25', '2023-07-25', 'Active', 2, 2),
('2023-03-10', '2023-08-10', 'Active', 3, 3);

-- Insert data into Evaluations
INSERT INTO Evaluations (rating, comment, date, subscriber_id, routine_id) VALUES
(5, 'Great routine! I feel stronger.', '2023-03-15', 1, 1),
(4, 'Enjoyed the yoga sessions.', '2023-03-20', 2, 2),
(5, 'Very informative, learned a lot about nutrition.', '2023-03-25', 3, 3);
