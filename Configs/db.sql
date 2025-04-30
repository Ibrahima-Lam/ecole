
-- 2025-04-19 19:59:00
update inscrit set matricule='5d1005',codeSalleClasse='A24255D1',numeroInscrit='5',typeInscrit='passant',dateInscription='2024-10-01' where idInscrit='5';
-- 2025-04-19 19:59:21
update inscrit set matricule='5d1004',codeSalleClasse='A24255D1',numeroInscrit='4',typeInscrit='passant',dateInscription='2024-10-01' where idInscrit='4';
-- 2025-04-21 00:40:25
INSERT INTO salle_classe(codeSalleClasse, codeSalle, codeClasse, codeAnnee, indiceSalleClasse) 
    VALUES('A24252AS2', 'Salle8', '2AS', '2425', '2');
DELETE FROM salle_classe WHERE codeSalleClasse = 'A24252AS2'
-- 2025-04-21 01:06:00
INSERT INTO salle_classe(codeSalleClasse, codeSalle, codeClasse, codeAnnee, indiceSalleClasse) 
    VALUES('A24252AS2', 'Salle8', '2AS', '2425', '2');
-- 2025-04-21 01:14:33
UPDATE salle_classe 
                   SET codeSalle = 'Salle5', 
                       codeClasse = '2AS', 
                       codeAnnee = '2425', 
                       indiceSalleClasse = '2' 
                   WHERE codeSalleClasse = 'A24252AS2';
