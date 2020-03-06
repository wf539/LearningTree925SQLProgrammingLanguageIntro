ALTER TABLE Employees
ADD CONSTRAINT CK_Salary_Commission
CHECK (Commission <= CurrentSalary);
