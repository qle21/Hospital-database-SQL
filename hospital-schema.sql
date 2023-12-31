CREATE TABLE Physician (
  physicianID INT PRIMARY KEY,
  physician_name VARCHAR(255),
  phone_number VARCHAR(20),
  field VARCHAR(100),
  address VARCHAR(255),
  certification_num VARCHAR(50)
);

CREATE TABLE Instruction (
  code INT PRIMARY KEY,
  description VARCHAR(255),
  InstructionFee DECIMAL(10, 2)
);

CREATE TABLE Nurse (
  nurseID INT PRIMARY KEY,
  address VARCHAR(255),
  nurse_name VARCHAR(255),
  phone_number VARCHAR(20),
  certification_num VARCHAR(50)
);

CREATE TABLE Room (
  room_numb INT PRIMARY KEY,
  capacity INT,
  roomFee DECIMAL(10, 2)
);

CREATE TABLE Patient (
  patientID INT PRIMARY KEY,
  patients_name VARCHAR(255),
  phone_number VARCHAR(20),
  address VARCHAR(255),
  nurseID INT,
  type_of_med VARCHAR(100),
  amount_of_med INT,
  room_numb INT,
  night_stay INT,
  FOREIGN KEY (nurseID) REFERENCES Nurse(nurseID),
  FOREIGN KEY (room_numb) REFERENCES Room(room_numb)
);

CREATE TABLE Health_Record (
  health_record_ID INT PRIMARY KEY,
  disease VARCHAR(100),
  status VARCHAR(50),
  date DATE,
  description TEXT,
  patientID INT,
  FOREIGN KEY (patientID) REFERENCES Patient(patientID)
);

CREATE TABLE Invoice (
  invoiceID INT PRIMARY KEY,
  InstructionFee DECIMAL(10, 2),
  roomFee DECIMAL(10, 2),
  patientID INT,
  FOREIGN KEY (patientID) REFERENCES Patient(patientID)
);

CREATE TABLE Payment (
  payID INT PRIMARY KEY,
  amount DECIMAL(10, 2),
  date DATE,
  patientID INT,
  FOREIGN KEY (patientID) REFERENCES Patient(patientID)
);

CREATE TABLE Issue_Pay (
  patientID INT,
  invoiceID INT,
  payID INT,
  PRIMARY KEY (patientID, invoiceID, payID),
  FOREIGN KEY (patientID) REFERENCES Patient(patientID),
  FOREIGN KEY (invoiceID) REFERENCES Invoice(invoiceID),
  FOREIGN KEY (payID) REFERENCES Payment(payID)
);

CREATE TABLE Monitor (
  patientID INT,
  physicianID INT,
  duration VARCHAR(50),
  PRIMARY KEY (patientID, physicianID),
  FOREIGN KEY (patientID) REFERENCES Patient(patientID),
  FOREIGN KEY (physicianID) REFERENCES Physician(physicianID)
);

CREATE TABLE Order (
  patientID INT,
  code INT,
  physicianID INT,
  order_date DATE,
  PRIMARY KEY (patientID, code, physicianID),
  FOREIGN KEY (patientID) REFERENCES Patient(patientID),
  FOREIGN KEY (code) REFERENCES Instruction(code),
  FOREIGN KEY (physicianID) REFERENCES Physician(physicianID)
);

CREATE TABLE Execute (
  code INT,
  nurseID INT,
  date DATE,
  PRIMARY KEY (code, nurseID),
  FOREIGN KEY (code) REFERENCES Instruction(code),
  FOREIGN KEY (nurseID) REFERENCES Nurse(nurseID)
);
