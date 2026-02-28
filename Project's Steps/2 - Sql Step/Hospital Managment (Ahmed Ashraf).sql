-- After Clean The Data of all CSV Files Using Python (Anaconda)
-- I want to apply the files to Tables in a Organized Database.


-- Start of The SQL Step --

-- After Creating The Database using the User Interface
-- Use it for Start Working
Use [Hospital Managment]

-- Create Appointment Table
Create Table Appointment(
Appointment_ID nvarchar(50) PRIMARY KEY,
Patient_ID nvarchar(50) Null, -- FK
Doctor_ID nvarchar(50) Null, --FK
Appointment_Date DATE Null,
Appointment_Time TIME Null,
Reason_For_Visit nvarchar(50) default 'undefined',
Statue nvarchar(50) default 'undefined'
);

-- Create Billing Table
Create Table Billing(
Billing_ID nvarchar(50) PRIMARY KEY,
Patient_ID nvarchar(50) Null, --FK
Treatment_ID nvarchar(50) Null, --FK
Billing_Date DATE Null,
Amount Float default 0.0,
Payment_Method nvarchar(50) default 'undefined',
Payment_Statue nvarchar(50) default 'undefined'
);

-- Create Doctor Table
Create Table Doctor(
Doctor_ID nvarchar(50) PRIMARY KEY,
First_Name nvarchar(50) Null,
Last_Name nvarchar(50) Null,
Specialization nvarchar(50) default 'No Specialization',
Phone_Number nvarchar(50) Null,
Year_Of_Experience int default 0,
Hospital_Branch nvarchar(50) default 'No Brnch Assigned',
Doctor_Email nvarchar(50) Null
);

-- Create Treatment Table
Create Table Treatment(
Treatment_ID nvarchar(50) PRIMARY KEY,
Appointment_ID nvarchar(50) Null,  --FK
Treatment_Type nvarchar(50) Null,
Description nvarchar(50) Null,
Cost Float default 0.0,
Treatment_Date DATE Null
);


-- Create Patient Staging Table
-- I Found that i can Saperate The Insurance into another table
Create Table Stage_Patient(
Patient_ID nvarchar(50) PRIMARY KEY,
First_Name nvarchar(50) Null,
Last_Name nvarchar(50) Null,
Gender nvarchar(20) Null,
Date_Of_Birth Date Null,
Contact_Number nvarchar(50) Null,
Address nvarchar(50) Null,
Registeration_Date Date Null,
Insurance_Provider nvarchar(50) Null,
Insurance_Number nvarchar(50) Null,
Patient_Email nvarchar(50) Null
);

-- Real Patient Table
Create Table Patient(
Patient_ID nvarchar(50) PRIMARY KEY,
Insurance_Number nvarchar(50) Null, -- FK
First_Name nvarchar(50) Null,
Last_Name nvarchar(50) Null,
Gender nvarchar(20) Null,
Date_Of_Birth Date Null,
Contact_Number nvarchar(50) Null,
Address nvarchar(50) Null,
Registeration_Date Date Null,
Patient_Email nvarchar(50) Null
);

-- Insurance Table
Create Table Insurance(
Insurance_Number nvarchar(50) PRIMARY KEY,
Insurance_Provider nvarchar(50) Null,
);

--------------------------------------------------------------------------------------------------------------------------------------
-- The Constraints

-- Appointment Table
Alter Table Appointment
Add Constraint Patient_Appointment Foreign Key (Patient_ID) References Patient (Patient_ID)

Alter Table Appointment
Add Constraint Doctor_Appointment Foreign Key (Doctor_ID) References Doctor (Doctor_ID)
---------------------------------------------------------------
-- Billing Table
Alter Table Billing
Add Constraint Patient_Billing Foreign Key (Patient_ID) References Patient (Patient_ID)

Alter Table Billing
Add Constraint Treatment_Billing Foreign Key (Treatment_ID) References Treatment (Treatment_ID)
---------------------------------------------------------------
-- Treatment Table
Alter Table Treatment
Add Constraint Appointment_Treatment Foreign Key (Appointment_ID) References Appointment (Appointment_ID)
---------------------------------------------------------------
-- Patient Table
Alter Table Patient
Add Constraint Insurance_Patient Foreign Key (Insurance_Number) References Insurance (Insurance_Number)
------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------

-- The Insertion
-- Insert The Data from CSV Files to The Database

