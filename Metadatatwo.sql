-- Give Required Privileges to superman
select  user_id from openmrs.users where username = 'superman';
INSERT INTO openmrs.user_role (user_id, role) VALUES ((select  user_id from openmrs.users where username = 'superman'),'Privilege Level: Full');
INSERT INTO openmrs.user_role (user_id, role) VALUES ((select  user_id from openmrs.users where username = 'superman'),'bahmni-document-uploader');
INSERT INTO openmrs.user_role (user_id, role) VALUES ((select  user_id from openmrs.users where username = 'superman'),'Doctor');
INSERT INTO openmrs.user_role (user_id, role) VALUES ((select  user_id from openmrs.users where username = 'superman'),'Nurse');
INSERT INTO openmrs.user_role (user_id, role) VALUES ((select  user_id from openmrs.users where username = 'superman'),'RegistrationClerk');
INSERT INTO openmrs.user_role (user_id, role) VALUES ((select  user_id from openmrs.users where username = 'superman'),'System Developer');
INSERT INTO openmrs.user_role (user_id, role) VALUES ((select  user_id from openmrs.users where username = 'superman'),'Provider');

-- Give 'Get Locations' Privilege to Anonymous
INSERT INTO openmrs.role_privilege (role, privilege) VALUES ('Anonymous', 'Get Locations');
