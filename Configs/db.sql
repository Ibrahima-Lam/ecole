
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
-- 2025-05-03 19:52:55
insert into examen (codeExamen,codeClasseMatiere,codeSalleClasse,codeEvaluation,dateExamen,statutExamen,heureDebutExamen,heureFinExamen) values ('A24255D1SN5DC1','SN5D','A24255D1','C1','2024-12-24','1','','');
-- 2025-05-03 19:52:55
insert into examen (codeExamen,codeClasseMatiere,codeSalleClasse,codeEvaluation,dateExamen,statutExamen,heureDebutExamen,heureFinExamen) values ('A24255D1MATH5DC1','MATH5D','A24255D1','C1','2025-05-16','1','','');
-- 2025-05-03 19:52:55
insert into examen (codeExamen,codeClasseMatiere,codeSalleClasse,codeEvaluation,dateExamen,statutExamen,heureDebutExamen,heureFinExamen) values ('A24255D1FR5DC1','FR5D','A24255D1','C1','','1','','');
-- 2025-05-03 19:52:55
insert into examen (codeExamen,codeClasseMatiere,codeSalleClasse,codeEvaluation,dateExamen,statutExamen,heureDebutExamen,heureFinExamen) values ('A24255D1AR5DC1','AR5D','A24255D1','C1','','1','','');
-- 2025-05-03 19:52:55
insert into examen (codeExamen,codeClasseMatiere,codeSalleClasse,codeEvaluation,dateExamen,statutExamen,heureDebutExamen,heureFinExamen) values ('A24255D1HG5DC1','HG5D','A24255D1','C1','','1','','');
-- 2025-05-03 19:52:55
insert into examen (codeExamen,codeClasseMatiere,codeSalleClasse,codeEvaluation,dateExamen,statutExamen,heureDebutExamen,heureFinExamen) values ('A24255D1EN5DC1','EN5D','A24255D1','C1','','1','','');
-- 2025-05-03 19:52:55
insert into examen (codeExamen,codeClasseMatiere,codeSalleClasse,codeEvaluation,dateExamen,statutExamen,heureDebutExamen,heureFinExamen) values ('A24255D1PHILO5DC1','PHILO5D','A24255D1','C1','','1','','');
-- 2025-05-03 19:52:55
insert into examen (codeExamen,codeClasseMatiere,codeSalleClasse,codeEvaluation,dateExamen,statutExamen,heureDebutExamen,heureFinExamen) values ('A24255D1IR5DC1','IR5D','A24255D1','C1','','1','','');
-- 2025-05-03 19:52:55
insert into examen (codeExamen,codeClasseMatiere,codeSalleClasse,codeEvaluation,dateExamen,statutExamen,heureDebutExamen,heureFinExamen) values ('A24255D1EPS5DC1','EPS5D','A24255D1','C1','','1','','');
-- 2025-05-03 19:52:55
insert into examen (codeExamen,codeClasseMatiere,codeSalleClasse,codeEvaluation,dateExamen,statutExamen,heureDebutExamen,heureFinExamen) values ('A24255D1IC5DC1','IC5D','A24255D1','C1','','1','','');
-- 2025-05-03 19:53:29
insert into examen (codeExamen,codeClasseMatiere,codeSalleClasse,codeEvaluation,dateExamen,statutExamen,heureDebutExamen,heureFinExamen) values ('A24255D1SN5DD1','SN5D','A24255D1','D1','','1','','');
-- 2025-05-03 19:53:30
insert into examen (codeExamen,codeClasseMatiere,codeSalleClasse,codeEvaluation,dateExamen,statutExamen,heureDebutExamen,heureFinExamen) values ('A24255D1MATH5DD1','MATH5D','A24255D1','D1','','1','','');
-- 2025-05-03 19:53:30
insert into examen (codeExamen,codeClasseMatiere,codeSalleClasse,codeEvaluation,dateExamen,statutExamen,heureDebutExamen,heureFinExamen) values ('A24255D1FR5DD1','FR5D','A24255D1','D1','','1','','');
-- 2025-05-03 19:53:30
insert into examen (codeExamen,codeClasseMatiere,codeSalleClasse,codeEvaluation,dateExamen,statutExamen,heureDebutExamen,heureFinExamen) values ('A24255D1AR5DD1','AR5D','A24255D1','D1','','1','','');
-- 2025-05-03 19:53:30
insert into examen (codeExamen,codeClasseMatiere,codeSalleClasse,codeEvaluation,dateExamen,statutExamen,heureDebutExamen,heureFinExamen) values ('A24255D1HG5DD1','HG5D','A24255D1','D1','','1','','');
-- 2025-05-03 19:53:30
insert into examen (codeExamen,codeClasseMatiere,codeSalleClasse,codeEvaluation,dateExamen,statutExamen,heureDebutExamen,heureFinExamen) values ('A24255D1EN5DD1','EN5D','A24255D1','D1','','1','','');
-- 2025-05-03 19:53:30
insert into examen (codeExamen,codeClasseMatiere,codeSalleClasse,codeEvaluation,dateExamen,statutExamen,heureDebutExamen,heureFinExamen) values ('A24255D1PHILO5DD1','PHILO5D','A24255D1','D1','','1','','');
-- 2025-05-03 19:53:30
insert into examen (codeExamen,codeClasseMatiere,codeSalleClasse,codeEvaluation,dateExamen,statutExamen,heureDebutExamen,heureFinExamen) values ('A24255D1IR5DD1','IR5D','A24255D1','D1','','1','','');
-- 2025-05-03 19:53:30
insert into examen (codeExamen,codeClasseMatiere,codeSalleClasse,codeEvaluation,dateExamen,statutExamen,heureDebutExamen,heureFinExamen) values ('A24255D1EPS5DD1','EPS5D','A24255D1','D1','','1','','');
-- 2025-05-03 19:53:30
insert into examen (codeExamen,codeClasseMatiere,codeSalleClasse,codeEvaluation,dateExamen,statutExamen,heureDebutExamen,heureFinExamen) values ('A24255D1IC5DD1','IC5D','A24255D1','D1','','1','','');
-- 2025-05-03 19:53:57
insert into examen (codeExamen,codeClasseMatiere,codeSalleClasse,codeEvaluation,dateExamen,statutExamen,heureDebutExamen,heureFinExamen) values ('A24255D1SN5DD2','SN5D','A24255D1','D2','','1','','');
-- 2025-05-03 19:53:58
insert into examen (codeExamen,codeClasseMatiere,codeSalleClasse,codeEvaluation,dateExamen,statutExamen,heureDebutExamen,heureFinExamen) values ('A24255D1PC5DD2','PC5D','A24255D1','D2','','1','','');
-- 2025-05-03 19:53:58
insert into examen (codeExamen,codeClasseMatiere,codeSalleClasse,codeEvaluation,dateExamen,statutExamen,heureDebutExamen,heureFinExamen) values ('A24255D1MATH5DD2','MATH5D','A24255D1','D2','','1','','');
-- 2025-05-03 19:53:58
insert into examen (codeExamen,codeClasseMatiere,codeSalleClasse,codeEvaluation,dateExamen,statutExamen,heureDebutExamen,heureFinExamen) values ('A24255D1FR5DD2','FR5D','A24255D1','D2','','1','','');
-- 2025-05-03 19:53:58
insert into examen (codeExamen,codeClasseMatiere,codeSalleClasse,codeEvaluation,dateExamen,statutExamen,heureDebutExamen,heureFinExamen) values ('A24255D1AR5DD2','AR5D','A24255D1','D2','','1','','');
-- 2025-05-03 19:53:58
insert into examen (codeExamen,codeClasseMatiere,codeSalleClasse,codeEvaluation,dateExamen,statutExamen,heureDebutExamen,heureFinExamen) values ('A24255D1HG5DD2','HG5D','A24255D1','D2','','1','','');
-- 2025-05-03 19:53:58
insert into examen (codeExamen,codeClasseMatiere,codeSalleClasse,codeEvaluation,dateExamen,statutExamen,heureDebutExamen,heureFinExamen) values ('A24255D1EN5DD2','EN5D','A24255D1','D2','','1','','');
-- 2025-05-03 19:53:58
insert into examen (codeExamen,codeClasseMatiere,codeSalleClasse,codeEvaluation,dateExamen,statutExamen,heureDebutExamen,heureFinExamen) values ('A24255D1PHILO5DD2','PHILO5D','A24255D1','D2','','1','','');
-- 2025-05-03 19:53:58
insert into examen (codeExamen,codeClasseMatiere,codeSalleClasse,codeEvaluation,dateExamen,statutExamen,heureDebutExamen,heureFinExamen) values ('A24255D1IR5DD2','IR5D','A24255D1','D2','','1','','');
-- 2025-05-03 19:53:58
insert into examen (codeExamen,codeClasseMatiere,codeSalleClasse,codeEvaluation,dateExamen,statutExamen,heureDebutExamen,heureFinExamen) values ('A24255D1EPS5DD2','EPS5D','A24255D1','D2','','1','','');
-- 2025-05-03 19:53:58
insert into examen (codeExamen,codeClasseMatiere,codeSalleClasse,codeEvaluation,dateExamen,statutExamen,heureDebutExamen,heureFinExamen) values ('A24255D1IC5DD2','IC5D','A24255D1','D2','','1','','');
-- 2025-05-03 20:00:06
insert into eleve(matricule,nom,isme,sexe,dateNaissance,lieuNaissance,adresse,nni) values('5d1064','Inconnu','','M','2000-01-01','Boghe','Boghe','NNI5D1064');
-- 2025-05-03 20:00:41
insert into inscrit(idInscrit,matricule,codeSalleClasse,numeroInscrit,typeInscrit,dateInscription) values('','5d1064','A24255D1','64','passant','2025-05-03');
-- 2025-05-03 20:04:17
insert into note(matricule,codeExamen,note) values('5d1001','A24255D1PC5DD1','5.5');
-- 2025-05-03 20:04:17
insert into note(matricule,codeExamen,note) values('5d1002','A24255D1PC5DD1','8.75');
-- 2025-05-03 20:04:17
insert into note(matricule,codeExamen,note) values('5d1003','A24255D1PC5DD1','8');
-- 2025-05-03 20:04:17
insert into note(matricule,codeExamen,note) values('5d1004','A24255D1PC5DD1','17.25');
-- 2025-05-03 20:04:17
insert into note(matricule,codeExamen,note) values('5d1005','A24255D1PC5DD1','10.75');
-- 2025-05-03 20:04:17
insert into note(matricule,codeExamen,note) values('5d1006','A24255D1PC5DD1','6.5');
-- 2025-05-03 20:05:25
insert into note(matricule,codeExamen,note) values('5d1007','A24255D1PC5DD1','6');
-- 2025-05-03 20:05:25
insert into note(matricule,codeExamen,note) values('5d1008','A24255D1PC5DD1','15.75');
-- 2025-05-03 20:05:25
insert into note(matricule,codeExamen,note) values('5d1009','A24255D1PC5DD1','4');
-- 2025-05-03 20:05:25
insert into note(matricule,codeExamen,note) values('5d1010','A24255D1PC5DD1','5');
-- 2025-05-03 20:05:25
insert into note(matricule,codeExamen,note) values('5d1011','A24255D1PC5DD1','11.75');
-- 2025-05-03 20:05:25
insert into note(matricule,codeExamen,note) values('5d1012','A24255D1PC5DD1','11');
-- 2025-05-03 20:05:26
insert into note(matricule,codeExamen,note) values('5d1013','A24255D1PC5DD1','5');
-- 2025-05-03 20:05:26
insert into note(matricule,codeExamen,note) values('5d1014','A24255D1PC5DD1','10.5');
-- 2025-05-03 20:05:26
insert into note(matricule,codeExamen,note) values('5d1015','A24255D1PC5DD1','3');
-- 2025-05-03 20:05:26
insert into note(matricule,codeExamen,note) values('5d1016','A24255D1PC5DD1','4');
-- 2025-05-03 20:05:26
insert into note(matricule,codeExamen,note) values('5d1017','A24255D1PC5DD1','13');
-- 2025-05-03 20:05:26
insert into note(matricule,codeExamen,note) values('5d1018','A24255D1PC5DD1','5');
-- 2025-05-03 20:05:36
insert into note(matricule,codeExamen,note) values('5d1019','A24255D1PC5DD1','12');
-- 2025-05-03 20:05:36
insert into note(matricule,codeExamen,note) values('5d1020','A24255D1PC5DD1','17');
-- 2025-05-03 20:05:36
insert into note(matricule,codeExamen,note) values('5d1021','A24255D1PC5DD1','13.25');
-- 2025-05-03 20:05:36
insert into note(matricule,codeExamen,note) values('5d1022','A24255D1PC5DD1','6.25');
-- 2025-05-03 20:05:36
insert into note(matricule,codeExamen,note) values('5d1023','A24255D1PC5DD1','8.5');
-- 2025-05-03 20:05:37
insert into note(matricule,codeExamen,note) values('5d1024','A24255D1PC5DD1','8.5');
-- 2025-05-03 20:18:02
insert into note(matricule,codeExamen,note) values('5d1025','A24255D1PC5DD1','6.5');
-- 2025-05-03 20:18:02
insert into note(matricule,codeExamen,note) values('5d1026','A24255D1PC5DD1','12.25');
-- 2025-05-03 20:18:02
insert into note(matricule,codeExamen,note) values('5d1027','A24255D1PC5DD1','11.25');
-- 2025-05-03 20:18:02
insert into note(matricule,codeExamen,note) values('5d1028','A24255D1PC5DD1','11.25');
-- 2025-05-03 20:18:02
insert into note(matricule,codeExamen,note) values('5d1029','A24255D1PC5DD1','10');
-- 2025-05-03 20:18:02
insert into note(matricule,codeExamen,note) values('5d1030','A24255D1PC5DD1','13');
-- 2025-05-03 20:18:02
insert into note(matricule,codeExamen,note) values('5d1031','A24255D1PC5DD1','10.5');
-- 2025-05-03 20:18:02
insert into note(matricule,codeExamen,note) values('5d1032','A24255D1PC5DD1','11.5');
-- 2025-05-03 20:18:02
insert into note(matricule,codeExamen,note) values('5d1033','A24255D1PC5DD1','9.5');
-- 2025-05-03 20:18:02
insert into note(matricule,codeExamen,note) values('5d1034','A24255D1PC5DD1','15');
-- 2025-05-03 20:18:02
insert into note(matricule,codeExamen,note) values('5d1035','A24255D1PC5DD1','4');
-- 2025-05-03 20:18:02
insert into note(matricule,codeExamen,note) values('5d1036','A24255D1PC5DD1','12');
-- 2025-05-03 20:18:02
insert into note(matricule,codeExamen,note) values('5d1037','A24255D1PC5DD1','15.25');
-- 2025-05-03 20:18:03
insert into note(matricule,codeExamen,note) values('5d1038','A24255D1PC5DD1','11.75');
-- 2025-05-03 20:18:03
insert into note(matricule,codeExamen,note) values('5d1039','A24255D1PC5DD1','5');
-- 2025-05-03 20:18:03
insert into note(matricule,codeExamen,note) values('5d1040','A24255D1PC5DD1','8');
-- 2025-05-03 20:18:03
insert into note(matricule,codeExamen,note) values('5d1041','A24255D1PC5DD1','16.5');
-- 2025-05-03 20:18:03
insert into note(matricule,codeExamen,note) values('5d1042','A24255D1PC5DD1','15.5');
-- 2025-05-03 20:18:03
insert into note(matricule,codeExamen,note) values('5d1043','A24255D1PC5DD1','9');
-- 2025-05-03 20:18:03
insert into note(matricule,codeExamen,note) values('5d1044','A24255D1PC5DD1','8');
-- 2025-05-03 20:18:03
insert into note(matricule,codeExamen,note) values('5d1045','A24255D1PC5DD1','0');
-- 2025-05-03 20:18:03
insert into note(matricule,codeExamen,note) values('5d1046','A24255D1PC5DD1','9.5');
-- 2025-05-03 20:18:03
insert into note(matricule,codeExamen,note) values('5d1047','A24255D1PC5DD1','6');
-- 2025-05-03 20:18:03
insert into note(matricule,codeExamen,note) values('5d1048','A24255D1PC5DD1','8');
-- 2025-05-03 20:18:03
insert into note(matricule,codeExamen,note) values('5d1049','A24255D1PC5DD1','8.5');
-- 2025-05-03 20:18:03
insert into note(matricule,codeExamen,note) values('5d1050','A24255D1PC5DD1','5');
-- 2025-05-03 20:18:03
insert into note(matricule,codeExamen,note) values('5d1051','A24255D1PC5DD1','0');
-- 2025-05-03 20:18:03
insert into note(matricule,codeExamen,note) values('5d1052','A24255D1PC5DD1','19');
-- 2025-05-03 20:18:03
insert into note(matricule,codeExamen,note) values('5d1053','A24255D1PC5DD1','7');
-- 2025-05-03 20:18:04
insert into note(matricule,codeExamen,note) values('5d1054','A24255D1PC5DD1','12');
-- 2025-05-03 20:18:04
insert into note(matricule,codeExamen,note) values('5d1055','A24255D1PC5DD1','0');
-- 2025-05-03 20:18:04
insert into note(matricule,codeExamen,note) values('5d1056','A24255D1PC5DD1','12.5');
-- 2025-05-03 20:18:04
insert into note(matricule,codeExamen,note) values('5d1057','A24255D1PC5DD1','0');
-- 2025-05-03 20:18:04
insert into note(matricule,codeExamen,note) values('5d1058','A24255D1PC5DD1','0');
-- 2025-05-03 20:18:04
insert into note(matricule,codeExamen,note) values('5d1059','A24255D1PC5DD1','10');
-- 2025-05-03 20:18:04
insert into note(matricule,codeExamen,note) values('5d1060','A24255D1PC5DD1','9');
-- 2025-05-03 20:18:04
insert into note(matricule,codeExamen,note) values('5d1061','A24255D1PC5DD1','12.25');
-- 2025-05-03 20:18:04
insert into note(matricule,codeExamen,note) values('5d1062','A24255D1PC5DD1','0');
-- 2025-05-03 20:18:04
insert into note(matricule,codeExamen,note) values('5d1063','A24255D1PC5DD1','0');
-- 2025-05-03 20:18:04
insert into note(matricule,codeExamen,note) values('5d1064','A24255D1PC5DD1','0');
-- 2025-05-03 20:24:18
insert into note(matricule,codeExamen,note) values('5d1001','A24255D1PC5DD2','4');
-- 2025-05-03 20:24:18
insert into note(matricule,codeExamen,note) values('5d1002','A24255D1PC5DD2','15.75');
-- 2025-05-03 20:24:19
insert into note(matricule,codeExamen,note) values('5d1003','A24255D1PC5DD2','3.75');
-- 2025-05-03 20:24:19
insert into note(matricule,codeExamen,note) values('5d1004','A24255D1PC5DD2','4');
-- 2025-05-03 20:24:19
insert into note(matricule,codeExamen,note) values('5d1005','A24255D1PC5DD2','15');
-- 2025-05-03 20:24:19
insert into note(matricule,codeExamen,note) values('5d1006','A24255D1PC5DD2','12');
-- 2025-05-03 20:24:19
insert into note(matricule,codeExamen,note) values('5d1007','A24255D1PC5DD2','0');
-- 2025-05-03 20:24:19
insert into note(matricule,codeExamen,note) values('5d1008','A24255D1PC5DD2','4');
-- 2025-05-03 20:24:19
insert into note(matricule,codeExamen,note) values('5d1009','A24255D1PC5DD2','11.75');
-- 2025-05-03 20:24:20
insert into note(matricule,codeExamen,note) values('5d1010','A24255D1PC5DD2','13.5');
-- 2025-05-03 20:24:20
insert into note(matricule,codeExamen,note) values('5d1011','A24255D1PC5DD2','9.5');
-- 2025-05-03 20:24:20
insert into note(matricule,codeExamen,note) values('5d1012','A24255D1PC5DD2','14');
-- 2025-05-03 20:24:20
insert into note(matricule,codeExamen,note) values('5d1013','A24255D1PC5DD2','9.5');
-- 2025-05-03 20:24:20
insert into note(matricule,codeExamen,note) values('5d1014','A24255D1PC5DD2','14');
-- 2025-05-03 20:24:20
insert into note(matricule,codeExamen,note) values('5d1015','A24255D1PC5DD2','5');
-- 2025-05-03 20:24:20
insert into note(matricule,codeExamen,note) values('5d1016','A24255D1PC5DD2','4');
-- 2025-05-03 20:24:20
insert into note(matricule,codeExamen,note) values('5d1017','A24255D1PC5DD2','13.25');
-- 2025-05-03 20:24:20
insert into note(matricule,codeExamen,note) values('5d1018','A24255D1PC5DD2','10.75');
-- 2025-05-03 20:24:20
insert into note(matricule,codeExamen,note) values('5d1019','A24255D1PC5DD2','4');
-- 2025-05-03 20:24:21
insert into note(matricule,codeExamen,note) values('5d1020','A24255D1PC5DD2','0');
-- 2025-05-03 20:24:21
insert into note(matricule,codeExamen,note) values('5d1021','A24255D1PC5DD2','14.5');
-- 2025-05-03 20:24:21
insert into note(matricule,codeExamen,note) values('5d1022','A24255D1PC5DD2','13.5');
-- 2025-05-03 20:24:21
insert into note(matricule,codeExamen,note) values('5d1023','A24255D1PC5DD2','6');
-- 2025-05-03 20:24:21
insert into note(matricule,codeExamen,note) values('5d1024','A24255D1PC5DD2','15.25');
-- 2025-05-03 20:24:21
insert into note(matricule,codeExamen,note) values('5d1025','A24255D1PC5DD2','11');
-- 2025-05-03 20:24:21
insert into note(matricule,codeExamen,note) values('5d1026','A24255D1PC5DD2','14.75');
-- 2025-05-03 20:24:21
insert into note(matricule,codeExamen,note) values('5d1027','A24255D1PC5DD2','9.5');
-- 2025-05-03 20:24:21
insert into note(matricule,codeExamen,note) values('5d1028','A24255D1PC5DD2','4.5');
-- 2025-05-03 20:24:22
insert into note(matricule,codeExamen,note) values('5d1029','A24255D1PC5DD2','13.75');
-- 2025-05-03 20:24:22
insert into note(matricule,codeExamen,note) values('5d1030','A24255D1PC5DD2','11.5');
-- 2025-05-03 20:24:22
insert into note(matricule,codeExamen,note) values('5d1031','A24255D1PC5DD2','16.25');
-- 2025-05-03 20:24:22
insert into note(matricule,codeExamen,note) values('5d1032','A24255D1PC5DD2','12.5');
-- 2025-05-03 20:24:22
insert into note(matricule,codeExamen,note) values('5d1033','A24255D1PC5DD2','10.5');
-- 2025-05-03 20:24:22
insert into note(matricule,codeExamen,note) values('5d1034','A24255D1PC5DD2','10');
-- 2025-05-03 20:24:22
insert into note(matricule,codeExamen,note) values('5d1035','A24255D1PC5DD2','9.75');
-- 2025-05-03 20:24:22
insert into note(matricule,codeExamen,note) values('5d1036','A24255D1PC5DD2','14.5');
-- 2025-05-03 20:24:22
insert into note(matricule,codeExamen,note) values('5d1037','A24255D1PC5DD2','16');
-- 2025-05-03 20:24:22
insert into note(matricule,codeExamen,note) values('5d1038','A24255D1PC5DD2','9.5');
-- 2025-05-03 20:24:22
insert into note(matricule,codeExamen,note) values('5d1039','A24255D1PC5DD2','4');
-- 2025-05-03 20:24:22
insert into note(matricule,codeExamen,note) values('5d1040','A24255D1PC5DD2','8.5');
-- 2025-05-03 20:24:23
insert into note(matricule,codeExamen,note) values('5d1041','A24255D1PC5DD2','16.5');
-- 2025-05-03 20:24:23
insert into note(matricule,codeExamen,note) values('5d1042','A24255D1PC5DD2','14');
-- 2025-05-03 20:24:23
insert into note(matricule,codeExamen,note) values('5d1043','A24255D1PC5DD2','11.25');
-- 2025-05-03 20:24:23
insert into note(matricule,codeExamen,note) values('5d1044','A24255D1PC5DD2','4');
-- 2025-05-03 20:24:23
insert into note(matricule,codeExamen,note) values('5d1045','A24255D1PC5DD2','0');
-- 2025-05-03 20:24:23
insert into note(matricule,codeExamen,note) values('5d1046','A24255D1PC5DD2','14.75');
-- 2025-05-03 20:24:23
insert into note(matricule,codeExamen,note) values('5d1047','A24255D1PC5DD2','12.25');
-- 2025-05-03 20:24:23
insert into note(matricule,codeExamen,note) values('5d1048','A24255D1PC5DD2','13.25');
-- 2025-05-03 20:24:23
insert into note(matricule,codeExamen,note) values('5d1049','A24255D1PC5DD2','7.75');
-- 2025-05-03 20:24:23
insert into note(matricule,codeExamen,note) values('5d1050','A24255D1PC5DD2','0');
-- 2025-05-03 20:24:23
insert into note(matricule,codeExamen,note) values('5d1051','A24255D1PC5DD2','0');
-- 2025-05-03 20:24:23
insert into note(matricule,codeExamen,note) values('5d1052','A24255D1PC5DD2','19.5');
-- 2025-05-03 20:24:23
insert into note(matricule,codeExamen,note) values('5d1053','A24255D1PC5DD2','10');
-- 2025-05-03 20:24:23
insert into note(matricule,codeExamen,note) values('5d1054','A24255D1PC5DD2','8');
-- 2025-05-03 20:24:24
insert into note(matricule,codeExamen,note) values('5d1055','A24255D1PC5DD2','13.25');
-- 2025-05-03 20:24:24
insert into note(matricule,codeExamen,note) values('5d1056','A24255D1PC5DD2','0');
-- 2025-05-03 20:24:24
insert into note(matricule,codeExamen,note) values('5d1057','A24255D1PC5DD2','0');
-- 2025-05-03 20:24:24
insert into note(matricule,codeExamen,note) values('5d1058','A24255D1PC5DD2','0');
-- 2025-05-03 20:24:24
insert into note(matricule,codeExamen,note) values('5d1059','A24255D1PC5DD2','13.75');
-- 2025-05-03 20:24:24
insert into note(matricule,codeExamen,note) values('5d1060','A24255D1PC5DD2','7');
-- 2025-05-03 20:24:24
insert into note(matricule,codeExamen,note) values('5d1061','A24255D1PC5DD2','5');
-- 2025-05-03 20:24:24
insert into note(matricule,codeExamen,note) values('5d1062','A24255D1PC5DD2','0');
-- 2025-05-03 20:24:24
insert into note(matricule,codeExamen,note) values('5d1063','A24255D1PC5DD2','9.25');
-- 2025-05-03 20:24:25
insert into note(matricule,codeExamen,note) values('5d1064','A24255D1PC5DD2','12.75');
-- 2025-05-03 20:27:39
insert into note(matricule,codeExamen,note) values('5d201','A24255D2PC5DC1','6.5');
-- 2025-05-03 20:27:39
insert into note(matricule,codeExamen,note) values('5d202','A24255D2PC5DC1','9.75');
-- 2025-05-03 20:27:39
insert into note(matricule,codeExamen,note) values('5d203','A24255D2PC5DC1','10.75');
-- 2025-05-03 20:27:39
insert into note(matricule,codeExamen,note) values('5d204','A24255D2PC5DC1','14.75');
-- 2025-05-03 20:27:39
insert into note(matricule,codeExamen,note) values('5d205','A24255D2PC5DC1','8');
-- 2025-05-03 20:27:39
insert into note(matricule,codeExamen,note) values('5d206','A24255D2PC5DC1','6.75');
-- 2025-05-03 20:27:40
insert into note(matricule,codeExamen,note) values('5d207','A24255D2PC5DC1','6');
-- 2025-05-03 20:27:40
insert into note(matricule,codeExamen,note) values('5d208','A24255D2PC5DC1','12.25');
-- 2025-05-03 20:27:40
insert into note(matricule,codeExamen,note) values('5d209','A24255D2PC5DC1','4.25');
-- 2025-05-03 20:27:40
insert into note(matricule,codeExamen,note) values('5d210','A24255D2PC5DC1','7');
-- 2025-05-03 20:27:40
insert into note(matricule,codeExamen,note) values('5d211','A24255D2PC5DC1','12.25');
-- 2025-05-03 20:27:40
insert into note(matricule,codeExamen,note) values('5d212','A24255D2PC5DC1','12.25');
-- 2025-05-03 20:27:40
insert into note(matricule,codeExamen,note) values('5d213','A24255D2PC5DC1','7');
-- 2025-05-03 20:27:40
insert into note(matricule,codeExamen,note) values('5d214','A24255D2PC5DC1','8.25');
-- 2025-05-03 20:27:40
insert into note(matricule,codeExamen,note) values('5d215','A24255D2PC5DC1','8');
-- 2025-05-03 20:27:40
insert into note(matricule,codeExamen,note) values('5d216','A24255D2PC5DC1','6');
-- 2025-05-03 20:27:40
insert into note(matricule,codeExamen,note) values('5d217','A24255D2PC5DC1','10.5');
-- 2025-05-03 20:27:40
insert into note(matricule,codeExamen,note) values('5d218','A24255D2PC5DC1','6.5');
-- 2025-05-03 20:27:40
insert into note(matricule,codeExamen,note) values('5d219','A24255D2PC5DC1','14.5');
-- 2025-05-03 20:27:41
insert into note(matricule,codeExamen,note) values('5d220','A24255D2PC5DC1','15');
-- 2025-05-03 20:27:41
insert into note(matricule,codeExamen,note) values('5d221','A24255D2PC5DC1','7.75');
-- 2025-05-03 20:27:41
insert into note(matricule,codeExamen,note) values('5d222','A24255D2PC5DC1','9.75');
-- 2025-05-03 20:27:41
insert into note(matricule,codeExamen,note) values('5d223','A24255D2PC5DC1','7.5');
-- 2025-05-03 20:27:41
insert into note(matricule,codeExamen,note) values('5d224','A24255D2PC5DC1','8.75');
-- 2025-05-03 20:27:41
insert into note(matricule,codeExamen,note) values('5d225','A24255D2PC5DC1','8.5');
-- 2025-05-03 20:27:41
insert into note(matricule,codeExamen,note) values('5d226','A24255D2PC5DC1','12.5');
-- 2025-05-03 20:27:41
insert into note(matricule,codeExamen,note) values('5d227','A24255D2PC5DC1','12.5');
-- 2025-05-03 20:27:41
insert into note(matricule,codeExamen,note) values('5d228','A24255D2PC5DC1','11.25');
-- 2025-05-03 20:27:41
insert into note(matricule,codeExamen,note) values('5d229','A24255D2PC5DC1','6.25');
-- 2025-05-03 20:27:41
insert into note(matricule,codeExamen,note) values('5d230','A24255D2PC5DC1','14.75');
-- 2025-05-03 20:27:41
insert into note(matricule,codeExamen,note) values('5d231','A24255D2PC5DC1','12.5');
-- 2025-05-03 20:27:41
insert into note(matricule,codeExamen,note) values('5d232','A24255D2PC5DC1','10');
-- 2025-05-03 20:27:42
insert into note(matricule,codeExamen,note) values('5d233','A24255D2PC5DC1','9.5');
-- 2025-05-03 20:27:42
insert into note(matricule,codeExamen,note) values('5d234','A24255D2PC5DC1','8');
-- 2025-05-03 20:27:42
insert into note(matricule,codeExamen,note) values('5d235','A24255D2PC5DC1','5.5');
-- 2025-05-03 20:27:42
insert into note(matricule,codeExamen,note) values('5d236','A24255D2PC5DC1','14.75');
-- 2025-05-03 20:27:42
insert into note(matricule,codeExamen,note) values('5d237','A24255D2PC5DC1','15.75');
-- 2025-05-03 20:27:42
insert into note(matricule,codeExamen,note) values('5d238','A24255D2PC5DC1','10.25');
-- 2025-05-03 20:27:42
insert into note(matricule,codeExamen,note) values('5d239','A24255D2PC5DC1','6.5');
-- 2025-05-03 20:27:42
insert into note(matricule,codeExamen,note) values('5d240','A24255D2PC5DC1','5');
-- 2025-05-03 20:27:42
insert into note(matricule,codeExamen,note) values('5d241','A24255D2PC5DC1','15.75');
-- 2025-05-03 20:27:42
insert into note(matricule,codeExamen,note) values('5d242','A24255D2PC5DC1','15');
-- 2025-05-03 20:27:42
insert into note(matricule,codeExamen,note) values('5d243','A24255D2PC5DC1','6');
-- 2025-05-03 20:27:42
insert into note(matricule,codeExamen,note) values('5d244','A24255D2PC5DC1','8');
-- 2025-05-03 20:27:42
insert into note(matricule,codeExamen,note) values('5d245','A24255D2PC5DC1','6');
-- 2025-05-03 20:27:43
insert into note(matricule,codeExamen,note) values('5d246','A24255D2PC5DC1','7.25');
-- 2025-05-03 20:27:43
insert into note(matricule,codeExamen,note) values('5d247','A24255D2PC5DC1','8.5');
-- 2025-05-03 20:27:43
insert into note(matricule,codeExamen,note) values('5d248','A24255D2PC5DC1','7.75');
-- 2025-05-03 20:27:43
insert into note(matricule,codeExamen,note) values('5d249','A24255D2PC5DC1','8.75');
-- 2025-05-03 20:27:43
insert into note(matricule,codeExamen,note) values('5d250','A24255D2PC5DC1','4.5');
-- 2025-05-03 20:27:43
insert into note(matricule,codeExamen,note) values('5d251','A24255D2PC5DC1','5');
-- 2025-05-03 20:27:43
insert into note(matricule,codeExamen,note) values('5d252','A24255D2PC5DC1','19');
-- 2025-05-03 20:27:43
insert into note(matricule,codeExamen,note) values('5d253','A24255D2PC5DC1','4.25');
-- 2025-05-03 20:27:43
insert into note(matricule,codeExamen,note) values('5d254','A24255D2PC5DC1','5.5');
-- 2025-05-03 20:27:43
insert into note(matricule,codeExamen,note) values('5d255','A24255D2PC5DC1','7');
-- 2025-05-03 20:27:43
insert into note(matricule,codeExamen,note) values('5d256','A24255D2PC5DC1','14.25');
-- 2025-05-03 20:27:44
insert into note(matricule,codeExamen,note) values('5d257','A24255D2PC5DC1','14');
-- 2025-05-03 20:27:44
insert into note(matricule,codeExamen,note) values('5d258','A24255D2PC5DC1','8');
-- 2025-05-03 20:27:44
insert into note(matricule,codeExamen,note) values('5d259','A24255D2PC5DC1','6.75');
-- 2025-05-03 20:27:44
insert into note(matricule,codeExamen,note) values('5d260','A24255D2PC5DC1','8');
-- 2025-05-03 20:27:44
insert into note(matricule,codeExamen,note) values('5d261','A24255D2PC5DC1','6.75');
-- 2025-05-03 20:27:44
insert into note(matricule,codeExamen,note) values('5d262','A24255D2PC5DC1','6');
-- 2025-05-03 20:27:44
insert into note(matricule,codeExamen,note) values('5d263','A24255D2PC5DC1','3');
-- 2025-05-03 20:32:13
insert into note(matricule,codeExamen,note) values('5d1001','A24255D1PC5DC2','4.5');
-- 2025-05-03 20:32:13
insert into note(matricule,codeExamen,note) values('5d1002','A24255D1PC5DC2','8');
-- 2025-05-03 20:32:13
insert into note(matricule,codeExamen,note) values('5d1003','A24255D1PC5DC2','6');
-- 2025-05-03 20:32:13
insert into note(matricule,codeExamen,note) values('5d1004','A24255D1PC5DC2','6.25');
-- 2025-05-03 20:32:13
insert into note(matricule,codeExamen,note) values('5d1005','A24255D1PC5DC2','4');
-- 2025-05-03 20:32:14
insert into note(matricule,codeExamen,note) values('5d1006','A24255D1PC5DC2','6');
-- 2025-05-03 20:32:14
insert into note(matricule,codeExamen,note) values('5d1007','A24255D1PC5DC2','4.75');
-- 2025-05-03 20:32:14
insert into note(matricule,codeExamen,note) values('5d1008','A24255D1PC5DC2','5.5');
-- 2025-05-03 20:32:14
insert into note(matricule,codeExamen,note) values('5d1009','A24255D1PC5DC2','5.75');
-- 2025-05-03 20:32:14
insert into note(matricule,codeExamen,note) values('5d1010','A24255D1PC5DC2','8.25');
-- 2025-05-03 20:32:14
insert into note(matricule,codeExamen,note) values('5d1011','A24255D1PC5DC2','8');
-- 2025-05-03 20:32:14
insert into note(matricule,codeExamen,note) values('5d1012','A24255D1PC5DC2','15.25');
-- 2025-05-03 20:32:14
insert into note(matricule,codeExamen,note) values('5d1013','A24255D1PC5DC2','7.25');
-- 2025-05-03 20:32:14
insert into note(matricule,codeExamen,note) values('5d1014','A24255D1PC5DC2','6.75');
-- 2025-05-03 20:32:14
insert into note(matricule,codeExamen,note) values('5d1015','A24255D1PC5DC2','6.5');
-- 2025-05-03 20:32:14
insert into note(matricule,codeExamen,note) values('5d1016','A24255D1PC5DC2','6.26');
-- 2025-05-03 20:32:15
insert into note(matricule,codeExamen,note) values('5d1017','A24255D1PC5DC2','11.5');
-- 2025-05-03 20:32:15
insert into note(matricule,codeExamen,note) values('5d1018','A24255D1PC5DC2','7');
-- 2025-05-03 20:32:15
insert into note(matricule,codeExamen,note) values('5d1019','A24255D1PC5DC2','6.5');
-- 2025-05-03 20:32:15
insert into note(matricule,codeExamen,note) values('5d1020','A24255D1PC5DC2','9.75');
-- 2025-05-03 20:32:15
insert into note(matricule,codeExamen,note) values('5d1021','A24255D1PC5DC2','10');
-- 2025-05-03 20:32:15
insert into note(matricule,codeExamen,note) values('5d1022','A24255D1PC5DC2','7.5');
-- 2025-05-03 20:32:15
insert into note(matricule,codeExamen,note) values('5d1023','A24255D1PC5DC2','10');
-- 2025-05-03 20:32:15
insert into note(matricule,codeExamen,note) values('5d1024','A24255D1PC5DC2','6.25');
-- 2025-05-03 20:32:15
insert into note(matricule,codeExamen,note) values('5d1025','A24255D1PC5DC2','7.75');
-- 2025-05-03 20:32:16
insert into note(matricule,codeExamen,note) values('5d1026','A24255D1PC5DC2','13.75');
-- 2025-05-03 20:32:16
insert into note(matricule,codeExamen,note) values('5d1027','A24255D1PC5DC2','10.25');
-- 2025-05-03 20:32:16
insert into note(matricule,codeExamen,note) values('5d1028','A24255D1PC5DC2','8');
-- 2025-05-03 20:32:16
insert into note(matricule,codeExamen,note) values('5d1029','A24255D1PC5DC2','6.5');
-- 2025-05-03 20:32:16
insert into note(matricule,codeExamen,note) values('5d1030','A24255D1PC5DC2','10.25');
-- 2025-05-03 20:32:16
insert into note(matricule,codeExamen,note) values('5d1031','A24255D1PC5DC2','8.5');
-- 2025-05-03 20:32:16
insert into note(matricule,codeExamen,note) values('5d1032','A24255D1PC5DC2','5.75');
-- 2025-05-03 20:32:16
insert into note(matricule,codeExamen,note) values('5d1033','A24255D1PC5DC2','11');
-- 2025-05-03 20:32:16
insert into note(matricule,codeExamen,note) values('5d1034','A24255D1PC5DC2','6.5');
-- 2025-05-03 20:32:16
insert into note(matricule,codeExamen,note) values('5d1035','A24255D1PC5DC2','7.75');
-- 2025-05-03 20:32:16
insert into note(matricule,codeExamen,note) values('5d1036','A24255D1PC5DC2','10');
-- 2025-05-03 20:32:17
insert into note(matricule,codeExamen,note) values('5d1037','A24255D1PC5DC2','12.75');
-- 2025-05-03 20:32:17
insert into note(matricule,codeExamen,note) values('5d1038','A24255D1PC5DC2','7.25');
-- 2025-05-03 20:32:17
insert into note(matricule,codeExamen,note) values('5d1039','A24255D1PC5DC2','3.5');
-- 2025-05-03 20:32:17
insert into note(matricule,codeExamen,note) values('5d1040','A24255D1PC5DC2','8.25');
-- 2025-05-03 20:32:17
insert into note(matricule,codeExamen,note) values('5d1041','A24255D1PC5DC2','9.75');
-- 2025-05-03 20:32:17
insert into note(matricule,codeExamen,note) values('5d1042','A24255D1PC5DC2','8.5');
-- 2025-05-03 20:32:17
insert into note(matricule,codeExamen,note) values('5d1043','A24255D1PC5DC2','3.5');
-- 2025-05-03 20:32:17
insert into note(matricule,codeExamen,note) values('5d1044','A24255D1PC5DC2','7');
-- 2025-05-03 20:32:17
insert into note(matricule,codeExamen,note) values('5d1045','A24255D1PC5DC2','0');
-- 2025-05-03 20:32:18
insert into note(matricule,codeExamen,note) values('5d1046','A24255D1PC5DC2','7.75');
-- 2025-05-03 20:32:18
insert into note(matricule,codeExamen,note) values('5d1047','A24255D1PC5DC2','9.5');
-- 2025-05-03 20:32:18
insert into note(matricule,codeExamen,note) values('5d1048','A24255D1PC5DC2','7');
-- 2025-05-03 20:32:18
insert into note(matricule,codeExamen,note) values('5d1049','A24255D1PC5DC2','10.5');
-- 2025-05-03 20:32:18
insert into note(matricule,codeExamen,note) values('5d1050','A24255D1PC5DC2','6.25');
-- 2025-05-03 20:32:18
insert into note(matricule,codeExamen,note) values('5d1051','A24255D1PC5DC2','10');
-- 2025-05-03 20:32:18
insert into note(matricule,codeExamen,note) values('5d1052','A24255D1PC5DC2','19.75');
-- 2025-05-03 20:32:18
insert into note(matricule,codeExamen,note) values('5d1053','A24255D1PC5DC2','7');
-- 2025-05-03 20:32:18
insert into note(matricule,codeExamen,note) values('5d1054','A24255D1PC5DC2','5.75');
-- 2025-05-03 20:32:18
insert into note(matricule,codeExamen,note) values('5d1055','A24255D1PC5DC2','3.5');
-- 2025-05-03 20:32:18
insert into note(matricule,codeExamen,note) values('5d1056','A24255D1PC5DC2','7.25');
-- 2025-05-03 20:32:18
insert into note(matricule,codeExamen,note) values('5d1057','A24255D1PC5DC2','0');
-- 2025-05-03 20:32:19
insert into note(matricule,codeExamen,note) values('5d1058','A24255D1PC5DC2','0');
-- 2025-05-03 20:32:19
insert into note(matricule,codeExamen,note) values('5d1059','A24255D1PC5DC2','6');
-- 2025-05-03 20:32:19
insert into note(matricule,codeExamen,note) values('5d1060','A24255D1PC5DC2','10.75');
-- 2025-05-03 20:32:19
insert into note(matricule,codeExamen,note) values('5d1061','A24255D1PC5DC2','6.5');
-- 2025-05-03 20:32:19
insert into note(matricule,codeExamen,note) values('5d1062','A24255D1PC5DC2','0');
-- 2025-05-03 20:32:19
insert into note(matricule,codeExamen,note) values('5d1063','A24255D1PC5DC2','3');
-- 2025-05-03 20:32:19
insert into note(matricule,codeExamen,note) values('5d1064','A24255D1PC5DC2','5');
-- 2025-05-03 20:38:08
insert into note(matricule,codeExamen,note) values('5d1001','A24255D1PC5DC1','6.5');
-- 2025-05-03 20:38:08
insert into note(matricule,codeExamen,note) values('5d1002','A24255D1PC5DC1','9.75');
-- 2025-05-03 20:38:08
insert into note(matricule,codeExamen,note) values('5d1003','A24255D1PC5DC1','10.75');
-- 2025-05-03 20:38:08
insert into note(matricule,codeExamen,note) values('5d1004','A24255D1PC5DC1','14.75');
-- 2025-05-03 20:38:08
insert into note(matricule,codeExamen,note) values('5d1005','A24255D1PC5DC1','8');
-- 2025-05-03 20:38:09
insert into note(matricule,codeExamen,note) values('5d1006','A24255D1PC5DC1','6.75');
-- 2025-05-03 20:38:09
insert into note(matricule,codeExamen,note) values('5d1007','A24255D1PC5DC1','6');
-- 2025-05-03 20:38:09
insert into note(matricule,codeExamen,note) values('5d1008','A24255D1PC5DC1','12.25');
-- 2025-05-03 20:38:09
insert into note(matricule,codeExamen,note) values('5d1009','A24255D1PC5DC1','4.25');
-- 2025-05-03 20:38:09
insert into note(matricule,codeExamen,note) values('5d1010','A24255D1PC5DC1','7');
-- 2025-05-03 20:38:09
insert into note(matricule,codeExamen,note) values('5d1011','A24255D1PC5DC1','12.25');
-- 2025-05-03 20:38:09
insert into note(matricule,codeExamen,note) values('5d1012','A24255D1PC5DC1','12.25');
-- 2025-05-03 20:38:09
insert into note(matricule,codeExamen,note) values('5d1013','A24255D1PC5DC1','7');
-- 2025-05-03 20:38:09
insert into note(matricule,codeExamen,note) values('5d1014','A24255D1PC5DC1','8.25');
-- 2025-05-03 20:38:09
insert into note(matricule,codeExamen,note) values('5d1015','A24255D1PC5DC1','8');
-- 2025-05-03 20:38:09
insert into note(matricule,codeExamen,note) values('5d1016','A24255D1PC5DC1','6');
-- 2025-05-03 20:38:09
insert into note(matricule,codeExamen,note) values('5d1017','A24255D1PC5DC1','10.5');
-- 2025-05-03 20:38:10
insert into note(matricule,codeExamen,note) values('5d1018','A24255D1PC5DC1','6.5');
-- 2025-05-03 20:38:10
insert into note(matricule,codeExamen,note) values('5d1019','A24255D1PC5DC1','14.5');
-- 2025-05-03 20:38:10
insert into note(matricule,codeExamen,note) values('5d1020','A24255D1PC5DC1','15');
-- 2025-05-03 20:38:10
insert into note(matricule,codeExamen,note) values('5d1021','A24255D1PC5DC1','7.75');
-- 2025-05-03 20:38:10
insert into note(matricule,codeExamen,note) values('5d1022','A24255D1PC5DC1','9.75');
-- 2025-05-03 20:38:10
insert into note(matricule,codeExamen,note) values('5d1023','A24255D1PC5DC1','7.5');
-- 2025-05-03 20:38:10
insert into note(matricule,codeExamen,note) values('5d1024','A24255D1PC5DC1','8.75');
-- 2025-05-03 20:38:10
insert into note(matricule,codeExamen,note) values('5d1025','A24255D1PC5DC1','8.5');
-- 2025-05-03 20:38:10
insert into note(matricule,codeExamen,note) values('5d1026','A24255D1PC5DC1','12.5');
-- 2025-05-03 20:38:10
insert into note(matricule,codeExamen,note) values('5d1027','A24255D1PC5DC1','12.5');
-- 2025-05-03 20:38:10
insert into note(matricule,codeExamen,note) values('5d1028','A24255D1PC5DC1','11.25');
-- 2025-05-03 20:38:11
insert into note(matricule,codeExamen,note) values('5d1029','A24255D1PC5DC1','6.25');
-- 2025-05-03 20:38:11
insert into note(matricule,codeExamen,note) values('5d1030','A24255D1PC5DC1','14.75');
-- 2025-05-03 20:38:11
insert into note(matricule,codeExamen,note) values('5d1031','A24255D1PC5DC1','12.5');
-- 2025-05-03 20:38:11
insert into note(matricule,codeExamen,note) values('5d1032','A24255D1PC5DC1','10');
-- 2025-05-03 20:38:11
insert into note(matricule,codeExamen,note) values('5d1033','A24255D1PC5DC1','9.5');
-- 2025-05-03 20:38:11
insert into note(matricule,codeExamen,note) values('5d1034','A24255D1PC5DC1','8');
-- 2025-05-03 20:38:11
insert into note(matricule,codeExamen,note) values('5d1035','A24255D1PC5DC1','5.5');
-- 2025-05-03 20:38:11
insert into note(matricule,codeExamen,note) values('5d1036','A24255D1PC5DC1','14.75');
-- 2025-05-03 20:38:11
insert into note(matricule,codeExamen,note) values('5d1037','A24255D1PC5DC1','15.75');
-- 2025-05-03 20:38:11
insert into note(matricule,codeExamen,note) values('5d1038','A24255D1PC5DC1','10.25');
-- 2025-05-03 20:38:11
insert into note(matricule,codeExamen,note) values('5d1039','A24255D1PC5DC1','6.5');
-- 2025-05-03 20:38:12
insert into note(matricule,codeExamen,note) values('5d1040','A24255D1PC5DC1','5');
-- 2025-05-03 20:38:12
insert into note(matricule,codeExamen,note) values('5d1041','A24255D1PC5DC1','15.75');
-- 2025-05-03 20:38:12
insert into note(matricule,codeExamen,note) values('5d1042','A24255D1PC5DC1','15');
-- 2025-05-03 20:38:12
insert into note(matricule,codeExamen,note) values('5d1043','A24255D1PC5DC1','6');
-- 2025-05-03 20:38:12
insert into note(matricule,codeExamen,note) values('5d1044','A24255D1PC5DC1','8');
-- 2025-05-03 20:38:12
insert into note(matricule,codeExamen,note) values('5d1045','A24255D1PC5DC1','6');
-- 2025-05-03 20:38:12
insert into note(matricule,codeExamen,note) values('5d1046','A24255D1PC5DC1','7.25');
-- 2025-05-03 20:38:12
insert into note(matricule,codeExamen,note) values('5d1047','A24255D1PC5DC1','8.5');
-- 2025-05-03 20:38:12
insert into note(matricule,codeExamen,note) values('5d1048','A24255D1PC5DC1','7.75');
-- 2025-05-03 20:38:13
insert into note(matricule,codeExamen,note) values('5d1049','A24255D1PC5DC1','8.75');
-- 2025-05-03 20:38:13
insert into note(matricule,codeExamen,note) values('5d1050','A24255D1PC5DC1','4.5');
-- 2025-05-03 20:38:13
insert into note(matricule,codeExamen,note) values('5d1051','A24255D1PC5DC1','5');
-- 2025-05-03 20:38:13
insert into note(matricule,codeExamen,note) values('5d1052','A24255D1PC5DC1','19');
-- 2025-05-03 20:38:13
insert into note(matricule,codeExamen,note) values('5d1053','A24255D1PC5DC1','4.25');
-- 2025-05-03 20:38:13
insert into note(matricule,codeExamen,note) values('5d1054','A24255D1PC5DC1','5.5');
-- 2025-05-03 20:38:13
insert into note(matricule,codeExamen,note) values('5d1055','A24255D1PC5DC1','7');
-- 2025-05-03 20:38:13
insert into note(matricule,codeExamen,note) values('5d1056','A24255D1PC5DC1','14.25');
-- 2025-05-03 20:38:13
insert into note(matricule,codeExamen,note) values('5d1057','A24255D1PC5DC1','14');
-- 2025-05-03 20:38:13
insert into note(matricule,codeExamen,note) values('5d1058','A24255D1PC5DC1','8');
-- 2025-05-03 20:38:13
insert into note(matricule,codeExamen,note) values('5d1059','A24255D1PC5DC1','6.75');
-- 2025-05-03 20:38:14
insert into note(matricule,codeExamen,note) values('5d1060','A24255D1PC5DC1','8');
-- 2025-05-03 20:38:14
insert into note(matricule,codeExamen,note) values('5d1061','A24255D1PC5DC1','6.75');
-- 2025-05-03 20:38:14
insert into note(matricule,codeExamen,note) values('5d1062','A24255D1PC5DC1','6');
-- 2025-05-03 20:38:14
insert into note(matricule,codeExamen,note) values('5d1063','A24255D1PC5DC1','3');
-- 2025-05-03 20:38:14
insert into note(matricule,codeExamen,note) values('5d1064','A24255D1PC5DC1','0');
-- 2025-05-04 13:44:09
insert into eleve(matricule,nom,isme,sexe,dateNaissance,lieuNaissance,adresse,nni) values('5d2064','Inconnu','','F','2000-01-01','Boghe','Boghe','NNI5D2064');
-- 2025-05-04 13:44:36
insert into inscrit(idInscrit,matricule,codeSalleClasse,numeroInscrit,typeInscrit,dateInscription) values('','5d2064','A24255D2','64','passant','2025-05-04');
-- 2025-05-04 13:49:08
insert into examen (codeExamen,codeClasseMatiere,codeSalleClasse,codeEvaluation,dateExamen,statutExamen,heureDebutExamen,heureFinExamen) values ('A24255D2SN5DC1','SN5D','A24255D2','C1','','1','','');
-- 2025-05-04 13:49:08
insert into examen (codeExamen,codeClasseMatiere,codeSalleClasse,codeEvaluation,dateExamen,statutExamen,heureDebutExamen,heureFinExamen) values ('A24255D2MATH5DC1','MATH5D','A24255D2','C1','','1','','');
-- 2025-05-04 13:59:16
insert into examen (codeExamen,codeClasseMatiere,codeSalleClasse,codeEvaluation,dateExamen,statutExamen,heureDebutExamen,heureFinExamen) values ('A24255D2PC5DD1','PC5D','A24255D2','D1','','1','','');
-- 2025-05-04 14:08:47
insert into examen (codeExamen,codeClasseMatiere,codeSalleClasse,codeEvaluation,dateExamen,statutExamen,heureDebutExamen,heureFinExamen) values ('A24255D2SN5DD1','SN5D','A24255D2','D1','2025-05-04','0','','');
-- 2025-05-04 14:38:51
insert into examen (codeExamen,codeClasseMatiere,codeSalleClasse,codeEvaluation,dateExamen,statutExamen,heureDebutExamen,heureFinExamen) values ('A24255D2MATH5DD1','MATH5D','A24255D2','D1','','1','','');
-- 2025-05-04 14:39:10
insert into examen (codeExamen,codeClasseMatiere,codeSalleClasse,codeEvaluation,dateExamen,statutExamen,heureDebutExamen,heureFinExamen) values ('A24255D2FR5DC1','FR5D','A24255D2','C1','','1','','');
-- 2025-05-04 14:39:10
insert into examen (codeExamen,codeClasseMatiere,codeSalleClasse,codeEvaluation,dateExamen,statutExamen,heureDebutExamen,heureFinExamen) values ('A24255D2AR5DC1','AR5D','A24255D2','C1','','1','','');
-- 2025-05-04 14:39:10
insert into examen (codeExamen,codeClasseMatiere,codeSalleClasse,codeEvaluation,dateExamen,statutExamen,heureDebutExamen,heureFinExamen) values ('A24255D2EN5DC1','EN5D','A24255D2','C1','','1','','');
-- 2025-05-04 14:39:10
insert into examen (codeExamen,codeClasseMatiere,codeSalleClasse,codeEvaluation,dateExamen,statutExamen,heureDebutExamen,heureFinExamen) values ('A24255D2PHILO5DC1','PHILO5D','A24255D2','C1','','1','','');
-- 2025-05-04 14:39:10
insert into examen (codeExamen,codeClasseMatiere,codeSalleClasse,codeEvaluation,dateExamen,statutExamen,heureDebutExamen,heureFinExamen) values ('A24255D2IR5DC1','IR5D','A24255D2','C1','','1','','');
-- 2025-05-04 14:39:10
insert into examen (codeExamen,codeClasseMatiere,codeSalleClasse,codeEvaluation,dateExamen,statutExamen,heureDebutExamen,heureFinExamen) values ('A24255D2HG5DC1','HG5D','A24255D2','C1','','1','','');
-- 2025-05-04 14:39:10
insert into examen (codeExamen,codeClasseMatiere,codeSalleClasse,codeEvaluation,dateExamen,statutExamen,heureDebutExamen,heureFinExamen) values ('A24255D2EPS5DC1','EPS5D','A24255D2','C1','','1','','');
-- 2025-05-04 14:39:10
insert into examen (codeExamen,codeClasseMatiere,codeSalleClasse,codeEvaluation,dateExamen,statutExamen,heureDebutExamen,heureFinExamen) values ('A24255D2IC5DC1','IC5D','A24255D2','C1','','1','','');
-- 2025-05-04 14:39:20
insert into examen (codeExamen,codeClasseMatiere,codeSalleClasse,codeEvaluation,dateExamen,statutExamen,heureDebutExamen,heureFinExamen) values ('A24255D2FR5DD1','FR5D','A24255D2','D1','','1','','');
-- 2025-05-04 14:39:20
insert into examen (codeExamen,codeClasseMatiere,codeSalleClasse,codeEvaluation,dateExamen,statutExamen,heureDebutExamen,heureFinExamen) values ('A24255D2AR5DD1','AR5D','A24255D2','D1','','1','','');
-- 2025-05-04 14:39:20
insert into examen (codeExamen,codeClasseMatiere,codeSalleClasse,codeEvaluation,dateExamen,statutExamen,heureDebutExamen,heureFinExamen) values ('A24255D2EN5DD1','EN5D','A24255D2','D1','','1','','');
-- 2025-05-04 14:39:20
insert into examen (codeExamen,codeClasseMatiere,codeSalleClasse,codeEvaluation,dateExamen,statutExamen,heureDebutExamen,heureFinExamen) values ('A24255D2PHILO5DD1','PHILO5D','A24255D2','D1','','1','','');
-- 2025-05-04 14:39:20
insert into examen (codeExamen,codeClasseMatiere,codeSalleClasse,codeEvaluation,dateExamen,statutExamen,heureDebutExamen,heureFinExamen) values ('A24255D2IR5DD1','IR5D','A24255D2','D1','','1','','');
-- 2025-05-04 14:39:20
insert into examen (codeExamen,codeClasseMatiere,codeSalleClasse,codeEvaluation,dateExamen,statutExamen,heureDebutExamen,heureFinExamen) values ('A24255D2HG5DD1','HG5D','A24255D2','D1','','1','','');
-- 2025-05-04 14:39:20
insert into examen (codeExamen,codeClasseMatiere,codeSalleClasse,codeEvaluation,dateExamen,statutExamen,heureDebutExamen,heureFinExamen) values ('A24255D2EPS5DD1','EPS5D','A24255D2','D1','','1','','');
-- 2025-05-04 14:39:20
insert into examen (codeExamen,codeClasseMatiere,codeSalleClasse,codeEvaluation,dateExamen,statutExamen,heureDebutExamen,heureFinExamen) values ('A24255D2IC5DD1','IC5D','A24255D2','D1','','1','','');
-- 2025-05-04 14:39:29
insert into examen (codeExamen,codeClasseMatiere,codeSalleClasse,codeEvaluation,dateExamen,statutExamen,heureDebutExamen,heureFinExamen) values ('A24255D2SN5DD2','SN5D','A24255D2','D2','','1','','');
-- 2025-05-04 14:39:29
insert into examen (codeExamen,codeClasseMatiere,codeSalleClasse,codeEvaluation,dateExamen,statutExamen,heureDebutExamen,heureFinExamen) values ('A24255D2PC5DD2','PC5D','A24255D2','D2','','1','','');
-- 2025-05-04 14:39:29
insert into examen (codeExamen,codeClasseMatiere,codeSalleClasse,codeEvaluation,dateExamen,statutExamen,heureDebutExamen,heureFinExamen) values ('A24255D2MATH5DD2','MATH5D','A24255D2','D2','','1','','');
-- 2025-05-04 14:39:29
insert into examen (codeExamen,codeClasseMatiere,codeSalleClasse,codeEvaluation,dateExamen,statutExamen,heureDebutExamen,heureFinExamen) values ('A24255D2FR5DD2','FR5D','A24255D2','D2','','1','','');
-- 2025-05-04 14:39:29
insert into examen (codeExamen,codeClasseMatiere,codeSalleClasse,codeEvaluation,dateExamen,statutExamen,heureDebutExamen,heureFinExamen) values ('A24255D2AR5DD2','AR5D','A24255D2','D2','','1','','');
-- 2025-05-04 14:39:29
insert into examen (codeExamen,codeClasseMatiere,codeSalleClasse,codeEvaluation,dateExamen,statutExamen,heureDebutExamen,heureFinExamen) values ('A24255D2EN5DD2','EN5D','A24255D2','D2','','1','','');
-- 2025-05-04 14:39:29
insert into examen (codeExamen,codeClasseMatiere,codeSalleClasse,codeEvaluation,dateExamen,statutExamen,heureDebutExamen,heureFinExamen) values ('A24255D2PHILO5DD2','PHILO5D','A24255D2','D2','','1','','');
-- 2025-05-04 14:39:30
insert into examen (codeExamen,codeClasseMatiere,codeSalleClasse,codeEvaluation,dateExamen,statutExamen,heureDebutExamen,heureFinExamen) values ('A24255D2IR5DD2','IR5D','A24255D2','D2','','1','','');
-- 2025-05-04 14:39:30
insert into examen (codeExamen,codeClasseMatiere,codeSalleClasse,codeEvaluation,dateExamen,statutExamen,heureDebutExamen,heureFinExamen) values ('A24255D2HG5DD2','HG5D','A24255D2','D2','','1','','');
-- 2025-05-04 14:39:30
insert into examen (codeExamen,codeClasseMatiere,codeSalleClasse,codeEvaluation,dateExamen,statutExamen,heureDebutExamen,heureFinExamen) values ('A24255D2EPS5DD2','EPS5D','A24255D2','D2','','1','','');
-- 2025-05-04 14:39:30
insert into examen (codeExamen,codeClasseMatiere,codeSalleClasse,codeEvaluation,dateExamen,statutExamen,heureDebutExamen,heureFinExamen) values ('A24255D2IC5DD2','IC5D','A24255D2','D2','','1','','');
-- 2025-05-04 14:39:49
insert into examen (codeExamen,codeClasseMatiere,codeSalleClasse,codeEvaluation,dateExamen,statutExamen,heureDebutExamen,heureFinExamen) values ('A24255D2SN5DC2','SN5D','A24255D2','C2','','1','','');
-- 2025-05-04 14:39:49
insert into examen (codeExamen,codeClasseMatiere,codeSalleClasse,codeEvaluation,dateExamen,statutExamen,heureDebutExamen,heureFinExamen) values ('A24255D2PC5DC2','PC5D','A24255D2','C2','','1','','');
-- 2025-05-04 14:39:49
insert into examen (codeExamen,codeClasseMatiere,codeSalleClasse,codeEvaluation,dateExamen,statutExamen,heureDebutExamen,heureFinExamen) values ('A24255D2MATH5DC2','MATH5D','A24255D2','C2','','1','','');
-- 2025-05-04 14:39:49
insert into examen (codeExamen,codeClasseMatiere,codeSalleClasse,codeEvaluation,dateExamen,statutExamen,heureDebutExamen,heureFinExamen) values ('A24255D2FR5DC2','FR5D','A24255D2','C2','','1','','');
-- 2025-05-04 14:39:49
insert into examen (codeExamen,codeClasseMatiere,codeSalleClasse,codeEvaluation,dateExamen,statutExamen,heureDebutExamen,heureFinExamen) values ('A24255D2AR5DC2','AR5D','A24255D2','C2','','1','','');
-- 2025-05-04 14:39:49
insert into examen (codeExamen,codeClasseMatiere,codeSalleClasse,codeEvaluation,dateExamen,statutExamen,heureDebutExamen,heureFinExamen) values ('A24255D2EN5DC2','EN5D','A24255D2','C2','','1','','');
-- 2025-05-04 14:39:49
insert into examen (codeExamen,codeClasseMatiere,codeSalleClasse,codeEvaluation,dateExamen,statutExamen,heureDebutExamen,heureFinExamen) values ('A24255D2PHILO5DC2','PHILO5D','A24255D2','C2','','1','','');
-- 2025-05-04 14:39:49
insert into examen (codeExamen,codeClasseMatiere,codeSalleClasse,codeEvaluation,dateExamen,statutExamen,heureDebutExamen,heureFinExamen) values ('A24255D2IR5DC2','IR5D','A24255D2','C2','','1','','');
-- 2025-05-04 14:39:49
insert into examen (codeExamen,codeClasseMatiere,codeSalleClasse,codeEvaluation,dateExamen,statutExamen,heureDebutExamen,heureFinExamen) values ('A24255D2HG5DC2','HG5D','A24255D2','C2','','1','','');
-- 2025-05-04 14:39:49
insert into examen (codeExamen,codeClasseMatiere,codeSalleClasse,codeEvaluation,dateExamen,statutExamen,heureDebutExamen,heureFinExamen) values ('A24255D2EPS5DC2','EPS5D','A24255D2','C2','','1','','');
-- 2025-05-04 14:39:49
insert into examen (codeExamen,codeClasseMatiere,codeSalleClasse,codeEvaluation,dateExamen,statutExamen,heureDebutExamen,heureFinExamen) values ('A24255D2IC5DC2','IC5D','A24255D2','C2','','1','','');
-- 2025-05-04 14:55:30
insert into note(matricule,codeExamen,note) values('5d201','A24255D2PC5DC1','10.5');
-- 2025-05-04 14:55:30
insert into note(matricule,codeExamen,note) values('5d202','A24255D2PC5DC1','10');
-- 2025-05-04 14:55:30
insert into note(matricule,codeExamen,note) values('5d203','A24255D2PC5DC1','9.25');
-- 2025-05-04 14:55:30
insert into note(matricule,codeExamen,note) values('5d204','A24255D2PC5DC1','6.25');
-- 2025-05-04 14:55:30
insert into note(matricule,codeExamen,note) values('5d205','A24255D2PC5DC1','6.25');
-- 2025-05-04 14:55:30
insert into note(matricule,codeExamen,note) values('5d206','A24255D2PC5DC1','3.5');
-- 2025-05-04 14:55:30
insert into note(matricule,codeExamen,note) values('5d207','A24255D2PC5DC1','8.25');
-- 2025-05-04 14:55:30
insert into note(matricule,codeExamen,note) values('5d208','A24255D2PC5DC1','4.75');
-- 2025-05-04 14:55:30
insert into note(matricule,codeExamen,note) values('5d209','A24255D2PC5DC1','9.75');
-- 2025-05-04 14:55:30
insert into note(matricule,codeExamen,note) values('5d210','A24255D2PC5DC1','9.25');
-- 2025-05-04 14:55:30
insert into note(matricule,codeExamen,note) values('5d211','A24255D2PC5DC1','12.25');
-- 2025-05-04 14:55:30
insert into note(matricule,codeExamen,note) values('5d212','A24255D2PC5DC1','7.25');
-- 2025-05-04 14:55:30
insert into note(matricule,codeExamen,note) values('5d213','A24255D2PC5DC1','10.75');
-- 2025-05-04 14:55:30
insert into note(matricule,codeExamen,note) values('5d214','A24255D2PC5DC1','4');
-- 2025-05-04 14:55:31
insert into note(matricule,codeExamen,note) values('5d215','A24255D2PC5DC1','10.75');
-- 2025-05-04 14:55:31
insert into note(matricule,codeExamen,note) values('5d216','A24255D2PC5DC1','8.25');
-- 2025-05-04 14:55:31
insert into note(matricule,codeExamen,note) values('5d217','A24255D2PC5DC1','5');
-- 2025-05-04 14:55:31
insert into note(matricule,codeExamen,note) values('5d218','A24255D2PC5DC1','11.5');
-- 2025-05-04 14:55:31
insert into note(matricule,codeExamen,note) values('5d219','A24255D2PC5DC1','6.25');
-- 2025-05-04 14:55:31
insert into note(matricule,codeExamen,note) values('5d220','A24255D2PC5DC1','9.25');
-- 2025-05-04 14:55:31
insert into note(matricule,codeExamen,note) values('5d221','A24255D2PC5DC1','0');
-- 2025-05-04 14:55:31
insert into note(matricule,codeExamen,note) values('5d222','A24255D2PC5DC1','11.75');
-- 2025-05-04 14:55:31
insert into note(matricule,codeExamen,note) values('5d223','A24255D2PC5DC1','0');
-- 2025-05-04 14:55:31
insert into note(matricule,codeExamen,note) values('5d224','A24255D2PC5DC1','2.5');
-- 2025-05-04 14:55:31
insert into note(matricule,codeExamen,note) values('5d225','A24255D2PC5DC1','10.5');
-- 2025-05-04 14:55:31
insert into note(matricule,codeExamen,note) values('5d226','A24255D2PC5DC1','9.75');
-- 2025-05-04 14:55:31
insert into note(matricule,codeExamen,note) values('5d227','A24255D2PC5DC1','6.5');
-- 2025-05-04 14:55:31
insert into note(matricule,codeExamen,note) values('5d228','A24255D2PC5DC1','10');
-- 2025-05-04 14:55:32
insert into note(matricule,codeExamen,note) values('5d229','A24255D2PC5DC1','5');
-- 2025-05-04 14:55:32
insert into note(matricule,codeExamen,note) values('5d230','A24255D2PC5DC1','5');
-- 2025-05-04 14:55:32
insert into note(matricule,codeExamen,note) values('5d231','A24255D2PC5DC1','10.75');
-- 2025-05-04 14:55:32
insert into note(matricule,codeExamen,note) values('5d232','A24255D2PC5DC1','10');
-- 2025-05-04 14:55:32
insert into note(matricule,codeExamen,note) values('5d233','A24255D2PC5DC1','2.5');
-- 2025-05-04 14:55:32
insert into note(matricule,codeExamen,note) values('5d234','A24255D2PC5DC1','7.25');
-- 2025-05-04 14:55:32
insert into note(matricule,codeExamen,note) values('5d235','A24255D2PC5DC1','12.5');
-- 2025-05-04 14:55:32
insert into note(matricule,codeExamen,note) values('5d236','A24255D2PC5DC1','19.75');
-- 2025-05-04 14:55:32
insert into note(matricule,codeExamen,note) values('5d237','A24255D2PC5DC1','9.5');
-- 2025-05-04 14:55:32
insert into note(matricule,codeExamen,note) values('5d238','A24255D2PC5DC1','0');
-- 2025-05-04 14:55:32
insert into note(matricule,codeExamen,note) values('5d239','A24255D2PC5DC1','15');
-- 2025-05-04 14:55:32
insert into note(matricule,codeExamen,note) values('5d240','A24255D2PC5DC1','11.25');
-- 2025-05-04 14:55:32
insert into note(matricule,codeExamen,note) values('5d241','A24255D2PC5DC1','9');
-- 2025-05-04 14:55:32
insert into note(matricule,codeExamen,note) values('5d242','A24255D2PC5DC1','11.5');
-- 2025-05-04 14:55:32
insert into note(matricule,codeExamen,note) values('5d243','A24255D2PC5DC1','7.25');
-- 2025-05-04 14:55:32
insert into note(matricule,codeExamen,note) values('5d244','A24255D2PC5DC1','4.5');
-- 2025-05-04 14:55:33
insert into note(matricule,codeExamen,note) values('5d245','A24255D2PC5DC1','12.75');
-- 2025-05-04 14:55:33
insert into note(matricule,codeExamen,note) values('5d246','A24255D2PC5DC1','2.5');
-- 2025-05-04 14:55:33
insert into note(matricule,codeExamen,note) values('5d247','A24255D2PC5DC1','9.25');
-- 2025-05-04 14:55:33
insert into note(matricule,codeExamen,note) values('5d248','A24255D2PC5DC1','0');
-- 2025-05-04 14:55:33
insert into note(matricule,codeExamen,note) values('5d249','A24255D2PC5DC1','0');
-- 2025-05-04 14:55:33
insert into note(matricule,codeExamen,note) values('5d250','A24255D2PC5DC1','7.25');
-- 2025-05-04 14:55:33
insert into note(matricule,codeExamen,note) values('5d251','A24255D2PC5DC1','10.25');
-- 2025-05-04 14:55:33
insert into note(matricule,codeExamen,note) values('5d252','A24255D2PC5DC1','13.75');
-- 2025-05-04 14:55:33
insert into note(matricule,codeExamen,note) values('5d253','A24255D2PC5DC1','11.75');
-- 2025-05-04 14:55:33
insert into note(matricule,codeExamen,note) values('5d254','A24255D2PC5DC1','11.25');
-- 2025-05-04 14:55:33
insert into note(matricule,codeExamen,note) values('5d255','A24255D2PC5DC1','13.75');
-- 2025-05-04 14:55:33
insert into note(matricule,codeExamen,note) values('5d256','A24255D2PC5DC1','8.25');
-- 2025-05-04 14:55:33
insert into note(matricule,codeExamen,note) values('5d257','A24255D2PC5DC1','2.5');
-- 2025-05-04 14:55:33
insert into note(matricule,codeExamen,note) values('5d258','A24255D2PC5DC1','8.75');
-- 2025-05-04 14:55:33
insert into note(matricule,codeExamen,note) values('5d259','A24255D2PC5DC1','2.5');
-- 2025-05-04 14:55:34
insert into note(matricule,codeExamen,note) values('5d260','A24255D2PC5DC1','2');
-- 2025-05-04 14:55:34
insert into note(matricule,codeExamen,note) values('5d261','A24255D2PC5DC1','9.5');
-- 2025-05-04 14:55:34
insert into note(matricule,codeExamen,note) values('5d262','A24255D2PC5DC1','5');
-- 2025-05-04 14:55:34
insert into note(matricule,codeExamen,note) values('5d263','A24255D2PC5DC1','9.5');
-- 2025-05-04 14:55:34
insert into note(matricule,codeExamen,note) values('5d2064','A24255D2PC5DC1','0');
-- 2025-05-04 14:57:37
insert into note(matricule,codeExamen,note) values('5d201','A24255D2PC5DD1','11');
-- 2025-05-04 14:57:37
insert into note(matricule,codeExamen,note) values('5d202','A24255D2PC5DD1','6.5');
-- 2025-05-04 14:57:37
insert into note(matricule,codeExamen,note) values('5d203','A24255D2PC5DD1','9.25');
-- 2025-05-04 14:57:37
insert into note(matricule,codeExamen,note) values('5d204','A24255D2PC5DD1','0');
-- 2025-05-04 14:57:37
insert into note(matricule,codeExamen,note) values('5d205','A24255D2PC5DD1','4.5');
-- 2025-05-04 14:57:38
insert into note(matricule,codeExamen,note) values('5d206','A24255D2PC5DD1','4.5');
-- 2025-05-04 14:57:38
insert into note(matricule,codeExamen,note) values('5d207','A24255D2PC5DD1','0');
-- 2025-05-04 14:57:38
insert into note(matricule,codeExamen,note) values('5d208','A24255D2PC5DD1','4');
-- 2025-05-04 14:57:38
insert into note(matricule,codeExamen,note) values('5d209','A24255D2PC5DD1','7');
-- 2025-05-04 14:57:38
insert into note(matricule,codeExamen,note) values('5d210','A24255D2PC5DD1','11');
-- 2025-05-04 14:57:38
insert into note(matricule,codeExamen,note) values('5d211','A24255D2PC5DD1','7.25');
-- 2025-05-04 14:57:38
insert into note(matricule,codeExamen,note) values('5d212','A24255D2PC5DD1','9.5');
-- 2025-05-04 14:57:38
insert into note(matricule,codeExamen,note) values('5d213','A24255D2PC5DD1','0');
-- 2025-05-04 14:57:38
insert into note(matricule,codeExamen,note) values('5d214','A24255D2PC5DD1','3.5');
-- 2025-05-04 14:57:38
insert into note(matricule,codeExamen,note) values('5d215','A24255D2PC5DD1','7.5');
-- 2025-05-04 14:57:38
insert into note(matricule,codeExamen,note) values('5d216','A24255D2PC5DD1','7.5');
-- 2025-05-04 14:57:38
insert into note(matricule,codeExamen,note) values('5d217','A24255D2PC5DD1','4');
-- 2025-05-04 14:57:38
insert into note(matricule,codeExamen,note) values('5d218','A24255D2PC5DD1','5.5');
-- 2025-05-04 14:57:38
insert into note(matricule,codeExamen,note) values('5d219','A24255D2PC5DD1','4');
-- 2025-05-04 14:57:38
insert into note(matricule,codeExamen,note) values('5d220','A24255D2PC5DD1','5.6');
-- 2025-05-04 14:57:39
insert into note(matricule,codeExamen,note) values('5d221','A24255D2PC5DD1','0');
-- 2025-05-04 14:57:39
insert into note(matricule,codeExamen,note) values('5d222','A24255D2PC5DD1','6');
-- 2025-05-04 14:57:39
insert into note(matricule,codeExamen,note) values('5d223','A24255D2PC5DD1','0');
-- 2025-05-04 14:57:39
insert into note(matricule,codeExamen,note) values('5d224','A24255D2PC5DD1','6');
-- 2025-05-04 14:57:39
insert into note(matricule,codeExamen,note) values('5d225','A24255D2PC5DD1','11');
-- 2025-05-04 14:57:39
insert into note(matricule,codeExamen,note) values('5d226','A24255D2PC5DD1','10');
-- 2025-05-04 14:57:39
insert into note(matricule,codeExamen,note) values('5d227','A24255D2PC5DD1','0');
-- 2025-05-04 14:57:39
insert into note(matricule,codeExamen,note) values('5d228','A24255D2PC5DD1','8.5');
-- 2025-05-04 14:57:39
insert into note(matricule,codeExamen,note) values('5d229','A24255D2PC5DD1','6.5');
-- 2025-05-04 14:57:39
insert into note(matricule,codeExamen,note) values('5d230','A24255D2PC5DD1','8.5');
-- 2025-05-04 14:57:39
insert into note(matricule,codeExamen,note) values('5d231','A24255D2PC5DD1','7.25');
-- 2025-05-04 14:57:39
insert into note(matricule,codeExamen,note) values('5d232','A24255D2PC5DD1','7');
-- 2025-05-04 14:57:39
insert into note(matricule,codeExamen,note) values('5d233','A24255D2PC5DD1','3.5');
-- 2025-05-04 14:57:39
insert into note(matricule,codeExamen,note) values('5d234','A24255D2PC5DD1','8.25');
-- 2025-05-04 14:57:39
insert into note(matricule,codeExamen,note) values('5d235','A24255D2PC5DD1','9.5');
-- 2025-05-04 14:57:39
insert into note(matricule,codeExamen,note) values('5d236','A24255D2PC5DD1','18.5');
-- 2025-05-04 14:57:39
insert into note(matricule,codeExamen,note) values('5d237','A24255D2PC5DD1','5.5');
-- 2025-05-04 14:57:39
insert into note(matricule,codeExamen,note) values('5d238','A24255D2PC5DD1','4.5');
-- 2025-05-04 14:57:40
insert into note(matricule,codeExamen,note) values('5d239','A24255D2PC5DD1','12.25');
-- 2025-05-04 14:57:40
insert into note(matricule,codeExamen,note) values('5d240','A24255D2PC5DD1','10.5');
-- 2025-05-04 14:57:40
insert into note(matricule,codeExamen,note) values('5d241','A24255D2PC5DD1','12.5');
-- 2025-05-04 14:57:40
insert into note(matricule,codeExamen,note) values('5d242','A24255D2PC5DD1','14.5');
-- 2025-05-04 14:57:40
insert into note(matricule,codeExamen,note) values('5d243','A24255D2PC5DD1','7.25');
-- 2025-05-04 14:57:40
insert into note(matricule,codeExamen,note) values('5d244','A24255D2PC5DD1','8.25');
-- 2025-05-04 14:57:40
insert into note(matricule,codeExamen,note) values('5d245','A24255D2PC5DD1','13');
-- 2025-05-04 14:57:40
insert into note(matricule,codeExamen,note) values('5d246','A24255D2PC5DD1','3');
-- 2025-05-04 14:57:40
insert into note(matricule,codeExamen,note) values('5d247','A24255D2PC5DD1','7');
-- 2025-05-04 14:57:40
insert into note(matricule,codeExamen,note) values('5d248','A24255D2PC5DD1','6.25');
-- 2025-05-04 14:57:40
insert into note(matricule,codeExamen,note) values('5d249','A24255D2PC5DD1','6.5');
-- 2025-05-04 14:57:40
insert into note(matricule,codeExamen,note) values('5d250','A24255D2PC5DD1','10');
-- 2025-05-04 14:57:40
insert into note(matricule,codeExamen,note) values('5d251','A24255D2PC5DD1','0');
-- 2025-05-04 14:57:40
insert into note(matricule,codeExamen,note) values('5d252','A24255D2PC5DD1','12');
-- 2025-05-04 14:57:41
insert into note(matricule,codeExamen,note) values('5d253','A24255D2PC5DD1','0');
-- 2025-05-04 14:57:41
insert into note(matricule,codeExamen,note) values('5d254','A24255D2PC5DD1','8.75');
-- 2025-05-04 14:57:41
insert into note(matricule,codeExamen,note) values('5d255','A24255D2PC5DD1','11');
-- 2025-05-04 14:57:41
insert into note(matricule,codeExamen,note) values('5d256','A24255D2PC5DD1','5.5');
-- 2025-05-04 14:57:41
insert into note(matricule,codeExamen,note) values('5d257','A24255D2PC5DD1','7.5');
-- 2025-05-04 14:57:41
insert into note(matricule,codeExamen,note) values('5d258','A24255D2PC5DD1','13.25');
-- 2025-05-04 14:57:41
insert into note(matricule,codeExamen,note) values('5d259','A24255D2PC5DD1','5');
-- 2025-05-04 14:57:41
insert into note(matricule,codeExamen,note) values('5d260','A24255D2PC5DD1','4');
-- 2025-05-04 14:57:41
insert into note(matricule,codeExamen,note) values('5d261','A24255D2PC5DD1','0');
-- 2025-05-04 14:57:41
insert into note(matricule,codeExamen,note) values('5d262','A24255D2PC5DD1','0');
-- 2025-05-04 14:57:41
insert into note(matricule,codeExamen,note) values('5d263','A24255D2PC5DD1','8.5');
-- 2025-05-04 14:57:41
insert into note(matricule,codeExamen,note) values('5d2064','A24255D2PC5DD1','3');
-- 2025-05-04 15:00:04
insert into note(matricule,codeExamen,note) values('5d201','A24255D2PC5DD2','14');
-- 2025-05-04 15:00:05
insert into note(matricule,codeExamen,note) values('5d202','A24255D2PC5DD2','9.75');
-- 2025-05-04 15:00:05
insert into note(matricule,codeExamen,note) values('5d203','A24255D2PC5DD2','4');
-- 2025-05-04 15:00:05
insert into note(matricule,codeExamen,note) values('5d204','A24255D2PC5DD2','0');
-- 2025-05-04 15:00:05
insert into note(matricule,codeExamen,note) values('5d205','A24255D2PC5DD2','7.5');
-- 2025-05-04 15:00:05
insert into note(matricule,codeExamen,note) values('5d206','A24255D2PC5DD2','7');
-- 2025-05-04 15:00:05
insert into note(matricule,codeExamen,note) values('5d207','A24255D2PC5DD2','0');
-- 2025-05-04 15:00:05
insert into note(matricule,codeExamen,note) values('5d208','A24255D2PC5DD2','8');
-- 2025-05-04 15:00:05
insert into note(matricule,codeExamen,note) values('5d209','A24255D2PC5DD2','9.5');
-- 2025-05-04 15:00:05
insert into note(matricule,codeExamen,note) values('5d210','A24255D2PC5DD2','11');
-- 2025-05-04 15:00:05
insert into note(matricule,codeExamen,note) values('5d211','A24255D2PC5DD2','13');
-- 2025-05-04 15:00:05
insert into note(matricule,codeExamen,note) values('5d212','A24255D2PC5DD2','12.25');
-- 2025-05-04 15:00:05
insert into note(matricule,codeExamen,note) values('5d213','A24255D2PC5DD2','7.25');
-- 2025-05-04 15:00:05
insert into note(matricule,codeExamen,note) values('5d214','A24255D2PC5DD2','2');
-- 2025-05-04 15:00:05
insert into note(matricule,codeExamen,note) values('5d215','A24255D2PC5DD2','7.5');
-- 2025-05-04 15:00:05
insert into note(matricule,codeExamen,note) values('5d216','A24255D2PC5DD2','8.5');
-- 2025-05-04 15:00:05
insert into note(matricule,codeExamen,note) values('5d217','A24255D2PC5DD2','5.28');
-- 2025-05-04 15:00:06
insert into note(matricule,codeExamen,note) values('5d218','A24255D2PC5DD2','0');
-- 2025-05-04 15:00:06
insert into note(matricule,codeExamen,note) values('5d219','A24255D2PC5DD2','8');
-- 2025-05-04 15:00:06
insert into note(matricule,codeExamen,note) values('5d220','A24255D2PC5DD2','8.5');
-- 2025-05-04 15:00:06
insert into note(matricule,codeExamen,note) values('5d221','A24255D2PC5DD2','0');
-- 2025-05-04 15:00:06
insert into note(matricule,codeExamen,note) values('5d222','A24255D2PC5DD2','11');
-- 2025-05-04 15:00:06
insert into note(matricule,codeExamen,note) values('5d223','A24255D2PC5DD2','0');
-- 2025-05-04 15:00:06
insert into note(matricule,codeExamen,note) values('5d224','A24255D2PC5DD2','7.25');
-- 2025-05-04 15:00:06
insert into note(matricule,codeExamen,note) values('5d225','A24255D2PC5DD2','9.5');
-- 2025-05-04 15:00:06
insert into note(matricule,codeExamen,note) values('5d226','A24255D2PC5DD2','9.5');
-- 2025-05-04 15:00:06
insert into note(matricule,codeExamen,note) values('5d227','A24255D2PC5DD2','4');
-- 2025-05-04 15:00:06
insert into note(matricule,codeExamen,note) values('5d228','A24255D2PC5DD2','2');
-- 2025-05-04 15:00:06
insert into note(matricule,codeExamen,note) values('5d229','A24255D2PC5DD2','0');
-- 2025-05-04 15:00:06
insert into note(matricule,codeExamen,note) values('5d230','A24255D2PC5DD2','10');
-- 2025-05-04 15:00:06
insert into note(matricule,codeExamen,note) values('5d231','A24255D2PC5DD2','0');
-- 2025-05-04 15:00:06
insert into note(matricule,codeExamen,note) values('5d232','A24255D2PC5DD2','11');
-- 2025-05-04 15:00:07
insert into note(matricule,codeExamen,note) values('5d233','A24255D2PC5DD2','5.5');
-- 2025-05-04 15:00:07
insert into note(matricule,codeExamen,note) values('5d234','A24255D2PC5DD2','8.5');
-- 2025-05-04 15:00:07
insert into note(matricule,codeExamen,note) values('5d235','A24255D2PC5DD2','12.25');
-- 2025-05-04 15:00:07
insert into note(matricule,codeExamen,note) values('5d236','A24255D2PC5DD2','17.75');
-- 2025-05-04 15:00:07
insert into note(matricule,codeExamen,note) values('5d237','A24255D2PC5DD2','11.5');
-- 2025-05-04 15:00:07
insert into note(matricule,codeExamen,note) values('5d238','A24255D2PC5DD2','11.5');
-- 2025-05-04 15:00:07
insert into note(matricule,codeExamen,note) values('5d239','A24255D2PC5DD2','15');
-- 2025-05-04 15:00:07
insert into note(matricule,codeExamen,note) values('5d240','A24255D2PC5DD2','12.5');
-- 2025-05-04 15:00:07
insert into note(matricule,codeExamen,note) values('5d241','A24255D2PC5DD2','13.5');
-- 2025-05-04 15:00:07
insert into note(matricule,codeExamen,note) values('5d242','A24255D2PC5DD2','0');
-- 2025-05-04 15:00:07
insert into note(matricule,codeExamen,note) values('5d243','A24255D2PC5DD2','11');
-- 2025-05-04 15:00:07
insert into note(matricule,codeExamen,note) values('5d244','A24255D2PC5DD2','5');
-- 2025-05-04 15:00:07
insert into note(matricule,codeExamen,note) values('5d245','A24255D2PC5DD2','19');
-- 2025-05-04 15:00:07
insert into note(matricule,codeExamen,note) values('5d246','A24255D2PC5DD2','6.5');
-- 2025-05-04 15:00:08
insert into note(matricule,codeExamen,note) values('5d247','A24255D2PC5DD2','9');
-- 2025-05-04 15:00:08
insert into note(matricule,codeExamen,note) values('5d248','A24255D2PC5DD2','0');
-- 2025-05-04 15:00:08
insert into note(matricule,codeExamen,note) values('5d249','A24255D2PC5DD2','0');
-- 2025-05-04 15:00:08
insert into note(matricule,codeExamen,note) values('5d250','A24255D2PC5DD2','8.5');
-- 2025-05-04 15:00:08
insert into note(matricule,codeExamen,note) values('5d251','A24255D2PC5DD2','11.25');
-- 2025-05-04 15:00:08
insert into note(matricule,codeExamen,note) values('5d252','A24255D2PC5DD2','15');
-- 2025-05-04 15:00:08
insert into note(matricule,codeExamen,note) values('5d253','A24255D2PC5DD2','0');
-- 2025-05-04 15:00:08
insert into note(matricule,codeExamen,note) values('5d254','A24255D2PC5DD2','3');
-- 2025-05-04 15:00:08
insert into note(matricule,codeExamen,note) values('5d255','A24255D2PC5DD2','12.5');
-- 2025-05-04 15:00:08
insert into note(matricule,codeExamen,note) values('5d256','A24255D2PC5DD2','0');
-- 2025-05-04 15:00:08
insert into note(matricule,codeExamen,note) values('5d257','A24255D2PC5DD2','6');
-- 2025-05-04 15:00:08
insert into note(matricule,codeExamen,note) values('5d258','A24255D2PC5DD2','12');
-- 2025-05-04 15:00:08
insert into note(matricule,codeExamen,note) values('5d259','A24255D2PC5DD2','5.5');
-- 2025-05-04 15:00:08
insert into note(matricule,codeExamen,note) values('5d260','A24255D2PC5DD2','7.5');
-- 2025-05-04 15:00:08
insert into note(matricule,codeExamen,note) values('5d261','A24255D2PC5DD2','0');
-- 2025-05-04 15:00:09
insert into note(matricule,codeExamen,note) values('5d262','A24255D2PC5DD2','4.25');
-- 2025-05-04 15:00:09
insert into note(matricule,codeExamen,note) values('5d263','A24255D2PC5DD2','9');
-- 2025-05-04 15:00:09
insert into note(matricule,codeExamen,note) values('5d2064','A24255D2PC5DD2','3');
-- 2025-05-04 15:02:35
insert into note(matricule,codeExamen,note) values('5d201','A24255D2PC5DC2','11.5');
-- 2025-05-04 15:02:35
insert into note(matricule,codeExamen,note) values('5d202','A24255D2PC5DC2','9');
-- 2025-05-04 15:02:35
insert into note(matricule,codeExamen,note) values('5d203','A24255D2PC5DC2','11');
-- 2025-05-04 15:02:35
insert into note(matricule,codeExamen,note) values('5d204','A24255D2PC5DC2','0');
-- 2025-05-04 15:02:35
insert into note(matricule,codeExamen,note) values('5d205','A24255D2PC5DC2','12');
-- 2025-05-04 15:02:35
insert into note(matricule,codeExamen,note) values('5d206','A24255D2PC5DC2','8.5');
-- 2025-05-04 15:02:35
insert into note(matricule,codeExamen,note) values('5d207','A24255D2PC5DC2','0');
-- 2025-05-04 15:02:35
insert into note(matricule,codeExamen,note) values('5d208','A24255D2PC5DC2','10');
-- 2025-05-04 15:02:35
insert into note(matricule,codeExamen,note) values('5d209','A24255D2PC5DC2','12');
-- 2025-05-04 15:02:35
insert into note(matricule,codeExamen,note) values('5d210','A24255D2PC5DC2','10');
-- 2025-05-04 15:02:35
insert into note(matricule,codeExamen,note) values('5d211','A24255D2PC5DC2','9.25');
-- 2025-05-04 15:02:35
insert into note(matricule,codeExamen,note) values('5d212','A24255D2PC5DC2','12');
-- 2025-05-04 15:02:35
insert into note(matricule,codeExamen,note) values('5d213','A24255D2PC5DC2','10.5');
-- 2025-05-04 15:02:35
insert into note(matricule,codeExamen,note) values('5d214','A24255D2PC5DC2','7');
-- 2025-05-04 15:02:35
insert into note(matricule,codeExamen,note) values('5d215','A24255D2PC5DC2','13.5');
-- 2025-05-04 15:02:36
insert into note(matricule,codeExamen,note) values('5d216','A24255D2PC5DC2','11.5');
-- 2025-05-04 15:02:36
insert into note(matricule,codeExamen,note) values('5d217','A24255D2PC5DC2','12.25');
-- 2025-05-04 15:02:36
insert into note(matricule,codeExamen,note) values('5d218','A24255D2PC5DC2','0');
-- 2025-05-04 15:02:36
insert into note(matricule,codeExamen,note) values('5d219','A24255D2PC5DC2','14.5');
-- 2025-05-04 15:02:36
insert into note(matricule,codeExamen,note) values('5d220','A24255D2PC5DC2','9');
-- 2025-05-04 15:02:36
insert into note(matricule,codeExamen,note) values('5d221','A24255D2PC5DC2','0');
-- 2025-05-04 15:02:36
insert into note(matricule,codeExamen,note) values('5d222','A24255D2PC5DC2','9.5');
-- 2025-05-04 15:02:36
insert into note(matricule,codeExamen,note) values('5d223','A24255D2PC5DC2','0');
-- 2025-05-04 15:02:36
insert into note(matricule,codeExamen,note) values('5d224','A24255D2PC5DC2','5.5');
-- 2025-05-04 15:02:36
insert into note(matricule,codeExamen,note) values('5d225','A24255D2PC5DC2','14.5');
-- 2025-05-04 15:02:36
insert into note(matricule,codeExamen,note) values('5d226','A24255D2PC5DC2','9');
-- 2025-05-04 15:02:36
insert into note(matricule,codeExamen,note) values('5d227','A24255D2PC5DC2','2.5');
-- 2025-05-04 15:02:36
insert into note(matricule,codeExamen,note) values('5d228','A24255D2PC5DC2','10');
-- 2025-05-04 15:02:36
insert into note(matricule,codeExamen,note) values('5d229','A24255D2PC5DC2','14');
-- 2025-05-04 15:02:37
insert into note(matricule,codeExamen,note) values('5d230','A24255D2PC5DC2','11.5');
-- 2025-05-04 15:02:37
insert into note(matricule,codeExamen,note) values('5d231','A24255D2PC5DC2','13.5');
-- 2025-05-04 15:02:37
insert into note(matricule,codeExamen,note) values('5d232','A24255D2PC5DC2','9');
-- 2025-05-04 15:02:37
insert into note(matricule,codeExamen,note) values('5d233','A24255D2PC5DC2','11.5');
-- 2025-05-04 15:02:37
insert into note(matricule,codeExamen,note) values('5d234','A24255D2PC5DC2','9.5');
-- 2025-05-04 15:02:37
insert into note(matricule,codeExamen,note) values('5d235','A24255D2PC5DC2','10.5');
-- 2025-05-04 15:02:37
insert into note(matricule,codeExamen,note) values('5d236','A24255D2PC5DC2','19.5');
-- 2025-05-04 15:02:37
insert into note(matricule,codeExamen,note) values('5d237','A24255D2PC5DC2','17.5');
-- 2025-05-04 15:02:37
insert into note(matricule,codeExamen,note) values('5d238','A24255D2PC5DC2','9.5');
-- 2025-05-04 15:02:37
insert into note(matricule,codeExamen,note) values('5d239','A24255D2PC5DC2','13.5');
-- 2025-05-04 15:02:37
insert into note(matricule,codeExamen,note) values('5d240','A24255D2PC5DC2','8');
-- 2025-05-04 15:02:37
insert into note(matricule,codeExamen,note) values('5d241','A24255D2PC5DC2','13.5');
-- 2025-05-04 15:02:37
insert into note(matricule,codeExamen,note) values('5d242','A24255D2PC5DC2','14');
-- 2025-05-04 15:02:37
insert into note(matricule,codeExamen,note) values('5d243','A24255D2PC5DC2','8.5');
-- 2025-05-04 15:02:37
insert into note(matricule,codeExamen,note) values('5d244','A24255D2PC5DC2','5');
-- 2025-05-04 15:02:37
insert into note(matricule,codeExamen,note) values('5d245','A24255D2PC5DC2','19.5');
-- 2025-05-04 15:02:37
insert into note(matricule,codeExamen,note) values('5d246','A24255D2PC5DC2','6');
-- 2025-05-04 15:02:38
insert into note(matricule,codeExamen,note) values('5d247','A24255D2PC5DC2','10');
-- 2025-05-04 15:02:38
insert into note(matricule,codeExamen,note) values('5d248','A24255D2PC5DC2','11.5');
-- 2025-05-04 15:02:38
insert into note(matricule,codeExamen,note) values('5d249','A24255D2PC5DC2','10');
-- 2025-05-04 15:02:38
insert into note(matricule,codeExamen,note) values('5d250','A24255D2PC5DC2','5.5');
-- 2025-05-04 15:02:38
insert into note(matricule,codeExamen,note) values('5d251','A24255D2PC5DC2','11.5');
-- 2025-05-04 15:02:38
insert into note(matricule,codeExamen,note) values('5d252','A24255D2PC5DC2','18');
-- 2025-05-04 15:02:38
insert into note(matricule,codeExamen,note) values('5d253','A24255D2PC5DC2','12.5');
-- 2025-05-04 15:02:38
insert into note(matricule,codeExamen,note) values('5d254','A24255D2PC5DC2','12.75');
-- 2025-05-04 15:02:38
insert into note(matricule,codeExamen,note) values('5d255','A24255D2PC5DC2','10.5');
-- 2025-05-04 15:02:38
insert into note(matricule,codeExamen,note) values('5d256','A24255D2PC5DC2','13.25');
-- 2025-05-04 15:02:38
insert into note(matricule,codeExamen,note) values('5d257','A24255D2PC5DC2','4.5');
-- 2025-05-04 15:02:38
insert into note(matricule,codeExamen,note) values('5d258','A24255D2PC5DC2','14.5');
-- 2025-05-04 15:02:38
insert into note(matricule,codeExamen,note) values('5d259','A24255D2PC5DC2','6');
-- 2025-05-04 15:02:38
insert into note(matricule,codeExamen,note) values('5d260','A24255D2PC5DC2','7');
-- 2025-05-04 15:02:39
insert into note(matricule,codeExamen,note) values('5d261','A24255D2PC5DC2','0');
-- 2025-05-04 15:02:39
insert into note(matricule,codeExamen,note) values('5d262','A24255D2PC5DC2','6');
-- 2025-05-04 15:02:39
insert into note(matricule,codeExamen,note) values('5d263','A24255D2PC5DC2','9.25');
-- 2025-05-04 15:02:39
insert into note(matricule,codeExamen,note) values('5d2064','A24255D2PC5DC2','2');