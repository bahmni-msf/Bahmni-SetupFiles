-- Give Required Privileges to superman
set @superman_id = null;
select  user_id into @superman_id from openmrs.users where username = 'superman';
INSERT INTO openmrs.user_role (user_id, role) VALUES (@superman_id, 'Privilege Level: Full');
INSERT INTO openmrs.user_role (user_id, role) VALUES (@superman_id, 'bahmni-document-uploader');
INSERT INTO openmrs.user_role (user_id, role) VALUES (@superman_id, 'Doctor');
INSERT INTO openmrs.user_role (user_id, role) VALUES (@superman_id, 'Nurse');
INSERT INTO openmrs.user_role (user_id, role) VALUES (@superman_id, 'RegistrationClerk');
INSERT INTO openmrs.user_role (user_id, role) VALUES (@superman_id, 'System Developer');
INSERT INTO openmrs.user_role (user_id, role) VALUES (@superman_id, 'Provider');

-- Give 'Get Locations' Privilege to Anonymous
INSERT INTO openmrs.role_privilege (role, privilege) VALUES ('Anonymous', 'Get Locations');
