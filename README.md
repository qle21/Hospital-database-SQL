# Hospital Database Project ReadMe

This SQL project focuses on designing and implementing a relational database for a hospital system. The database includes tables for managing patients, doctors, appointments, and more. Below is an overview of the project, including the database schema, usage instructions, and customization options.

## Database Schema

The database is designed with the following tables, representing key entities in a hospital system:

1. **Patients Table:**
   - Fields: PatientID, FirstName, LastName, Gender, DateOfBirth, ContactNumber, Address

2. **Doctors Table:**
   - Fields: DoctorID, FirstName, LastName, Specialization, ContactNumber, Address

3. **Appointments Table:**
   - Fields: AppointmentID, PatientID (Foreign Key), DoctorID (Foreign Key), AppointmentDate, Diagnosis, Prescription

4. **Departments Table:**
   - Fields: DepartmentID, DepartmentName

5. **Admissions Table:**
   - Fields: AdmissionID, PatientID (Foreign Key), AdmissionDate, DischargeDate, RoomNumber

6. **Tests Table:**
   - Fields: TestID, PatientID (Foreign Key), TestName, TestDate, TestResult

## Usage Instructions

1. **Database Creation:**
   - Execute the SQL script provided (`hospital_database.sql`) to create the database and tables.

2. **Insert Sample Data:**
   - Optionally, use the provided sample data script (`sample_data.sql`) to insert dummy records into the tables.

3. **Queries and Operations:**
   - Use SQL queries to perform operations such as:
     - Retrieving patient information.
     - Listing appointments for a specific doctor.
     - Admitting a patient to a department.
     - Updating test results.
     - And more, based on your hospital system requirements.

## Customization

Feel free to customize the database based on specific hospital management needs:

- Add additional tables for billing, staff, or inventory management.
- Modify field types or constraints to suit data integrity requirements.
- Extend relationships between tables to accommodate more complex scenarios.

## Dependencies

The project relies on SQL as the database management system. Ensure that your SQL environment supports the SQL syntax used in the scripts.

## Contributing

If you find areas for improvement or wish to contribute to this project, you can fork the repository, make changes, and submit a pull request.

## Additional Notes

- It is recommended to backup your existing database before executing any script, especially those that involve the creation or modification of tables and records.

- Consult with healthcare professionals or experts to ensure that the database design aligns with healthcare industry standards and regulations.

Happy Database Management!
![image](https://github.com/qle21/Hospital-database-SQL/assets/112357287/8668a399-7d14-4501-b511-167353fdb186)