-- Appointment Table
BULK INSERT [dbo].[Appointment]
FROM 'D:\Data Analysist\EraaSoft Data Analysis Diploma\Projects\Final Project (Graduation)\Cleaned Version\appointments_Cleaned.csv'
WITH (
    FIRSTROW = 2,           -- Skips the header row
    FIELDTERMINATOR = ',',  -- Specifies comma as the column separator
    ROWTERMINATOR = '\n',   -- Specifies newline as the row separator
    CODEPAGE = '65001',     -- UTF-8 Files
    TABLOCK                 -- Optional, improves performance
);

-- Billing Table
BULK INSERT [dbo].[Billing]
FROM 'D:\Data Analysist\EraaSoft Data Analysis Diploma\Projects\Final Project (Graduation)\Cleaned Version\billing_Cleaned.csv'
WITH (
    FIRSTROW = 2,           -- Skips the header row
    FIELDTERMINATOR = ',',  -- Specifies comma as the column separator
    ROWTERMINATOR = '\n',   -- Specifies newline as the row separator
    CODEPAGE = '65001',     -- UTF-8 Files
    TABLOCK                 -- Optional, improves performance
);

-- Doctor Table
BULK INSERT [dbo].[Doctor]
FROM 'D:\Data Analysist\EraaSoft Data Analysis Diploma\Projects\Final Project (Graduation)\Cleaned Version\doctors_Cleaned.csv'
WITH (
    FIRSTROW = 2,           -- Skips the header row
    FIELDTERMINATOR = ',',  -- Specifies comma as the column separator
    ROWTERMINATOR = '\n',   -- Specifies newline as the row separator
    CODEPAGE = '65001',     -- UTF-8 Files
    TABLOCK                 -- Optional, improves performance
);

-- Treatment Table
BULK INSERT [dbo].[Treatment]
FROM 'D:\Data Analysist\EraaSoft Data Analysis Diploma\Projects\Final Project (Graduation)\Cleaned Version\treatments_Cleaned.csv'
WITH (
    FIRSTROW = 2,           -- Skips the header row
    FIELDTERMINATOR = ',',  -- Specifies comma as the column separator
    ROWTERMINATOR = '\n',   -- Specifies newline as the row separator
    CODEPAGE = '65001',     -- UTF-8 Files
    TABLOCK                 -- Optional, improves performance
);

-------------------------------------------------------------------
-- Stage Patient Table
BULK INSERT [dbo].[Stage_Patient]
FROM 'D:\Data Analysist\EraaSoft Data Analysis Diploma\Projects\Final Project (Graduation)\Cleaned Version\patients_Cleaned.csv'
WITH (
    FIRSTROW = 2,           -- Skips the header row
    FIELDTERMINATOR = ',',  -- Specifies comma as the column separator
    ROWTERMINATOR = '\n',   -- Specifies newline as the row separator
    CODEPAGE = '65001',     -- UTF-8 Files
    TABLOCK                 -- Optional, improves performance
);

-- Patient Table
Insert Into Patient (
Patient_ID,
Insurance_Number, -- FK
First_Name,
Last_Name,
Gender,
Date_Of_Birth,
Contact_Number,
Address,
Registeration_Date,
Patient_Email
)

Select
Patient_ID,
Insurance_Number, -- FK
First_Name,
Last_Name,
Gender,
Date_Of_Birth,
Contact_Number,
Address,
Registeration_Date,
Patient_Email

From Stage_Patient

-- Insurance Table
Insert Into Insurance(
Insurance_Number,
Insurance_Provider
)

Select
Insurance_Number,
Insurance_Provider

From Stage_Patient

-- We Dont Need the Stage_Patient Table Anymore
Drop Table Stage_Patient
------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------
-- Add Columns

-- Age Column in Patient Table
ALTER TABLE Patient ADD Age INT
UPDATE Patient
   SET Age = DATEDIFF(YEAR,Date_Of_Birth,GETUTCDATE())+CASE WHEN DATEADD(YEAR,DATEDIFF(YEAR,Date_Of_Birth,GETUTCDATE()),Date_Of_Birth) >= GETUTCDATE() THEN -1 ELSE 0 END

-- Quick Check
SELECT *
  FROM Patient

------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------
-- Last Step Which is Checking for all the data Had been imported Succefully
-- Row Counts
Select count(*) From Appointment
Select count(*) From Billing
Select count(*) From Doctor
Select count(*) From Treatment
Select count(*) From Insurance
Select count(*) From Patient

-- Show The Columns Only To Check if The Columns had been imported Correctly
-- Where 1 = 0 is a false Statment so it will return nothing
Select * From Appointment Where 1 = 0
Select * From Billing Where 1 = 0
Select * From Doctor Where 1 = 0
Select * From Treatment Where 1 = 0
Select * From Insurance Where 1 = 0
Select * From Patient Where 1 = 0

-- Everything Look Great and have the same result in The Notebook from Reading The CSV Files