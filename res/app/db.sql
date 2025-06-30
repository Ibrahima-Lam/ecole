
-- 2025-06-27 13:28:49
update note set note='11',matricule='5d340',codeExamen='A24255D3PC5DC1' where idNote='745' ;
-- 2025-06-28 14:15:18
update examen set dateExamen='',heureDebutExamen='00:00:00',heureFinExamen='00:00:00',statutExamen='1',trimestreExamen='1' where codeExamen='A24255D1PC5DD3';
-- 2025-06-28 14:15:34
update examen set dateExamen='',heureDebutExamen='00:00:00',heureFinExamen='00:00:00',statutExamen='1',trimestreExamen='3' where codeExamen='A24255D10A24255DPC0D4';
-- 2025-06-28 14:15:49
update examen set dateExamen='',heureDebutExamen='00:00:00',heureFinExamen='00:00:00',statutExamen='1',trimestreExamen='3' where codeExamen='A24255D1PC5DD3';
-- 2025-06-28 14:39:03
update note set note='12' where idNote='1947' ;
-- 2025-06-29 22:07:08
insert into examen (codeExamen,codeClasseMatiere,codeSalleClasse,codeEvaluation,dateExamen,statutExamen,heureDebutExamen,heureFinExamen,trimestreExamen) values ('A24255D10A24255DPC0C3','A24255DPC','A24255D1','C3','2025-06-24','1','07:00','09:00','3');
-- 2025-06-29 22:08:20
insert into note(matricule,codeExamen,note) values('5d1041','A24255D10A24255DPC0C3','15');
-- 2025-06-29 22:13:09
update eleve set matricule='5d1041',nom='Cheikhou Cheikna Sylla',isme='الشيخ الشيخن سيلا',sexe='M',dateNaissance='2010-12-31',lieuNaissance='',adresse='Boghe',nni='00000041',statutEleve='actif' where matricule='5d1041';