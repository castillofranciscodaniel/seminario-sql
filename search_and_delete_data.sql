-- Select all Trainers
SELECT * FROM Trainers;

-- Select all Subscribers
SELECT * FROM Subscribers;

-- Select all Routines
SELECT * FROM Routines;

-- Select all Exercises
SELECT * FROM Exercises;

-- Select all Configured Exercises
SELECT * FROM ConfiguredExercises;

-- Select all Subscriptions
SELECT * FROM Subscriptions;

-- Select all Evaluations
SELECT * FROM Evaluations;

-- Select Trainers by Specialty
SELECT * FROM Trainers WHERE specialty = 'Fitness';

-- Select Subscribers Registered After a Specific Date
SELECT * FROM Subscribers WHERE registrationDate > '2023-01-01';

-- Select Routines of a Specific Trainer
SELECT * FROM Routines WHERE trainer_id = 1; -- Change the id as needed

-- Select Exercises of a Specific Routine
SELECT * FROM ConfiguredExercises WHERE routine_id = 1; -- Change the id as needed

-- Select Active Subscriptions
SELECT * FROM Subscriptions WHERE status = 'Active';

-- Select Evaluations of a Specific Routine
SELECT * FROM Evaluations WHERE routine_id = 1; -- Change the id as needed

-- Count Number of Routines by Trainer
SELECT trainer_id, COUNT(*) AS total_routines
FROM Routines
GROUP BY trainer_id;

-- Average Ratings by Routine
SELECT routine_id, AVG(rating) AS average_rating
FROM Evaluations
GROUP BY routine_id;

-- Select Routines, Exercises, and Trainers for a Subscriber
SELECT
    s.name AS subscriber_name,
    r.name AS routine_name,
    e.name AS exercise_name,
    t.name AS trainer_name
FROM
    Subscribers s
JOIN
    Subscriptions sub ON s.id = sub.user_id
JOIN
    Routines r ON sub.routine_id = r.id
JOIN
    ConfiguredExercises ce ON r.id = ce.routine_id
JOIN
    Exercises e ON ce.exercise_id = e.id
JOIN
    Trainers t ON r.trainer_id = t.id

DELETE FROM Subscriptions WHERE id = 1; -- Cambia el id según la suscripción que desees eliminar