-- 2025-04-28 20:15:34
update eleve set matricule='5d212',nom='Raki Alhassane Diou',isme='ركي الحسن جو',sexe='M',dateNaissance='',lieuNaissance='',adresse='',nni='00000112' where matricule='5d212';
-- 2025-04-28 20:16:36
update eleve set matricule='5d218',nom='Moussa Idi Diallo',isme='موسي عيدي جلو',sexe='M',dateNaissance='',lieuNaissance='',adresse='',nni='00000118' where matricule='5d218';
-- 2025-04-28 20:17:54
update eleve set matricule='5d222',nom='Fatimata Aboubacri Dia',isme='فاتمتا أبو بكر جا',sexe='M',dateNaissance='',lieuNaissance='',adresse='',nni='00000122' where matricule='5d222';
-- 2025-04-28 20:19:38
update eleve set matricule='5d228',nom='Moussa Amadou Gassama',isme='موسي أمد كسما',sexe='M',dateNaissance='',lieuNaissance='',adresse='',nni='00000128' where matricule='5d228';
-- 2025-04-28 20:20:42
update eleve set matricule='5d234',nom='Salamata Abdoulaye NDongo',isme='سالمتا عبدالله إندونكو',sexe='M',dateNaissance='',lieuNaissance='',adresse='',nni='00000134' where matricule='5d234';
-- 2025-04-28 20:21:51
update eleve set matricule='5d236',nom='Mohamed Fadel El Id',isme='محمد فطال العيد',sexe='M',dateNaissance='',lieuNaissance='',adresse='',nni='00000136' where matricule='5d236';
-- 2025-04-28 20:22:34
update eleve set matricule='5d237',nom='Hamza Mattalah El Id',isme='حمزه مطلل العيد',sexe='M',dateNaissance='',lieuNaissance='',adresse='',nni='00000137' where matricule='5d237';
-- 2025-04-28 20:25:42
update eleve set matricule='5d244',nom='Hawa Diallel Thiam',isme='حوا جاليل تيام',sexe='M',dateNaissance='',lieuNaissance='',adresse='',nni='00000144' where matricule='5d244';
-- 2025-04-28 20:27:15
update eleve set matricule='5d246',nom='Mari Mamadou Dia',isme='ماري ممد جا',sexe='M',dateNaissance='',lieuNaissance='',adresse='',nni='00000146' where matricule='5d246';
-- 2025-04-28 20:28:42
update eleve set matricule='5d248',nom='Thierno Alassane Sow',isme='تيرنو الحسن صو',sexe='M',dateNaissance='',lieuNaissance='',adresse='',nni='00000148' where matricule='5d248';
-- 2025-04-28 20:30:56
update eleve set matricule='5d253',nom='Aliou Alssane Sow',isme='عاليو الحسن صو',sexe='M',dateNaissance='',lieuNaissance='',adresse='',nni='00000153' where matricule='5d253';
-- 2025-04-28 20:31:49
update eleve set matricule='5d254',nom='Abdoulaye Mohamed Sy',isme='عبدالله محمد سي',sexe='M',dateNaissance='',lieuNaissance='',adresse='',nni='00000154' where matricule='5d254';
-- 2025-04-28 20:33:37
update eleve set matricule='5d256',nom='Sayidi Beibou Boilil',isme='سييدي بيبو بويليل',sexe='M',dateNaissance='',lieuNaissance='',adresse='',nni='00000156' where matricule='5d256';
-- 2025-04-28 20:34:46
update eleve set matricule='5d259',nom='Salamata Abdahmani Sy',isme='سلمتا عبدالرحمن سي',sexe='M',dateNaissance='',lieuNaissance='',adresse='',nni='00000159' where matricule='5d259';
-- 2025-04-28 20:38:47
update eleve set matricule='5d205',nom='Houley Hamdou Djigo',isme='هولي حمدو جيكو',sexe='M',dateNaissance='',lieuNaissance='',adresse='',nni='00000105' where matricule='5d205';
-- 2025-04-28 20:40:11
update eleve set matricule='5d263',nom='Abou Adam Anne',isme='أبو ادم آن',sexe='M',dateNaissance='',lieuNaissance='',adresse='',nni='00000163' where matricule='5d263';
-- 2025-04-28 20:41:42
update eleve set matricule='5d306',nom='Aissata Moussa Djigo',isme='عيستا موسى جيكو',sexe='M',dateNaissance='',lieuNaissance='',adresse='',nni='00000306' where matricule='5d306';
-- 2025-04-28 20:42:41
update eleve set matricule='5d310',nom='Deffa Mamadou Ly',isme='ديفا ممدو لي',sexe='M',dateNaissance='',lieuNaissance='',adresse='',nni='00000310' where matricule='5d310';
-- 2025-04-28 20:43:39
update eleve set matricule='5d314',nom='Hawa Abdoulaye Dia',isme='حوا عبدالله جا',sexe='M',dateNaissance='',lieuNaissance='',adresse='',nni='00000314' where matricule='5d314';
-- 2025-04-28 20:43:55
update eleve set matricule='5d314',nom='Hawa Abdoulaye Dia',isme='حوا عبدالله جا',sexe='F',dateNaissance='',lieuNaissance='',adresse='',nni='00000314' where matricule='5d314';
-- 2025-04-28 20:46:49
update eleve set matricule='5d323',nom='Fatimata Sidi Niang',isme='فاتمتا سيدي انياك',sexe='M',dateNaissance='',lieuNaissance='',adresse='',nni='00000323' where matricule='5d323';
-- 2025-04-28 20:47:34
update eleve set matricule='5d324',nom='Awa Oumar Sow',isme='آوا عمر صو',sexe='M',dateNaissance='',lieuNaissance='',adresse='',nni='00000324' where matricule='5d324';
-- 2025-04-28 20:49:40
update eleve set matricule='5d326',nom='Aissata Mouhmoud Dia',isme='عيستا محمدو جا',sexe='M',dateNaissance='',lieuNaissance='',adresse='',nni='00000326' where matricule='5d326';
-- 2025-04-28 20:53:26
update eleve set matricule='5d340',nom='Ramatoulaye Amadou Dia',isme='رمتاالله أمد جا',sexe='M',dateNaissance='',lieuNaissance='',adresse='',nni='00000340' where matricule='5d340';
-- 2025-04-28 20:54:07
update eleve set matricule='5d341',nom='Saمif Oumar Baba N''gaide',isme='سلفي عمر باب ندنكدي',sexe='M',dateNaissance='',lieuNaissance='',adresse='',nni='00000341' where matricule='5d341';
-- 2025-04-28 20:54:31
update eleve set matricule='5d341',nom='Salif Oumar Baba N''gaide',isme='سلفي عمر باب ندنكدي',sexe='M',dateNaissance='',lieuNaissance='',adresse='',nni='00000341' where matricule='5d341';
-- 2025-04-28 20:55:27
update eleve set matricule='5d341',nom='Salif Oumar Baba N''gaide',isme='ساليف عمر باب ندنكدي',sexe='M',dateNaissance='',lieuNaissance='',adresse='',nni='00000341' where matricule='5d341';
-- 2025-04-28 20:57:05
update eleve set matricule='5d353',nom='Mamadou Amadou Barry',isme='ممدو أمدو باري',sexe='M',dateNaissance='',lieuNaissance='',adresse='',nni='00000353' where matricule='5d353';
-- 2025-04-28 20:58:20
update eleve set matricule='5d350',nom='Maimouna Biram Sy',isme='ميمون برام سي',sexe='M',dateNaissance='',lieuNaissance='',adresse='',nni='00000350' where matricule='5d350';
-- 2025-04-28 20:59:06
update eleve set matricule='5d311',nom='Aissata Ibrahima Sow',isme='عيستا إبراهيم صو',sexe='M',dateNaissance='',lieuNaissance='',adresse='',nni='00000311' where matricule='5d311';
-- 2025-04-28 21:01:15
update eleve set matricule='5d318',nom='Aissata Mamadou Sow',isme='عيستا ممدو صو',sexe='M',dateNaissance='',lieuNaissance='',adresse='',nni='00000318' where matricule='5d318';
-- 2025-04-28 21:02:00
update eleve set matricule='5d320',nom='Aissata Moussa Sy',isme='عيستا موسى سي',sexe='M',dateNaissance='',lieuNaissance='',adresse='',nni='00000320' where matricule='5d320';
-- 2025-04-28 21:02:55
update eleve set matricule='5d329',nom='Amadou Mika Ba',isme='أمد ميكا با',sexe='M',dateNaissance='',lieuNaissance='',adresse='',nni='00000329' where matricule='5d329';
-- 2025-04-28 21:06:12
update eleve set matricule='5d354',nom='Fatimata Kalidou N''Dongo',isme='فاتمتا كاليدو اندونكو',sexe='M',dateNaissance='',lieuNaissance='',adresse='',nni='00000354' where matricule='5d354';
-- 2025-04-30 02:04:26
insert into eleve(matricule,nom,isme,sexe,dateNaissance,lieuNaissance,adresse,nni) values('2AS201','Habsa Abou Lam','حبصة آبو لام','','','','','NNI2AS201');
-- 2025-04-30 02:04:26
insert into eleve(matricule,nom,isme,sexe,dateNaissance,lieuNaissance,adresse,nni) values('2AS202','Kumba Abdou Salam Sy','كمبا عبد السلام سي','','','','','NNI2AS202');
-- 2025-04-30 02:04:27
insert into eleve(matricule,nom,isme,sexe,dateNaissance,lieuNaissance,adresse,nni) values('2AS203','Houly Alson Ndiaye','هولي آلصن انجاي','','','','','NNI2AS203');
-- 2025-04-30 02:04:27
insert into eleve(matricule,nom,isme,sexe,dateNaissance,lieuNaissance,adresse,nni) values('2AS204','Kady Omar Wane','كدي عمر واني','','','','','NNI2AS204');
-- 2025-04-30 02:04:27
insert into eleve(matricule,nom,isme,sexe,dateNaissance,lieuNaissance,adresse,nni) values('2AS205','Ibrahima Adama Ndoko','ابراهيما آدما اندوكو','','','','','NNI2AS205');
-- 2025-04-30 02:04:27
insert into eleve(matricule,nom,isme,sexe,dateNaissance,lieuNaissance,adresse,nni) values('2AS206','Zeinbou Babacar Gibi Saar','زينبو بابكر جيبي صار','','','','','NNI2AS206');
-- 2025-04-30 02:04:27
insert into eleve(matricule,nom,isme,sexe,dateNaissance,lieuNaissance,adresse,nni) values('2AS207','Aissé Bassirou Lam','عيسى باسي رو لام','','','','','NNI2AS207');
-- 2025-04-30 02:04:27
insert into eleve(matricule,nom,isme,sexe,dateNaissance,lieuNaissance,adresse,nni) values('2AS208','Moussa Alassane Ba','موسى ألسان با','','','','','NNI2AS208');
-- 2025-04-30 02:04:28
insert into eleve(matricule,nom,isme,sexe,dateNaissance,lieuNaissance,adresse,nni) values('2AS209','Salamata Ibra Fall','سلاماتا إبرا فال','','','','','NNI2AS209');
-- 2025-04-30 02:04:28
insert into eleve(matricule,nom,isme,sexe,dateNaissance,lieuNaissance,adresse,nni) values('2AS210','Khadi Nahah Houcein','خدي ناحة حسين','','','','','NNI2AS210');
-- 2025-04-30 02:04:28
insert into eleve(matricule,nom,isme,sexe,dateNaissance,lieuNaissance,adresse,nni) values('2AS211','Mamadou Amadou Dia','مامادو آمدو جا','','','','','NNI2AS211');
-- 2025-04-30 02:04:28
insert into eleve(matricule,nom,isme,sexe,dateNaissance,lieuNaissance,adresse,nni) values('2AS212','Aly Alpha Ndiong','علي ألفا نديونغ','','','','','NNI2AS212');
-- 2025-04-30 02:04:28
insert into eleve(matricule,nom,isme,sexe,dateNaissance,lieuNaissance,adresse,nni) values('2AS213','Djibril Mamadou Diop','جبريل مامادو ديوب','','','','','NNI2AS213');
-- 2025-04-30 02:04:29
insert into eleve(matricule,nom,isme,sexe,dateNaissance,lieuNaissance,adresse,nni) values('2AS214','Houlèye Med Yahya N''gaidé','حولي مد يحيى انجايدي','','','','','NNI2AS214');
-- 2025-04-30 02:04:29
insert into eleve(matricule,nom,isme,sexe,dateNaissance,lieuNaissance,adresse,nni) values('2AS215','Yaghoub O Mohamed','يعقوب ولد محمد','','','','','NNI2AS215');
-- 2025-04-30 02:04:29
insert into eleve(matricule,nom,isme,sexe,dateNaissance,lieuNaissance,adresse,nni) values('2AS216','Amadou Hamadi Diallo','آمدو حمادي ديالو','','','','','NNI2AS216');
-- 2025-04-30 02:04:29
insert into eleve(matricule,nom,isme,sexe,dateNaissance,lieuNaissance,adresse,nni) values('2AS217','Ramata Djibril Lo','رامتا جبريل لو','','','','','NNI2AS217');
-- 2025-04-30 02:04:29
insert into eleve(matricule,nom,isme,sexe,dateNaissance,lieuNaissance,adresse,nni) values('2AS218','Aissata Abdrahmane Ba','عائشة عبد الرحمن با','','','','','NNI2AS218');
-- 2025-04-30 02:04:29
insert into eleve(matricule,nom,isme,sexe,dateNaissance,lieuNaissance,adresse,nni) values('2AS219','Djeini Ibrahima Soko','جيني ابراهيما سوكو','','','','','NNI2AS219');
-- 2025-04-30 02:04:30
insert into eleve(matricule,nom,isme,sexe,dateNaissance,lieuNaissance,adresse,nni) values('2AS220','Coumba Wagne','كومبا واجن','','','','','NNI2AS220');
-- 2025-04-30 02:04:30
insert into eleve(matricule,nom,isme,sexe,dateNaissance,lieuNaissance,adresse,nni) values('2AS221','Marieme Mamadou Wagne','مريم مامادو واجن','','','','','NNI2AS221');
-- 2025-04-30 02:04:30
insert into eleve(matricule,nom,isme,sexe,dateNaissance,lieuNaissance,adresse,nni) values('2AS222','Abdoulaye Mamadou Wagne','عبد الله مامادو واجن','','','','','NNI2AS222');
-- 2025-04-30 02:04:30
insert into eleve(matricule,nom,isme,sexe,dateNaissance,lieuNaissance,adresse,nni) values('2AS223','Amadou Bocar Boye','آمدو بوبكر بوي','','','','','NNI2AS223');
-- 2025-04-30 02:04:30
insert into eleve(matricule,nom,isme,sexe,dateNaissance,lieuNaissance,adresse,nni) values('2AS224','Diari Alpha Koné','دياري ألفا كوني','','','','','NNI2AS224');
-- 2025-04-30 02:04:30
insert into eleve(matricule,nom,isme,sexe,dateNaissance,lieuNaissance,adresse,nni) values('2AS225','Aissata Alieu Lam','عيستا عاليو لام','','','','','NNI2AS225');
-- 2025-04-30 02:04:31
insert into eleve(matricule,nom,isme,sexe,dateNaissance,lieuNaissance,adresse,nni) values('2AS226','Hadjarata Abdoulaye Dia','هاجرتا عبدولاي جا','','','','','NNI2AS226');
-- 2025-04-30 02:04:31
insert into eleve(matricule,nom,isme,sexe,dateNaissance,lieuNaissance,adresse,nni) values('2AS227','Bouy Diba','بوي ديبا','','','','','NNI2AS227');
-- 2025-04-30 02:04:31
insert into eleve(matricule,nom,isme,sexe,dateNaissance,lieuNaissance,adresse,nni) values('2AS228','Houreye Abdoulaye Gani','هوري عبدولاي جاني','','','','','NNI2AS228');
-- 2025-04-30 02:04:31
insert into eleve(matricule,nom,isme,sexe,dateNaissance,lieuNaissance,adresse,nni) values('2AS229','Amadou Boubacar Dia','آمدو بوبكر جا','','','','','NNI2AS229');
-- 2025-04-30 02:04:31
insert into eleve(matricule,nom,isme,sexe,dateNaissance,lieuNaissance,adresse,nni) values('2AS230','Sokhna Aissatou Sy','سوكنا عست كي','','','','','NNI2AS230');
-- 2025-04-30 02:04:31
insert into eleve(matricule,nom,isme,sexe,dateNaissance,lieuNaissance,adresse,nni) values('2AS231','Mariem Samba Sy','مريم صمبا كي','','','','','NNI2AS231');
-- 2025-04-30 02:04:32
insert into eleve(matricule,nom,isme,sexe,dateNaissance,lieuNaissance,adresse,nni) values('2AS232','Mariem Amadou Koné','مريم آمدو كوني','','','','','NNI2AS232');
-- 2025-04-30 02:04:32
insert into eleve(matricule,nom,isme,sexe,dateNaissance,lieuNaissance,adresse,nni) values('2AS233','Mama Housseyn','ماما حسين','','','','','NNI2AS233');
-- 2025-04-30 02:04:32
insert into eleve(matricule,nom,isme,sexe,dateNaissance,lieuNaissance,adresse,nni) values('2AS234','Fatimata Amadou Dia','فاطيماتا آمدو جا','','','','','NNI2AS234');
-- 2025-04-30 02:04:32
insert into eleve(matricule,nom,isme,sexe,dateNaissance,lieuNaissance,adresse,nni) values('2AS235','Mariam M/ Diawli','مريم ام/ دياولي','','','','','NNI2AS235');
-- 2025-04-30 02:04:32
insert into eleve(matricule,nom,isme,sexe,dateNaissance,lieuNaissance,adresse,nni) values('2AS236','Mariam M/ Oumar','مريم ام/ عمر','','','','','NNI2AS236');
-- 2025-04-30 02:04:32
insert into eleve(matricule,nom,isme,sexe,dateNaissance,lieuNaissance,adresse,nni) values('2AS237','Maouloud O/ Mohamed Moussa','مولود ولد محمد موسى','','','','','NNI2AS237');
-- 2025-04-30 02:04:33
insert into eleve(matricule,nom,isme,sexe,dateNaissance,lieuNaissance,adresse,nni) values('2AS238','Houe Bocar Boye','حوى بوكار بوي','','','','','NNI2AS238');
-- 2025-04-30 02:04:33
insert into eleve(matricule,nom,isme,sexe,dateNaissance,lieuNaissance,adresse,nni) values('2AS239','Aissata Ahmedou N''gaidé','عائشة أحمدو انجايدي','','','','','NNI2AS239');
-- 2025-04-30 02:04:33
insert into eleve(matricule,nom,isme,sexe,dateNaissance,lieuNaissance,adresse,nni) values('2AS240','Hawa Amadou Dia','حواء آمدو جا','','','','','NNI2AS240');
-- 2025-04-30 02:04:33
insert into eleve(matricule,nom,isme,sexe,dateNaissance,lieuNaissance,adresse,nni) values('2AS241','Bouly Amadou Koné','بولي آمدو كوني','','','','','NNI2AS241');
-- 2025-04-30 02:04:33
insert into eleve(matricule,nom,isme,sexe,dateNaissance,lieuNaissance,adresse,nni) values('2AS242','Maty Ammar Saleh','ماتي عمار صالح','','','','','NNI2AS242');
-- 2025-04-30 02:04:34
insert into eleve(matricule,nom,isme,sexe,dateNaissance,lieuNaissance,adresse,nni) values('2AS243','Rouky Demba Dia','روكي دمب جا','','','','','NNI2AS243');
-- 2025-04-30 02:04:34
insert into eleve(matricule,nom,isme,sexe,dateNaissance,lieuNaissance,adresse,nni) values('2AS244','Djeneba Amadou Koné','جينبا آمدوكونى','','','','','NNI2AS244');
-- 2025-04-30 02:04:34
insert into eleve(matricule,nom,isme,sexe,dateNaissance,lieuNaissance,adresse,nni) values('2AS245','Mariem Madany Etyam','مريم مادانى اتيام','','','','','NNI2AS245');
-- 2025-04-30 02:04:34
insert into eleve(matricule,nom,isme,sexe,dateNaissance,lieuNaissance,adresse,nni) values('2AS246','Djeneba Mamadou Dia','جينبا ممدو جا','','','','','NNI2AS246');
-- 2025-04-30 02:04:34
insert into eleve(matricule,nom,isme,sexe,dateNaissance,lieuNaissance,adresse,nni) values('2AS247','Boudi Abdoul Soko','بودي عبدول سوكو','','','','','NNI2AS247');
-- 2025-04-30 02:04:34
insert into eleve(matricule,nom,isme,sexe,dateNaissance,lieuNaissance,adresse,nni) values('2AS248','Hadia Diamilatou LAM','هادية دياميلا تو لام','','','','','NNI2AS248');
-- 2025-04-30 02:04:35
insert into eleve(matricule,nom,isme,sexe,dateNaissance,lieuNaissance,adresse,nni) values('2AS249','Djibril Cheikh Sid''Ahmed','جبريل الشيخ سيد أحمد','','','','','NNI2AS249');
-- 2025-04-30 02:04:35
insert into eleve(matricule,nom,isme,sexe,dateNaissance,lieuNaissance,adresse,nni) values('2AS250','Habi Djibril Lo','حابي جبريل لو','','','','','NNI2AS250');
-- 2025-04-30 02:04:35
insert into eleve(matricule,nom,isme,sexe,dateNaissance,lieuNaissance,adresse,nni) values('2AS251','Asmaou Mamadou Diallo','أسماء مامادو ديالو','','','','','NNI2AS251');
-- 2025-04-30 02:04:35
insert into eleve(matricule,nom,isme,sexe,dateNaissance,lieuNaissance,adresse,nni) values('2AS252','Mariem Cheikh Saadbou Sy','مريم الشيخ سعد بوه سي','','','','','NNI2AS252');
-- 2025-04-30 02:04:36
insert into eleve(matricule,nom,isme,sexe,dateNaissance,lieuNaissance,adresse,nni) values('2AS253','Mohamed Amar Amadou Sy','محمد آمار آمدو سي','','','','','NNI2AS253');
-- 2025-04-30 02:04:36
insert into eleve(matricule,nom,isme,sexe,dateNaissance,lieuNaissance,adresse,nni) values('2AS254','Fatimata Mamadou Ba','فاتمتا ممدو با','','','','','NNI2AS254');
-- 2025-04-30 02:04:36
insert into eleve(matricule,nom,isme,sexe,dateNaissance,lieuNaissance,adresse,nni) values('2AS255','Abbass Abou M''Baye','عباس آبو مباي','','','','','NNI2AS255');
-- 2025-04-30 02:04:36
insert into eleve(matricule,nom,isme,sexe,dateNaissance,lieuNaissance,adresse,nni) values('2AS256','El Ghassem Ismail Sy','القاسم اسماعيل سي','','','','','NNI2AS256');
-- 2025-04-30 02:10:11
insert into inscrit(idInscrit,matricule,codeSalleClasse,numeroInscrit,typeInscrit,dateInscription) values('','2AS256','A24252AS2','1','passant','2025-04-30');
-- 2025-04-30 02:10:12
insert into inscrit(idInscrit,matricule,codeSalleClasse,numeroInscrit,typeInscrit,dateInscription) values('','2AS255','A24252AS2','2','passant','2025-04-30');
-- 2025-04-30 02:10:12
insert into inscrit(idInscrit,matricule,codeSalleClasse,numeroInscrit,typeInscrit,dateInscription) values('','2AS254','A24252AS2','3','passant','2025-04-30');
-- 2025-04-30 02:10:12
insert into inscrit(idInscrit,matricule,codeSalleClasse,numeroInscrit,typeInscrit,dateInscription) values('','2AS253','A24252AS2','4','passant','2025-04-30');
-- 2025-04-30 02:10:12
insert into inscrit(idInscrit,matricule,codeSalleClasse,numeroInscrit,typeInscrit,dateInscription) values('','2AS252','A24252AS2','5','passant','2025-04-30');
-- 2025-04-30 02:10:12
insert into inscrit(idInscrit,matricule,codeSalleClasse,numeroInscrit,typeInscrit,dateInscription) values('','2AS251','A24252AS2','6','passant','2025-04-30');
delete from inscrit where idInscrit='203'
delete from inscrit where idInscrit='198'
delete from inscrit where idInscrit='199'
delete from inscrit where idInscrit='200'
delete from inscrit where idInscrit='202'
delete from inscrit where idInscrit='201'
-- 2025-04-30 10:52:23
insert into inscrit(idInscrit,matricule,codeSalleClasse,numeroInscrit,typeInscrit,dateInscription) values('','2AS201','A24252AS2','1','passant','2025-04-30');
-- 2025-04-30 10:52:23
insert into inscrit(idInscrit,matricule,codeSalleClasse,numeroInscrit,typeInscrit,dateInscription) values('','2AS202','A24252AS2','2','passant','2025-04-30');
-- 2025-04-30 10:52:23
insert into inscrit(idInscrit,matricule,codeSalleClasse,numeroInscrit,typeInscrit,dateInscription) values('','2AS203','A24252AS2','3','passant','2025-04-30');
-- 2025-04-30 10:52:23
insert into inscrit(idInscrit,matricule,codeSalleClasse,numeroInscrit,typeInscrit,dateInscription) values('','2AS204','A24252AS2','4','passant','2025-04-30');
-- 2025-04-30 10:52:23
insert into inscrit(idInscrit,matricule,codeSalleClasse,numeroInscrit,typeInscrit,dateInscription) values('','2AS205','A24252AS2','5','passant','2025-04-30');
-- 2025-04-30 11:06:51
insert into inscrit(idInscrit,matricule,codeSalleClasse,numeroInscrit,typeInscrit,dateInscription) values('','2AS201','A24252AS2','1','passant','2025-04-30');
-- 2025-04-30 11:06:51
insert into inscrit(idInscrit,matricule,codeSalleClasse,numeroInscrit,typeInscrit,dateInscription) values('','2AS202','A24252AS2','2','passant','2025-04-30');
-- 2025-04-30 11:06:51
insert into inscrit(idInscrit,matricule,codeSalleClasse,numeroInscrit,typeInscrit,dateInscription) values('','2AS203','A24252AS2','3','passant','2025-04-30');
-- 2025-04-30 11:06:51
insert into inscrit(idInscrit,matricule,codeSalleClasse,numeroInscrit,typeInscrit,dateInscription) values('','2AS204','A24252AS2','4','passant','2025-04-30');
-- 2025-04-30 11:06:51
insert into inscrit(idInscrit,matricule,codeSalleClasse,numeroInscrit,typeInscrit,dateInscription) values('','2AS205','A24252AS2','5','passant','2025-04-30');
-- 2025-04-30 11:06:52
insert into inscrit(idInscrit,matricule,codeSalleClasse,numeroInscrit,typeInscrit,dateInscription) values('','2AS206','A24252AS2','6','passant','2025-04-30');
-- 2025-04-30 11:06:52
insert into inscrit(idInscrit,matricule,codeSalleClasse,numeroInscrit,typeInscrit,dateInscription) values('','2AS207','A24252AS2','7','passant','2025-04-30');
-- 2025-04-30 11:06:52
insert into inscrit(idInscrit,matricule,codeSalleClasse,numeroInscrit,typeInscrit,dateInscription) values('','2AS208','A24252AS2','8','passant','2025-04-30');
-- 2025-04-30 11:06:52
insert into inscrit(idInscrit,matricule,codeSalleClasse,numeroInscrit,typeInscrit,dateInscription) values('','2AS209','A24252AS2','9','passant','2025-04-30');
-- 2025-04-30 11:06:53
insert into inscrit(idInscrit,matricule,codeSalleClasse,numeroInscrit,typeInscrit,dateInscription) values('','2AS210','A24252AS2','10','passant','2025-04-30');
-- 2025-04-30 11:06:53
insert into inscrit(idInscrit,matricule,codeSalleClasse,numeroInscrit,typeInscrit,dateInscription) values('','2AS211','A24252AS2','11','passant','2025-04-30');
-- 2025-04-30 11:06:53
insert into inscrit(idInscrit,matricule,codeSalleClasse,numeroInscrit,typeInscrit,dateInscription) values('','2AS212','A24252AS2','12','passant','2025-04-30');
-- 2025-04-30 11:06:53
insert into inscrit(idInscrit,matricule,codeSalleClasse,numeroInscrit,typeInscrit,dateInscription) values('','2AS213','A24252AS2','13','passant','2025-04-30');
-- 2025-04-30 11:06:53
insert into inscrit(idInscrit,matricule,codeSalleClasse,numeroInscrit,typeInscrit,dateInscription) values('','2AS214','A24252AS2','14','passant','2025-04-30');
-- 2025-04-30 11:06:53
insert into inscrit(idInscrit,matricule,codeSalleClasse,numeroInscrit,typeInscrit,dateInscription) values('','2AS215','A24252AS2','15','passant','2025-04-30');
-- 2025-04-30 11:06:54
insert into inscrit(idInscrit,matricule,codeSalleClasse,numeroInscrit,typeInscrit,dateInscription) values('','2AS216','A24252AS2','16','passant','2025-04-30');
-- 2025-04-30 11:06:54
insert into inscrit(idInscrit,matricule,codeSalleClasse,numeroInscrit,typeInscrit,dateInscription) values('','2AS217','A24252AS2','17','passant','2025-04-30');
-- 2025-04-30 11:06:54
insert into inscrit(idInscrit,matricule,codeSalleClasse,numeroInscrit,typeInscrit,dateInscription) values('','2AS218','A24252AS2','18','passant','2025-04-30');
-- 2025-04-30 11:06:54
insert into inscrit(idInscrit,matricule,codeSalleClasse,numeroInscrit,typeInscrit,dateInscription) values('','2AS219','A24252AS2','19','passant','2025-04-30');
-- 2025-04-30 11:06:54
insert into inscrit(idInscrit,matricule,codeSalleClasse,numeroInscrit,typeInscrit,dateInscription) values('','2AS220','A24252AS2','20','passant','2025-04-30');
-- 2025-04-30 11:06:55
insert into inscrit(idInscrit,matricule,codeSalleClasse,numeroInscrit,typeInscrit,dateInscription) values('','2AS221','A24252AS2','21','passant','2025-04-30');
-- 2025-04-30 11:06:55
insert into inscrit(idInscrit,matricule,codeSalleClasse,numeroInscrit,typeInscrit,dateInscription) values('','2AS222','A24252AS2','22','passant','2025-04-30');
-- 2025-04-30 11:06:55
insert into inscrit(idInscrit,matricule,codeSalleClasse,numeroInscrit,typeInscrit,dateInscription) values('','2AS223','A24252AS2','23','passant','2025-04-30');
-- 2025-04-30 11:06:55
insert into inscrit(idInscrit,matricule,codeSalleClasse,numeroInscrit,typeInscrit,dateInscription) values('','2AS224','A24252AS2','24','passant','2025-04-30');
-- 2025-04-30 11:06:56
insert into inscrit(idInscrit,matricule,codeSalleClasse,numeroInscrit,typeInscrit,dateInscription) values('','2AS225','A24252AS2','25','passant','2025-04-30');
-- 2025-04-30 11:06:56
insert into inscrit(idInscrit,matricule,codeSalleClasse,numeroInscrit,typeInscrit,dateInscription) values('','2AS226','A24252AS2','26','passant','2025-04-30');
-- 2025-04-30 11:06:56
insert into inscrit(idInscrit,matricule,codeSalleClasse,numeroInscrit,typeInscrit,dateInscription) values('','2AS227','A24252AS2','27','passant','2025-04-30');
-- 2025-04-30 11:06:56
insert into inscrit(idInscrit,matricule,codeSalleClasse,numeroInscrit,typeInscrit,dateInscription) values('','2AS228','A24252AS2','28','passant','2025-04-30');
-- 2025-04-30 11:06:56
insert into inscrit(idInscrit,matricule,codeSalleClasse,numeroInscrit,typeInscrit,dateInscription) values('','2AS229','A24252AS2','29','passant','2025-04-30');
-- 2025-04-30 11:06:57
insert into inscrit(idInscrit,matricule,codeSalleClasse,numeroInscrit,typeInscrit,dateInscription) values('','2AS230','A24252AS2','30','passant','2025-04-30');
-- 2025-04-30 11:06:57
insert into inscrit(idInscrit,matricule,codeSalleClasse,numeroInscrit,typeInscrit,dateInscription) values('','2AS231','A24252AS2','31','passant','2025-04-30');
-- 2025-04-30 11:06:57
insert into inscrit(idInscrit,matricule,codeSalleClasse,numeroInscrit,typeInscrit,dateInscription) values('','2AS232','A24252AS2','32','passant','2025-04-30');
-- 2025-04-30 11:06:57
insert into inscrit(idInscrit,matricule,codeSalleClasse,numeroInscrit,typeInscrit,dateInscription) values('','2AS233','A24252AS2','33','passant','2025-04-30');
-- 2025-04-30 11:06:57
insert into inscrit(idInscrit,matricule,codeSalleClasse,numeroInscrit,typeInscrit,dateInscription) values('','2AS234','A24252AS2','34','passant','2025-04-30');
-- 2025-04-30 11:06:58
insert into inscrit(idInscrit,matricule,codeSalleClasse,numeroInscrit,typeInscrit,dateInscription) values('','2AS235','A24252AS2','35','passant','2025-04-30');
-- 2025-04-30 11:06:58
insert into inscrit(idInscrit,matricule,codeSalleClasse,numeroInscrit,typeInscrit,dateInscription) values('','2AS236','A24252AS2','36','passant','2025-04-30');
-- 2025-04-30 11:06:58
insert into inscrit(idInscrit,matricule,codeSalleClasse,numeroInscrit,typeInscrit,dateInscription) values('','2AS237','A24252AS2','37','passant','2025-04-30');
-- 2025-04-30 11:06:58
insert into inscrit(idInscrit,matricule,codeSalleClasse,numeroInscrit,typeInscrit,dateInscription) values('','2AS238','A24252AS2','38','passant','2025-04-30');
-- 2025-04-30 11:06:58
insert into inscrit(idInscrit,matricule,codeSalleClasse,numeroInscrit,typeInscrit,dateInscription) values('','2AS239','A24252AS2','39','passant','2025-04-30');
-- 2025-04-30 11:06:59
insert into inscrit(idInscrit,matricule,codeSalleClasse,numeroInscrit,typeInscrit,dateInscription) values('','2AS240','A24252AS2','40','passant','2025-04-30');
-- 2025-04-30 11:06:59
insert into inscrit(idInscrit,matricule,codeSalleClasse,numeroInscrit,typeInscrit,dateInscription) values('','2AS241','A24252AS2','41','passant','2025-04-30');
-- 2025-04-30 11:06:59
insert into inscrit(idInscrit,matricule,codeSalleClasse,numeroInscrit,typeInscrit,dateInscription) values('','2AS242','A24252AS2','42','passant','2025-04-30');
-- 2025-04-30 11:06:59
insert into inscrit(idInscrit,matricule,codeSalleClasse,numeroInscrit,typeInscrit,dateInscription) values('','2AS243','A24252AS2','43','passant','2025-04-30');
-- 2025-04-30 11:06:59
insert into inscrit(idInscrit,matricule,codeSalleClasse,numeroInscrit,typeInscrit,dateInscription) values('','2AS244','A24252AS2','44','passant','2025-04-30');
-- 2025-04-30 11:07:00
insert into inscrit(idInscrit,matricule,codeSalleClasse,numeroInscrit,typeInscrit,dateInscription) values('','2AS245','A24252AS2','45','passant','2025-04-30');
-- 2025-04-30 11:07:00
insert into inscrit(idInscrit,matricule,codeSalleClasse,numeroInscrit,typeInscrit,dateInscription) values('','2AS246','A24252AS2','46','passant','2025-04-30');
-- 2025-04-30 11:07:00
insert into inscrit(idInscrit,matricule,codeSalleClasse,numeroInscrit,typeInscrit,dateInscription) values('','2AS247','A24252AS2','47','passant','2025-04-30');
-- 2025-04-30 11:07:00
insert into inscrit(idInscrit,matricule,codeSalleClasse,numeroInscrit,typeInscrit,dateInscription) values('','2AS248','A24252AS2','48','passant','2025-04-30');
-- 2025-04-30 11:07:00
insert into inscrit(idInscrit,matricule,codeSalleClasse,numeroInscrit,typeInscrit,dateInscription) values('','2AS249','A24252AS2','49','passant','2025-04-30');
-- 2025-04-30 11:07:00
insert into inscrit(idInscrit,matricule,codeSalleClasse,numeroInscrit,typeInscrit,dateInscription) values('','2AS250','A24252AS2','50','passant','2025-04-30');
-- 2025-04-30 11:07:01
insert into inscrit(idInscrit,matricule,codeSalleClasse,numeroInscrit,typeInscrit,dateInscription) values('','2AS251','A24252AS2','51','passant','2025-04-30');
-- 2025-04-30 11:07:01
insert into inscrit(idInscrit,matricule,codeSalleClasse,numeroInscrit,typeInscrit,dateInscription) values('','2AS252','A24252AS2','52','passant','2025-04-30');
-- 2025-04-30 11:07:01
insert into inscrit(idInscrit,matricule,codeSalleClasse,numeroInscrit,typeInscrit,dateInscription) values('','2AS253','A24252AS2','53','passant','2025-04-30');
-- 2025-04-30 11:07:01
insert into inscrit(idInscrit,matricule,codeSalleClasse,numeroInscrit,typeInscrit,dateInscription) values('','2AS254','A24252AS2','54','passant','2025-04-30');
-- 2025-04-30 11:07:01
insert into inscrit(idInscrit,matricule,codeSalleClasse,numeroInscrit,typeInscrit,dateInscription) values('','2AS255','A24252AS2','55','passant','2025-04-30');
-- 2025-04-30 11:07:02
insert into inscrit(idInscrit,matricule,codeSalleClasse,numeroInscrit,typeInscrit,dateInscription) values('','2AS256','A24252AS2','56','passant','2025-04-30');
-- 2025-04-30 11:36:38
insert into eleve(matricule,nom,isme,sexe,dateNaissance,lieuNaissance,adresse,nni) values('5LM001','Cheyda El Nagy Ebilil','الشيده الناجي ابليل','','','','','NNI5LM001');
-- 2025-04-30 11:36:38
insert into eleve(matricule,nom,isme,sexe,dateNaissance,lieuNaissance,adresse,nni) values('5LM002','Souleymane Sidi Mohamed Mohamed Mahmoud','سليمان سيدي محمد محمد محمود','','','','','NNI5LM002');
-- 2025-04-30 11:36:38
insert into eleve(matricule,nom,isme,sexe,dateNaissance,lieuNaissance,adresse,nni) values('5LM003','Baba Leqdef Jakité Ramadan','بابا لقظف جاكيتى رامظان','','','','','NNI5LM003');
-- 2025-04-30 11:36:38
insert into eleve(matricule,nom,isme,sexe,dateNaissance,lieuNaissance,adresse,nni) values('5LM004','Moinita Abdellahi','موينيتا عبد الله','','','','','NNI5LM004');
-- 2025-04-30 11:36:39
insert into eleve(matricule,nom,isme,sexe,dateNaissance,lieuNaissance,adresse,nni) values('5LM005','Amina Emijine Mouham','آمنة اميجن موهم','','','','','NNI5LM005');
-- 2025-04-30 11:36:39
insert into eleve(matricule,nom,isme,sexe,dateNaissance,lieuNaissance,adresse,nni) values('5LM006','Mariem Elmoufid Beyatt','مريم المفيد بيات','','','','','NNI5LM006');
-- 2025-04-30 11:36:39
insert into eleve(matricule,nom,isme,sexe,dateNaissance,lieuNaissance,adresse,nni) values('5LM007','Zahra Said Ebilil','الزهراء سعيد ابليل','','','','','NNI5LM007');
-- 2025-04-30 11:36:39
insert into eleve(matricule,nom,isme,sexe,dateNaissance,lieuNaissance,adresse,nni) values('5LM008','Zeinabou Sidi Messaoud','زينب سيدي مسعود','','','','','NNI5LM008');
-- 2025-04-30 11:36:39
insert into eleve(matricule,nom,isme,sexe,dateNaissance,lieuNaissance,adresse,nni) values('5LM009','Salem Ouda''a Sabrou','سالم اوداعه سبرو','','','','','NNI5LM009');
-- 2025-04-30 11:36:39
insert into eleve(matricule,nom,isme,sexe,dateNaissance,lieuNaissance,adresse,nni) values('5LM010','Vatimétou Maham','فاطيمتو محمد','','','','','NNI5LM010');
-- 2025-04-30 11:36:40
insert into eleve(matricule,nom,isme,sexe,dateNaissance,lieuNaissance,adresse,nni) values('5LM011','Cheikh Aly Oubeid','الشيخ عالي أعبيد','','','','','NNI5LM011');
-- 2025-04-30 11:36:40
insert into eleve(matricule,nom,isme,sexe,dateNaissance,lieuNaissance,adresse,nni) values('5LM012','Ahmed Cheikh Oubeid El Kheir','احمد الشيخ اعبيد الخير','','','','','NNI5LM012');
-- 2025-04-30 11:36:40
insert into eleve(matricule,nom,isme,sexe,dateNaissance,lieuNaissance,adresse,nni) values('5LM013','Fatimata Moussa Sow','فاتمتا موسى صو','','','','','NNI5LM013');
-- 2025-04-30 11:36:40
insert into eleve(matricule,nom,isme,sexe,dateNaissance,lieuNaissance,adresse,nni) values('5LM014','Fatima Habib Weichih','فاطمة حبيب ويشيه','','','','','NNI5LM014');
-- 2025-04-30 11:36:40
insert into eleve(matricule,nom,isme,sexe,dateNaissance,lieuNaissance,adresse,nni) values('5LM015','Fatim Ibrahim Mbarak','فاطم ابراهيم امبارك','','','','','NNI5LM015');
-- 2025-04-30 11:36:41
insert into eleve(matricule,nom,isme,sexe,dateNaissance,lieuNaissance,adresse,nni) values('5LM016','Emtew Cheikh El Mamy','أمتو الشيخ المامي','','','','','NNI5LM016');
-- 2025-04-30 11:36:41
insert into eleve(matricule,nom,isme,sexe,dateNaissance,lieuNaissance,adresse,nni) values('5LM017','Mariem Ahmed Oubeid El Kheir','مريم احمد اعبيد الخير','','','','','NNI5LM017');
-- 2025-04-30 11:36:41
insert into eleve(matricule,nom,isme,sexe,dateNaissance,lieuNaissance,adresse,nni) values('5LM018','Lalla Ba','للا با','','','','','NNI5LM018');
-- 2025-04-30 11:36:41
insert into eleve(matricule,nom,isme,sexe,dateNaissance,lieuNaissance,adresse,nni) values('5LM019','Horra Abdrahmane','حرة عبد الرحمن','','','','','NNI5LM019');
-- 2025-04-30 11:36:41
insert into eleve(matricule,nom,isme,sexe,dateNaissance,lieuNaissance,adresse,nni) values('5LM020','Vatimetou Abdallahi Beyatt','فاطيمتو عبد الله بيات','','','','','NNI5LM020');
-- 2025-04-30 11:36:42
insert into eleve(matricule,nom,isme,sexe,dateNaissance,lieuNaissance,adresse,nni) values('5LM021','Bah Ould Selma','باه ولد سلمة','','','','','NNI5LM021');
-- 2025-04-30 11:36:42
insert into eleve(matricule,nom,isme,sexe,dateNaissance,lieuNaissance,adresse,nni) values('5LM022','Aminetou Abdallahi Sghair','أمينتو عبد الله صغير','','','','','NNI5LM022');
-- 2025-04-30 11:36:42
insert into eleve(matricule,nom,isme,sexe,dateNaissance,lieuNaissance,adresse,nni) values('5LM023','Mohamed Yenje Abdallahi Brahimat','محمد ينجه عبد الله براهيمات','','','','','NNI5LM023');
-- 2025-04-30 11:36:42
insert into eleve(matricule,nom,isme,sexe,dateNaissance,lieuNaissance,adresse,nni) values('5LM024','Vetiye Ahmed Lekbed','فتي احمد الكبد','','','','','NNI5LM024');
-- 2025-04-30 11:36:42
insert into eleve(matricule,nom,isme,sexe,dateNaissance,lieuNaissance,adresse,nni) values('5LM025','Issa El Hadj Ahmed','عيسى الحاج أحمد','','','','','NNI5LM025');
-- 2025-04-30 11:36:43
insert into eleve(matricule,nom,isme,sexe,dateNaissance,lieuNaissance,adresse,nni) values('5LM026','Mouna Mohamed El Kory El Hajj','منى محمد الكوري الحاج','','','','','NNI5LM026');
-- 2025-04-30 11:36:43
insert into eleve(matricule,nom,isme,sexe,dateNaissance,lieuNaissance,adresse,nni) values('5LM027','Maimouna Sid''Ahmed El Id','ميمونه سيد أحمد اليد','','','','','NNI5LM027');
-- 2025-04-30 11:36:43
insert into eleve(matricule,nom,isme,sexe,dateNaissance,lieuNaissance,adresse,nni) values('5LM028','Mariem Oumar M''barek','مريم عمر امبارك','','','','','NNI5LM028');
-- 2025-04-30 11:36:43
insert into eleve(matricule,nom,isme,sexe,dateNaissance,lieuNaissance,adresse,nni) values('5LM029','Aissata Katari Ba','عيشاتا كتاري با','','','','','NNI5LM029');
-- 2025-04-30 11:36:43
insert into eleve(matricule,nom,isme,sexe,dateNaissance,lieuNaissance,adresse,nni) values('5LM030','Amenta Abdel Aziz Ba','آمنتا عبد العزيز با','','','','','NNI5LM030');
-- 2025-04-30 11:36:43
insert into eleve(matricule,nom,isme,sexe,dateNaissance,lieuNaissance,adresse,nni) values('5LM031','Yahya El Moustapha','يحيى المصطفى','','','','','NNI5LM031');
-- 2025-04-30 11:36:44
insert into eleve(matricule,nom,isme,sexe,dateNaissance,lieuNaissance,adresse,nni) values('5LM032','Oumar Houcein Boulkheir','عمر الحسين بولخير','','','','','NNI5LM032');
-- 2025-04-30 11:36:44
insert into eleve(matricule,nom,isme,sexe,dateNaissance,lieuNaissance,adresse,nni) values('5LM033','Aiche Mohamed Nouh','عيشة محمد نوح','','','','','NNI5LM033');
-- 2025-04-30 11:36:44
insert into eleve(matricule,nom,isme,sexe,dateNaissance,lieuNaissance,adresse,nni) values('5LM034','Nasra M Thioya','نصره ام تيوا','','','','','NNI5LM034');
-- 2025-04-30 11:36:44
insert into eleve(matricule,nom,isme,sexe,dateNaissance,lieuNaissance,adresse,nni) values('5LM035','Khadijetou Sidi Ebilil','اخديج سيدي ابيليل','','','','','NNI5LM035');
-- 2025-04-30 11:36:45
insert into eleve(matricule,nom,isme,sexe,dateNaissance,lieuNaissance,adresse,nni) values('5LM036','Fatimata Boubacar Diallo','افتمتا بوبكر جالو','','','','','NNI5LM036');
-- 2025-04-30 11:36:45
insert into eleve(matricule,nom,isme,sexe,dateNaissance,lieuNaissance,adresse,nni) values('5LM037','Aïcha Ghoulam Malick','عيش غلام مالك','','','','','NNI5LM037');
-- 2025-04-30 11:36:45
insert into eleve(matricule,nom,isme,sexe,dateNaissance,lieuNaissance,adresse,nni) values('5LM038','Fatima Alyne Mbarak','فاطمة علين امبارك','','','','','NNI5LM038');
-- 2025-04-30 11:36:45
insert into eleve(matricule,nom,isme,sexe,dateNaissance,lieuNaissance,adresse,nni) values('5LM039','Eddaty Jaafar Mouham','الداتي جعفر موهم','','','','','NNI5LM039');
-- 2025-04-30 11:36:45
insert into eleve(matricule,nom,isme,sexe,dateNaissance,lieuNaissance,adresse,nni) values('5LM040','Mohamed Habib Mohamed','محمد حبيب محمد','','','','','NNI5LM040');
-- 2025-04-30 11:36:46
insert into eleve(matricule,nom,isme,sexe,dateNaissance,lieuNaissance,adresse,nni) values('5LM041','El Aliya Med Ahmed Sidaty','العالية محمد احمد سيداتي','','','','','NNI5LM041');
-- 2025-04-30 11:36:46
insert into eleve(matricule,nom,isme,sexe,dateNaissance,lieuNaissance,adresse,nni) values('5LM042','Youssef Mohamed','يوسف محمد','','','','','NNI5LM042');
-- 2025-04-30 11:36:46
insert into eleve(matricule,nom,isme,sexe,dateNaissance,lieuNaissance,adresse,nni) values('5LM043','Ismail Abdallahi Hamdalla','اسماعيل عبد الله حمد الله','','','','','NNI5LM043');
-- 2025-04-30 11:36:46
insert into eleve(matricule,nom,isme,sexe,dateNaissance,lieuNaissance,adresse,nni) values('5LM044','Lemcheiba Bougviva','لمشيبة بوكفيفه','','','','','NNI5LM044');
-- 2025-04-30 11:36:47
insert into eleve(matricule,nom,isme,sexe,dateNaissance,lieuNaissance,adresse,nni) values('5LM045','Mohamed Naji Boubou','محمد ناجي بوبو','','','','','NNI5LM045');
-- 2025-04-30 11:36:47
insert into eleve(matricule,nom,isme,sexe,dateNaissance,lieuNaissance,adresse,nni) values('5LM046','Abdallahi Mohamed Vadel','عبد الله محمد فاضل','','','','','NNI5LM046');
-- 2025-04-30 11:36:47
insert into eleve(matricule,nom,isme,sexe,dateNaissance,lieuNaissance,adresse,nni) values('5LM047','Ibrahim Enel Afkirin','ابراهيم انل افكيرين','','','','','NNI5LM047');
-- 2025-04-30 11:36:47
insert into eleve(matricule,nom,isme,sexe,dateNaissance,lieuNaissance,adresse,nni) values('5LM048','Khadija / Ibrahim / Emijine','خديجة / ابراهيم / اميجن','','','','','NNI5LM048');
-- 2025-04-30 11:36:47
insert into eleve(matricule,nom,isme,sexe,dateNaissance,lieuNaissance,adresse,nni) values('5LM049','El Ghazali Heibel Ahmed Abi','الغزالي حيبل احمد ابي','','','','','NNI5LM049');
-- 2025-04-30 11:36:48
insert into eleve(matricule,nom,isme,sexe,dateNaissance,lieuNaissance,adresse,nni) values('5LM050','Fatima Abouh Amar','فاطمة ابوه اعمر','','','','','NNI5LM050');
-- 2025-04-30 11:36:48
insert into eleve(matricule,nom,isme,sexe,dateNaissance,lieuNaissance,adresse,nni) values('5LM051','Med Mahmoud Sidi Med','محمد محمود سيدي محمد','','','','','NNI5LM051');
-- 2025-04-30 11:36:48
insert into eleve(matricule,nom,isme,sexe,dateNaissance,lieuNaissance,adresse,nni) values('5LM052','Ahmed Ould Alioune','احمد ولد عليون','','','','','NNI5LM052');
-- 2025-04-30 11:36:48
insert into eleve(matricule,nom,isme,sexe,dateNaissance,lieuNaissance,adresse,nni) values('5LM053','El Avia Selmou','العافية سيلمو','','','','','NNI5LM053');
-- 2025-04-30 11:36:48
insert into eleve(matricule,nom,isme,sexe,dateNaissance,lieuNaissance,adresse,nni) values('5LM054','Oumou Khairy Kowrio','أم الخير كوريو','','','','','NNI5LM054');
-- 2025-04-30 11:36:49
insert into eleve(matricule,nom,isme,sexe,dateNaissance,lieuNaissance,adresse,nni) values('5LM055','Boudra Mohamed Deyali','بودره محمد ديالي','','','','','NNI5LM055');
-- 2025-04-30 11:36:49
insert into eleve(matricule,nom,isme,sexe,dateNaissance,lieuNaissance,adresse,nni) values('5LM056','','','','','','','NNI5LM056');
-- 2025-04-30 11:42:25
insert into inscrit(idInscrit,matricule,codeSalleClasse,numeroInscrit,typeInscrit,dateInscription) values('','5LM001','A24255LM','1','passant','2025-04-30');
-- 2025-04-30 11:42:26
insert into inscrit(idInscrit,matricule,codeSalleClasse,numeroInscrit,typeInscrit,dateInscription) values('','5LM002','A24255LM','2','passant','2025-04-30');
-- 2025-04-30 11:42:26
insert into inscrit(idInscrit,matricule,codeSalleClasse,numeroInscrit,typeInscrit,dateInscription) values('','5LM003','A24255LM','3','passant','2025-04-30');
-- 2025-04-30 11:42:26
insert into inscrit(idInscrit,matricule,codeSalleClasse,numeroInscrit,typeInscrit,dateInscription) values('','5LM004','A24255LM','4','passant','2025-04-30');
-- 2025-04-30 11:42:26
insert into inscrit(idInscrit,matricule,codeSalleClasse,numeroInscrit,typeInscrit,dateInscription) values('','5LM005','A24255LM','5','passant','2025-04-30');
-- 2025-04-30 11:42:26
insert into inscrit(idInscrit,matricule,codeSalleClasse,numeroInscrit,typeInscrit,dateInscription) values('','5LM006','A24255LM','6','passant','2025-04-30');
-- 2025-04-30 11:42:27
insert into inscrit(idInscrit,matricule,codeSalleClasse,numeroInscrit,typeInscrit,dateInscription) values('','5LM007','A24255LM','7','passant','2025-04-30');
-- 2025-04-30 11:42:27
insert into inscrit(idInscrit,matricule,codeSalleClasse,numeroInscrit,typeInscrit,dateInscription) values('','5LM008','A24255LM','8','passant','2025-04-30');
-- 2025-04-30 11:42:27
insert into inscrit(idInscrit,matricule,codeSalleClasse,numeroInscrit,typeInscrit,dateInscription) values('','5LM009','A24255LM','9','passant','2025-04-30');
-- 2025-04-30 11:42:27
insert into inscrit(idInscrit,matricule,codeSalleClasse,numeroInscrit,typeInscrit,dateInscription) values('','5LM010','A24255LM','10','passant','2025-04-30');
-- 2025-04-30 11:42:27
insert into inscrit(idInscrit,matricule,codeSalleClasse,numeroInscrit,typeInscrit,dateInscription) values('','5LM011','A24255LM','11','passant','2025-04-30');
-- 2025-04-30 11:42:27
insert into inscrit(idInscrit,matricule,codeSalleClasse,numeroInscrit,typeInscrit,dateInscription) values('','5LM012','A24255LM','12','passant','2025-04-30');
-- 2025-04-30 11:42:28
insert into inscrit(idInscrit,matricule,codeSalleClasse,numeroInscrit,typeInscrit,dateInscription) values('','5LM013','A24255LM','13','passant','2025-04-30');
-- 2025-04-30 11:42:28
insert into inscrit(idInscrit,matricule,codeSalleClasse,numeroInscrit,typeInscrit,dateInscription) values('','5LM014','A24255LM','14','passant','2025-04-30');
-- 2025-04-30 11:42:28
insert into inscrit(idInscrit,matricule,codeSalleClasse,numeroInscrit,typeInscrit,dateInscription) values('','5LM015','A24255LM','15','passant','2025-04-30');
-- 2025-04-30 11:42:28
insert into inscrit(idInscrit,matricule,codeSalleClasse,numeroInscrit,typeInscrit,dateInscription) values('','5LM016','A24255LM','16','passant','2025-04-30');
-- 2025-04-30 11:42:29
insert into inscrit(idInscrit,matricule,codeSalleClasse,numeroInscrit,typeInscrit,dateInscription) values('','5LM017','A24255LM','17','passant','2025-04-30');
-- 2025-04-30 11:42:29
insert into inscrit(idInscrit,matricule,codeSalleClasse,numeroInscrit,typeInscrit,dateInscription) values('','5LM018','A24255LM','18','passant','2025-04-30');
-- 2025-04-30 11:42:29
insert into inscrit(idInscrit,matricule,codeSalleClasse,numeroInscrit,typeInscrit,dateInscription) values('','5LM019','A24255LM','19','passant','2025-04-30');
-- 2025-04-30 11:42:29
insert into inscrit(idInscrit,matricule,codeSalleClasse,numeroInscrit,typeInscrit,dateInscription) values('','5LM020','A24255LM','20','passant','2025-04-30');
-- 2025-04-30 11:42:29
insert into inscrit(idInscrit,matricule,codeSalleClasse,numeroInscrit,typeInscrit,dateInscription) values('','5LM021','A24255LM','21','passant','2025-04-30');
-- 2025-04-30 11:42:29
insert into inscrit(idInscrit,matricule,codeSalleClasse,numeroInscrit,typeInscrit,dateInscription) values('','5LM022','A24255LM','22','passant','2025-04-30');
-- 2025-04-30 11:42:30
insert into inscrit(idInscrit,matricule,codeSalleClasse,numeroInscrit,typeInscrit,dateInscription) values('','5LM023','A24255LM','23','passant','2025-04-30');
-- 2025-04-30 11:42:30
insert into inscrit(idInscrit,matricule,codeSalleClasse,numeroInscrit,typeInscrit,dateInscription) values('','5LM024','A24255LM','24','passant','2025-04-30');
-- 2025-04-30 11:42:30
insert into inscrit(idInscrit,matricule,codeSalleClasse,numeroInscrit,typeInscrit,dateInscription) values('','5LM025','A24255LM','25','passant','2025-04-30');
-- 2025-04-30 11:42:30
insert into inscrit(idInscrit,matricule,codeSalleClasse,numeroInscrit,typeInscrit,dateInscription) values('','5LM026','A24255LM','26','passant','2025-04-30');
-- 2025-04-30 11:42:30
insert into inscrit(idInscrit,matricule,codeSalleClasse,numeroInscrit,typeInscrit,dateInscription) values('','5LM027','A24255LM','27','passant','2025-04-30');
-- 2025-04-30 11:42:31
insert into inscrit(idInscrit,matricule,codeSalleClasse,numeroInscrit,typeInscrit,dateInscription) values('','5LM028','A24255LM','28','passant','2025-04-30');
-- 2025-04-30 11:42:31
insert into inscrit(idInscrit,matricule,codeSalleClasse,numeroInscrit,typeInscrit,dateInscription) values('','5LM029','A24255LM','29','passant','2025-04-30');
-- 2025-04-30 11:42:31
insert into inscrit(idInscrit,matricule,codeSalleClasse,numeroInscrit,typeInscrit,dateInscription) values('','5LM030','A24255LM','30','passant','2025-04-30');
-- 2025-04-30 11:42:31
insert into inscrit(idInscrit,matricule,codeSalleClasse,numeroInscrit,typeInscrit,dateInscription) values('','5LM031','A24255LM','31','passant','2025-04-30');
-- 2025-04-30 11:42:31
insert into inscrit(idInscrit,matricule,codeSalleClasse,numeroInscrit,typeInscrit,dateInscription) values('','5LM032','A24255LM','32','passant','2025-04-30');
-- 2025-04-30 11:42:32
insert into inscrit(idInscrit,matricule,codeSalleClasse,numeroInscrit,typeInscrit,dateInscription) values('','5LM033','A24255LM','33','passant','2025-04-30');
-- 2025-04-30 11:42:32
insert into inscrit(idInscrit,matricule,codeSalleClasse,numeroInscrit,typeInscrit,dateInscription) values('','5LM034','A24255LM','34','passant','2025-04-30');
-- 2025-04-30 11:42:32
insert into inscrit(idInscrit,matricule,codeSalleClasse,numeroInscrit,typeInscrit,dateInscription) values('','5LM035','A24255LM','35','passant','2025-04-30');
-- 2025-04-30 11:42:32
insert into inscrit(idInscrit,matricule,codeSalleClasse,numeroInscrit,typeInscrit,dateInscription) values('','5LM036','A24255LM','36','passant','2025-04-30');
-- 2025-04-30 11:42:32
insert into inscrit(idInscrit,matricule,codeSalleClasse,numeroInscrit,typeInscrit,dateInscription) values('','5LM037','A24255LM','37','passant','2025-04-30');
-- 2025-04-30 11:42:33
insert into inscrit(idInscrit,matricule,codeSalleClasse,numeroInscrit,typeInscrit,dateInscription) values('','5LM038','A24255LM','38','passant','2025-04-30');
-- 2025-04-30 11:42:33
insert into inscrit(idInscrit,matricule,codeSalleClasse,numeroInscrit,typeInscrit,dateInscription) values('','5LM039','A24255LM','39','passant','2025-04-30');
-- 2025-04-30 11:42:33
insert into inscrit(idInscrit,matricule,codeSalleClasse,numeroInscrit,typeInscrit,dateInscription) values('','5LM040','A24255LM','40','passant','2025-04-30');
-- 2025-04-30 11:42:33
insert into inscrit(idInscrit,matricule,codeSalleClasse,numeroInscrit,typeInscrit,dateInscription) values('','5LM041','A24255LM','41','passant','2025-04-30');
-- 2025-04-30 11:42:33
insert into inscrit(idInscrit,matricule,codeSalleClasse,numeroInscrit,typeInscrit,dateInscription) values('','5LM042','A24255LM','42','passant','2025-04-30');
-- 2025-04-30 11:42:34
insert into inscrit(idInscrit,matricule,codeSalleClasse,numeroInscrit,typeInscrit,dateInscription) values('','5LM043','A24255LM','43','passant','2025-04-30');
-- 2025-04-30 11:42:34
insert into inscrit(idInscrit,matricule,codeSalleClasse,numeroInscrit,typeInscrit,dateInscription) values('','5LM044','A24255LM','44','passant','2025-04-30');
-- 2025-04-30 11:42:34
insert into inscrit(idInscrit,matricule,codeSalleClasse,numeroInscrit,typeInscrit,dateInscription) values('','5LM045','A24255LM','45','passant','2025-04-30');
-- 2025-04-30 11:42:34
insert into inscrit(idInscrit,matricule,codeSalleClasse,numeroInscrit,typeInscrit,dateInscription) values('','5LM046','A24255LM','46','passant','2025-04-30');
-- 2025-04-30 11:42:34
insert into inscrit(idInscrit,matricule,codeSalleClasse,numeroInscrit,typeInscrit,dateInscription) values('','5LM047','A24255LM','47','passant','2025-04-30');
-- 2025-04-30 11:42:35
insert into inscrit(idInscrit,matricule,codeSalleClasse,numeroInscrit,typeInscrit,dateInscription) values('','5LM048','A24255LM','48','passant','2025-04-30');
-- 2025-04-30 11:42:35
insert into inscrit(idInscrit,matricule,codeSalleClasse,numeroInscrit,typeInscrit,dateInscription) values('','5LM049','A24255LM','49','passant','2025-04-30');
-- 2025-04-30 11:42:35
insert into inscrit(idInscrit,matricule,codeSalleClasse,numeroInscrit,typeInscrit,dateInscription) values('','5LM050','A24255LM','50','passant','2025-04-30');
-- 2025-04-30 11:42:35
insert into inscrit(idInscrit,matricule,codeSalleClasse,numeroInscrit,typeInscrit,dateInscription) values('','5LM051','A24255LM','51','passant','2025-04-30');
-- 2025-04-30 11:42:35
insert into inscrit(idInscrit,matricule,codeSalleClasse,numeroInscrit,typeInscrit,dateInscription) values('','5LM052','A24255LM','52','passant','2025-04-30');
-- 2025-04-30 11:42:36
insert into inscrit(idInscrit,matricule,codeSalleClasse,numeroInscrit,typeInscrit,dateInscription) values('','5LM053','A24255LM','53','passant','2025-04-30');
-- 2025-04-30 11:42:36
insert into inscrit(idInscrit,matricule,codeSalleClasse,numeroInscrit,typeInscrit,dateInscription) values('','5LM054','A24255LM','54','passant','2025-04-30');
-- 2025-04-30 11:42:36
insert into inscrit(idInscrit,matricule,codeSalleClasse,numeroInscrit,typeInscrit,dateInscription) values('','5LM055','A24255LM','55','passant','2025-04-30');
-- 2025-04-30 11:44:10
delete from eleve where matricule='5LM056';
-- 2025-04-30 11:47:00
update eleve set matricule='5LM055',nom='Boudra / Deyali',isme='بودره \ ديالي',sexe='F',dateNaissance='',lieuNaissance='',adresse='',nni='NNI5LM055' where matricule='5LM055';