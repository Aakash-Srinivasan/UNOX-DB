CREATE DATABASE Unox;

USE Unox;

CREATE TABLE Movie (
    Title VARCHAR(255) PRIMARY KEY,
    Genre VARCHAR(255),
    Rating VARCHAR(10),
    Status VARCHAR(50),
    PosterImage VARCHAR(255),
    StarCast VARCHAR(500)
);

CREATE TABLE Screen (
    ScreenID INT PRIMARY KEY,
    Type VARCHAR(20),
    SeatingCapacity INT
);

CREATE TABLE Shows (
    ShowID INT PRIMARY KEY,
    MovieTitle VARCHAR(255),
    ScreenID INT,
    Time TIME,
    Date DATE,
    FOREIGN KEY (MovieTitle) REFERENCES Movie(Title),
    FOREIGN KEY (ScreenID) REFERENCES Screen(ScreenID)
);

CREATE TABLE User (
    UserID INT PRIMARY KEY,
    Name VARCHAR(255),
    PhoneNumber VARCHAR(10)
);

CREATE TABLE Booking (
    BookingID INT PRIMARY KEY,
    UserID INT,
    ShowID INT,
    NumberOfTickets INT,
    TotalCost DECIMAL(10, 2),
    Date DATE,
    FOREIGN KEY (UserID) REFERENCES User(UserID),
    FOREIGN KEY (ShowID) REFERENCES Shows(ShowID)
);
CREATE TABLE Reviewer (
    ReviewerID INT PRIMARY KEY,
    Name VARCHAR(255)
);
CREATE TABLE Review (
    ReviewID INT PRIMARY KEY,
    MovieTitle VARCHAR(255),
    Content TEXT,
    ReviewerID INT,
    DateTime DATETIME,
    FOREIGN KEY (MovieTitle) REFERENCES Movie(Title),
    FOREIGN KEY (ReviewerID) REFERENCES Reviewer(ReviewerID)
);


