-- Insert data into the Physician table
INSERT INTO Physician (physicianID, physician_name, phone_number, field, address, certification_num)
VALUES
  (1, 'Dr. John Smith', '123-456-7890', 'Cardiology', '123 Main St', 'CERT123'),
  (2, 'Dr. Sarah Johnson', '987-654-3210', 'Pediatrics', '456 Oak Ave', 'CERT456'),
  (3, 'Dr. Michael Lee', '555-555-5555', 'Orthopedics', '789 Elm Rd', 'CERT789'),
  (4, 'Dr. Emily White', '111-222-3333', 'Dermatology', '456 Maple St', 'CERT4567'),
  (5, 'Dr. David Brown', '999-888-7777', 'Neurology', '789 Oak St', 'CERT777'),
  (6, 'Dr. Jessica Taylor', '444-333-2222', 'Internal Medicine', '321 Elm Ave', 'CERT654');

-- Insert data into the Instruction table
INSERT INTO Instruction (code, description, InstructionFee)
VALUES
  ('ICU101', 'Intensive Care Unit (ICU) Monitoring', 1500.00),
  ('ST001', 'Standard Blood Test', 75.00),
  ('MRI202', 'Magnetic Resonance Imaging (MRI)', 350.00),
  ('CT303', 'Computed Tomography (CT) Scan', 300.00),
  ('US404', 'Ultrasound Examination', 200.00),
  ('PE505', 'General Physical Examination', 50.00);

-- Insert data into the Nurse table
INSERT INTO Nurse (nurseID, address, nurse_name, phone_number, certification_num)
VALUES
  (101, '101 First St', 'Alice Brown', '111-111-1111', 'NURSE101'),
  (102, '202 Second St', 'Bob Smith', '222-222-2222', 'NURSE102'),
  (103, '303 Third St', 'Eve Johnson', '333-333-3333', 'NURSE103'),
  (104, '404 Fourth St', 'John Doe', '444-444-4444', 'NURSE104'),
  (105, '505 Fifth St', 'Emma Watson', '555-555-5555', 'NURSE105'),
  (106, '606 Sixth St', 'Daniel Brown', '666-666-6666', 'NURSE106');

-- Insert data into the Room table
INSERT INTO Room (room_numb, capacity, roomFee)
VALUES
  (101, 4, 100.00),
  (102, 2, 75.00),
  (103, 1, 50.00),
  (104, 3, 80.00),
  (105, 2, 70.00),
  (106, 1, 60.00);

-- Insert data into the Patient table
INSERT INTO Patient (patientID, patients_name, phone_number, address, nurseID, type_of_med, amount_of_med, room_numb, night_stay)
VALUES
  (1001, 'John Doe', '444-444-4444', '123 Park Ave', 101, 'Painkiller', 2, 101, 3),
  (1002, 'Jane Smith', '555-555-5555', '456 Lake Rd', 102, 'Antibiotics', 1, 102, 2),
  (1003, 'Mike Johnson', '666-666-6666', '789 Grove Blvd', 103, 'Antacid', 3, 103, 1),
  (1004, 'Emily White', '111-222-3333', '456 Maple St', 104, 'Antibiotics', 1, 104, 2),
  (1005, 'David Brown', '999-888-7777', '789 Oak St', 105, 'Painkiller', 2, 105, 3),
  (1006, 'Jessica Taylor', '444-333-2222', '321 Elm Ave', 106, 'Cold Medicine', 1, 106, 1);

-- Insert data into the Health_Record table
INSERT INTO Health_Record (health_record_ID, disease, status, date, description, patientID)
VALUES
  (5001, 'Flu', 'Recovered', '2023-07-15', 'Patient had flu symptoms.', 1001),
  (5002, 'Broken Arm', 'Healing', '2023-07-20', 'Patient''s arm was fractured.', 1002),
  (5003, 'Headache', 'Treated', '2023-07-25', 'Patient had a severe headache.', 1003),
  (5004, 'Fever', 'Treated', '2023-07-16', 'Patient had high fever.', 1004),
  (5005, 'Sprained Ankle', 'Healing', '2023-07-21', 'Patient sprained ankle.', 1005),
  (5006, 'Common Cold', 'Treated', '2023-07-26', 'Patient had common cold symptoms.', 1006);

-- Insert data into the Invoice table
INSERT INTO Invoice (invoiceID, InstructionFee, roomFee, patientID)
VALUES
  (2001, 225.00, 300.00, 1001),
  (2002, 75.00, 150.00, 1002),
  (2003, 300.00, 50.00, 1003),
  (2004, 150.00, 240.00, 1004),
  (2005, 200.00, 140.00, 1005),
  (2006, 80.00, 60.00, 1006);

-- Insert data into the Payment table
INSERT INTO Payment (payID, amount, date, patientID)
VALUES
  (3001, 400.00, '2023-07-18', 1001),
  (3002, 225.00, '2023-07-22', 1002),
  (3003, 350.00, '2023-07-27', 1003),
  (3004, 200.00, '2023-07-19', 1004),
  (3005, 150.00, '2023-07-23', 1005),
  (3006, 100.00, '2023-07-28', 1006);

-- Insert data into the Issue_Pay table
INSERT INTO Issue_Pay (patientID, invoiceID, payID)
VALUES
  (1001, 2001, 3001),
  (1002, 2002, 3002),
  (1003, 2003, 3003),
  (1004, 2004, 3004),
  (1005, 2005, 3005),
  (1006, 2006, 3006);

-- Insert data into the Monitor table
INSERT INTO Monitor (patientID, physicianID, duration)
VALUES
  (1001, 1, '7 days'),
  (1002, 2, '5 days'),
  (1003, 3, '3 days'),
  (1004, 4, '4 days'),
  (1005, 5, '6 days'),
  (1006, 6, '2 days');

-- Insert data into the Order table
INSERT INTO Order (patientID, code, physicianID, order_date)
VALUES
  (1001, 'ICU101', 1, '2023-07-15'),
  (1002, 'ST001', 2, '2023-07-20'),
  (1003, 'MRI202', 3, '2023-07-25'),
  (1004, 'CT303', 4, '2023-07-16'),
  (1005, 'US404', 5, '2023-07-21'),
  (1006, 'PE505', 6, '2023-07-26');

-- Insert data into the Execute table
INSERT INTO Execute (code, nurseID, date)
VALUES
  ('ICU101', 101, '2023-07-15'),
  ('ST001', 102, '2023-07-20'),
  ('MRI202', 103, '2023-07-25'),
  ('CT303', 104, '2023-07-16'),
  ('US404', 105, '2023-07-21'),
  ('PE505', 106, '2023-07-26');
