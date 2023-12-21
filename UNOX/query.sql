-- Insert sample data into Movie table
INSERT INTO Movie (Title, Genre, Rating, Status, PosterImage, StarCast)
VALUES
    ('MILLER', 'Action', 'PG-13', 'Released', 'poster1.jpg', 'dhanush, priyankamohan'),
    ('DARLING', 'Comedy', 'PG', 'Upcoming', 'poster2.jpg', 'gv, niki');

-- Insert sample data into Screen table
INSERT INTO Screen (ScreenID, Type, SeatingCapacity)
VALUES
    (1, 'Gold', 150),
    (2, 'Silver', 200),
    (3, 'Iron', 250),
    (4, 'Iron', 250);

-- Insert sample data into Show table
INSERT INTO Shows (ShowID, MovieTitle, ScreenID, Time, Date)
VALUES
    (1, 'MILLER', 1, '10:00:00', '2023-08-31'),
    (2, 'MILLER', 2, '13:30:00', '2023-08-31'),
    (3, 'MILLER', 3, '17:00:00', '2023-08-31'),
    (4, 'MILLER', 4, '20:30:00', '2023-08-31'),
    (5, 'DARLING', 1, '10:00:00', '2023-08-31'),
    (6, 'DARLING', 2, '13:30:00', '2023-08-31');

-- Insert sample data into User table
INSERT INTO User (UserID, Name, PhoneNumber)
VALUES
    (1, 'Aajju', '9994714723'),
    (2, 'BUJU', '9361192944');

-- Insert sample data into Booking table
INSERT INTO Booking (BookingID, UserID, ShowID, NumberOfTickets, TotalCost, Date)
VALUES
    (1, 1, 1, 2, 1000.00, '2023-08-31'),
    (2, 1, 2, 3, 900.00, '2023-08-31'),
    (3, 2, 3, 1, 200.00, '2023-08-31');

-- Insert sample data into Reviewer table
INSERT INTO Reviewer (ReviewerID, Name)
VALUES
    (1, 'HARSHA'),
    (2, 'VIJAY VARMA');

-- Insert sample data into Review table
INSERT INTO Review (ReviewID,MovieTitle, Content, ReviewerID, DateTime)
VALUES
    (1, 'MILLER', 'Great movie!', 1, '2023-08-31 15:00:00'),
    (2,'DARLING', 'Hilarious comedy!', 2, '2023-08-31 18:30:00');
    
