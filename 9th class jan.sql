SELECT * 
FROM hospital.admissions;


#retrieve patient details along with admission information 
select * 
from patients
join admissions
on patients.patientID = admissions.patientID;

#retrieve doctor details along with department information
select *  
from doctors
join admissions
on doctors.doctorID = admissions.doctorID
join departments
on admissions.departmentID = departments.departmentID;

#retrieve medication details along with admission information
select * from admissions
join medications
on admissions.admissionID = medications.admissionID;

#retrieve patient details along with doctor and admission information
select *  from doctors
join admissions
on doctors.doctorID = admissions.doctorID
join patients
On admissions.patientID = patients.patientID;

#retrieve medication details along with patient and admission information
select * from admissions
join patients
on admissions.patientID = patients.patientID
join medications
on admissions.admissionID = medications.admissionID;

#retrieve admission details along with patient, doctor, and medical information
select * 
from admissions
join patients
on admissions.patientID = patients.patientID 
join doctors
on admissions.doctorID = doctors.doctorID
join medications
on admissions.admissionID = medications.admissionID;

#retrieve medication details along wth patient, doctor, admisson and departmental information
select * 
from admissions
join patients
on admissions.patientID = patients.patientID 
join doctors
on admissions.doctorID = doctors.doctorID
join medications
on admissions.admissionID = medications.admissionID
join departments
on admissions.departmentID = departments.departmentID