
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
-- 2025-05-04 15:37:02
insert into examen (codeExamen,codeClasseMatiere,codeSalleClasse,codeEvaluation,dateExamen,statutExamen,heureDebutExamen,heureFinExamen) values ('A24255D3SN5DD1','SN5D','A24255D3','D1','','1','','');
-- 2025-05-04 15:37:02
insert into examen (codeExamen,codeClasseMatiere,codeSalleClasse,codeEvaluation,dateExamen,statutExamen,heureDebutExamen,heureFinExamen) values ('A24255D3PC5DD1','PC5D','A24255D3','D1','','1','','');
-- 2025-05-04 15:37:02
insert into examen (codeExamen,codeClasseMatiere,codeSalleClasse,codeEvaluation,dateExamen,statutExamen,heureDebutExamen,heureFinExamen) values ('A24255D3MATH5DD1','MATH5D','A24255D3','D1','','1','','');
-- 2025-05-04 15:37:02
insert into examen (codeExamen,codeClasseMatiere,codeSalleClasse,codeEvaluation,dateExamen,statutExamen,heureDebutExamen,heureFinExamen) values ('A24255D3AR5DD1','AR5D','A24255D3','D1','','1','','');
-- 2025-05-04 15:37:02
insert into examen (codeExamen,codeClasseMatiere,codeSalleClasse,codeEvaluation,dateExamen,statutExamen,heureDebutExamen,heureFinExamen) values ('A24255D3FR5DD1','FR5D','A24255D3','D1','','1','','');
-- 2025-05-04 15:37:02
insert into examen (codeExamen,codeClasseMatiere,codeSalleClasse,codeEvaluation,dateExamen,statutExamen,heureDebutExamen,heureFinExamen) values ('A24255D3EN5DD1','EN5D','A24255D3','D1','','1','','');
-- 2025-05-04 15:37:02
insert into examen (codeExamen,codeClasseMatiere,codeSalleClasse,codeEvaluation,dateExamen,statutExamen,heureDebutExamen,heureFinExamen) values ('A24255D3PHILO5DD1','PHILO5D','A24255D3','D1','','1','','');
-- 2025-05-04 15:37:02
insert into examen (codeExamen,codeClasseMatiere,codeSalleClasse,codeEvaluation,dateExamen,statutExamen,heureDebutExamen,heureFinExamen) values ('A24255D3IR5DD1','IR5D','A24255D3','D1','','1','','');
-- 2025-05-04 15:37:02
insert into examen (codeExamen,codeClasseMatiere,codeSalleClasse,codeEvaluation,dateExamen,statutExamen,heureDebutExamen,heureFinExamen) values ('A24255D3HG5DD1','HG5D','A24255D3','D1','','1','','');
-- 2025-05-04 15:37:02
insert into examen (codeExamen,codeClasseMatiere,codeSalleClasse,codeEvaluation,dateExamen,statutExamen,heureDebutExamen,heureFinExamen) values ('A24255D3EPS5DD1','EPS5D','A24255D3','D1','','1','','');
-- 2025-05-04 15:37:02
insert into examen (codeExamen,codeClasseMatiere,codeSalleClasse,codeEvaluation,dateExamen,statutExamen,heureDebutExamen,heureFinExamen) values ('A24255D3IC5DD1','IC5D','A24255D3','D1','','1','','');
-- 2025-05-04 15:37:43
insert into examen (codeExamen,codeClasseMatiere,codeSalleClasse,codeEvaluation,dateExamen,statutExamen,heureDebutExamen,heureFinExamen) values ('A24255D3SN5DC1','SN5D','A24255D3','C1','','1','','');
-- 2025-05-04 15:37:43
insert into examen (codeExamen,codeClasseMatiere,codeSalleClasse,codeEvaluation,dateExamen,statutExamen,heureDebutExamen,heureFinExamen) values ('A24255D3PC5DC1','PC5D','A24255D3','C1','','1','','');
-- 2025-05-04 15:37:43
insert into examen (codeExamen,codeClasseMatiere,codeSalleClasse,codeEvaluation,dateExamen,statutExamen,heureDebutExamen,heureFinExamen) values ('A24255D3MATH5DC1','MATH5D','A24255D3','C1','','1','','');
-- 2025-05-04 15:37:43
insert into examen (codeExamen,codeClasseMatiere,codeSalleClasse,codeEvaluation,dateExamen,statutExamen,heureDebutExamen,heureFinExamen) values ('A24255D3AR5DC1','AR5D','A24255D3','C1','','1','','');
-- 2025-05-04 15:37:43
insert into examen (codeExamen,codeClasseMatiere,codeSalleClasse,codeEvaluation,dateExamen,statutExamen,heureDebutExamen,heureFinExamen) values ('A24255D3FR5DC1','FR5D','A24255D3','C1','','1','','');
-- 2025-05-04 15:37:43
insert into examen (codeExamen,codeClasseMatiere,codeSalleClasse,codeEvaluation,dateExamen,statutExamen,heureDebutExamen,heureFinExamen) values ('A24255D3EN5DC1','EN5D','A24255D3','C1','','1','','');
-- 2025-05-04 15:37:43
insert into examen (codeExamen,codeClasseMatiere,codeSalleClasse,codeEvaluation,dateExamen,statutExamen,heureDebutExamen,heureFinExamen) values ('A24255D3PHILO5DC1','PHILO5D','A24255D3','C1','','1','','');
-- 2025-05-04 15:37:43
insert into examen (codeExamen,codeClasseMatiere,codeSalleClasse,codeEvaluation,dateExamen,statutExamen,heureDebutExamen,heureFinExamen) values ('A24255D3IR5DC1','IR5D','A24255D3','C1','','1','','');
-- 2025-05-04 15:37:43
insert into examen (codeExamen,codeClasseMatiere,codeSalleClasse,codeEvaluation,dateExamen,statutExamen,heureDebutExamen,heureFinExamen) values ('A24255D3HG5DC1','HG5D','A24255D3','C1','','1','','');
-- 2025-05-04 15:37:43
insert into examen (codeExamen,codeClasseMatiere,codeSalleClasse,codeEvaluation,dateExamen,statutExamen,heureDebutExamen,heureFinExamen) values ('A24255D3EPS5DC1','EPS5D','A24255D3','C1','','1','','');
-- 2025-05-04 15:37:43
insert into examen (codeExamen,codeClasseMatiere,codeSalleClasse,codeEvaluation,dateExamen,statutExamen,heureDebutExamen,heureFinExamen) values ('A24255D3IC5DC1','IC5D','A24255D3','C1','','1','','');
-- 2025-05-04 15:39:05
insert into examen (codeExamen,codeClasseMatiere,codeSalleClasse,codeEvaluation,dateExamen,statutExamen,heureDebutExamen,heureFinExamen) values ('A24255D3SN5DD2','SN5D','A24255D3','D2','','1','','');
-- 2025-05-04 15:39:05
insert into examen (codeExamen,codeClasseMatiere,codeSalleClasse,codeEvaluation,dateExamen,statutExamen,heureDebutExamen,heureFinExamen) values ('A24255D3PC5DD2','PC5D','A24255D3','D2','','1','','');
-- 2025-05-04 15:39:05
insert into examen (codeExamen,codeClasseMatiere,codeSalleClasse,codeEvaluation,dateExamen,statutExamen,heureDebutExamen,heureFinExamen) values ('A24255D3MATH5DD2','MATH5D','A24255D3','D2','','1','','');
-- 2025-05-04 15:39:05
insert into examen (codeExamen,codeClasseMatiere,codeSalleClasse,codeEvaluation,dateExamen,statutExamen,heureDebutExamen,heureFinExamen) values ('A24255D3AR5DD2','AR5D','A24255D3','D2','','1','','');
-- 2025-05-04 15:39:05
insert into examen (codeExamen,codeClasseMatiere,codeSalleClasse,codeEvaluation,dateExamen,statutExamen,heureDebutExamen,heureFinExamen) values ('A24255D3FR5DD2','FR5D','A24255D3','D2','','1','','');
-- 2025-05-04 15:39:05
insert into examen (codeExamen,codeClasseMatiere,codeSalleClasse,codeEvaluation,dateExamen,statutExamen,heureDebutExamen,heureFinExamen) values ('A24255D3EN5DD2','EN5D','A24255D3','D2','','1','','');
-- 2025-05-04 15:39:05
insert into examen (codeExamen,codeClasseMatiere,codeSalleClasse,codeEvaluation,dateExamen,statutExamen,heureDebutExamen,heureFinExamen) values ('A24255D3PHILO5DD2','PHILO5D','A24255D3','D2','','1','','');
-- 2025-05-04 15:39:05
insert into examen (codeExamen,codeClasseMatiere,codeSalleClasse,codeEvaluation,dateExamen,statutExamen,heureDebutExamen,heureFinExamen) values ('A24255D3IR5DD2','IR5D','A24255D3','D2','','1','','');
-- 2025-05-04 15:39:05
insert into examen (codeExamen,codeClasseMatiere,codeSalleClasse,codeEvaluation,dateExamen,statutExamen,heureDebutExamen,heureFinExamen) values ('A24255D3HG5DD2','HG5D','A24255D3','D2','','1','','');
-- 2025-05-04 15:39:05
insert into examen (codeExamen,codeClasseMatiere,codeSalleClasse,codeEvaluation,dateExamen,statutExamen,heureDebutExamen,heureFinExamen) values ('A24255D3EPS5DD2','EPS5D','A24255D3','D2','','1','','');
-- 2025-05-04 15:39:05
insert into examen (codeExamen,codeClasseMatiere,codeSalleClasse,codeEvaluation,dateExamen,statutExamen,heureDebutExamen,heureFinExamen) values ('A24255D3IC5DD2','IC5D','A24255D3','D2','','1','','');
-- 2025-05-04 15:39:54
insert into examen (codeExamen,codeClasseMatiere,codeSalleClasse,codeEvaluation,dateExamen,statutExamen,heureDebutExamen,heureFinExamen) values ('A24255D3SN5DC2','SN5D','A24255D3','C2','','1','','');
-- 2025-05-04 15:39:54
insert into examen (codeExamen,codeClasseMatiere,codeSalleClasse,codeEvaluation,dateExamen,statutExamen,heureDebutExamen,heureFinExamen) values ('A24255D3PC5DC2','PC5D','A24255D3','C2','','1','','');
-- 2025-05-04 15:39:54
insert into examen (codeExamen,codeClasseMatiere,codeSalleClasse,codeEvaluation,dateExamen,statutExamen,heureDebutExamen,heureFinExamen) values ('A24255D3MATH5DC2','MATH5D','A24255D3','C2','','1','','');
-- 2025-05-04 15:39:54
insert into examen (codeExamen,codeClasseMatiere,codeSalleClasse,codeEvaluation,dateExamen,statutExamen,heureDebutExamen,heureFinExamen) values ('A24255D3AR5DC2','AR5D','A24255D3','C2','','1','','');
-- 2025-05-04 15:39:54
insert into examen (codeExamen,codeClasseMatiere,codeSalleClasse,codeEvaluation,dateExamen,statutExamen,heureDebutExamen,heureFinExamen) values ('A24255D3FR5DC2','FR5D','A24255D3','C2','','1','','');
-- 2025-05-04 15:39:54
insert into examen (codeExamen,codeClasseMatiere,codeSalleClasse,codeEvaluation,dateExamen,statutExamen,heureDebutExamen,heureFinExamen) values ('A24255D3EN5DC2','EN5D','A24255D3','C2','','1','','');
-- 2025-05-04 15:39:54
insert into examen (codeExamen,codeClasseMatiere,codeSalleClasse,codeEvaluation,dateExamen,statutExamen,heureDebutExamen,heureFinExamen) values ('A24255D3PHILO5DC2','PHILO5D','A24255D3','C2','','1','','');
-- 2025-05-04 15:39:54
insert into examen (codeExamen,codeClasseMatiere,codeSalleClasse,codeEvaluation,dateExamen,statutExamen,heureDebutExamen,heureFinExamen) values ('A24255D3IR5DC2','IR5D','A24255D3','C2','','1','','');
-- 2025-05-04 15:39:54
insert into examen (codeExamen,codeClasseMatiere,codeSalleClasse,codeEvaluation,dateExamen,statutExamen,heureDebutExamen,heureFinExamen) values ('A24255D3HG5DC2','HG5D','A24255D3','C2','','1','','');
-- 2025-05-04 15:39:54
insert into examen (codeExamen,codeClasseMatiere,codeSalleClasse,codeEvaluation,dateExamen,statutExamen,heureDebutExamen,heureFinExamen) values ('A24255D3EPS5DC2','EPS5D','A24255D3','C2','','1','','');
-- 2025-05-04 15:39:54
insert into examen (codeExamen,codeClasseMatiere,codeSalleClasse,codeEvaluation,dateExamen,statutExamen,heureDebutExamen,heureFinExamen) values ('A24255D3IC5DC2','IC5D','A24255D3','C2','','1','','');
-- 2025-05-04 15:41:24
insert into note(matricule,codeExamen,note) values('5d301','A24255D3PC5DD1','3');
-- 2025-05-04 15:41:24
insert into note(matricule,codeExamen,note) values('5d302','A24255D3PC5DD1','4.5');
-- 2025-05-04 15:41:24
insert into note(matricule,codeExamen,note) values('5d303','A24255D3PC5DD1','5');
-- 2025-05-04 15:41:24
insert into note(matricule,codeExamen,note) values('5d304','A24255D3PC5DD1','4');
-- 2025-05-04 15:41:24
insert into note(matricule,codeExamen,note) values('5d305','A24255D3PC5DD1','0');
-- 2025-05-04 15:41:24
insert into note(matricule,codeExamen,note) values('5d306','A24255D3PC5DD1','6.5');
-- 2025-05-04 15:41:24
insert into note(matricule,codeExamen,note) values('5d307','A24255D3PC5DD1','0');
-- 2025-05-04 15:41:24
insert into note(matricule,codeExamen,note) values('5d308','A24255D3PC5DD1','7.5');
-- 2025-05-04 15:41:24
insert into note(matricule,codeExamen,note) values('5d309','A24255D3PC5DD1','0');
-- 2025-05-04 15:41:24
insert into note(matricule,codeExamen,note) values('5d310','A24255D3PC5DD1','4.5');
-- 2025-05-04 15:41:24
insert into note(matricule,codeExamen,note) values('5d311','A24255D3PC5DD1','5');
-- 2025-05-04 15:41:25
insert into note(matricule,codeExamen,note) values('5d312','A24255D3PC5DD1','5');
-- 2025-05-04 15:41:25
insert into note(matricule,codeExamen,note) values('5d313','A24255D3PC5DD1','8');
-- 2025-05-04 15:41:25
insert into note(matricule,codeExamen,note) values('5d314','A24255D3PC5DD1','9');
-- 2025-05-04 15:41:25
insert into note(matricule,codeExamen,note) values('5d315','A24255D3PC5DD1','4');
-- 2025-05-04 15:41:25
insert into note(matricule,codeExamen,note) values('5d316','A24255D3PC5DD1','4');
-- 2025-05-04 15:41:25
insert into note(matricule,codeExamen,note) values('5d317','A24255D3PC5DD1','4');
-- 2025-05-04 15:41:25
insert into note(matricule,codeExamen,note) values('5d318','A24255D3PC5DD1','0');
-- 2025-05-04 15:41:25
insert into note(matricule,codeExamen,note) values('5d319','A24255D3PC5DD1','4');
-- 2025-05-04 15:41:25
insert into note(matricule,codeExamen,note) values('5d320','A24255D3PC5DD1','4');
-- 2025-05-04 15:41:25
insert into note(matricule,codeExamen,note) values('5d321','A24255D3PC5DD1','0');
-- 2025-05-04 15:41:25
insert into note(matricule,codeExamen,note) values('5d322','A24255D3PC5DD1','5');
-- 2025-05-04 15:41:25
insert into note(matricule,codeExamen,note) values('5d323','A24255D3PC5DD1','9');
-- 2025-05-04 15:41:25
insert into note(matricule,codeExamen,note) values('5d324','A24255D3PC5DD1','4.25');
-- 2025-05-04 15:41:25
insert into note(matricule,codeExamen,note) values('5d325','A24255D3PC5DD1','0');
-- 2025-05-04 15:41:25
insert into note(matricule,codeExamen,note) values('5d326','A24255D3PC5DD1','2');
-- 2025-05-04 15:41:25
insert into note(matricule,codeExamen,note) values('5d327','A24255D3PC5DD1','2');
-- 2025-05-04 15:41:25
insert into note(matricule,codeExamen,note) values('5d328','A24255D3PC5DD1','2.5');
-- 2025-05-04 15:41:25
insert into note(matricule,codeExamen,note) values('5d329','A24255D3PC5DD1','8');
-- 2025-05-04 15:41:25
insert into note(matricule,codeExamen,note) values('5d330','A24255D3PC5DD1','9');
-- 2025-05-04 15:41:25
insert into note(matricule,codeExamen,note) values('5d331','A24255D3PC5DD1','10.75');
-- 2025-05-04 15:41:26
insert into note(matricule,codeExamen,note) values('5d332','A24255D3PC5DD1','0');
-- 2025-05-04 15:41:26
insert into note(matricule,codeExamen,note) values('5d333','A24255D3PC5DD1','4');
-- 2025-05-04 15:41:26
insert into note(matricule,codeExamen,note) values('5d334','A24255D3PC5DD1','6.4');
-- 2025-05-04 15:41:26
insert into note(matricule,codeExamen,note) values('5d335','A24255D3PC5DD1','8');
-- 2025-05-04 15:41:26
insert into note(matricule,codeExamen,note) values('5d336','A24255D3PC5DD1','8.5');
-- 2025-05-04 15:41:26
insert into note(matricule,codeExamen,note) values('5d337','A24255D3PC5DD1','7');
-- 2025-05-04 15:41:26
insert into note(matricule,codeExamen,note) values('5d338','A24255D3PC5DD1','12.5');
-- 2025-05-04 15:41:26
insert into note(matricule,codeExamen,note) values('5d339','A24255D3PC5DD1','7');
-- 2025-05-04 15:41:26
insert into note(matricule,codeExamen,note) values('5d340','A24255D3PC5DD1','8');
-- 2025-05-04 15:41:26
insert into note(matricule,codeExamen,note) values('5d341','A24255D3PC5DD1','6');
-- 2025-05-04 15:41:26
insert into note(matricule,codeExamen,note) values('5d342','A24255D3PC5DD1','4');
-- 2025-05-04 15:41:26
insert into note(matricule,codeExamen,note) values('5d343','A24255D3PC5DD1','6');
-- 2025-05-04 15:41:26
insert into note(matricule,codeExamen,note) values('5d344','A24255D3PC5DD1','5');
-- 2025-05-04 15:41:26
insert into note(matricule,codeExamen,note) values('5d345','A24255D3PC5DD1','5');
-- 2025-05-04 15:41:26
insert into note(matricule,codeExamen,note) values('5d346','A24255D3PC5DD1','6.75');
-- 2025-05-04 15:41:26
insert into note(matricule,codeExamen,note) values('5d347','A24255D3PC5DD1','2.5');
-- 2025-05-04 15:41:27
insert into note(matricule,codeExamen,note) values('5d348','A24255D3PC5DD1','4');
-- 2025-05-04 15:41:27
insert into note(matricule,codeExamen,note) values('5d349','A24255D3PC5DD1','0');
-- 2025-05-04 15:41:27
insert into note(matricule,codeExamen,note) values('5d350','A24255D3PC5DD1','3');
-- 2025-05-04 15:41:27
insert into note(matricule,codeExamen,note) values('5d351','A24255D3PC5DD1','3.5');
-- 2025-05-04 15:41:27
insert into note(matricule,codeExamen,note) values('5d352','A24255D3PC5DD1','5');
-- 2025-05-04 15:41:27
insert into note(matricule,codeExamen,note) values('5d353','A24255D3PC5DD1','6.75');
-- 2025-05-04 15:41:27
insert into note(matricule,codeExamen,note) values('5d354','A24255D3PC5DD1','3');
-- 2025-05-04 15:41:27
insert into note(matricule,codeExamen,note) values('5d355','A24255D3PC5DD1','5');
-- 2025-05-04 15:41:27
insert into note(matricule,codeExamen,note) values('5d356','A24255D3PC5DD1','0');
-- 2025-05-04 15:41:27
insert into note(matricule,codeExamen,note) values('5d357','A24255D3PC5DD1','5');
-- 2025-05-04 15:41:27
insert into note(matricule,codeExamen,note) values('5d358','A24255D3PC5DD1','4');
-- 2025-05-04 15:41:27
insert into note(matricule,codeExamen,note) values('5d359','A24255D3PC5DD1','4');
-- 2025-05-04 15:41:27
insert into note(matricule,codeExamen,note) values('5d360','A24255D3PC5DD1','6');
-- 2025-05-04 15:41:27
insert into note(matricule,codeExamen,note) values('5d361','A24255D3PC5DD1','3');
-- 2025-05-04 15:42:34
insert into note(matricule,codeExamen,note) values('5d301','A24255D3PC5DD2','7');
-- 2025-05-04 15:42:34
insert into note(matricule,codeExamen,note) values('5d302','A24255D3PC5DD2','3');
-- 2025-05-04 15:42:34
insert into note(matricule,codeExamen,note) values('5d303','A24255D3PC5DD2','15.25');
-- 2025-05-04 15:42:34
insert into note(matricule,codeExamen,note) values('5d304','A24255D3PC5DD2','8');
-- 2025-05-04 15:42:34
insert into note(matricule,codeExamen,note) values('5d305','A24255D3PC5DD2','3');
-- 2025-05-04 15:42:34
insert into note(matricule,codeExamen,note) values('5d306','A24255D3PC5DD2','8.5');
-- 2025-05-04 15:42:34
insert into note(matricule,codeExamen,note) values('5d307','A24255D3PC5DD2','3');
-- 2025-05-04 15:42:35
insert into note(matricule,codeExamen,note) values('5d308','A24255D3PC5DD2','6.75');
-- 2025-05-04 15:42:35
insert into note(matricule,codeExamen,note) values('5d309','A24255D3PC5DD2','0');
-- 2025-05-04 15:42:35
insert into note(matricule,codeExamen,note) values('5d310','A24255D3PC5DD2','12.25');
-- 2025-05-04 15:42:35
insert into note(matricule,codeExamen,note) values('5d311','A24255D3PC5DD2','8');
-- 2025-05-04 15:42:35
insert into note(matricule,codeExamen,note) values('5d312','A24255D3PC5DD2','2');
-- 2025-05-04 15:42:35
insert into note(matricule,codeExamen,note) values('5d313','A24255D3PC5DD2','1');
-- 2025-05-04 15:42:35
insert into note(matricule,codeExamen,note) values('5d314','A24255D3PC5DD2','13.75');
-- 2025-05-04 15:42:35
insert into note(matricule,codeExamen,note) values('5d315','A24255D3PC5DD2','7.5');
-- 2025-05-04 15:42:35
insert into note(matricule,codeExamen,note) values('5d316','A24255D3PC5DD2','5');
-- 2025-05-04 15:42:35
insert into note(matricule,codeExamen,note) values('5d317','A24255D3PC5DD2','1');
-- 2025-05-04 15:42:35
insert into note(matricule,codeExamen,note) values('5d318','A24255D3PC5DD2','0');
-- 2025-05-04 15:42:35
insert into note(matricule,codeExamen,note) values('5d319','A24255D3PC5DD2','3.5');
-- 2025-05-04 15:42:35
insert into note(matricule,codeExamen,note) values('5d320','A24255D3PC5DD2','4');
-- 2025-05-04 15:42:35
insert into note(matricule,codeExamen,note) values('5d321','A24255D3PC5DD2','2');
-- 2025-05-04 15:42:35
insert into note(matricule,codeExamen,note) values('5d322','A24255D3PC5DD2','4.5');
-- 2025-05-04 15:42:35
insert into note(matricule,codeExamen,note) values('5d323','A24255D3PC5DD2','16.5');
-- 2025-05-04 15:42:36
insert into note(matricule,codeExamen,note) values('5d324','A24255D3PC5DD2','12');
-- 2025-05-04 15:42:36
insert into note(matricule,codeExamen,note) values('5d325','A24255D3PC5DD2','0');
-- 2025-05-04 15:42:36
insert into note(matricule,codeExamen,note) values('5d326','A24255D3PC5DD2','4.75');
-- 2025-05-04 15:42:36
insert into note(matricule,codeExamen,note) values('5d327','A24255D3PC5DD2','2');
-- 2025-05-04 15:42:36
insert into note(matricule,codeExamen,note) values('5d328','A24255D3PC5DD2','1');
-- 2025-05-04 15:42:36
insert into note(matricule,codeExamen,note) values('5d329','A24255D3PC5DD2','14');
-- 2025-05-04 15:42:36
insert into note(matricule,codeExamen,note) values('5d330','A24255D3PC5DD2','5');
-- 2025-05-04 15:42:36
insert into note(matricule,codeExamen,note) values('5d331','A24255D3PC5DD2','1');
-- 2025-05-04 15:42:36
insert into note(matricule,codeExamen,note) values('5d332','A24255D3PC5DD2','1');
-- 2025-05-04 15:42:36
insert into note(matricule,codeExamen,note) values('5d333','A24255D3PC5DD2','1');
-- 2025-05-04 15:42:36
insert into note(matricule,codeExamen,note) values('5d334','A24255D3PC5DD2','3');
-- 2025-05-04 15:42:36
insert into note(matricule,codeExamen,note) values('5d335','A24255D3PC5DD2','6.5');
-- 2025-05-04 15:42:36
insert into note(matricule,codeExamen,note) values('5d336','A24255D3PC5DD2','12.5');
-- 2025-05-04 15:42:36
insert into note(matricule,codeExamen,note) values('5d337','A24255D3PC5DD2','13');
-- 2025-05-04 15:42:36
insert into note(matricule,codeExamen,note) values('5d338','A24255D3PC5DD2','11.5');
-- 2025-05-04 15:42:37
insert into note(matricule,codeExamen,note) values('5d339','A24255D3PC5DD2','9');
-- 2025-05-04 15:42:37
insert into note(matricule,codeExamen,note) values('5d340','A24255D3PC5DD2','7');
-- 2025-05-04 15:42:37
insert into note(matricule,codeExamen,note) values('5d341','A24255D3PC5DD2','10.5');
-- 2025-05-04 15:42:37
insert into note(matricule,codeExamen,note) values('5d342','A24255D3PC5DD2','3');
-- 2025-05-04 15:42:37
insert into note(matricule,codeExamen,note) values('5d343','A24255D3PC5DD2','8');
-- 2025-05-04 15:42:37
insert into note(matricule,codeExamen,note) values('5d344','A24255D3PC5DD2','6');
-- 2025-05-04 15:42:37
insert into note(matricule,codeExamen,note) values('5d345','A24255D3PC5DD2','4');
-- 2025-05-04 15:42:37
insert into note(matricule,codeExamen,note) values('5d346','A24255D3PC5DD2','8');
-- 2025-05-04 15:42:37
insert into note(matricule,codeExamen,note) values('5d347','A24255D3PC5DD2','2');
-- 2025-05-04 15:42:37
insert into note(matricule,codeExamen,note) values('5d348','A24255D3PC5DD2','5');
-- 2025-05-04 15:42:37
insert into note(matricule,codeExamen,note) values('5d349','A24255D3PC5DD2','1');
-- 2025-05-04 15:42:37
insert into note(matricule,codeExamen,note) values('5d350','A24255D3PC5DD2','3');
-- 2025-05-04 15:42:37
insert into note(matricule,codeExamen,note) values('5d351','A24255D3PC5DD2','0');
-- 2025-05-04 15:42:37
insert into note(matricule,codeExamen,note) values('5d352','A24255D3PC5DD2','5');
-- 2025-05-04 15:42:37
insert into note(matricule,codeExamen,note) values('5d353','A24255D3PC5DD2','8.5');
-- 2025-05-04 15:42:37
insert into note(matricule,codeExamen,note) values('5d354','A24255D3PC5DD2','3');
-- 2025-05-04 15:42:38
insert into note(matricule,codeExamen,note) values('5d355','A24255D3PC5DD2','3');
-- 2025-05-04 15:42:38
insert into note(matricule,codeExamen,note) values('5d356','A24255D3PC5DD2','3');
-- 2025-05-04 15:42:38
insert into note(matricule,codeExamen,note) values('5d357','A24255D3PC5DD2','1');
-- 2025-05-04 15:42:38
insert into note(matricule,codeExamen,note) values('5d358','A24255D3PC5DD2','2');
-- 2025-05-04 15:42:38
insert into note(matricule,codeExamen,note) values('5d359','A24255D3PC5DD2','2');
-- 2025-05-04 15:42:38
insert into note(matricule,codeExamen,note) values('5d360','A24255D3PC5DD2','3');
-- 2025-05-04 15:42:38
insert into note(matricule,codeExamen,note) values('5d361','A24255D3PC5DD2','2');
-- 2025-05-04 15:43:08
insert into note(matricule,codeExamen,note) values('5d301','A24255D3PC5DC1','9.25');
-- 2025-05-04 15:43:08
insert into note(matricule,codeExamen,note) values('5d302','A24255D3PC5DC1','8');
-- 2025-05-04 15:43:09
insert into note(matricule,codeExamen,note) values('5d303','A24255D3PC5DC1','14.5');
-- 2025-05-04 15:43:09
insert into note(matricule,codeExamen,note) values('5d304','A24255D3PC5DC1','11.25');
-- 2025-05-04 15:43:09
insert into note(matricule,codeExamen,note) values('5d305','A24255D3PC5DC1','9');
-- 2025-05-04 15:43:09
insert into note(matricule,codeExamen,note) values('5d306','A24255D3PC5DC1','9');
-- 2025-05-04 15:43:09
insert into note(matricule,codeExamen,note) values('5d307','A24255D3PC5DC1','0');
-- 2025-05-04 15:43:09
insert into note(matricule,codeExamen,note) values('5d308','A24255D3PC5DC1','10');
-- 2025-05-04 15:43:09
insert into note(matricule,codeExamen,note) values('5d309','A24255D3PC5DC1','8.25');
-- 2025-05-04 15:43:09
insert into note(matricule,codeExamen,note) values('5d310','A24255D3PC5DC1','15.75');
-- 2025-05-04 15:43:09
insert into note(matricule,codeExamen,note) values('5d311','A24255D3PC5DC1','11');
-- 2025-05-04 15:43:09
insert into note(matricule,codeExamen,note) values('5d312','A24255D3PC5DC1','8.25');
-- 2025-05-04 15:43:09
insert into note(matricule,codeExamen,note) values('5d313','A24255D3PC5DC1','13.5');
-- 2025-05-04 15:43:09
insert into note(matricule,codeExamen,note) values('5d314','A24255D3PC5DC1','16.25');
-- 2025-05-04 15:43:09
insert into note(matricule,codeExamen,note) values('5d315','A24255D3PC5DC1','7.75');
-- 2025-05-04 15:43:09
insert into note(matricule,codeExamen,note) values('5d316','A24255D3PC5DC1','10');
-- 2025-05-04 15:43:09
insert into note(matricule,codeExamen,note) values('5d317','A24255D3PC5DC1','4.5');
-- 2025-05-04 15:43:09
insert into note(matricule,codeExamen,note) values('5d318','A24255D3PC5DC1','0');
-- 2025-05-04 15:43:09
insert into note(matricule,codeExamen,note) values('5d319','A24255D3PC5DC1','9.75');
-- 2025-05-04 15:43:09
insert into note(matricule,codeExamen,note) values('5d320','A24255D3PC5DC1','8');
-- 2025-05-04 15:43:10
insert into note(matricule,codeExamen,note) values('5d321','A24255D3PC5DC1','4.75');
-- 2025-05-04 15:43:10
insert into note(matricule,codeExamen,note) values('5d322','A24255D3PC5DC1','10.75');
-- 2025-05-04 15:43:10
insert into note(matricule,codeExamen,note) values('5d323','A24255D3PC5DC1','8');
-- 2025-05-04 15:43:10
insert into note(matricule,codeExamen,note) values('5d324','A24255D3PC5DC1','11.25');
-- 2025-05-04 15:43:10
insert into note(matricule,codeExamen,note) values('5d325','A24255D3PC5DC1','0');
-- 2025-05-04 15:43:10
insert into note(matricule,codeExamen,note) values('5d326','A24255D3PC5DC1','9.25');
-- 2025-05-04 15:43:10
insert into note(matricule,codeExamen,note) values('5d327','A24255D3PC5DC1','8');
-- 2025-05-04 15:43:10
insert into note(matricule,codeExamen,note) values('5d328','A24255D3PC5DC1','7');
-- 2025-05-04 15:43:10
insert into note(matricule,codeExamen,note) values('5d329','A24255D3PC5DC1','14');
-- 2025-05-04 15:43:10
insert into note(matricule,codeExamen,note) values('5d330','A24255D3PC5DC1','8');
-- 2025-05-04 15:43:10
insert into note(matricule,codeExamen,note) values('5d331','A24255D3PC5DC1','6');
-- 2025-05-04 15:43:10
insert into note(matricule,codeExamen,note) values('5d332','A24255D3PC5DC1','9');
-- 2025-05-04 15:43:10
insert into note(matricule,codeExamen,note) values('5d333','A24255D3PC5DC1','6.5');
-- 2025-05-04 15:43:10
insert into note(matricule,codeExamen,note) values('5d334','A24255D3PC5DC1','13');
-- 2025-05-04 15:43:10
insert into note(matricule,codeExamen,note) values('5d335','A24255D3PC5DC1','9.75');
-- 2025-05-04 15:43:10
insert into note(matricule,codeExamen,note) values('5d336','A24255D3PC5DC1','16.25');
-- 2025-05-04 15:43:10
insert into note(matricule,codeExamen,note) values('5d337','A24255D3PC5DC1','10.75');
-- 2025-05-04 15:43:11
insert into note(matricule,codeExamen,note) values('5d338','A24255D3PC5DC1','13');
-- 2025-05-04 15:43:11
insert into note(matricule,codeExamen,note) values('5d339','A24255D3PC5DC1','13');
-- 2025-05-04 15:43:11
insert into note(matricule,codeExamen,note) values('5d340','A24255D3PC5DC1','9.25');
-- 2025-05-04 15:43:11
insert into note(matricule,codeExamen,note) values('5d341','A24255D3PC5DC1','9.25');
-- 2025-05-04 15:43:11
insert into note(matricule,codeExamen,note) values('5d342','A24255D3PC5DC1','11.75');
-- 2025-05-04 15:43:11
insert into note(matricule,codeExamen,note) values('5d343','A24255D3PC5DC1','11.25');
-- 2025-05-04 15:43:11
insert into note(matricule,codeExamen,note) values('5d344','A24255D3PC5DC1','10');
-- 2025-05-04 15:43:11
insert into note(matricule,codeExamen,note) values('5d345','A24255D3PC5DC1','5');
-- 2025-05-04 15:43:11
insert into note(matricule,codeExamen,note) values('5d346','A24255D3PC5DC1','12.25');
-- 2025-05-04 15:43:11
insert into note(matricule,codeExamen,note) values('5d347','A24255D3PC5DC1','8.5');
-- 2025-05-04 15:43:11
insert into note(matricule,codeExamen,note) values('5d348','A24255D3PC5DC1','9');
-- 2025-05-04 15:43:11
insert into note(matricule,codeExamen,note) values('5d349','A24255D3PC5DC1','0');
-- 2025-05-04 15:43:11
insert into note(matricule,codeExamen,note) values('5d350','A24255D3PC5DC1','5.5');
-- 2025-05-04 15:43:11
insert into note(matricule,codeExamen,note) values('5d351','A24255D3PC5DC1','6.25');
-- 2025-05-04 15:43:11
insert into note(matricule,codeExamen,note) values('5d352','A24255D3PC5DC1','8');
-- 2025-05-04 15:43:11
insert into note(matricule,codeExamen,note) values('5d353','A24255D3PC5DC1','11');
-- 2025-05-04 15:43:12
insert into note(matricule,codeExamen,note) values('5d354','A24255D3PC5DC1','9.25');
-- 2025-05-04 15:43:12
insert into note(matricule,codeExamen,note) values('5d355','A24255D3PC5DC1','9');
-- 2025-05-04 15:43:12
insert into note(matricule,codeExamen,note) values('5d356','A24255D3PC5DC1','14');
-- 2025-05-04 15:43:12
insert into note(matricule,codeExamen,note) values('5d357','A24255D3PC5DC1','7.25');
-- 2025-05-04 15:43:12
insert into note(matricule,codeExamen,note) values('5d358','A24255D3PC5DC1','7.5');
-- 2025-05-04 15:43:12
insert into note(matricule,codeExamen,note) values('5d359','A24255D3PC5DC1','8.5');
-- 2025-05-04 15:43:12
insert into note(matricule,codeExamen,note) values('5d360','A24255D3PC5DC1','12.25');
-- 2025-05-04 15:43:12
insert into note(matricule,codeExamen,note) values('5d361','A24255D3PC5DC1','16.25');
-- 2025-05-04 15:43:36
insert into note(matricule,codeExamen,note) values('5d301','A24255D3PC5DC2','4.25');
-- 2025-05-04 15:43:36
insert into note(matricule,codeExamen,note) values('5d302','A24255D3PC5DC2','3.25');
-- 2025-05-04 15:43:36
insert into note(matricule,codeExamen,note) values('5d303','A24255D3PC5DC2','8');
-- 2025-05-04 15:43:36
insert into note(matricule,codeExamen,note) values('5d304','A24255D3PC5DC2','5.5');
-- 2025-05-04 15:43:36
insert into note(matricule,codeExamen,note) values('5d305','A24255D3PC5DC2','2');
-- 2025-05-04 15:43:36
insert into note(matricule,codeExamen,note) values('5d306','A24255D3PC5DC2','5');
-- 2025-05-04 15:43:36
insert into note(matricule,codeExamen,note) values('5d307','A24255D3PC5DC2','0');
-- 2025-05-04 15:43:36
insert into note(matricule,codeExamen,note) values('5d308','A24255D3PC5DC2','6.25');
-- 2025-05-04 15:43:36
insert into note(matricule,codeExamen,note) values('5d309','A24255D3PC5DC2','0');
-- 2025-05-04 15:43:36
insert into note(matricule,codeExamen,note) values('5d310','A24255D3PC5DC2','8.75');
-- 2025-05-04 15:43:36
insert into note(matricule,codeExamen,note) values('5d311','A24255D3PC5DC2','4.5');
-- 2025-05-04 15:43:36
insert into note(matricule,codeExamen,note) values('5d312','A24255D3PC5DC2','3');
-- 2025-05-04 15:43:36
insert into note(matricule,codeExamen,note) values('5d313','A24255D3PC5DC2','8');
-- 2025-05-04 15:43:37
insert into note(matricule,codeExamen,note) values('5d314','A24255D3PC5DC2','7.75');
-- 2025-05-04 15:43:37
insert into note(matricule,codeExamen,note) values('5d315','A24255D3PC5DC2','4');
-- 2025-05-04 15:43:37
insert into note(matricule,codeExamen,note) values('5d316','A24255D3PC5DC2','4');
-- 2025-05-04 15:43:37
insert into note(matricule,codeExamen,note) values('5d317','A24255D3PC5DC2','8');
-- 2025-05-04 15:43:37
insert into note(matricule,codeExamen,note) values('5d318','A24255D3PC5DC2','0');
-- 2025-05-04 15:43:37
insert into note(matricule,codeExamen,note) values('5d319','A24255D3PC5DC2','2');
-- 2025-05-04 15:43:37
insert into note(matricule,codeExamen,note) values('5d320','A24255D3PC5DC2','3.5');
-- 2025-05-04 15:43:37
insert into note(matricule,codeExamen,note) values('5d321','A24255D3PC5DC2','2.5');
-- 2025-05-04 15:43:37
insert into note(matricule,codeExamen,note) values('5d322','A24255D3PC5DC2','4');
-- 2025-05-04 15:43:37
insert into note(matricule,codeExamen,note) values('5d323','A24255D3PC5DC2','8');
-- 2025-05-04 15:43:37
insert into note(matricule,codeExamen,note) values('5d324','A24255D3PC5DC2','8.25');
-- 2025-05-04 15:43:37
insert into note(matricule,codeExamen,note) values('5d325','A24255D3PC5DC2','0');
-- 2025-05-04 15:43:37
insert into note(matricule,codeExamen,note) values('5d326','A24255D3PC5DC2','3');
-- 2025-05-04 15:43:37
insert into note(matricule,codeExamen,note) values('5d327','A24255D3PC5DC2','3');
-- 2025-05-04 15:43:37
insert into note(matricule,codeExamen,note) values('5d328','A24255D3PC5DC2','3.75');
-- 2025-05-04 15:43:37
insert into note(matricule,codeExamen,note) values('5d329','A24255D3PC5DC2','7.25');
-- 2025-05-04 15:43:37
insert into note(matricule,codeExamen,note) values('5d330','A24255D3PC5DC2','3.5');
-- 2025-05-04 15:43:37
insert into note(matricule,codeExamen,note) values('5d331','A24255D3PC5DC2','4.75');
-- 2025-05-04 15:43:37
insert into note(matricule,codeExamen,note) values('5d332','A24255D3PC5DC2','2');
-- 2025-05-04 15:43:37
insert into note(matricule,codeExamen,note) values('5d333','A24255D3PC5DC2','2');
-- 2025-05-04 15:43:37
insert into note(matricule,codeExamen,note) values('5d334','A24255D3PC5DC2','10.5');
-- 2025-05-04 15:43:37
insert into note(matricule,codeExamen,note) values('5d335','A24255D3PC5DC2','4.5');
-- 2025-05-04 15:43:37
insert into note(matricule,codeExamen,note) values('5d336','A24255D3PC5DC2','4');
-- 2025-05-04 15:43:38
insert into note(matricule,codeExamen,note) values('5d337','A24255D3PC5DC2','11.5');
-- 2025-05-04 15:43:38
insert into note(matricule,codeExamen,note) values('5d338','A24255D3PC5DC2','4');
-- 2025-05-04 15:43:38
insert into note(matricule,codeExamen,note) values('5d339','A24255D3PC5DC2','5');
-- 2025-05-04 15:43:38
insert into note(matricule,codeExamen,note) values('5d340','A24255D3PC5DC2','11');
-- 2025-05-04 15:43:38
insert into note(matricule,codeExamen,note) values('5d341','A24255D3PC5DC2','5.75');
-- 2025-05-04 15:43:38
insert into note(matricule,codeExamen,note) values('5d342','A24255D3PC5DC2','2.5');
-- 2025-05-04 15:43:38
insert into note(matricule,codeExamen,note) values('5d343','A24255D3PC5DC2','5');
-- 2025-05-04 15:43:38
insert into note(matricule,codeExamen,note) values('5d344','A24255D3PC5DC2','5');
-- 2025-05-04 15:43:38
insert into note(matricule,codeExamen,note) values('5d345','A24255D3PC5DC2','3');
-- 2025-05-04 15:43:38
insert into note(matricule,codeExamen,note) values('5d346','A24255D3PC5DC2','13');
-- 2025-05-04 15:43:38
insert into note(matricule,codeExamen,note) values('5d347','A24255D3PC5DC2','2');
-- 2025-05-04 15:43:38
insert into note(matricule,codeExamen,note) values('5d348','A24255D3PC5DC2','3.75');
-- 2025-05-04 15:43:38
insert into note(matricule,codeExamen,note) values('5d349','A24255D3PC5DC2','2');
-- 2025-05-04 15:43:38
insert into note(matricule,codeExamen,note) values('5d350','A24255D3PC5DC2','3.5');
-- 2025-05-04 15:43:38
insert into note(matricule,codeExamen,note) values('5d351','A24255D3PC5DC2','3.5');
-- 2025-05-04 15:43:38
insert into note(matricule,codeExamen,note) values('5d352','A24255D3PC5DC2','2.5');
-- 2025-05-04 15:43:38
insert into note(matricule,codeExamen,note) values('5d353','A24255D3PC5DC2','3.5');
-- 2025-05-04 15:43:38
insert into note(matricule,codeExamen,note) values('5d354','A24255D3PC5DC2','4');
-- 2025-05-04 15:43:38
insert into note(matricule,codeExamen,note) values('5d355','A24255D3PC5DC2','3.5');
-- 2025-05-04 15:43:38
insert into note(matricule,codeExamen,note) values('5d356','A24255D3PC5DC2','11.5');
-- 2025-05-04 15:43:39
insert into note(matricule,codeExamen,note) values('5d357','A24255D3PC5DC2','3.75');
-- 2025-05-04 15:43:39
insert into note(matricule,codeExamen,note) values('5d358','A24255D3PC5DC2','3');
-- 2025-05-04 15:43:39
insert into note(matricule,codeExamen,note) values('5d359','A24255D3PC5DC2','3.25');
-- 2025-05-04 15:43:39
insert into note(matricule,codeExamen,note) values('5d360','A24255D3PC5DC2','8');
-- 2025-05-04 15:43:39
insert into note(matricule,codeExamen,note) values('5d361','A24255D3PC5DC2','12');
-- 2025-05-04 16:05:08
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,dateClasseMatiere) values('AR5LM','5LM','AR','5','5','2024-10-01');
-- 2025-05-04 16:05:08
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,dateClasseMatiere) values('EN5LM','5LM','EN','3','3','2024-10-01');
-- 2025-05-04 16:05:08
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,dateClasseMatiere) values('EPS5LM','5LM','EPS','2','1','2024-10-01');
-- 2025-05-04 16:05:08
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,dateClasseMatiere) values('FR5LM','5LM','FR','5','5','2024-10-01');
-- 2025-05-04 16:05:08
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,dateClasseMatiere) values('HG5LM','5LM','HG','4','4','2024-10-01');
-- 2025-05-04 16:05:08
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,dateClasseMatiere) values('IC5LM','5LM','IC','1','1','2024-10-01');
-- 2025-05-04 16:05:08
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,dateClasseMatiere) values('IR5LM','5LM','IR','2','2','2024-10-01');
-- 2025-05-04 16:05:08
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,dateClasseMatiere) values('PC5LM','5LM','PC','2','2','2024-10-01');
-- 2025-05-04 16:05:08
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,dateClasseMatiere) values('PHILO5LM','5LM','PHILO','2','2','2024-10-01');
-- 2025-05-04 16:05:08
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,dateClasseMatiere) values('SN5LM','5LM','SN','2','2','2024-10-01');
-- 2025-05-04 16:05:46
insert into examen (codeExamen,codeClasseMatiere,codeSalleClasse,codeEvaluation,dateExamen,statutExamen,heureDebutExamen,heureFinExamen) values ('A24255LMAR5LMD1','AR5LM','A24255LM','D1','','1','','');
-- 2025-05-04 16:05:47
insert into examen (codeExamen,codeClasseMatiere,codeSalleClasse,codeEvaluation,dateExamen,statutExamen,heureDebutExamen,heureFinExamen) values ('A24255LMFR5LMD1','FR5LM','A24255LM','D1','','1','','');
-- 2025-05-04 16:05:47
insert into examen (codeExamen,codeClasseMatiere,codeSalleClasse,codeEvaluation,dateExamen,statutExamen,heureDebutExamen,heureFinExamen) values ('A24255LMHG5LMD1','HG5LM','A24255LM','D1','','1','','');
-- 2025-05-04 16:05:47
insert into examen (codeExamen,codeClasseMatiere,codeSalleClasse,codeEvaluation,dateExamen,statutExamen,heureDebutExamen,heureFinExamen) values ('A24255LMEN5LMD1','EN5LM','A24255LM','D1','','1','','');
-- 2025-05-04 16:05:47
insert into examen (codeExamen,codeClasseMatiere,codeSalleClasse,codeEvaluation,dateExamen,statutExamen,heureDebutExamen,heureFinExamen) values ('A24255LMMATH5LMD1','MATH5LM','A24255LM','D1','','1','','');
-- 2025-05-04 16:05:47
insert into examen (codeExamen,codeClasseMatiere,codeSalleClasse,codeEvaluation,dateExamen,statutExamen,heureDebutExamen,heureFinExamen) values ('A24255LMPHILO5LMD1','PHILO5LM','A24255LM','D1','','1','','');
-- 2025-05-04 16:05:47
insert into examen (codeExamen,codeClasseMatiere,codeSalleClasse,codeEvaluation,dateExamen,statutExamen,heureDebutExamen,heureFinExamen) values ('A24255LMPC5LMD1','PC5LM','A24255LM','D1','','1','','');
-- 2025-05-04 16:05:47
insert into examen (codeExamen,codeClasseMatiere,codeSalleClasse,codeEvaluation,dateExamen,statutExamen,heureDebutExamen,heureFinExamen) values ('A24255LMIR5LMD1','IR5LM','A24255LM','D1','','1','','');
-- 2025-05-04 16:05:47
insert into examen (codeExamen,codeClasseMatiere,codeSalleClasse,codeEvaluation,dateExamen,statutExamen,heureDebutExamen,heureFinExamen) values ('A24255LMSN5LMD1','SN5LM','A24255LM','D1','','1','','');
-- 2025-05-04 16:05:47
insert into examen (codeExamen,codeClasseMatiere,codeSalleClasse,codeEvaluation,dateExamen,statutExamen,heureDebutExamen,heureFinExamen) values ('A24255LMEPS5LMD1','EPS5LM','A24255LM','D1','','1','','');
-- 2025-05-04 16:05:47
insert into examen (codeExamen,codeClasseMatiere,codeSalleClasse,codeEvaluation,dateExamen,statutExamen,heureDebutExamen,heureFinExamen) values ('A24255LMIC5LMD1','IC5LM','A24255LM','D1','','1','','');
-- 2025-05-04 16:06:01
insert into examen (codeExamen,codeClasseMatiere,codeSalleClasse,codeEvaluation,dateExamen,statutExamen,heureDebutExamen,heureFinExamen) values ('A24255LMAR5LMC1','AR5LM','A24255LM','C1','','1','','');
-- 2025-05-04 16:06:01
insert into examen (codeExamen,codeClasseMatiere,codeSalleClasse,codeEvaluation,dateExamen,statutExamen,heureDebutExamen,heureFinExamen) values ('A24255LMFR5LMC1','FR5LM','A24255LM','C1','','1','','');
-- 2025-05-04 16:06:01
insert into examen (codeExamen,codeClasseMatiere,codeSalleClasse,codeEvaluation,dateExamen,statutExamen,heureDebutExamen,heureFinExamen) values ('A24255LMHG5LMC1','HG5LM','A24255LM','C1','','1','','');
-- 2025-05-04 16:06:01
insert into examen (codeExamen,codeClasseMatiere,codeSalleClasse,codeEvaluation,dateExamen,statutExamen,heureDebutExamen,heureFinExamen) values ('A24255LMEN5LMC1','EN5LM','A24255LM','C1','','1','','');
-- 2025-05-04 16:06:01
insert into examen (codeExamen,codeClasseMatiere,codeSalleClasse,codeEvaluation,dateExamen,statutExamen,heureDebutExamen,heureFinExamen) values ('A24255LMMATH5LMC1','MATH5LM','A24255LM','C1','','1','','');
-- 2025-05-04 16:06:01
insert into examen (codeExamen,codeClasseMatiere,codeSalleClasse,codeEvaluation,dateExamen,statutExamen,heureDebutExamen,heureFinExamen) values ('A24255LMPHILO5LMC1','PHILO5LM','A24255LM','C1','','1','','');
-- 2025-05-04 16:06:01
insert into examen (codeExamen,codeClasseMatiere,codeSalleClasse,codeEvaluation,dateExamen,statutExamen,heureDebutExamen,heureFinExamen) values ('A24255LMPC5LMC1','PC5LM','A24255LM','C1','','1','','');
-- 2025-05-04 16:06:01
insert into examen (codeExamen,codeClasseMatiere,codeSalleClasse,codeEvaluation,dateExamen,statutExamen,heureDebutExamen,heureFinExamen) values ('A24255LMIR5LMC1','IR5LM','A24255LM','C1','','1','','');
-- 2025-05-04 16:06:01
insert into examen (codeExamen,codeClasseMatiere,codeSalleClasse,codeEvaluation,dateExamen,statutExamen,heureDebutExamen,heureFinExamen) values ('A24255LMSN5LMC1','SN5LM','A24255LM','C1','','1','','');
-- 2025-05-04 16:06:01
insert into examen (codeExamen,codeClasseMatiere,codeSalleClasse,codeEvaluation,dateExamen,statutExamen,heureDebutExamen,heureFinExamen) values ('A24255LMEPS5LMC1','EPS5LM','A24255LM','C1','','1','','');
-- 2025-05-04 16:06:01
insert into examen (codeExamen,codeClasseMatiere,codeSalleClasse,codeEvaluation,dateExamen,statutExamen,heureDebutExamen,heureFinExamen) values ('A24255LMIC5LMC1','IC5LM','A24255LM','C1','','1','','');
-- 2025-05-04 16:06:18
insert into examen (codeExamen,codeClasseMatiere,codeSalleClasse,codeEvaluation,dateExamen,statutExamen,heureDebutExamen,heureFinExamen) values ('A24255LMAR5LMD2','AR5LM','A24255LM','D2','','1','','');
-- 2025-05-04 16:06:18
insert into examen (codeExamen,codeClasseMatiere,codeSalleClasse,codeEvaluation,dateExamen,statutExamen,heureDebutExamen,heureFinExamen) values ('A24255LMFR5LMD2','FR5LM','A24255LM','D2','','1','','');
-- 2025-05-04 16:06:18
insert into examen (codeExamen,codeClasseMatiere,codeSalleClasse,codeEvaluation,dateExamen,statutExamen,heureDebutExamen,heureFinExamen) values ('A24255LMHG5LMD2','HG5LM','A24255LM','D2','','1','','');
-- 2025-05-04 16:06:18
insert into examen (codeExamen,codeClasseMatiere,codeSalleClasse,codeEvaluation,dateExamen,statutExamen,heureDebutExamen,heureFinExamen) values ('A24255LMEN5LMD2','EN5LM','A24255LM','D2','','1','','');
-- 2025-05-04 16:06:18
insert into examen (codeExamen,codeClasseMatiere,codeSalleClasse,codeEvaluation,dateExamen,statutExamen,heureDebutExamen,heureFinExamen) values ('A24255LMMATH5LMD2','MATH5LM','A24255LM','D2','','1','','');
-- 2025-05-04 16:06:18
insert into examen (codeExamen,codeClasseMatiere,codeSalleClasse,codeEvaluation,dateExamen,statutExamen,heureDebutExamen,heureFinExamen) values ('A24255LMPHILO5LMD2','PHILO5LM','A24255LM','D2','','1','','');
-- 2025-05-04 16:06:18
insert into examen (codeExamen,codeClasseMatiere,codeSalleClasse,codeEvaluation,dateExamen,statutExamen,heureDebutExamen,heureFinExamen) values ('A24255LMPC5LMD2','PC5LM','A24255LM','D2','','1','','');
-- 2025-05-04 16:06:18
insert into examen (codeExamen,codeClasseMatiere,codeSalleClasse,codeEvaluation,dateExamen,statutExamen,heureDebutExamen,heureFinExamen) values ('A24255LMIR5LMD2','IR5LM','A24255LM','D2','','1','','');
-- 2025-05-04 16:06:18
insert into examen (codeExamen,codeClasseMatiere,codeSalleClasse,codeEvaluation,dateExamen,statutExamen,heureDebutExamen,heureFinExamen) values ('A24255LMSN5LMD2','SN5LM','A24255LM','D2','','1','','');
-- 2025-05-04 16:06:18
insert into examen (codeExamen,codeClasseMatiere,codeSalleClasse,codeEvaluation,dateExamen,statutExamen,heureDebutExamen,heureFinExamen) values ('A24255LMEPS5LMD2','EPS5LM','A24255LM','D2','','1','','');
-- 2025-05-04 16:06:18
insert into examen (codeExamen,codeClasseMatiere,codeSalleClasse,codeEvaluation,dateExamen,statutExamen,heureDebutExamen,heureFinExamen) values ('A24255LMIC5LMD2','IC5LM','A24255LM','D2','','1','','');
-- 2025-05-04 16:06:29
insert into examen (codeExamen,codeClasseMatiere,codeSalleClasse,codeEvaluation,dateExamen,statutExamen,heureDebutExamen,heureFinExamen) values ('A24255LMAR5LMC2','AR5LM','A24255LM','C2','','1','','');
-- 2025-05-04 16:06:29
insert into examen (codeExamen,codeClasseMatiere,codeSalleClasse,codeEvaluation,dateExamen,statutExamen,heureDebutExamen,heureFinExamen) values ('A24255LMFR5LMC2','FR5LM','A24255LM','C2','','1','','');
-- 2025-05-04 16:06:29
insert into examen (codeExamen,codeClasseMatiere,codeSalleClasse,codeEvaluation,dateExamen,statutExamen,heureDebutExamen,heureFinExamen) values ('A24255LMHG5LMC2','HG5LM','A24255LM','C2','','1','','');
-- 2025-05-04 16:06:29
insert into examen (codeExamen,codeClasseMatiere,codeSalleClasse,codeEvaluation,dateExamen,statutExamen,heureDebutExamen,heureFinExamen) values ('A24255LMEN5LMC2','EN5LM','A24255LM','C2','','1','','');
-- 2025-05-04 16:06:29
insert into examen (codeExamen,codeClasseMatiere,codeSalleClasse,codeEvaluation,dateExamen,statutExamen,heureDebutExamen,heureFinExamen) values ('A24255LMMATH5LMC2','MATH5LM','A24255LM','C2','','1','','');
-- 2025-05-04 16:06:29
insert into examen (codeExamen,codeClasseMatiere,codeSalleClasse,codeEvaluation,dateExamen,statutExamen,heureDebutExamen,heureFinExamen) values ('A24255LMPHILO5LMC2','PHILO5LM','A24255LM','C2','','1','','');
-- 2025-05-04 16:06:29
insert into examen (codeExamen,codeClasseMatiere,codeSalleClasse,codeEvaluation,dateExamen,statutExamen,heureDebutExamen,heureFinExamen) values ('A24255LMPC5LMC2','PC5LM','A24255LM','C2','','1','','');
-- 2025-05-04 16:06:29
insert into examen (codeExamen,codeClasseMatiere,codeSalleClasse,codeEvaluation,dateExamen,statutExamen,heureDebutExamen,heureFinExamen) values ('A24255LMIR5LMC2','IR5LM','A24255LM','C2','','1','','');
-- 2025-05-04 16:06:30
insert into examen (codeExamen,codeClasseMatiere,codeSalleClasse,codeEvaluation,dateExamen,statutExamen,heureDebutExamen,heureFinExamen) values ('A24255LMSN5LMC2','SN5LM','A24255LM','C2','','1','','');
-- 2025-05-04 16:06:30
insert into examen (codeExamen,codeClasseMatiere,codeSalleClasse,codeEvaluation,dateExamen,statutExamen,heureDebutExamen,heureFinExamen) values ('A24255LMEPS5LMC2','EPS5LM','A24255LM','C2','','1','','');
-- 2025-05-04 16:06:30
insert into examen (codeExamen,codeClasseMatiere,codeSalleClasse,codeEvaluation,dateExamen,statutExamen,heureDebutExamen,heureFinExamen) values ('A24255LMIC5LMC2','IC5LM','A24255LM','C2','','1','','');
-- 2025-05-04 16:10:55
insert into eleve(matricule,nom,isme,sexe,dateNaissance,lieuNaissance,adresse,nni) values('5LM056','Inconnu1','','M','2000-01-01','Boghe','Boghe','NNI5LM056');
-- 2025-05-04 16:11:48
insert into eleve(matricule,nom,isme,sexe,dateNaissance,lieuNaissance,adresse,nni) values('5LM057','Inconnu1','','M','2000-01-01','Boghe','Boghe','NNI5LM057');
-- 2025-05-04 16:12:14
update eleve set matricule='5LM057',nom='Inconnu2',isme='',sexe='M',dateNaissance='2000-01-01',lieuNaissance='Boghe',adresse='Boghe',nni='NNI5LM057' where matricule='5LM057';
-- 2025-05-04 16:13:24
insert into inscrit(idInscrit,matricule,codeSalleClasse,numeroInscrit,typeInscrit,dateInscription) values('','5LM056','A24255LM','56','passant','2025-05-04');
-- 2025-05-04 16:13:46
insert into inscrit(idInscrit,matricule,codeSalleClasse,numeroInscrit,typeInscrit,dateInscription) values('','5LM057','A24255LM','57','passant','2025-05-04');
-- 2025-05-04 16:14:00
insert into note(matricule,codeExamen,note) values('5LM001','A24255LMMATH5LMD1','1');
-- 2025-05-04 16:14:00
insert into note(matricule,codeExamen,note) values('5LM002','A24255LMMATH5LMD1','1');
-- 2025-05-04 16:14:00
insert into note(matricule,codeExamen,note) values('5LM003','A24255LMMATH5LMD1','0');
-- 2025-05-04 16:14:00
insert into note(matricule,codeExamen,note) values('5LM004','A24255LMMATH5LMD1','9');
-- 2025-05-04 16:14:00
insert into note(matricule,codeExamen,note) values('5LM005','A24255LMMATH5LMD1','5');
-- 2025-05-04 16:14:00
insert into note(matricule,codeExamen,note) values('5LM006','A24255LMMATH5LMD1','0');
-- 2025-05-04 16:14:00
insert into note(matricule,codeExamen,note) values('5LM007','A24255LMMATH5LMD1','3');
-- 2025-05-04 16:14:00
insert into note(matricule,codeExamen,note) values('5LM008','A24255LMMATH5LMD1','0');
-- 2025-05-04 16:14:00
insert into note(matricule,codeExamen,note) values('5LM009','A24255LMMATH5LMD1','0');
-- 2025-05-04 16:14:00
insert into note(matricule,codeExamen,note) values('5LM010','A24255LMMATH5LMD1','0');
-- 2025-05-04 16:14:00
insert into note(matricule,codeExamen,note) values('5LM011','A24255LMMATH5LMD1','3');
-- 2025-05-04 16:14:01
insert into note(matricule,codeExamen,note) values('5LM012','A24255LMMATH5LMD1','1');
-- 2025-05-04 16:14:01
insert into note(matricule,codeExamen,note) values('5LM013','A24255LMMATH5LMD1','0');
-- 2025-05-04 16:14:01
insert into note(matricule,codeExamen,note) values('5LM014','A24255LMMATH5LMD1','3');
-- 2025-05-04 16:14:01
insert into note(matricule,codeExamen,note) values('5LM015','A24255LMMATH5LMD1','0');
-- 2025-05-04 16:14:01
insert into note(matricule,codeExamen,note) values('5LM016','A24255LMMATH5LMD1','0');
-- 2025-05-04 16:14:01
insert into note(matricule,codeExamen,note) values('5LM017','A24255LMMATH5LMD1','0');
-- 2025-05-04 16:14:01
insert into note(matricule,codeExamen,note) values('5LM018','A24255LMMATH5LMD1','0');
-- 2025-05-04 16:14:01
insert into note(matricule,codeExamen,note) values('5LM019','A24255LMMATH5LMD1','0');
-- 2025-05-04 16:14:01
insert into note(matricule,codeExamen,note) values('5LM020','A24255LMMATH5LMD1','3.5');
-- 2025-05-04 16:14:01
insert into note(matricule,codeExamen,note) values('5LM021','A24255LMMATH5LMD1','0');
-- 2025-05-04 16:14:01
insert into note(matricule,codeExamen,note) values('5LM022','A24255LMMATH5LMD1','0');
-- 2025-05-04 16:14:01
insert into note(matricule,codeExamen,note) values('5LM023','A24255LMMATH5LMD1','0');
-- 2025-05-04 16:14:01
insert into note(matricule,codeExamen,note) values('5LM024','A24255LMMATH5LMD1','0');
-- 2025-05-04 16:14:01
insert into note(matricule,codeExamen,note) values('5LM025','A24255LMMATH5LMD1','0');
-- 2025-05-04 16:14:01
insert into note(matricule,codeExamen,note) values('5LM026','A24255LMMATH5LMD1','6');
-- 2025-05-04 16:14:01
insert into note(matricule,codeExamen,note) values('5LM027','A24255LMMATH5LMD1','7');
-- 2025-05-04 16:14:01
insert into note(matricule,codeExamen,note) values('5LM028','A24255LMMATH5LMD1','0');
-- 2025-05-04 16:14:01
insert into note(matricule,codeExamen,note) values('5LM029','A24255LMMATH5LMD1','5');
-- 2025-05-04 16:14:02
insert into note(matricule,codeExamen,note) values('5LM030','A24255LMMATH5LMD1','11');
-- 2025-05-04 16:14:02
insert into note(matricule,codeExamen,note) values('5LM031','A24255LMMATH5LMD1','4');
-- 2025-05-04 16:14:02
insert into note(matricule,codeExamen,note) values('5LM032','A24255LMMATH5LMD1','0');
-- 2025-05-04 16:14:02
insert into note(matricule,codeExamen,note) values('5LM033','A24255LMMATH5LMD1','0');
-- 2025-05-04 16:14:02
insert into note(matricule,codeExamen,note) values('5LM034','A24255LMMATH5LMD1','0');
-- 2025-05-04 16:14:02
insert into note(matricule,codeExamen,note) values('5LM035','A24255LMMATH5LMD1','11');
-- 2025-05-04 16:14:02
insert into note(matricule,codeExamen,note) values('5LM036','A24255LMMATH5LMD1','9');
-- 2025-05-04 16:14:02
insert into note(matricule,codeExamen,note) values('5LM037','A24255LMMATH5LMD1','9');
-- 2025-05-04 16:14:02
insert into note(matricule,codeExamen,note) values('5LM038','A24255LMMATH5LMD1','8');
-- 2025-05-04 16:14:02
insert into note(matricule,codeExamen,note) values('5LM039','A24255LMMATH5LMD1','0');
-- 2025-05-04 16:14:02
insert into note(matricule,codeExamen,note) values('5LM040','A24255LMMATH5LMD1','5');
-- 2025-05-04 16:14:02
insert into note(matricule,codeExamen,note) values('5LM041','A24255LMMATH5LMD1','9');
-- 2025-05-04 16:14:02
insert into note(matricule,codeExamen,note) values('5LM042','A24255LMMATH5LMD1','0');
-- 2025-05-04 16:14:02
insert into note(matricule,codeExamen,note) values('5LM043','A24255LMMATH5LMD1','0');
-- 2025-05-04 16:14:02
insert into note(matricule,codeExamen,note) values('5LM044','A24255LMMATH5LMD1','4');
-- 2025-05-04 16:14:03
insert into note(matricule,codeExamen,note) values('5LM045','A24255LMMATH5LMD1','0');
-- 2025-05-04 16:14:03
insert into note(matricule,codeExamen,note) values('5LM046','A24255LMMATH5LMD1','0');
-- 2025-05-04 16:14:03
insert into note(matricule,codeExamen,note) values('5LM047','A24255LMMATH5LMD1','0');
-- 2025-05-04 16:14:03
insert into note(matricule,codeExamen,note) values('5LM048','A24255LMMATH5LMD1','7');
-- 2025-05-04 16:14:03
insert into note(matricule,codeExamen,note) values('5LM049','A24255LMMATH5LMD1','4');
-- 2025-05-04 16:14:03
insert into note(matricule,codeExamen,note) values('5LM050','A24255LMMATH5LMD1','8');
-- 2025-05-04 16:14:03
insert into note(matricule,codeExamen,note) values('5LM051','A24255LMMATH5LMD1','6');
-- 2025-05-04 16:14:03
insert into note(matricule,codeExamen,note) values('5LM052','A24255LMMATH5LMD1','9');
-- 2025-05-04 16:14:03
insert into note(matricule,codeExamen,note) values('5LM053','A24255LMMATH5LMD1','0');
-- 2025-05-04 16:14:03
insert into note(matricule,codeExamen,note) values('5LM054','A24255LMMATH5LMD1','0');
-- 2025-05-04 16:14:03
insert into note(matricule,codeExamen,note) values('5LM055','A24255LMMATH5LMD1','0');
-- 2025-05-04 16:14:03
insert into note(matricule,codeExamen,note) values('5LM056','A24255LMMATH5LMD1','0');
-- 2025-05-04 16:14:03
insert into note(matricule,codeExamen,note) values('5LM057','A24255LMMATH5LMD1','6');
-- 2025-05-04 16:14:36
insert into note(matricule,codeExamen,note) values('5LM001','A24255LMMATH5LMD2','13');
-- 2025-05-04 16:14:36
insert into note(matricule,codeExamen,note) values('5LM002','A24255LMMATH5LMD2','0');
-- 2025-05-04 16:14:36
insert into note(matricule,codeExamen,note) values('5LM003','A24255LMMATH5LMD2','0');
-- 2025-05-04 16:14:37
insert into note(matricule,codeExamen,note) values('5LM004','A24255LMMATH5LMD2','12');
-- 2025-05-04 16:14:37
insert into note(matricule,codeExamen,note) values('5LM005','A24255LMMATH5LMD2','0');
-- 2025-05-04 16:14:37
insert into note(matricule,codeExamen,note) values('5LM006','A24255LMMATH5LMD2','0');
-- 2025-05-04 16:14:37
insert into note(matricule,codeExamen,note) values('5LM007','A24255LMMATH5LMD2','0');
-- 2025-05-04 16:14:37
insert into note(matricule,codeExamen,note) values('5LM008','A24255LMMATH5LMD2','0');
-- 2025-05-04 16:14:37
insert into note(matricule,codeExamen,note) values('5LM009','A24255LMMATH5LMD2','0');
-- 2025-05-04 16:14:37
insert into note(matricule,codeExamen,note) values('5LM010','A24255LMMATH5LMD2','0');
-- 2025-05-04 16:14:37
insert into note(matricule,codeExamen,note) values('5LM011','A24255LMMATH5LMD2','0');
-- 2025-05-04 16:14:37
insert into note(matricule,codeExamen,note) values('5LM012','A24255LMMATH5LMD2','0');
-- 2025-05-04 16:14:37
insert into note(matricule,codeExamen,note) values('5LM013','A24255LMMATH5LMD2','0');
-- 2025-05-04 16:14:37
insert into note(matricule,codeExamen,note) values('5LM014','A24255LMMATH5LMD2','7');
-- 2025-05-04 16:14:37
insert into note(matricule,codeExamen,note) values('5LM015','A24255LMMATH5LMD2','10');
-- 2025-05-04 16:14:37
insert into note(matricule,codeExamen,note) values('5LM016','A24255LMMATH5LMD2','0');
-- 2025-05-04 16:14:38
insert into note(matricule,codeExamen,note) values('5LM017','A24255LMMATH5LMD2','6');
-- 2025-05-04 16:14:38
insert into note(matricule,codeExamen,note) values('5LM018','A24255LMMATH5LMD2','0');
-- 2025-05-04 16:14:38
insert into note(matricule,codeExamen,note) values('5LM019','A24255LMMATH5LMD2','10');
-- 2025-05-04 16:14:38
insert into note(matricule,codeExamen,note) values('5LM020','A24255LMMATH5LMD2','7');
-- 2025-05-04 16:14:38
insert into note(matricule,codeExamen,note) values('5LM021','A24255LMMATH5LMD2','0');
-- 2025-05-04 16:14:38
insert into note(matricule,codeExamen,note) values('5LM022','A24255LMMATH5LMD2','7');
-- 2025-05-04 16:14:38
insert into note(matricule,codeExamen,note) values('5LM023','A24255LMMATH5LMD2','0');
-- 2025-05-04 16:14:38
insert into note(matricule,codeExamen,note) values('5LM024','A24255LMMATH5LMD2','0');
-- 2025-05-04 16:14:38
insert into note(matricule,codeExamen,note) values('5LM025','A24255LMMATH5LMD2','0');
-- 2025-05-04 16:14:38
insert into note(matricule,codeExamen,note) values('5LM026','A24255LMMATH5LMD2','7');
-- 2025-05-04 16:14:38
insert into note(matricule,codeExamen,note) values('5LM027','A24255LMMATH5LMD2','8');
-- 2025-05-04 16:14:38
insert into note(matricule,codeExamen,note) values('5LM028','A24255LMMATH5LMD2','0');
-- 2025-05-04 16:14:38
insert into note(matricule,codeExamen,note) values('5LM029','A24255LMMATH5LMD2','2');
-- 2025-05-04 16:14:38
insert into note(matricule,codeExamen,note) values('5LM030','A24255LMMATH5LMD2','0');
-- 2025-05-04 16:14:38
insert into note(matricule,codeExamen,note) values('5LM031','A24255LMMATH5LMD2','10');
-- 2025-05-04 16:14:38
insert into note(matricule,codeExamen,note) values('5LM032','A24255LMMATH5LMD2','0');
-- 2025-05-04 16:14:39
insert into note(matricule,codeExamen,note) values('5LM033','A24255LMMATH5LMD2','0');
-- 2025-05-04 16:14:39
insert into note(matricule,codeExamen,note) values('5LM034','A24255LMMATH5LMD2','0');
-- 2025-05-04 16:14:39
insert into note(matricule,codeExamen,note) values('5LM035','A24255LMMATH5LMD2','10');
-- 2025-05-04 16:14:39
insert into note(matricule,codeExamen,note) values('5LM036','A24255LMMATH5LMD2','12');
-- 2025-05-04 16:14:39
insert into note(matricule,codeExamen,note) values('5LM037','A24255LMMATH5LMD2','11');
-- 2025-05-04 16:14:39
insert into note(matricule,codeExamen,note) values('5LM038','A24255LMMATH5LMD2','11');
-- 2025-05-04 16:14:39
insert into note(matricule,codeExamen,note) values('5LM039','A24255LMMATH5LMD2','10.5');
-- 2025-05-04 16:14:39
insert into note(matricule,codeExamen,note) values('5LM040','A24255LMMATH5LMD2','11');
-- 2025-05-04 16:14:39
insert into note(matricule,codeExamen,note) values('5LM041','A24255LMMATH5LMD2','11');
-- 2025-05-04 16:14:39
insert into note(matricule,codeExamen,note) values('5LM042','A24255LMMATH5LMD2','0');
-- 2025-05-04 16:14:39
insert into note(matricule,codeExamen,note) values('5LM043','A24255LMMATH5LMD2','0');
-- 2025-05-04 16:14:39
insert into note(matricule,codeExamen,note) values('5LM044','A24255LMMATH5LMD2','10');
-- 2025-05-04 16:14:40
insert into note(matricule,codeExamen,note) values('5LM045','A24255LMMATH5LMD2','0');
-- 2025-05-04 16:14:40
insert into note(matricule,codeExamen,note) values('5LM046','A24255LMMATH5LMD2','0');
-- 2025-05-04 16:14:40
insert into note(matricule,codeExamen,note) values('5LM047','A24255LMMATH5LMD2','0');
-- 2025-05-04 16:14:40
insert into note(matricule,codeExamen,note) values('5LM048','A24255LMMATH5LMD2','6');
-- 2025-05-04 16:14:40
insert into note(matricule,codeExamen,note) values('5LM049','A24255LMMATH5LMD2','0');
-- 2025-05-04 16:14:40
insert into note(matricule,codeExamen,note) values('5LM050','A24255LMMATH5LMD2','0');
-- 2025-05-04 16:14:40
insert into note(matricule,codeExamen,note) values('5LM051','A24255LMMATH5LMD2','10');
-- 2025-05-04 16:14:40
insert into note(matricule,codeExamen,note) values('5LM052','A24255LMMATH5LMD2','10');
-- 2025-05-04 16:14:40
insert into note(matricule,codeExamen,note) values('5LM053','A24255LMMATH5LMD2','12');
-- 2025-05-04 16:14:40
insert into note(matricule,codeExamen,note) values('5LM054','A24255LMMATH5LMD2','10');
-- 2025-05-04 16:14:40
insert into note(matricule,codeExamen,note) values('5LM055','A24255LMMATH5LMD2','9');
-- 2025-05-04 16:14:40
insert into note(matricule,codeExamen,note) values('5LM056','A24255LMMATH5LMD2','2');
-- 2025-05-04 16:14:41
insert into note(matricule,codeExamen,note) values('5LM057','A24255LMMATH5LMD2','7');
-- 2025-05-04 16:16:39
insert into note(matricule,codeExamen,note) values('5LM001','A24255LMMATH5LMC1','2');
-- 2025-05-04 16:16:39
insert into note(matricule,codeExamen,note) values('5LM002','A24255LMMATH5LMC1','6');
-- 2025-05-04 16:16:39
insert into note(matricule,codeExamen,note) values('5LM003','A24255LMMATH5LMC1','0');
-- 2025-05-04 16:16:39
insert into note(matricule,codeExamen,note) values('5LM004','A24255LMMATH5LMC1','9');
-- 2025-05-04 16:16:39
insert into note(matricule,codeExamen,note) values('5LM005','A24255LMMATH5LMC1','5');
-- 2025-05-04 16:16:39
insert into note(matricule,codeExamen,note) values('5LM006','A24255LMMATH5LMC1','0');
-- 2025-05-04 16:16:39
insert into note(matricule,codeExamen,note) values('5LM007','A24255LMMATH5LMC1','3');
-- 2025-05-04 16:16:39
insert into note(matricule,codeExamen,note) values('5LM008','A24255LMMATH5LMC1','7');
-- 2025-05-04 16:16:39
insert into note(matricule,codeExamen,note) values('5LM009','A24255LMMATH5LMC1','0');
-- 2025-05-04 16:16:39
insert into note(matricule,codeExamen,note) values('5LM010','A24255LMMATH5LMC1','0');
-- 2025-05-04 16:16:39
insert into note(matricule,codeExamen,note) values('5LM011','A24255LMMATH5LMC1','3');
-- 2025-05-04 16:16:39
insert into note(matricule,codeExamen,note) values('5LM012','A24255LMMATH5LMC1','2');
-- 2025-05-04 16:16:39
insert into note(matricule,codeExamen,note) values('5LM013','A24255LMMATH5LMC1','0');
-- 2025-05-04 16:16:40
insert into note(matricule,codeExamen,note) values('5LM014','A24255LMMATH5LMC1','6');
-- 2025-05-04 16:16:40
insert into note(matricule,codeExamen,note) values('5LM015','A24255LMMATH5LMC1','6');
-- 2025-05-04 16:16:40
insert into note(matricule,codeExamen,note) values('5LM016','A24255LMMATH5LMC1','0');
-- 2025-05-04 16:16:40
insert into note(matricule,codeExamen,note) values('5LM017','A24255LMMATH5LMC1','4');
-- 2025-05-04 16:16:40
insert into note(matricule,codeExamen,note) values('5LM018','A24255LMMATH5LMC1','0');
-- 2025-05-04 16:16:40
insert into note(matricule,codeExamen,note) values('5LM019','A24255LMMATH5LMC1','6');
-- 2025-05-04 16:16:40
insert into note(matricule,codeExamen,note) values('5LM020','A24255LMMATH5LMC1','7');
-- 2025-05-04 16:16:40
insert into note(matricule,codeExamen,note) values('5LM021','A24255LMMATH5LMC1','0');
-- 2025-05-04 16:16:40
insert into note(matricule,codeExamen,note) values('5LM022','A24255LMMATH5LMC1','6');
-- 2025-05-04 16:16:40
insert into note(matricule,codeExamen,note) values('5LM023','A24255LMMATH5LMC1','3');
-- 2025-05-04 16:16:40
insert into note(matricule,codeExamen,note) values('5LM024','A24255LMMATH5LMC1','0');
-- 2025-05-04 16:16:40
insert into note(matricule,codeExamen,note) values('5LM025','A24255LMMATH5LMC1','0');
-- 2025-05-04 16:16:40
insert into note(matricule,codeExamen,note) values('5LM026','A24255LMMATH5LMC1','6');
-- 2025-05-04 16:16:40
insert into note(matricule,codeExamen,note) values('5LM027','A24255LMMATH5LMC1','7');
-- 2025-05-04 16:16:40
insert into note(matricule,codeExamen,note) values('5LM028','A24255LMMATH5LMC1','0');
-- 2025-05-04 16:16:41
insert into note(matricule,codeExamen,note) values('5LM029','A24255LMMATH5LMC1','6');
-- 2025-05-04 16:16:41
insert into note(matricule,codeExamen,note) values('5LM030','A24255LMMATH5LMC1','11');
-- 2025-05-04 16:16:41
insert into note(matricule,codeExamen,note) values('5LM031','A24255LMMATH5LMC1','4');
-- 2025-05-04 16:16:41
insert into note(matricule,codeExamen,note) values('5LM032','A24255LMMATH5LMC1','0');
-- 2025-05-04 16:16:41
insert into note(matricule,codeExamen,note) values('5LM033','A24255LMMATH5LMC1','0');
-- 2025-05-04 16:16:41
insert into note(matricule,codeExamen,note) values('5LM034','A24255LMMATH5LMC1','0');
-- 2025-05-04 16:16:41
insert into note(matricule,codeExamen,note) values('5LM035','A24255LMMATH5LMC1','11');
-- 2025-05-04 16:16:41
insert into note(matricule,codeExamen,note) values('5LM036','A24255LMMATH5LMC1','9');
-- 2025-05-04 16:16:41
insert into note(matricule,codeExamen,note) values('5LM037','A24255LMMATH5LMC1','9');
-- 2025-05-04 16:16:41
insert into note(matricule,codeExamen,note) values('5LM038','A24255LMMATH5LMC1','8');
-- 2025-05-04 16:16:41
insert into note(matricule,codeExamen,note) values('5LM039','A24255LMMATH5LMC1','8');
-- 2025-05-04 16:16:41
insert into note(matricule,codeExamen,note) values('5LM040','A24255LMMATH5LMC1','6');
-- 2025-05-04 16:16:41
insert into note(matricule,codeExamen,note) values('5LM041','A24255LMMATH5LMC1','9');
-- 2025-05-04 16:16:42
insert into note(matricule,codeExamen,note) values('5LM042','A24255LMMATH5LMC1','6');
-- 2025-05-04 16:16:42
insert into note(matricule,codeExamen,note) values('5LM043','A24255LMMATH5LMC1','0');
-- 2025-05-04 16:16:42
insert into note(matricule,codeExamen,note) values('5LM044','A24255LMMATH5LMC1','4');
-- 2025-05-04 16:16:42
insert into note(matricule,codeExamen,note) values('5LM045','A24255LMMATH5LMC1','5');
-- 2025-05-04 16:16:42
insert into note(matricule,codeExamen,note) values('5LM046','A24255LMMATH5LMC1','6');
-- 2025-05-04 16:16:42
insert into note(matricule,codeExamen,note) values('5LM047','A24255LMMATH5LMC1','5');
-- 2025-05-04 16:16:42
insert into note(matricule,codeExamen,note) values('5LM048','A24255LMMATH5LMC1','7');
-- 2025-05-04 16:16:42
insert into note(matricule,codeExamen,note) values('5LM049','A24255LMMATH5LMC1','5');
-- 2025-05-04 16:16:42
insert into note(matricule,codeExamen,note) values('5LM050','A24255LMMATH5LMC1','8');
-- 2025-05-04 16:16:42
insert into note(matricule,codeExamen,note) values('5LM051','A24255LMMATH5LMC1','6');
-- 2025-05-04 16:16:42
insert into note(matricule,codeExamen,note) values('5LM052','A24255LMMATH5LMC1','9');
-- 2025-05-04 16:16:42
insert into note(matricule,codeExamen,note) values('5LM053','A24255LMMATH5LMC1','6');
-- 2025-05-04 16:16:42
insert into note(matricule,codeExamen,note) values('5LM054','A24255LMMATH5LMC1','5.5');
-- 2025-05-04 16:16:42
insert into note(matricule,codeExamen,note) values('5LM055','A24255LMMATH5LMC1','6');
-- 2025-05-04 16:16:43
insert into note(matricule,codeExamen,note) values('5LM056','A24255LMMATH5LMC1','6');
-- 2025-05-04 16:16:43
insert into note(matricule,codeExamen,note) values('5LM057','A24255LMMATH5LMC1','5');
-- 2025-05-04 16:17:06
insert into note(matricule,codeExamen,note) values('5LM001','A24255LMMATH5LMC2','13');
-- 2025-05-04 16:17:07
insert into note(matricule,codeExamen,note) values('5LM002','A24255LMMATH5LMC2','13.5');
-- 2025-05-04 16:17:07
insert into note(matricule,codeExamen,note) values('5LM003','A24255LMMATH5LMC2','0');
-- 2025-05-04 16:17:07
insert into note(matricule,codeExamen,note) values('5LM004','A24255LMMATH5LMC2','13');
-- 2025-05-04 16:17:07
insert into note(matricule,codeExamen,note) values('5LM005','A24255LMMATH5LMC2','11.5');
-- 2025-05-04 16:17:07
insert into note(matricule,codeExamen,note) values('5LM006','A24255LMMATH5LMC2','0');
-- 2025-05-04 16:17:07
insert into note(matricule,codeExamen,note) values('5LM007','A24255LMMATH5LMC2','12');
-- 2025-05-04 16:17:07
insert into note(matricule,codeExamen,note) values('5LM008','A24255LMMATH5LMC2','0');
-- 2025-05-04 16:17:07
insert into note(matricule,codeExamen,note) values('5LM009','A24255LMMATH5LMC2','0');
-- 2025-05-04 16:17:07
insert into note(matricule,codeExamen,note) values('5LM010','A24255LMMATH5LMC2','0');
-- 2025-05-04 16:17:07
insert into note(matricule,codeExamen,note) values('5LM011','A24255LMMATH5LMC2','6');
-- 2025-05-04 16:17:07
insert into note(matricule,codeExamen,note) values('5LM012','A24255LMMATH5LMC2','9.5');
-- 2025-05-04 16:17:07
insert into note(matricule,codeExamen,note) values('5LM013','A24255LMMATH5LMC2','0');
-- 2025-05-04 16:17:07
insert into note(matricule,codeExamen,note) values('5LM014','A24255LMMATH5LMC2','13');
-- 2025-05-04 16:17:08
insert into note(matricule,codeExamen,note) values('5LM015','A24255LMMATH5LMC2','14');
-- 2025-05-04 16:17:08
insert into note(matricule,codeExamen,note) values('5LM016','A24255LMMATH5LMC2','0');
-- 2025-05-04 16:17:08
insert into note(matricule,codeExamen,note) values('5LM017','A24255LMMATH5LMC2','13');
-- 2025-05-04 16:17:08
insert into note(matricule,codeExamen,note) values('5LM018','A24255LMMATH5LMC2','0');
-- 2025-05-04 16:17:08
insert into note(matricule,codeExamen,note) values('5LM019','A24255LMMATH5LMC2','0');
-- 2025-05-04 16:17:08
insert into note(matricule,codeExamen,note) values('5LM020','A24255LMMATH5LMC2','9.5');
-- 2025-05-04 16:17:08
insert into note(matricule,codeExamen,note) values('5LM021','A24255LMMATH5LMC2','0');
-- 2025-05-04 16:17:08
insert into note(matricule,codeExamen,note) values('5LM022','A24255LMMATH5LMC2','0');
-- 2025-05-04 16:17:08
insert into note(matricule,codeExamen,note) values('5LM023','A24255LMMATH5LMC2','0');
-- 2025-05-04 16:17:08
insert into note(matricule,codeExamen,note) values('5LM024','A24255LMMATH5LMC2','0');
-- 2025-05-04 16:17:08
insert into note(matricule,codeExamen,note) values('5LM025','A24255LMMATH5LMC2','0');
-- 2025-05-04 16:17:08
insert into note(matricule,codeExamen,note) values('5LM026','A24255LMMATH5LMC2','12');
-- 2025-05-04 16:17:09
insert into note(matricule,codeExamen,note) values('5LM027','A24255LMMATH5LMC2','15.5');
-- 2025-05-04 16:17:09
insert into note(matricule,codeExamen,note) values('5LM028','A24255LMMATH5LMC2','0');
-- 2025-05-04 16:17:09
insert into note(matricule,codeExamen,note) values('5LM029','A24255LMMATH5LMC2','17');
-- 2025-05-04 16:17:09
insert into note(matricule,codeExamen,note) values('5LM030','A24255LMMATH5LMC2','3');
-- 2025-05-04 16:17:09
insert into note(matricule,codeExamen,note) values('5LM031','A24255LMMATH5LMC2','8');
-- 2025-05-04 16:17:09
insert into note(matricule,codeExamen,note) values('5LM032','A24255LMMATH5LMC2','0');
-- 2025-05-04 16:17:09
insert into note(matricule,codeExamen,note) values('5LM033','A24255LMMATH5LMC2','0');
-- 2025-05-04 16:17:09
insert into note(matricule,codeExamen,note) values('5LM034','A24255LMMATH5LMC2','0');
-- 2025-05-04 16:17:09
insert into note(matricule,codeExamen,note) values('5LM035','A24255LMMATH5LMC2','10.5');
-- 2025-05-04 16:17:09
insert into note(matricule,codeExamen,note) values('5LM036','A24255LMMATH5LMC2','13.5');
-- 2025-05-04 16:17:09
insert into note(matricule,codeExamen,note) values('5LM037','A24255LMMATH5LMC2','12.5');
-- 2025-05-04 16:17:09
insert into note(matricule,codeExamen,note) values('5LM038','A24255LMMATH5LMC2','5.5');
-- 2025-05-04 16:17:10
insert into note(matricule,codeExamen,note) values('5LM039','A24255LMMATH5LMC2','15');
-- 2025-05-04 16:17:10
insert into note(matricule,codeExamen,note) values('5LM040','A24255LMMATH5LMC2','9.5');
-- 2025-05-04 16:17:10
insert into note(matricule,codeExamen,note) values('5LM041','A24255LMMATH5LMC2','13.5');
-- 2025-05-04 16:17:10
insert into note(matricule,codeExamen,note) values('5LM042','A24255LMMATH5LMC2','12.5');
-- 2025-05-04 16:17:10
insert into note(matricule,codeExamen,note) values('5LM043','A24255LMMATH5LMC2','0');
-- 2025-05-04 16:17:10
insert into note(matricule,codeExamen,note) values('5LM044','A24255LMMATH5LMC2','10.5');
-- 2025-05-04 16:17:10
insert into note(matricule,codeExamen,note) values('5LM045','A24255LMMATH5LMC2','10.5');
-- 2025-05-04 16:17:10
insert into note(matricule,codeExamen,note) values('5LM046','A24255LMMATH5LMC2','0');
-- 2025-05-04 16:17:10
insert into note(matricule,codeExamen,note) values('5LM047','A24255LMMATH5LMC2','2');
-- 2025-05-04 16:17:10
insert into note(matricule,codeExamen,note) values('5LM048','A24255LMMATH5LMC2','13');
-- 2025-05-04 16:17:10
insert into note(matricule,codeExamen,note) values('5LM049','A24255LMMATH5LMC2','12.5');
-- 2025-05-04 16:17:10
insert into note(matricule,codeExamen,note) values('5LM050','A24255LMMATH5LMC2','11');
-- 2025-05-04 16:17:10
insert into note(matricule,codeExamen,note) values('5LM051','A24255LMMATH5LMC2','13.5');
-- 2025-05-04 16:17:11
insert into note(matricule,codeExamen,note) values('5LM052','A24255LMMATH5LMC2','13.5');
-- 2025-05-04 16:17:11
insert into note(matricule,codeExamen,note) values('5LM053','A24255LMMATH5LMC2','10');
-- 2025-05-04 16:17:11
insert into note(matricule,codeExamen,note) values('5LM054','A24255LMMATH5LMC2','11');
-- 2025-05-04 16:17:11
insert into note(matricule,codeExamen,note) values('5LM055','A24255LMMATH5LMC2','11.5');
-- 2025-05-04 16:17:11
insert into note(matricule,codeExamen,note) values('5LM056','A24255LMMATH5LMC2','14.5');
-- 2025-05-04 16:17:11
insert into note(matricule,codeExamen,note) values('5LM057','A24255LMMATH5LMC2','11.5');
-- 2025-05-04 16:18:52
insert into note(matricule,codeExamen,note) values('5LM001','A24255LMPC5LMD1','0');
-- 2025-05-04 16:18:52
insert into note(matricule,codeExamen,note) values('5LM002','A24255LMPC5LMD1','10');
-- 2025-05-04 16:18:52
insert into note(matricule,codeExamen,note) values('5LM003','A24255LMPC5LMD1','0');
-- 2025-05-04 16:18:52
insert into note(matricule,codeExamen,note) values('5LM004','A24255LMPC5LMD1','0');
-- 2025-05-04 16:18:52
insert into note(matricule,codeExamen,note) values('5LM005','A24255LMPC5LMD1','0');
-- 2025-05-04 16:18:52
insert into note(matricule,codeExamen,note) values('5LM006','A24255LMPC5LMD1','0');
-- 2025-05-04 16:18:52
insert into note(matricule,codeExamen,note) values('5LM007','A24255LMPC5LMD1','9');
-- 2025-05-04 16:18:52
insert into note(matricule,codeExamen,note) values('5LM008','A24255LMPC5LMD1','0');
-- 2025-05-04 16:18:52
insert into note(matricule,codeExamen,note) values('5LM009','A24255LMPC5LMD1','0');
-- 2025-05-04 16:18:52
insert into note(matricule,codeExamen,note) values('5LM010','A24255LMPC5LMD1','0');
-- 2025-05-04 16:18:52
insert into note(matricule,codeExamen,note) values('5LM011','A24255LMPC5LMD1','0');
-- 2025-05-04 16:18:53
insert into note(matricule,codeExamen,note) values('5LM012','A24255LMPC5LMD1','0');
-- 2025-05-04 16:18:53
insert into note(matricule,codeExamen,note) values('5LM013','A24255LMPC5LMD1','0');
-- 2025-05-04 16:18:53
insert into note(matricule,codeExamen,note) values('5LM014','A24255LMPC5LMD1','8');
-- 2025-05-04 16:18:53
insert into note(matricule,codeExamen,note) values('5LM015','A24255LMPC5LMD1','0');
-- 2025-05-04 16:18:53
insert into note(matricule,codeExamen,note) values('5LM016','A24255LMPC5LMD1','0');
-- 2025-05-04 16:18:53
insert into note(matricule,codeExamen,note) values('5LM017','A24255LMPC5LMD1','7');
-- 2025-05-04 16:18:53
insert into note(matricule,codeExamen,note) values('5LM018','A24255LMPC5LMD1','0');
-- 2025-05-04 16:18:53
insert into note(matricule,codeExamen,note) values('5LM019','A24255LMPC5LMD1','0');
-- 2025-05-04 16:18:53
insert into note(matricule,codeExamen,note) values('5LM020','A24255LMPC5LMD1','0');
-- 2025-05-04 16:18:53
insert into note(matricule,codeExamen,note) values('5LM021','A24255LMPC5LMD1','0');
-- 2025-05-04 16:18:53
insert into note(matricule,codeExamen,note) values('5LM022','A24255LMPC5LMD1','0');
-- 2025-05-04 16:18:53
insert into note(matricule,codeExamen,note) values('5LM023','A24255LMPC5LMD1','0');
-- 2025-05-04 16:18:54
insert into note(matricule,codeExamen,note) values('5LM024','A24255LMPC5LMD1','0');
-- 2025-05-04 16:18:54
insert into note(matricule,codeExamen,note) values('5LM025','A24255LMPC5LMD1','0');
-- 2025-05-04 16:18:54
insert into note(matricule,codeExamen,note) values('5LM026','A24255LMPC5LMD1','8');
-- 2025-05-04 16:18:54
insert into note(matricule,codeExamen,note) values('5LM027','A24255LMPC5LMD1','0');
-- 2025-05-04 16:18:54
insert into note(matricule,codeExamen,note) values('5LM028','A24255LMPC5LMD1','0');
-- 2025-05-04 16:18:54
insert into note(matricule,codeExamen,note) values('5LM029','A24255LMPC5LMD1','0');
-- 2025-05-04 16:18:54
insert into note(matricule,codeExamen,note) values('5LM030','A24255LMPC5LMD1','9');
-- 2025-05-04 16:18:54
insert into note(matricule,codeExamen,note) values('5LM031','A24255LMPC5LMD1','0');
-- 2025-05-04 16:18:54
insert into note(matricule,codeExamen,note) values('5LM032','A24255LMPC5LMD1','0');
-- 2025-05-04 16:18:54
insert into note(matricule,codeExamen,note) values('5LM033','A24255LMPC5LMD1','0');
-- 2025-05-04 16:18:54
insert into note(matricule,codeExamen,note) values('5LM034','A24255LMPC5LMD1','0');
-- 2025-05-04 16:18:54
insert into note(matricule,codeExamen,note) values('5LM035','A24255LMPC5LMD1','12');
-- 2025-05-04 16:18:54
insert into note(matricule,codeExamen,note) values('5LM036','A24255LMPC5LMD1','10');
-- 2025-05-04 16:18:54
insert into note(matricule,codeExamen,note) values('5LM037','A24255LMPC5LMD1','10');
-- 2025-05-04 16:18:55
insert into note(matricule,codeExamen,note) values('5LM038','A24255LMPC5LMD1','8');
-- 2025-05-04 16:18:55
insert into note(matricule,codeExamen,note) values('5LM039','A24255LMPC5LMD1','13');
-- 2025-05-04 16:18:55
insert into note(matricule,codeExamen,note) values('5LM040','A24255LMPC5LMD1','11');
-- 2025-05-04 16:18:55
insert into note(matricule,codeExamen,note) values('5LM041','A24255LMPC5LMD1','10');
-- 2025-05-04 16:18:55
insert into note(matricule,codeExamen,note) values('5LM042','A24255LMPC5LMD1','0');
-- 2025-05-04 16:18:55
insert into note(matricule,codeExamen,note) values('5LM043','A24255LMPC5LMD1','0');
-- 2025-05-04 16:18:55
insert into note(matricule,codeExamen,note) values('5LM044','A24255LMPC5LMD1','0');
-- 2025-05-04 16:18:55
insert into note(matricule,codeExamen,note) values('5LM045','A24255LMPC5LMD1','0');
-- 2025-05-04 16:18:55
insert into note(matricule,codeExamen,note) values('5LM046','A24255LMPC5LMD1','0');
-- 2025-05-04 16:18:55
insert into note(matricule,codeExamen,note) values('5LM047','A24255LMPC5LMD1','0');
-- 2025-05-04 16:18:55
insert into note(matricule,codeExamen,note) values('5LM048','A24255LMPC5LMD1','8');
-- 2025-05-04 16:18:55
insert into note(matricule,codeExamen,note) values('5LM049','A24255LMPC5LMD1','0');
-- 2025-05-04 16:18:55
insert into note(matricule,codeExamen,note) values('5LM050','A24255LMPC5LMD1','11');
-- 2025-05-04 16:18:55
insert into note(matricule,codeExamen,note) values('5LM051','A24255LMPC5LMD1','11');
-- 2025-05-04 16:18:56
insert into note(matricule,codeExamen,note) values('5LM052','A24255LMPC5LMD1','10');
-- 2025-05-04 16:18:56
insert into note(matricule,codeExamen,note) values('5LM053','A24255LMPC5LMD1','0');
-- 2025-05-04 16:18:56
insert into note(matricule,codeExamen,note) values('5LM054','A24255LMPC5LMD1','8');
-- 2025-05-04 16:18:56
insert into note(matricule,codeExamen,note) values('5LM055','A24255LMPC5LMD1','0');
-- 2025-05-04 16:18:56
insert into note(matricule,codeExamen,note) values('5LM056','A24255LMPC5LMD1','7');
-- 2025-05-04 16:18:56
insert into note(matricule,codeExamen,note) values('5LM057','A24255LMPC5LMD1','7');
-- 2025-05-04 16:19:30
insert into note(matricule,codeExamen,note) values('5LM001','A24255LMPC5LMD2','0');
-- 2025-05-04 16:19:30
insert into note(matricule,codeExamen,note) values('5LM002','A24255LMPC5LMD2','0');
-- 2025-05-04 16:19:30
insert into note(matricule,codeExamen,note) values('5LM003','A24255LMPC5LMD2','0');
-- 2025-05-04 16:19:30
insert into note(matricule,codeExamen,note) values('5LM004','A24255LMPC5LMD2','0');
-- 2025-05-04 16:19:30
insert into note(matricule,codeExamen,note) values('5LM005','A24255LMPC5LMD2','0');
-- 2025-05-04 16:19:30
insert into note(matricule,codeExamen,note) values('5LM006','A24255LMPC5LMD2','0');
-- 2025-05-04 16:19:30
insert into note(matricule,codeExamen,note) values('5LM007','A24255LMPC5LMD2','0');
-- 2025-05-04 16:19:30
insert into note(matricule,codeExamen,note) values('5LM008','A24255LMPC5LMD2','0');
-- 2025-05-04 16:19:30
insert into note(matricule,codeExamen,note) values('5LM009','A24255LMPC5LMD2','0');
-- 2025-05-04 16:19:30
insert into note(matricule,codeExamen,note) values('5LM010','A24255LMPC5LMD2','0');
-- 2025-05-04 16:19:30
insert into note(matricule,codeExamen,note) values('5LM011','A24255LMPC5LMD2','0');
-- 2025-05-04 16:19:30
insert into note(matricule,codeExamen,note) values('5LM012','A24255LMPC5LMD2','0');
-- 2025-05-04 16:19:30
insert into note(matricule,codeExamen,note) values('5LM013','A24255LMPC5LMD2','0');
-- 2025-05-04 16:19:31
insert into note(matricule,codeExamen,note) values('5LM014','A24255LMPC5LMD2','0');
-- 2025-05-04 16:19:31
insert into note(matricule,codeExamen,note) values('5LM015','A24255LMPC5LMD2','0');
-- 2025-05-04 16:19:31
insert into note(matricule,codeExamen,note) values('5LM016','A24255LMPC5LMD2','0');
-- 2025-05-04 16:19:31
insert into note(matricule,codeExamen,note) values('5LM017','A24255LMPC5LMD2','0');
-- 2025-05-04 16:19:31
insert into note(matricule,codeExamen,note) values('5LM018','A24255LMPC5LMD2','0');
-- 2025-05-04 16:19:31
insert into note(matricule,codeExamen,note) values('5LM019','A24255LMPC5LMD2','8');
-- 2025-05-04 16:19:31
insert into note(matricule,codeExamen,note) values('5LM020','A24255LMPC5LMD2','0');
-- 2025-05-04 16:19:31
insert into note(matricule,codeExamen,note) values('5LM021','A24255LMPC5LMD2','0');
-- 2025-05-04 16:19:31
insert into note(matricule,codeExamen,note) values('5LM022','A24255LMPC5LMD2','0');
-- 2025-05-04 16:19:31
insert into note(matricule,codeExamen,note) values('5LM023','A24255LMPC5LMD2','0');
-- 2025-05-04 16:19:31
insert into note(matricule,codeExamen,note) values('5LM024','A24255LMPC5LMD2','0');
-- 2025-05-04 16:19:31
insert into note(matricule,codeExamen,note) values('5LM025','A24255LMPC5LMD2','0');
-- 2025-05-04 16:19:31
insert into note(matricule,codeExamen,note) values('5LM026','A24255LMPC5LMD2','9');
-- 2025-05-04 16:19:31
insert into note(matricule,codeExamen,note) values('5LM027','A24255LMPC5LMD2','0');
-- 2025-05-04 16:19:31
insert into note(matricule,codeExamen,note) values('5LM028','A24255LMPC5LMD2','0');
-- 2025-05-04 16:19:32
insert into note(matricule,codeExamen,note) values('5LM029','A24255LMPC5LMD2','0');
-- 2025-05-04 16:19:32
insert into note(matricule,codeExamen,note) values('5LM030','A24255LMPC5LMD2','0');
-- 2025-05-04 16:19:32
insert into note(matricule,codeExamen,note) values('5LM031','A24255LMPC5LMD2','0');
-- 2025-05-04 16:19:32
insert into note(matricule,codeExamen,note) values('5LM032','A24255LMPC5LMD2','0');
-- 2025-05-04 16:19:32
insert into note(matricule,codeExamen,note) values('5LM033','A24255LMPC5LMD2','0');
-- 2025-05-04 16:19:32
insert into note(matricule,codeExamen,note) values('5LM034','A24255LMPC5LMD2','0');
-- 2025-05-04 16:19:32
insert into note(matricule,codeExamen,note) values('5LM035','A24255LMPC5LMD2','9');
-- 2025-05-04 16:19:32
insert into note(matricule,codeExamen,note) values('5LM036','A24255LMPC5LMD2','12');
-- 2025-05-04 16:19:32
insert into note(matricule,codeExamen,note) values('5LM037','A24255LMPC5LMD2','9');
-- 2025-05-04 16:19:32
insert into note(matricule,codeExamen,note) values('5LM038','A24255LMPC5LMD2','9');
-- 2025-05-04 16:19:32
insert into note(matricule,codeExamen,note) values('5LM039','A24255LMPC5LMD2','12');
-- 2025-05-04 16:19:32
insert into note(matricule,codeExamen,note) values('5LM040','A24255LMPC5LMD2','0');
-- 2025-05-04 16:19:33
insert into note(matricule,codeExamen,note) values('5LM041','A24255LMPC5LMD2','11.5');
-- 2025-05-04 16:19:33
insert into note(matricule,codeExamen,note) values('5LM042','A24255LMPC5LMD2','0');
-- 2025-05-04 16:19:33
insert into note(matricule,codeExamen,note) values('5LM043','A24255LMPC5LMD2','0');
-- 2025-05-04 16:19:33
insert into note(matricule,codeExamen,note) values('5LM044','A24255LMPC5LMD2','9');
-- 2025-05-04 16:19:33
insert into note(matricule,codeExamen,note) values('5LM045','A24255LMPC5LMD2','0');
-- 2025-05-04 16:19:33
insert into note(matricule,codeExamen,note) values('5LM046','A24255LMPC5LMD2','0');
-- 2025-05-04 16:19:33
insert into note(matricule,codeExamen,note) values('5LM047','A24255LMPC5LMD2','0');
-- 2025-05-04 16:19:33
insert into note(matricule,codeExamen,note) values('5LM048','A24255LMPC5LMD2','9');
-- 2025-05-04 16:19:33
insert into note(matricule,codeExamen,note) values('5LM049','A24255LMPC5LMD2','0');
-- 2025-05-04 16:19:33
insert into note(matricule,codeExamen,note) values('5LM050','A24255LMPC5LMD2','9');
-- 2025-05-04 16:19:33
insert into note(matricule,codeExamen,note) values('5LM051','A24255LMPC5LMD2','11');
-- 2025-05-04 16:19:33
insert into note(matricule,codeExamen,note) values('5LM052','A24255LMPC5LMD2','11');
-- 2025-05-04 16:19:33
insert into note(matricule,codeExamen,note) values('5LM053','A24255LMPC5LMD2','0');
-- 2025-05-04 16:19:33
insert into note(matricule,codeExamen,note) values('5LM054','A24255LMPC5LMD2','9');
-- 2025-05-04 16:19:33
insert into note(matricule,codeExamen,note) values('5LM055','A24255LMPC5LMD2','0');
-- 2025-05-04 16:19:34
insert into note(matricule,codeExamen,note) values('5LM056','A24255LMPC5LMD2','8');
-- 2025-05-04 16:19:34
insert into note(matricule,codeExamen,note) values('5LM057','A24255LMPC5LMD2','0');
-- 2025-05-04 16:20:30
insert into note(matricule,codeExamen,note) values('5LM001','A24255LMPC5LMC1','0');
-- 2025-05-04 16:20:30
insert into note(matricule,codeExamen,note) values('5LM002','A24255LMPC5LMC1','12');
-- 2025-05-04 16:20:30
insert into note(matricule,codeExamen,note) values('5LM003','A24255LMPC5LMC1','0');
-- 2025-05-04 16:20:30
insert into note(matricule,codeExamen,note) values('5LM004','A24255LMPC5LMC1','0');
-- 2025-05-04 16:20:30
insert into note(matricule,codeExamen,note) values('5LM005','A24255LMPC5LMC1','0');
-- 2025-05-04 16:20:30
insert into note(matricule,codeExamen,note) values('5LM006','A24255LMPC5LMC1','0');
-- 2025-05-04 16:20:30
insert into note(matricule,codeExamen,note) values('5LM007','A24255LMPC5LMC1','8');
-- 2025-05-04 16:20:30
insert into note(matricule,codeExamen,note) values('5LM008','A24255LMPC5LMC1','5');
-- 2025-05-04 16:20:31
insert into note(matricule,codeExamen,note) values('5LM009','A24255LMPC5LMC1','0');
-- 2025-05-04 16:20:31
insert into note(matricule,codeExamen,note) values('5LM010','A24255LMPC5LMC1','0');
-- 2025-05-04 16:20:31
insert into note(matricule,codeExamen,note) values('5LM011','A24255LMPC5LMC1','0');
-- 2025-05-04 16:20:31
insert into note(matricule,codeExamen,note) values('5LM012','A24255LMPC5LMC1','0');
-- 2025-05-04 16:20:31
insert into note(matricule,codeExamen,note) values('5LM013','A24255LMPC5LMC1','0');
-- 2025-05-04 16:20:31
insert into note(matricule,codeExamen,note) values('5LM014','A24255LMPC5LMC1','11');
-- 2025-05-04 16:20:31
insert into note(matricule,codeExamen,note) values('5LM015','A24255LMPC5LMC1','15');
-- 2025-05-04 16:20:31
insert into note(matricule,codeExamen,note) values('5LM016','A24255LMPC5LMC1','0');
-- 2025-05-04 16:20:31
insert into note(matricule,codeExamen,note) values('5LM017','A24255LMPC5LMC1','0');
-- 2025-05-04 16:20:31
insert into note(matricule,codeExamen,note) values('5LM018','A24255LMPC5LMC1','0');
-- 2025-05-04 16:20:31
insert into note(matricule,codeExamen,note) values('5LM019','A24255LMPC5LMC1','10');
-- 2025-05-04 16:20:31
insert into note(matricule,codeExamen,note) values('5LM020','A24255LMPC5LMC1','10');
-- 2025-05-04 16:20:31
insert into note(matricule,codeExamen,note) values('5LM021','A24255LMPC5LMC1','0');
-- 2025-05-04 16:20:31
insert into note(matricule,codeExamen,note) values('5LM022','A24255LMPC5LMC1','6');
-- 2025-05-04 16:20:32
insert into note(matricule,codeExamen,note) values('5LM023','A24255LMPC5LMC1','0');
-- 2025-05-04 16:20:32
insert into note(matricule,codeExamen,note) values('5LM024','A24255LMPC5LMC1','0');
-- 2025-05-04 16:20:32
insert into note(matricule,codeExamen,note) values('5LM025','A24255LMPC5LMC1','0');
-- 2025-05-04 16:20:32
insert into note(matricule,codeExamen,note) values('5LM026','A24255LMPC5LMC1','10');
-- 2025-05-04 16:20:32
insert into note(matricule,codeExamen,note) values('5LM027','A24255LMPC5LMC1','12.5');
-- 2025-05-04 16:20:32
insert into note(matricule,codeExamen,note) values('5LM028','A24255LMPC5LMC1','0');
-- 2025-05-04 16:20:32
insert into note(matricule,codeExamen,note) values('5LM029','A24255LMPC5LMC1','10');
-- 2025-05-04 16:20:32
insert into note(matricule,codeExamen,note) values('5LM030','A24255LMPC5LMC1','13');
-- 2025-05-04 16:20:32
insert into note(matricule,codeExamen,note) values('5LM031','A24255LMPC5LMC1','0');
-- 2025-05-04 16:20:32
insert into note(matricule,codeExamen,note) values('5LM032','A24255LMPC5LMC1','0');
-- 2025-05-04 16:20:32
insert into note(matricule,codeExamen,note) values('5LM033','A24255LMPC5LMC1','0');
-- 2025-05-04 16:20:32
insert into note(matricule,codeExamen,note) values('5LM034','A24255LMPC5LMC1','0');
-- 2025-05-04 16:20:32
insert into note(matricule,codeExamen,note) values('5LM035','A24255LMPC5LMC1','14');
-- 2025-05-04 16:20:33
insert into note(matricule,codeExamen,note) values('5LM036','A24255LMPC5LMC1','12');
-- 2025-05-04 16:20:33
insert into note(matricule,codeExamen,note) values('5LM037','A24255LMPC5LMC1','12');
-- 2025-05-04 16:20:33
insert into note(matricule,codeExamen,note) values('5LM038','A24255LMPC5LMC1','8');
-- 2025-05-04 16:20:33
insert into note(matricule,codeExamen,note) values('5LM039','A24255LMPC5LMC1','10');
-- 2025-05-04 16:20:33
insert into note(matricule,codeExamen,note) values('5LM040','A24255LMPC5LMC1','9.5');
-- 2025-05-04 16:20:33
insert into note(matricule,codeExamen,note) values('5LM041','A24255LMPC5LMC1','11.5');
-- 2025-05-04 16:20:33
insert into note(matricule,codeExamen,note) values('5LM042','A24255LMPC5LMC1','12');
-- 2025-05-04 16:20:33
insert into note(matricule,codeExamen,note) values('5LM043','A24255LMPC5LMC1','0');
-- 2025-05-04 16:20:33
insert into note(matricule,codeExamen,note) values('5LM044','A24255LMPC5LMC1','12');
-- 2025-05-04 16:20:33
insert into note(matricule,codeExamen,note) values('5LM045','A24255LMPC5LMC1','4');
-- 2025-05-04 16:20:33
insert into note(matricule,codeExamen,note) values('5LM046','A24255LMPC5LMC1','4');
-- 2025-05-04 16:20:33
insert into note(matricule,codeExamen,note) values('5LM047','A24255LMPC5LMC1','6');
-- 2025-05-04 16:20:33
insert into note(matricule,codeExamen,note) values('5LM048','A24255LMPC5LMC1','9');
-- 2025-05-04 16:20:33
insert into note(matricule,codeExamen,note) values('5LM049','A24255LMPC5LMC1','3');
-- 2025-05-04 16:20:34
insert into note(matricule,codeExamen,note) values('5LM050','A24255LMPC5LMC1','3');
-- 2025-05-04 16:20:34
insert into note(matricule,codeExamen,note) values('5LM051','A24255LMPC5LMC1','9');
-- 2025-05-04 16:20:34
insert into note(matricule,codeExamen,note) values('5LM052','A24255LMPC5LMC1','9');
-- 2025-05-04 16:20:34
insert into note(matricule,codeExamen,note) values('5LM053','A24255LMPC5LMC1','0');
-- 2025-05-04 16:20:34
insert into note(matricule,codeExamen,note) values('5LM054','A24255LMPC5LMC1','13');
-- 2025-05-04 16:20:34
insert into note(matricule,codeExamen,note) values('5LM055','A24255LMPC5LMC1','5');
-- 2025-05-04 16:20:34
insert into note(matricule,codeExamen,note) values('5LM056','A24255LMPC5LMC1','9');
-- 2025-05-04 16:20:34
insert into note(matricule,codeExamen,note) values('5LM057','A24255LMPC5LMC1','8');
-- 2025-05-04 16:21:05
insert into note(matricule,codeExamen,note) values('5LM001','A24255LMPC5LMC2','4');
-- 2025-05-04 16:21:05
insert into note(matricule,codeExamen,note) values('5LM002','A24255LMPC5LMC2','4');
-- 2025-05-04 16:21:05
insert into note(matricule,codeExamen,note) values('5LM003','A24255LMPC5LMC2','0');
-- 2025-05-04 16:21:05
insert into note(matricule,codeExamen,note) values('5LM004','A24255LMPC5LMC2','6');
-- 2025-05-04 16:21:05
insert into note(matricule,codeExamen,note) values('5LM005','A24255LMPC5LMC2','4');
-- 2025-05-04 16:21:06
insert into note(matricule,codeExamen,note) values('5LM006','A24255LMPC5LMC2','0');
-- 2025-05-04 16:21:06
insert into note(matricule,codeExamen,note) values('5LM007','A24255LMPC5LMC2','2');
-- 2025-05-04 16:21:06
insert into note(matricule,codeExamen,note) values('5LM008','A24255LMPC5LMC2','3');
-- 2025-05-04 16:21:06
insert into note(matricule,codeExamen,note) values('5LM009','A24255LMPC5LMC2','0');
-- 2025-05-04 16:21:06
insert into note(matricule,codeExamen,note) values('5LM010','A24255LMPC5LMC2','0');
-- 2025-05-04 16:21:06
insert into note(matricule,codeExamen,note) values('5LM011','A24255LMPC5LMC2','4');
-- 2025-05-04 16:21:06
insert into note(matricule,codeExamen,note) values('5LM012','A24255LMPC5LMC2','3');
-- 2025-05-04 16:21:06
insert into note(matricule,codeExamen,note) values('5LM013','A24255LMPC5LMC2','0');
-- 2025-05-04 16:21:06
insert into note(matricule,codeExamen,note) values('5LM014','A24255LMPC5LMC2','3');
-- 2025-05-04 16:21:06
insert into note(matricule,codeExamen,note) values('5LM015','A24255LMPC5LMC2','3');
-- 2025-05-04 16:21:06
insert into note(matricule,codeExamen,note) values('5LM016','A24255LMPC5LMC2','0');
-- 2025-05-04 16:21:06
insert into note(matricule,codeExamen,note) values('5LM017','A24255LMPC5LMC2','2');
-- 2025-05-04 16:21:07
insert into note(matricule,codeExamen,note) values('5LM018','A24255LMPC5LMC2','0');
-- 2025-05-04 16:21:07
insert into note(matricule,codeExamen,note) values('5LM019','A24255LMPC5LMC2','3');
-- 2025-05-04 16:21:07
insert into note(matricule,codeExamen,note) values('5LM020','A24255LMPC5LMC2','4');
-- 2025-05-04 16:21:07
insert into note(matricule,codeExamen,note) values('5LM021','A24255LMPC5LMC2','0');
-- 2025-05-04 16:21:07
insert into note(matricule,codeExamen,note) values('5LM022','A24255LMPC5LMC2','4');
-- 2025-05-04 16:21:07
insert into note(matricule,codeExamen,note) values('5LM023','A24255LMPC5LMC2','0');
-- 2025-05-04 16:21:07
insert into note(matricule,codeExamen,note) values('5LM024','A24255LMPC5LMC2','0');
-- 2025-05-04 16:21:07
insert into note(matricule,codeExamen,note) values('5LM025','A24255LMPC5LMC2','0');
-- 2025-05-04 16:21:07
insert into note(matricule,codeExamen,note) values('5LM026','A24255LMPC5LMC2','4');
-- 2025-05-04 16:21:07
insert into note(matricule,codeExamen,note) values('5LM027','A24255LMPC5LMC2','3');
-- 2025-05-04 16:21:07
insert into note(matricule,codeExamen,note) values('5LM028','A24255LMPC5LMC2','0');
-- 2025-05-04 16:21:07
insert into note(matricule,codeExamen,note) values('5LM029','A24255LMPC5LMC2','4');
-- 2025-05-04 16:21:07
insert into note(matricule,codeExamen,note) values('5LM030','A24255LMPC5LMC2','2');
-- 2025-05-04 16:21:07
insert into note(matricule,codeExamen,note) values('5LM031','A24255LMPC5LMC2','3');
-- 2025-05-04 16:21:08
insert into note(matricule,codeExamen,note) values('5LM032','A24255LMPC5LMC2','0');
-- 2025-05-04 16:21:08
insert into note(matricule,codeExamen,note) values('5LM033','A24255LMPC5LMC2','0');
-- 2025-05-04 16:21:08
insert into note(matricule,codeExamen,note) values('5LM034','A24255LMPC5LMC2','0');
-- 2025-05-04 16:21:08
insert into note(matricule,codeExamen,note) values('5LM035','A24255LMPC5LMC2','13');
-- 2025-05-04 16:21:08
insert into note(matricule,codeExamen,note) values('5LM036','A24255LMPC5LMC2','4');
-- 2025-05-04 16:21:08
insert into note(matricule,codeExamen,note) values('5LM037','A24255LMPC5LMC2','2');
-- 2025-05-04 16:21:08
insert into note(matricule,codeExamen,note) values('5LM038','A24255LMPC5LMC2','5');
-- 2025-05-04 16:21:08
insert into note(matricule,codeExamen,note) values('5LM039','A24255LMPC5LMC2','5');
-- 2025-05-04 16:21:08
insert into note(matricule,codeExamen,note) values('5LM040','A24255LMPC5LMC2','3');
-- 2025-05-04 16:21:08
insert into note(matricule,codeExamen,note) values('5LM041','A24255LMPC5LMC2','8');
-- 2025-05-04 16:21:08
insert into note(matricule,codeExamen,note) values('5LM042','A24255LMPC5LMC2','4');
-- 2025-05-04 16:21:08
insert into note(matricule,codeExamen,note) values('5LM043','A24255LMPC5LMC2','0');
-- 2025-05-04 16:21:09
insert into note(matricule,codeExamen,note) values('5LM044','A24255LMPC5LMC2','2');
-- 2025-05-04 16:21:09
insert into note(matricule,codeExamen,note) values('5LM045','A24255LMPC5LMC2','4');
-- 2025-05-04 16:21:09
insert into note(matricule,codeExamen,note) values('5LM046','A24255LMPC5LMC2','0');
-- 2025-05-04 16:21:09
insert into note(matricule,codeExamen,note) values('5LM047','A24255LMPC5LMC2','3');
-- 2025-05-04 16:21:09
insert into note(matricule,codeExamen,note) values('5LM048','A24255LMPC5LMC2','0');
-- 2025-05-04 16:21:09
insert into note(matricule,codeExamen,note) values('5LM049','A24255LMPC5LMC2','5');
-- 2025-05-04 16:21:09
insert into note(matricule,codeExamen,note) values('5LM050','A24255LMPC5LMC2','7');
-- 2025-05-04 16:21:09
insert into note(matricule,codeExamen,note) values('5LM051','A24255LMPC5LMC2','7');
-- 2025-05-04 16:21:09
insert into note(matricule,codeExamen,note) values('5LM052','A24255LMPC5LMC2','11');
-- 2025-05-04 16:21:09
insert into note(matricule,codeExamen,note) values('5LM053','A24255LMPC5LMC2','3');
-- 2025-05-04 16:21:09
insert into note(matricule,codeExamen,note) values('5LM054','A24255LMPC5LMC2','5');
-- 2025-05-04 16:21:10
insert into note(matricule,codeExamen,note) values('5LM055','A24255LMPC5LMC2','3');
-- 2025-05-04 16:21:10
insert into note(matricule,codeExamen,note) values('5LM056','A24255LMPC5LMC2','4');
-- 2025-05-04 16:21:10
insert into note(matricule,codeExamen,note) values('5LM057','A24255LMPC5LMC2','2');
-- 2025-05-04 16:25:46
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,dateClasseMatiere) values('AR2AS','2AS','AR','6','5','2024-10-01');
-- 2025-05-04 16:25:47
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,dateClasseMatiere) values('EN2AS','2AS','EN','2','1','2024-10-01');
-- 2025-05-04 16:25:47
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,dateClasseMatiere) values('EPS2AS','2AS','EPS','2','1','2024-10-01');
-- 2025-05-04 16:25:47
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,dateClasseMatiere) values('FR2AS','2AS','FR','5','4','2024-10-01');
-- 2025-05-04 16:25:47
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,dateClasseMatiere) values('HG2AS','2AS','HG','2','2','2024-10-01');
-- 2025-05-04 16:25:47
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,dateClasseMatiere) values('IC2AS','2AS','IC','1','1','2024-10-01');
-- 2025-05-04 16:25:47
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,dateClasseMatiere) values('IR2AS','2AS','IR','4','3','2024-10-01');
-- 2025-05-04 16:25:47
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,dateClasseMatiere) values('SN2AS','2AS','SN','2','2','2024-10-01');
-- 2025-05-04 16:26:55
insert into examen (codeExamen,codeClasseMatiere,codeSalleClasse,codeEvaluation,dateExamen,statutExamen,heureDebutExamen,heureFinExamen) values ('A24252AS2AR2ASD1','AR2AS','A24252AS2','D1','','1','','');
-- 2025-05-04 16:26:55
insert into examen (codeExamen,codeClasseMatiere,codeSalleClasse,codeEvaluation,dateExamen,statutExamen,heureDebutExamen,heureFinExamen) values ('A24252AS2MATH2ASD1','MATH2AS','A24252AS2','D1','','1','','');
-- 2025-05-04 16:26:55
insert into examen (codeExamen,codeClasseMatiere,codeSalleClasse,codeEvaluation,dateExamen,statutExamen,heureDebutExamen,heureFinExamen) values ('A24252AS2FR2ASD1','FR2AS','A24252AS2','D1','','1','','');
-- 2025-05-04 16:26:55
insert into examen (codeExamen,codeClasseMatiere,codeSalleClasse,codeEvaluation,dateExamen,statutExamen,heureDebutExamen,heureFinExamen) values ('A24252AS2IR2ASD1','IR2AS','A24252AS2','D1','','1','','');
-- 2025-05-04 16:26:55
insert into examen (codeExamen,codeClasseMatiere,codeSalleClasse,codeEvaluation,dateExamen,statutExamen,heureDebutExamen,heureFinExamen) values ('A24252AS2SN2ASD1','SN2AS','A24252AS2','D1','','1','','');
-- 2025-05-04 16:26:55
insert into examen (codeExamen,codeClasseMatiere,codeSalleClasse,codeEvaluation,dateExamen,statutExamen,heureDebutExamen,heureFinExamen) values ('A24252AS2HG2ASD1','HG2AS','A24252AS2','D1','','1','','');
-- 2025-05-04 16:26:55
insert into examen (codeExamen,codeClasseMatiere,codeSalleClasse,codeEvaluation,dateExamen,statutExamen,heureDebutExamen,heureFinExamen) values ('A24252AS2EPS2ASD1','EPS2AS','A24252AS2','D1','','1','','');
-- 2025-05-04 16:26:55
insert into examen (codeExamen,codeClasseMatiere,codeSalleClasse,codeEvaluation,dateExamen,statutExamen,heureDebutExamen,heureFinExamen) values ('A24252AS2EN2ASD1','EN2AS','A24252AS2','D1','','1','','');
-- 2025-05-04 16:26:55
insert into examen (codeExamen,codeClasseMatiere,codeSalleClasse,codeEvaluation,dateExamen,statutExamen,heureDebutExamen,heureFinExamen) values ('A24252AS2IC2ASD1','IC2AS','A24252AS2','D1','','1','','');
-- 2025-05-04 16:27:18
insert into examen (codeExamen,codeClasseMatiere,codeSalleClasse,codeEvaluation,dateExamen,statutExamen,heureDebutExamen,heureFinExamen) values ('A24252AS2AR2ASD2','AR2AS','A24252AS2','D2','','1','','');
-- 2025-05-04 16:27:18
insert into examen (codeExamen,codeClasseMatiere,codeSalleClasse,codeEvaluation,dateExamen,statutExamen,heureDebutExamen,heureFinExamen) values ('A24252AS2MATH2ASD2','MATH2AS','A24252AS2','D2','','1','','');
-- 2025-05-04 16:27:18
insert into examen (codeExamen,codeClasseMatiere,codeSalleClasse,codeEvaluation,dateExamen,statutExamen,heureDebutExamen,heureFinExamen) values ('A24252AS2FR2ASD2','FR2AS','A24252AS2','D2','','1','','');
-- 2025-05-04 16:27:19
insert into examen (codeExamen,codeClasseMatiere,codeSalleClasse,codeEvaluation,dateExamen,statutExamen,heureDebutExamen,heureFinExamen) values ('A24252AS2IR2ASD2','IR2AS','A24252AS2','D2','','1','','');
-- 2025-05-04 16:27:19
insert into examen (codeExamen,codeClasseMatiere,codeSalleClasse,codeEvaluation,dateExamen,statutExamen,heureDebutExamen,heureFinExamen) values ('A24252AS2SN2ASD2','SN2AS','A24252AS2','D2','','1','','');
-- 2025-05-04 16:27:19
insert into examen (codeExamen,codeClasseMatiere,codeSalleClasse,codeEvaluation,dateExamen,statutExamen,heureDebutExamen,heureFinExamen) values ('A24252AS2HG2ASD2','HG2AS','A24252AS2','D2','','1','','');
-- 2025-05-04 16:27:19
insert into examen (codeExamen,codeClasseMatiere,codeSalleClasse,codeEvaluation,dateExamen,statutExamen,heureDebutExamen,heureFinExamen) values ('A24252AS2EPS2ASD2','EPS2AS','A24252AS2','D2','','1','','');
-- 2025-05-04 16:27:19
insert into examen (codeExamen,codeClasseMatiere,codeSalleClasse,codeEvaluation,dateExamen,statutExamen,heureDebutExamen,heureFinExamen) values ('A24252AS2EN2ASD2','EN2AS','A24252AS2','D2','','1','','');
-- 2025-05-04 16:27:19
insert into examen (codeExamen,codeClasseMatiere,codeSalleClasse,codeEvaluation,dateExamen,statutExamen,heureDebutExamen,heureFinExamen) values ('A24252AS2IC2ASD2','IC2AS','A24252AS2','D2','','1','','');
-- 2025-05-04 16:27:31
insert into examen (codeExamen,codeClasseMatiere,codeSalleClasse,codeEvaluation,dateExamen,statutExamen,heureDebutExamen,heureFinExamen) values ('A24252AS2AR2ASC1','AR2AS','A24252AS2','C1','','1','','');
-- 2025-05-04 16:27:31
insert into examen (codeExamen,codeClasseMatiere,codeSalleClasse,codeEvaluation,dateExamen,statutExamen,heureDebutExamen,heureFinExamen) values ('A24252AS2MATH2ASC1','MATH2AS','A24252AS2','C1','','1','','');
-- 2025-05-04 16:27:31
insert into examen (codeExamen,codeClasseMatiere,codeSalleClasse,codeEvaluation,dateExamen,statutExamen,heureDebutExamen,heureFinExamen) values ('A24252AS2FR2ASC1','FR2AS','A24252AS2','C1','','1','','');
-- 2025-05-04 16:27:31
insert into examen (codeExamen,codeClasseMatiere,codeSalleClasse,codeEvaluation,dateExamen,statutExamen,heureDebutExamen,heureFinExamen) values ('A24252AS2IR2ASC1','IR2AS','A24252AS2','C1','','1','','');
-- 2025-05-04 16:27:32
insert into examen (codeExamen,codeClasseMatiere,codeSalleClasse,codeEvaluation,dateExamen,statutExamen,heureDebutExamen,heureFinExamen) values ('A24252AS2SN2ASC1','SN2AS','A24252AS2','C1','','1','','');
-- 2025-05-04 16:27:32
insert into examen (codeExamen,codeClasseMatiere,codeSalleClasse,codeEvaluation,dateExamen,statutExamen,heureDebutExamen,heureFinExamen) values ('A24252AS2HG2ASC1','HG2AS','A24252AS2','C1','','1','','');
-- 2025-05-04 16:27:32
insert into examen (codeExamen,codeClasseMatiere,codeSalleClasse,codeEvaluation,dateExamen,statutExamen,heureDebutExamen,heureFinExamen) values ('A24252AS2EPS2ASC1','EPS2AS','A24252AS2','C1','','1','','');
-- 2025-05-04 16:27:32
insert into examen (codeExamen,codeClasseMatiere,codeSalleClasse,codeEvaluation,dateExamen,statutExamen,heureDebutExamen,heureFinExamen) values ('A24252AS2EN2ASC1','EN2AS','A24252AS2','C1','','1','','');
-- 2025-05-04 16:27:32
insert into examen (codeExamen,codeClasseMatiere,codeSalleClasse,codeEvaluation,dateExamen,statutExamen,heureDebutExamen,heureFinExamen) values ('A24252AS2IC2ASC1','IC2AS','A24252AS2','C1','','1','','');
-- 2025-05-04 16:27:42
insert into examen (codeExamen,codeClasseMatiere,codeSalleClasse,codeEvaluation,dateExamen,statutExamen,heureDebutExamen,heureFinExamen) values ('A24252AS2AR2ASC2','AR2AS','A24252AS2','C2','','1','','');
-- 2025-05-04 16:27:42
insert into examen (codeExamen,codeClasseMatiere,codeSalleClasse,codeEvaluation,dateExamen,statutExamen,heureDebutExamen,heureFinExamen) values ('A24252AS2MATH2ASC2','MATH2AS','A24252AS2','C2','','1','','');
-- 2025-05-04 16:27:42
insert into examen (codeExamen,codeClasseMatiere,codeSalleClasse,codeEvaluation,dateExamen,statutExamen,heureDebutExamen,heureFinExamen) values ('A24252AS2FR2ASC2','FR2AS','A24252AS2','C2','','1','','');
-- 2025-05-04 16:27:42
insert into examen (codeExamen,codeClasseMatiere,codeSalleClasse,codeEvaluation,dateExamen,statutExamen,heureDebutExamen,heureFinExamen) values ('A24252AS2IR2ASC2','IR2AS','A24252AS2','C2','','1','','');
-- 2025-05-04 16:27:42
insert into examen (codeExamen,codeClasseMatiere,codeSalleClasse,codeEvaluation,dateExamen,statutExamen,heureDebutExamen,heureFinExamen) values ('A24252AS2SN2ASC2','SN2AS','A24252AS2','C2','','1','','');
-- 2025-05-04 16:27:42
insert into examen (codeExamen,codeClasseMatiere,codeSalleClasse,codeEvaluation,dateExamen,statutExamen,heureDebutExamen,heureFinExamen) values ('A24252AS2HG2ASC2','HG2AS','A24252AS2','C2','','1','','');
-- 2025-05-04 16:27:42
insert into examen (codeExamen,codeClasseMatiere,codeSalleClasse,codeEvaluation,dateExamen,statutExamen,heureDebutExamen,heureFinExamen) values ('A24252AS2EPS2ASC2','EPS2AS','A24252AS2','C2','','1','','');
-- 2025-05-04 16:27:42
insert into examen (codeExamen,codeClasseMatiere,codeSalleClasse,codeEvaluation,dateExamen,statutExamen,heureDebutExamen,heureFinExamen) values ('A24252AS2EN2ASC2','EN2AS','A24252AS2','C2','','1','','');
-- 2025-05-04 16:27:42
insert into examen (codeExamen,codeClasseMatiere,codeSalleClasse,codeEvaluation,dateExamen,statutExamen,heureDebutExamen,heureFinExamen) values ('A24252AS2IC2ASC2','IC2AS','A24252AS2','C2','','1','','');
-- 2025-05-04 16:34:48
insert into eleve(matricule,nom,isme,sexe,dateNaissance,lieuNaissance,adresse,nni) values('2AS2057','Inconnu','','M','2000-01-01','Boghe','Boghe','NNI2AS2057');
-- 2025-05-04 16:35:13
insert into inscrit(idInscrit,matricule,codeSalleClasse,numeroInscrit,typeInscrit,dateInscription) values('','2AS2057','A24252AS2','57','passant','2025-05-04');
-- 2025-05-04 16:36:55
insert into note(matricule,codeExamen,note) values('2AS201','A24252AS2MATH2ASD1','1');
-- 2025-05-04 16:36:55
insert into note(matricule,codeExamen,note) values('2AS202','A24252AS2MATH2ASD1','1');
-- 2025-05-04 16:36:55
insert into note(matricule,codeExamen,note) values('2AS203','A24252AS2MATH2ASD1','4');
-- 2025-05-04 16:36:55
insert into note(matricule,codeExamen,note) values('2AS204','A24252AS2MATH2ASD1','2');
-- 2025-05-04 16:36:56
insert into note(matricule,codeExamen,note) values('2AS205','A24252AS2MATH2ASD1','0');
-- 2025-05-04 16:36:56
insert into note(matricule,codeExamen,note) values('2AS206','A24252AS2MATH2ASD1','6');
-- 2025-05-04 16:36:56
insert into note(matricule,codeExamen,note) values('2AS207','A24252AS2MATH2ASD1','4');
-- 2025-05-04 16:36:56
insert into note(matricule,codeExamen,note) values('2AS208','A24252AS2MATH2ASD1','4.5');
-- 2025-05-04 16:36:56
insert into note(matricule,codeExamen,note) values('2AS209','A24252AS2MATH2ASD1','1');
-- 2025-05-04 16:36:56
insert into note(matricule,codeExamen,note) values('2AS210','A24252AS2MATH2ASD1','0.5');
-- 2025-05-04 16:36:56
insert into note(matricule,codeExamen,note) values('2AS211','A24252AS2MATH2ASD1','1');
-- 2025-05-04 16:36:56
insert into note(matricule,codeExamen,note) values('2AS212','A24252AS2MATH2ASD1','5');
-- 2025-05-04 16:36:56
insert into note(matricule,codeExamen,note) values('2AS213','A24252AS2MATH2ASD1','10');
-- 2025-05-04 16:36:56
insert into note(matricule,codeExamen,note) values('2AS214','A24252AS2MATH2ASD1','3');
-- 2025-05-04 16:36:56
insert into note(matricule,codeExamen,note) values('2AS215','A24252AS2MATH2ASD1','0');
-- 2025-05-04 16:36:56
insert into note(matricule,codeExamen,note) values('2AS216','A24252AS2MATH2ASD1','6');
-- 2025-05-04 16:36:57
insert into note(matricule,codeExamen,note) values('2AS217','A24252AS2MATH2ASD1','5');
-- 2025-05-04 16:36:57
insert into note(matricule,codeExamen,note) values('2AS218','A24252AS2MATH2ASD1','2');
-- 2025-05-04 16:36:57
insert into note(matricule,codeExamen,note) values('2AS219','A24252AS2MATH2ASD1','2');
-- 2025-05-04 16:36:57
insert into note(matricule,codeExamen,note) values('2AS220','A24252AS2MATH2ASD1','0');
-- 2025-05-04 16:36:57
insert into note(matricule,codeExamen,note) values('2AS221','A24252AS2MATH2ASD1','7');
-- 2025-05-04 16:36:57
insert into note(matricule,codeExamen,note) values('2AS222','A24252AS2MATH2ASD1','7');
-- 2025-05-04 16:36:57
insert into note(matricule,codeExamen,note) values('2AS223','A24252AS2MATH2ASD1','5');
-- 2025-05-04 16:36:57
insert into note(matricule,codeExamen,note) values('2AS224','A24252AS2MATH2ASD1','4');
-- 2025-05-04 16:36:57
insert into note(matricule,codeExamen,note) values('2AS225','A24252AS2MATH2ASD1','2');
-- 2025-05-04 16:36:57
insert into note(matricule,codeExamen,note) values('2AS226','A24252AS2MATH2ASD1','9');
-- 2025-05-04 16:36:58
insert into note(matricule,codeExamen,note) values('2AS227','A24252AS2MATH2ASD1','4');
-- 2025-05-04 16:36:58
insert into note(matricule,codeExamen,note) values('2AS228','A24252AS2MATH2ASD1','10');
-- 2025-05-04 16:36:58
insert into note(matricule,codeExamen,note) values('2AS229','A24252AS2MATH2ASD1','8');
-- 2025-05-04 16:36:58
insert into note(matricule,codeExamen,note) values('2AS230','A24252AS2MATH2ASD1','2');
-- 2025-05-04 16:36:58
insert into note(matricule,codeExamen,note) values('2AS231','A24252AS2MATH2ASD1','7');
-- 2025-05-04 16:36:58
insert into note(matricule,codeExamen,note) values('2AS232','A24252AS2MATH2ASD1','8');
-- 2025-05-04 16:36:58
insert into note(matricule,codeExamen,note) values('2AS233','A24252AS2MATH2ASD1','2');
-- 2025-05-04 16:36:58
insert into note(matricule,codeExamen,note) values('2AS234','A24252AS2MATH2ASD1','8');
-- 2025-05-04 16:36:58
insert into note(matricule,codeExamen,note) values('2AS235','A24252AS2MATH2ASD1','0');
-- 2025-05-04 16:36:58
insert into note(matricule,codeExamen,note) values('2AS236','A24252AS2MATH2ASD1','0');
-- 2025-05-04 16:36:58
insert into note(matricule,codeExamen,note) values('2AS237','A24252AS2MATH2ASD1','4');
-- 2025-05-04 16:36:59
insert into note(matricule,codeExamen,note) values('2AS238','A24252AS2MATH2ASD1','10');
-- 2025-05-04 16:36:59
insert into note(matricule,codeExamen,note) values('2AS239','A24252AS2MATH2ASD1','7.5');
-- 2025-05-04 16:36:59
insert into note(matricule,codeExamen,note) values('2AS240','A24252AS2MATH2ASD1','4.5');
-- 2025-05-04 16:36:59
insert into note(matricule,codeExamen,note) values('2AS241','A24252AS2MATH2ASD1','1');
-- 2025-05-04 16:36:59
insert into note(matricule,codeExamen,note) values('2AS242','A24252AS2MATH2ASD1','2');
-- 2025-05-04 16:36:59
insert into note(matricule,codeExamen,note) values('2AS243','A24252AS2MATH2ASD1','9');
-- 2025-05-04 16:36:59
insert into note(matricule,codeExamen,note) values('2AS244','A24252AS2MATH2ASD1','6');
-- 2025-05-04 16:36:59
insert into note(matricule,codeExamen,note) values('2AS245','A24252AS2MATH2ASD1','2');
-- 2025-05-04 16:36:59
insert into note(matricule,codeExamen,note) values('2AS246','A24252AS2MATH2ASD1','14.5');
-- 2025-05-04 16:36:59
insert into note(matricule,codeExamen,note) values('2AS247','A24252AS2MATH2ASD1','3');
-- 2025-05-04 16:37:00
insert into note(matricule,codeExamen,note) values('2AS248','A24252AS2MATH2ASD1','4');
-- 2025-05-04 16:37:00
insert into note(matricule,codeExamen,note) values('2AS249','A24252AS2MATH2ASD1','7');
-- 2025-05-04 16:37:00
insert into note(matricule,codeExamen,note) values('2AS250','A24252AS2MATH2ASD1','3.5');
-- 2025-05-04 16:37:00
insert into note(matricule,codeExamen,note) values('2AS251','A24252AS2MATH2ASD1','1');
-- 2025-05-04 16:37:00
insert into note(matricule,codeExamen,note) values('2AS252','A24252AS2MATH2ASD1','1');
-- 2025-05-04 16:37:00
insert into note(matricule,codeExamen,note) values('2AS253','A24252AS2MATH2ASD1','6.5');
-- 2025-05-04 16:37:00
insert into note(matricule,codeExamen,note) values('2AS254','A24252AS2MATH2ASD1','11');
-- 2025-05-04 16:37:00
insert into note(matricule,codeExamen,note) values('2AS255','A24252AS2MATH2ASD1','5');
-- 2025-05-04 16:37:01
insert into note(matricule,codeExamen,note) values('2AS256','A24252AS2MATH2ASD1','4.5');
-- 2025-05-04 16:37:01
insert into note(matricule,codeExamen,note) values('2AS2057','A24252AS2MATH2ASD1','0');
-- 2025-05-04 16:37:48
insert into note(matricule,codeExamen,note) values('2AS201','A24252AS2MATH2ASD2','12.50');
-- 2025-05-04 16:37:49
insert into note(matricule,codeExamen,note) values('2AS202','A24252AS2MATH2ASD2','11.00');
-- 2025-05-04 16:37:49
insert into note(matricule,codeExamen,note) values('2AS203','A24252AS2MATH2ASD2','8.00');
-- 2025-05-04 16:37:49
insert into note(matricule,codeExamen,note) values('2AS204','A24252AS2MATH2ASD2','8.00');
-- 2025-05-04 16:37:49
insert into note(matricule,codeExamen,note) values('2AS205','A24252AS2MATH2ASD2','10.50');
-- 2025-05-04 16:37:49
insert into note(matricule,codeExamen,note) values('2AS206','A24252AS2MATH2ASD2','7.50');
-- 2025-05-04 16:37:49
insert into note(matricule,codeExamen,note) values('2AS207','A24252AS2MATH2ASD2','10.00');
-- 2025-05-04 16:37:49
insert into note(matricule,codeExamen,note) values('2AS208','A24252AS2MATH2ASD2','18.00');
-- 2025-05-04 16:37:49
insert into note(matricule,codeExamen,note) values('2AS209','A24252AS2MATH2ASD2','6.00');
-- 2025-05-04 16:37:50
insert into note(matricule,codeExamen,note) values('2AS210','A24252AS2MATH2ASD2','6.00');
-- 2025-05-04 16:37:50
insert into note(matricule,codeExamen,note) values('2AS211','A24252AS2MATH2ASD2','11.50');
-- 2025-05-04 16:37:50
insert into note(matricule,codeExamen,note) values('2AS212','A24252AS2MATH2ASD2','13.25');
-- 2025-05-04 16:37:50
insert into note(matricule,codeExamen,note) values('2AS213','A24252AS2MATH2ASD2','16.00');
-- 2025-05-04 16:37:50
insert into note(matricule,codeExamen,note) values('2AS214','A24252AS2MATH2ASD2','8.00');
-- 2025-05-04 16:37:50
insert into note(matricule,codeExamen,note) values('2AS215','A24252AS2MATH2ASD2','5.00');
-- 2025-05-04 16:37:50
insert into note(matricule,codeExamen,note) values('2AS216','A24252AS2MATH2ASD2','10.00');
-- 2025-05-04 16:37:50
insert into note(matricule,codeExamen,note) values('2AS217','A24252AS2MATH2ASD2','9.00');
-- 2025-05-04 16:37:50
insert into note(matricule,codeExamen,note) values('2AS218','A24252AS2MATH2ASD2','14.50');
-- 2025-05-04 16:37:50
insert into note(matricule,codeExamen,note) values('2AS219','A24252AS2MATH2ASD2','14.50');
-- 2025-05-04 16:37:50
insert into note(matricule,codeExamen,note) values('2AS220','A24252AS2MATH2ASD2','5.00');
-- 2025-05-04 16:37:50
insert into note(matricule,codeExamen,note) values('2AS221','A24252AS2MATH2ASD2','17.00');
-- 2025-05-04 16:37:51
insert into note(matricule,codeExamen,note) values('2AS222','A24252AS2MATH2ASD2','18.50');
-- 2025-05-04 16:37:51
insert into note(matricule,codeExamen,note) values('2AS223','A24252AS2MATH2ASD2','10.50');
-- 2025-05-04 16:37:51
insert into note(matricule,codeExamen,note) values('2AS224','A24252AS2MATH2ASD2','5.50');
-- 2025-05-04 16:37:51
insert into note(matricule,codeExamen,note) values('2AS225','A24252AS2MATH2ASD2','9.00');
-- 2025-05-04 16:37:51
insert into note(matricule,codeExamen,note) values('2AS226','A24252AS2MATH2ASD2','13.00');
-- 2025-05-04 16:37:51
insert into note(matricule,codeExamen,note) values('2AS227','A24252AS2MATH2ASD2','0');
-- 2025-05-04 16:37:51
insert into note(matricule,codeExamen,note) values('2AS228','A24252AS2MATH2ASD2','13.00');
-- 2025-05-04 16:37:51
insert into note(matricule,codeExamen,note) values('2AS229','A24252AS2MATH2ASD2','17.50');
-- 2025-05-04 16:37:51
insert into note(matricule,codeExamen,note) values('2AS230','A24252AS2MATH2ASD2','7.50');
-- 2025-05-04 16:37:51
insert into note(matricule,codeExamen,note) values('2AS231','A24252AS2MATH2ASD2','10.50');
-- 2025-05-04 16:37:51
insert into note(matricule,codeExamen,note) values('2AS232','A24252AS2MATH2ASD2','7.00');
-- 2025-05-04 16:37:52
insert into note(matricule,codeExamen,note) values('2AS233','A24252AS2MATH2ASD2','15.50');
-- 2025-05-04 16:37:52
insert into note(matricule,codeExamen,note) values('2AS234','A24252AS2MATH2ASD2','10.50');
-- 2025-05-04 16:37:52
insert into note(matricule,codeExamen,note) values('2AS235','A24252AS2MATH2ASD2','7.00');
-- 2025-05-04 16:37:52
insert into note(matricule,codeExamen,note) values('2AS236','A24252AS2MATH2ASD2','7.50');
-- 2025-05-04 16:37:52
insert into note(matricule,codeExamen,note) values('2AS237','A24252AS2MATH2ASD2','11.50');
-- 2025-05-04 16:37:52
insert into note(matricule,codeExamen,note) values('2AS238','A24252AS2MATH2ASD2','8.00');
-- 2025-05-04 16:37:52
insert into note(matricule,codeExamen,note) values('2AS239','A24252AS2MATH2ASD2','9.00');
-- 2025-05-04 16:37:52
insert into note(matricule,codeExamen,note) values('2AS240','A24252AS2MATH2ASD2','10.00');
-- 2025-05-04 16:37:52
insert into note(matricule,codeExamen,note) values('2AS241','A24252AS2MATH2ASD2','12.50');
-- 2025-05-04 16:37:52
insert into note(matricule,codeExamen,note) values('2AS242','A24252AS2MATH2ASD2','9.50');
-- 2025-05-04 16:37:53
insert into note(matricule,codeExamen,note) values('2AS243','A24252AS2MATH2ASD2','9.00');
-- 2025-05-04 16:37:53
insert into note(matricule,codeExamen,note) values('2AS244','A24252AS2MATH2ASD2','9.25');
-- 2025-05-04 16:37:53
insert into note(matricule,codeExamen,note) values('2AS245','A24252AS2MATH2ASD2','16.00');
-- 2025-05-04 16:37:53
insert into note(matricule,codeExamen,note) values('2AS246','A24252AS2MATH2ASD2','7.00');
-- 2025-05-04 16:37:53
insert into note(matricule,codeExamen,note) values('2AS247','A24252AS2MATH2ASD2','7.00');
-- 2025-05-04 16:37:53
insert into note(matricule,codeExamen,note) values('2AS248','A24252AS2MATH2ASD2','9.50');
-- 2025-05-04 16:37:53
insert into note(matricule,codeExamen,note) values('2AS249','A24252AS2MATH2ASD2','13.50');
-- 2025-05-04 16:37:53
insert into note(matricule,codeExamen,note) values('2AS250','A24252AS2MATH2ASD2','0');
-- 2025-05-04 16:37:54
insert into note(matricule,codeExamen,note) values('2AS251','A24252AS2MATH2ASD2','0');
-- 2025-05-04 16:37:54
insert into note(matricule,codeExamen,note) values('2AS252','A24252AS2MATH2ASD2','12.50');
-- 2025-05-04 16:37:54
insert into note(matricule,codeExamen,note) values('2AS253','A24252AS2MATH2ASD2','8.50');
-- 2025-05-04 16:37:54
insert into note(matricule,codeExamen,note) values('2AS254','A24252AS2MATH2ASD2','10.00');
-- 2025-05-04 16:37:54
insert into note(matricule,codeExamen,note) values('2AS255','A24252AS2MATH2ASD2','15.50');
-- 2025-05-04 16:37:54
insert into note(matricule,codeExamen,note) values('2AS256','A24252AS2MATH2ASD2','6.00');
-- 2025-05-04 16:37:54
insert into note(matricule,codeExamen,note) values('2AS2057','A24252AS2MATH2ASD2','8.50');
-- 2025-05-04 16:38:58
insert into note(matricule,codeExamen,note) values('2AS201','A24252AS2MATH2ASC1','4');
-- 2025-05-04 16:38:59
insert into note(matricule,codeExamen,note) values('2AS202','A24252AS2MATH2ASC1','2');
-- 2025-05-04 16:38:59
insert into note(matricule,codeExamen,note) values('2AS203','A24252AS2MATH2ASC1','6');
-- 2025-05-04 16:38:59
insert into note(matricule,codeExamen,note) values('2AS204','A24252AS2MATH2ASC1','1');
-- 2025-05-04 16:38:59
insert into note(matricule,codeExamen,note) values('2AS205','A24252AS2MATH2ASC1','5');
-- 2025-05-04 16:38:59
insert into note(matricule,codeExamen,note) values('2AS206','A24252AS2MATH2ASC1','4');
-- 2025-05-04 16:38:59
insert into note(matricule,codeExamen,note) values('2AS207','A24252AS2MATH2ASC1','6.5');
-- 2025-05-04 16:38:59
insert into note(matricule,codeExamen,note) values('2AS208','A24252AS2MATH2ASC1','1.5');
-- 2025-05-04 16:38:59
insert into note(matricule,codeExamen,note) values('2AS209','A24252AS2MATH2ASC1','1.5');
-- 2025-05-04 16:39:00
insert into note(matricule,codeExamen,note) values('2AS210','A24252AS2MATH2ASC1','5.75');
-- 2025-05-04 16:39:00
insert into note(matricule,codeExamen,note) values('2AS211','A24252AS2MATH2ASC1','3');
-- 2025-05-04 16:39:00
insert into note(matricule,codeExamen,note) values('2AS212','A24252AS2MATH2ASC1','6.5');
-- 2025-05-04 16:39:00
insert into note(matricule,codeExamen,note) values('2AS213','A24252AS2MATH2ASC1','10');
-- 2025-05-04 16:39:00
insert into note(matricule,codeExamen,note) values('2AS214','A24252AS2MATH2ASC1','3');
-- 2025-05-04 16:39:00
insert into note(matricule,codeExamen,note) values('2AS215','A24252AS2MATH2ASC1','4.25');
-- 2025-05-04 16:39:00
insert into note(matricule,codeExamen,note) values('2AS216','A24252AS2MATH2ASC1','4.5');
-- 2025-05-04 16:39:00
insert into note(matricule,codeExamen,note) values('2AS217','A24252AS2MATH2ASC1','3');
-- 2025-05-04 16:39:01
insert into note(matricule,codeExamen,note) values('2AS218','A24252AS2MATH2ASC1','7.5');
-- 2025-05-04 16:39:01
insert into note(matricule,codeExamen,note) values('2AS219','A24252AS2MATH2ASC1','7');
-- 2025-05-04 16:39:01
insert into note(matricule,codeExamen,note) values('2AS220','A24252AS2MATH2ASC1','3');
-- 2025-05-04 16:39:01
insert into note(matricule,codeExamen,note) values('2AS221','A24252AS2MATH2ASC1','12');
-- 2025-05-04 16:39:01
insert into note(matricule,codeExamen,note) values('2AS222','A24252AS2MATH2ASC1','11');
-- 2025-05-04 16:39:01
insert into note(matricule,codeExamen,note) values('2AS223','A24252AS2MATH2ASC1','7');
-- 2025-05-04 16:39:01
insert into note(matricule,codeExamen,note) values('2AS224','A24252AS2MATH2ASC1','4');
-- 2025-05-04 16:39:01
insert into note(matricule,codeExamen,note) values('2AS225','A24252AS2MATH2ASC1','5');
-- 2025-05-04 16:39:01
insert into note(matricule,codeExamen,note) values('2AS226','A24252AS2MATH2ASC1','8');
-- 2025-05-04 16:39:01
insert into note(matricule,codeExamen,note) values('2AS227','A24252AS2MATH2ASC1','1');
-- 2025-05-04 16:39:01
insert into note(matricule,codeExamen,note) values('2AS228','A24252AS2MATH2ASC1','7');
-- 2025-05-04 16:39:02
insert into note(matricule,codeExamen,note) values('2AS229','A24252AS2MATH2ASC1','13');
-- 2025-05-04 16:39:02
insert into note(matricule,codeExamen,note) values('2AS230','A24252AS2MATH2ASC1','4');
-- 2025-05-04 16:39:02
insert into note(matricule,codeExamen,note) values('2AS231','A24252AS2MATH2ASC1','3');
-- 2025-05-04 16:39:02
insert into note(matricule,codeExamen,note) values('2AS232','A24252AS2MATH2ASC1','8');
-- 2025-05-04 16:39:02
insert into note(matricule,codeExamen,note) values('2AS233','A24252AS2MATH2ASC1','4');
-- 2025-05-04 16:39:02
insert into note(matricule,codeExamen,note) values('2AS234','A24252AS2MATH2ASC1','6');
-- 2025-05-04 16:39:02
insert into note(matricule,codeExamen,note) values('2AS235','A24252AS2MATH2ASC1','7');
-- 2025-05-04 16:39:02
insert into note(matricule,codeExamen,note) values('2AS236','A24252AS2MATH2ASC1','4');
-- 2025-05-04 16:39:02
insert into note(matricule,codeExamen,note) values('2AS237','A24252AS2MATH2ASC1','6');
-- 2025-05-04 16:39:02
insert into note(matricule,codeExamen,note) values('2AS238','A24252AS2MATH2ASC1','4');
-- 2025-05-04 16:39:03
insert into note(matricule,codeExamen,note) values('2AS239','A24252AS2MATH2ASC1','8');
-- 2025-05-04 16:39:03
insert into note(matricule,codeExamen,note) values('2AS240','A24252AS2MATH2ASC1','4');
-- 2025-05-04 16:39:03
insert into note(matricule,codeExamen,note) values('2AS241','A24252AS2MATH2ASC1','8');
-- 2025-05-04 16:39:03
insert into note(matricule,codeExamen,note) values('2AS242','A24252AS2MATH2ASC1','2');
-- 2025-05-04 16:39:03
insert into note(matricule,codeExamen,note) values('2AS243','A24252AS2MATH2ASC1','8');
-- 2025-05-04 16:39:03
insert into note(matricule,codeExamen,note) values('2AS244','A24252AS2MATH2ASC1','7');
-- 2025-05-04 16:39:03
insert into note(matricule,codeExamen,note) values('2AS245','A24252AS2MATH2ASC1','4');
-- 2025-05-04 16:39:03
insert into note(matricule,codeExamen,note) values('2AS246','A24252AS2MATH2ASC1','4');
-- 2025-05-04 16:39:03
insert into note(matricule,codeExamen,note) values('2AS247','A24252AS2MATH2ASC1','4');
-- 2025-05-04 16:39:03
insert into note(matricule,codeExamen,note) values('2AS248','A24252AS2MATH2ASC1','3');
-- 2025-05-04 16:39:03
insert into note(matricule,codeExamen,note) values('2AS249','A24252AS2MATH2ASC1','10');
-- 2025-05-04 16:39:04
insert into note(matricule,codeExamen,note) values('2AS250','A24252AS2MATH2ASC1','1');
-- 2025-05-04 16:39:04
insert into note(matricule,codeExamen,note) values('2AS251','A24252AS2MATH2ASC1','2');
-- 2025-05-04 16:39:04
insert into note(matricule,codeExamen,note) values('2AS252','A24252AS2MATH2ASC1','1');
-- 2025-05-04 16:39:04
insert into note(matricule,codeExamen,note) values('2AS253','A24252AS2MATH2ASC1','3');
-- 2025-05-04 16:39:04
insert into note(matricule,codeExamen,note) values('2AS254','A24252AS2MATH2ASC1','8');
-- 2025-05-04 16:39:04
insert into note(matricule,codeExamen,note) values('2AS255','A24252AS2MATH2ASC1','8');
-- 2025-05-04 16:39:04
insert into note(matricule,codeExamen,note) values('2AS256','A24252AS2MATH2ASC1','7');
-- 2025-05-04 16:39:04
insert into note(matricule,codeExamen,note) values('2AS2057','A24252AS2MATH2ASC1','0');
-- 2025-05-04 16:39:59
insert into note(matricule,codeExamen,note) values('2AS201','A24252AS2MATH2ASC2','11.25');
-- 2025-05-04 16:39:59
insert into note(matricule,codeExamen,note) values('2AS202','A24252AS2MATH2ASC2','10.5');
-- 2025-05-04 16:39:59
insert into note(matricule,codeExamen,note) values('2AS203','A24252AS2MATH2ASC2','10');
-- 2025-05-04 16:40:00
insert into note(matricule,codeExamen,note) values('2AS204','A24252AS2MATH2ASC2','8');
-- 2025-05-04 16:40:00
insert into note(matricule,codeExamen,note) values('2AS205','A24252AS2MATH2ASC2','11');
-- 2025-05-04 16:40:00
insert into note(matricule,codeExamen,note) values('2AS206','A24252AS2MATH2ASC2','10.5');
-- 2025-05-04 16:40:00
insert into note(matricule,codeExamen,note) values('2AS207','A24252AS2MATH2ASC2','6.5');
-- 2025-05-04 16:40:00
insert into note(matricule,codeExamen,note) values('2AS208','A24252AS2MATH2ASC2','17');
-- 2025-05-04 16:40:00
insert into note(matricule,codeExamen,note) values('2AS209','A24252AS2MATH2ASC2','11');
-- 2025-05-04 16:40:00
insert into note(matricule,codeExamen,note) values('2AS210','A24252AS2MATH2ASC2','10.5');
-- 2025-05-04 16:40:00
insert into note(matricule,codeExamen,note) values('2AS211','A24252AS2MATH2ASC2','14');
-- 2025-05-04 16:40:01
insert into note(matricule,codeExamen,note) values('2AS212','A24252AS2MATH2ASC2','14');
-- 2025-05-04 16:40:01
insert into note(matricule,codeExamen,note) values('2AS213','A24252AS2MATH2ASC2','17.5');
-- 2025-05-04 16:40:01
insert into note(matricule,codeExamen,note) values('2AS214','A24252AS2MATH2ASC2','14.5');
-- 2025-05-04 16:40:01
insert into note(matricule,codeExamen,note) values('2AS215','A24252AS2MATH2ASC2','12');
-- 2025-05-04 16:40:01
insert into note(matricule,codeExamen,note) values('2AS216','A24252AS2MATH2ASC2','15');
-- 2025-05-04 16:40:01
insert into note(matricule,codeExamen,note) values('2AS217','A24252AS2MATH2ASC2','15');
-- 2025-05-04 16:40:01
insert into note(matricule,codeExamen,note) values('2AS218','A24252AS2MATH2ASC2','9.5');
-- 2025-05-04 16:40:01
insert into note(matricule,codeExamen,note) values('2AS219','A24252AS2MATH2ASC2','12');
-- 2025-05-04 16:40:02
insert into note(matricule,codeExamen,note) values('2AS220','A24252AS2MATH2ASC2','5');
-- 2025-05-04 16:40:02
insert into note(matricule,codeExamen,note) values('2AS221','A24252AS2MATH2ASC2','19.5');
-- 2025-05-04 16:40:02
insert into note(matricule,codeExamen,note) values('2AS222','A24252AS2MATH2ASC2','19.5');
-- 2025-05-04 16:40:02
insert into note(matricule,codeExamen,note) values('2AS223','A24252AS2MATH2ASC2','14.5');
-- 2025-05-04 16:40:02
insert into note(matricule,codeExamen,note) values('2AS224','A24252AS2MATH2ASC2','13.5');
-- 2025-05-04 16:40:02
insert into note(matricule,codeExamen,note) values('2AS225','A24252AS2MATH2ASC2','11');
-- 2025-05-04 16:40:02
insert into note(matricule,codeExamen,note) values('2AS226','A24252AS2MATH2ASC2','12');
-- 2025-05-04 16:40:02
insert into note(matricule,codeExamen,note) values('2AS227','A24252AS2MATH2ASC2','0');
-- 2025-05-04 16:40:02
insert into note(matricule,codeExamen,note) values('2AS228','A24252AS2MATH2ASC2','10.5');
-- 2025-05-04 16:40:02
insert into note(matricule,codeExamen,note) values('2AS229','A24252AS2MATH2ASC2','20');
-- 2025-05-04 16:40:03
insert into note(matricule,codeExamen,note) values('2AS230','A24252AS2MATH2ASC2','15.5');
-- 2025-05-04 16:40:03
insert into note(matricule,codeExamen,note) values('2AS231','A24252AS2MATH2ASC2','10');
-- 2025-05-04 16:40:03
insert into note(matricule,codeExamen,note) values('2AS232','A24252AS2MATH2ASC2','8');
-- 2025-05-04 16:40:03
insert into note(matricule,codeExamen,note) values('2AS233','A24252AS2MATH2ASC2','13');
-- 2025-05-04 16:40:03
insert into note(matricule,codeExamen,note) values('2AS234','A24252AS2MATH2ASC2','13');
-- 2025-05-04 16:40:03
insert into note(matricule,codeExamen,note) values('2AS235','A24252AS2MATH2ASC2','9.5');
-- 2025-05-04 16:40:03
insert into note(matricule,codeExamen,note) values('2AS236','A24252AS2MATH2ASC2','11.25');
-- 2025-05-04 16:40:03
insert into note(matricule,codeExamen,note) values('2AS237','A24252AS2MATH2ASC2','16');
-- 2025-05-04 16:40:03
insert into note(matricule,codeExamen,note) values('2AS238','A24252AS2MATH2ASC2','9.5');
-- 2025-05-04 16:40:04
insert into note(matricule,codeExamen,note) values('2AS239','A24252AS2MATH2ASC2','11');
-- 2025-05-04 16:40:04
insert into note(matricule,codeExamen,note) values('2AS240','A24252AS2MATH2ASC2','11');
-- 2025-05-04 16:40:04
insert into note(matricule,codeExamen,note) values('2AS241','A24252AS2MATH2ASC2','13');
-- 2025-05-04 16:40:04
insert into note(matricule,codeExamen,note) values('2AS242','A24252AS2MATH2ASC2','16.25');
-- 2025-05-04 16:40:04
insert into note(matricule,codeExamen,note) values('2AS243','A24252AS2MATH2ASC2','12');
-- 2025-05-04 16:40:04
insert into note(matricule,codeExamen,note) values('2AS244','A24252AS2MATH2ASC2','6.5');
-- 2025-05-04 16:40:04
insert into note(matricule,codeExamen,note) values('2AS245','A24252AS2MATH2ASC2','12.5');
-- 2025-05-04 16:40:04
insert into note(matricule,codeExamen,note) values('2AS246','A24252AS2MATH2ASC2','10');
-- 2025-05-04 16:40:04
insert into note(matricule,codeExamen,note) values('2AS247','A24252AS2MATH2ASC2','8');
-- 2025-05-04 16:40:04
insert into note(matricule,codeExamen,note) values('2AS248','A24252AS2MATH2ASC2','12');
-- 2025-05-04 16:40:05
insert into note(matricule,codeExamen,note) values('2AS249','A24252AS2MATH2ASC2','19.5');
-- 2025-05-04 16:40:05
insert into note(matricule,codeExamen,note) values('2AS250','A24252AS2MATH2ASC2','10');
-- 2025-05-04 16:40:05
insert into note(matricule,codeExamen,note) values('2AS251','A24252AS2MATH2ASC2','0');
-- 2025-05-04 16:40:05
insert into note(matricule,codeExamen,note) values('2AS252','A24252AS2MATH2ASC2','10.5');
-- 2025-05-04 16:40:05
insert into note(matricule,codeExamen,note) values('2AS253','A24252AS2MATH2ASC2','11.5');
-- 2025-05-04 16:40:05
insert into note(matricule,codeExamen,note) values('2AS254','A24252AS2MATH2ASC2','8');
-- 2025-05-04 16:40:05
insert into note(matricule,codeExamen,note) values('2AS255','A24252AS2MATH2ASC2','14');
-- 2025-05-04 16:40:05
insert into note(matricule,codeExamen,note) values('2AS256','A24252AS2MATH2ASC2','13');
-- 2025-05-04 16:40:05
insert into note(matricule,codeExamen,note) values('2AS2057','A24252AS2MATH2ASC2','10');
-- 2025-05-04 16:41:43
update note set note='11' where idNote='1501' ;
-- 2025-05-04 17:00:38
update eleve set matricule='2AS257',nom='Inconnu',isme='',sexe='M',dateNaissance='2000-01-01',lieuNaissance='Boghe',adresse='Boghe',nni='NNI2AS2057' where matricule='2AS2057';
-- 2025-05-04 17:00:38
update eleve set matricule='2AS257',nom='Inconnu',isme='',sexe='M',dateNaissance='2000-01-01',lieuNaissance='Boghe',adresse='Boghe',nni='NNI2AS2057' where matricule='2AS2057';
-- 2025-05-06 12:36:04
update eleve set matricule='5d245',nom='Mohamed Abdourahmane Cheick Sidi Mocktar Mahmoude',isme='محمد عبدالرحمن الشيخ سدإ مختار محمد',sexe='M',dateNaissance='',lieuNaissance='',adresse='',nni='00000145' where matricule='5d245';
-- 2025-05-06 12:37:22
update eleve set matricule='5d259',nom='Salamata Abdourahmani Sy',isme='سلمتا عبدالرحمن سي',sexe='M',dateNaissance='',lieuNaissance='',adresse='',nni='00000159' where matricule='5d259';
-- 2025-05-06 12:38:28
update eleve set matricule='5LM046',nom='Abdallahi Mohamed Vadel',isme='عبدالله محمد فاضل',sexe='M',dateNaissance='',lieuNaissance='',adresse='',nni='NNI5LM046' where matricule='5LM046';
-- 2025-05-06 16:20:43
update eleve set matricule='5d356',nom='Aisse Amadou N''gaide',isme='عيستا  أمدو انكيدي',sexe='M',dateNaissance='',lieuNaissance='',adresse='',nni='00000356' where matricule='5d356';
-- 2025-05-06 17:04:10
update eleve set matricule='5LM056',nom='Inconnu1',isme='',sexe='M',dateNaissance='2000-01-02',lieuNaissance='Boghe',adresse='Boghe',nni='NNI5LM056' where matricule='5LM056';
-- 2025-05-06 17:04:10
update eleve set matricule='5LM056',nom='Inconnu1',isme='',sexe='M',dateNaissance='2000-01-02',lieuNaissance='Boghe',adresse='Boghe',nni='NNI5LM056' where matricule='5LM056';
-- 2025-05-06 17:10:40
update eleve set matricule='5LM056',nom='Inconnu1',isme='',sexe='M',dateNaissance='2000-01-03',lieuNaissance='Boghe',adresse='Boghe',nni='NNI5LM056' where matricule='5LM056';
-- 2025-05-06 17:11:17
update eleve set matricule='5LM055',nom='Boudra / Deyali',isme='بودره \ ديالي',sexe='F',dateNaissance='2000-01-01',lieuNaissance='',adresse='',nni='NNI5LM055' where matricule='undefined';
-- 2025-05-06 17:11:17
update eleve set matricule='5LM055',nom='Boudra / Deyali',isme='بودره \ ديالي',sexe='F',dateNaissance='2000-01-01',lieuNaissance='',adresse='',nni='NNI5LM055' where matricule='5LM055';
-- 2025-05-06 17:14:20
update eleve set matricule='5LM056',nom='Inconnu',isme='',sexe='M',dateNaissance='2000-01-03',lieuNaissance='Boghe',adresse='Boghe',nni='NNI5LM056' where matricule='5LM056';
-- 2025-05-06 17:14:43
update eleve set matricule='5LM056',nom='Inconnu1',isme='',sexe='M',dateNaissance='2000-01-03',lieuNaissance='Boghe',adresse='Boghe',nni='NNI5LM056' where matricule='5LM056';
-- 2025-05-06 17:17:03
update eleve set matricule='5LM056',nom='Inconnu1',isme='',sexe='M',dateNaissance='2000-01-03',lieuNaissance='Boghe',adresse='Boghe',nni='NNI5LM056' where matricule='undefined';
-- 2025-05-06 17:17:03
update eleve set matricule='5LM056',nom='Inconnu1',isme='',sexe='M',dateNaissance='2000-01-03',lieuNaissance='Boghe',adresse='Boghe',nni='NNI5LM056' where matricule='5LM056';
-- 2025-05-06 17:18:09
update eleve set matricule='5LM055',nom='Boudra / Deyali',isme='بودره \ ديالي',sexe='F',dateNaissance='2000-01-01',lieuNaissance='',adresse='',nni='NNI5LM055' where matricule='5LM055';
-- 2025-05-06 17:24:00
update eleve set matricule='5LM056',nom='Inconnu1',isme='',sexe='M',dateNaissance='2000-01-03',lieuNaissance='Boghe',adresse='Boghe',nni='NNI5LM056' where matricule='5LM056';
-- 2025-05-06 17:33:11
update eleve set matricule='5d1044',nom='Aminata Moussa Diallo',isme='ءمنتا موسي جاو',sexe='M',dateNaissance='2010-12-31',lieuNaissance='',adresse='Boghe',nni='00000044' where matricule='5d1044';
-- 2025-05-06 17:33:39
update eleve set matricule='5d1044',nom='Aminata',isme='ءمنتا موسي جاو',sexe='M',dateNaissance='2010-12-31',lieuNaissance='',adresse='Boghe',nni='00000044' where matricule='5d1044';
-- 2025-05-06 17:35:40
update eleve set matricule='5d1044',nom='Aminata Moussa Diallo',isme='امينتا موسى جالو ',sexe='M',dateNaissance='2010-12-31',lieuNaissance='',adresse='Boghe',nni='00000044' where matricule='5d1044';
-- 2025-05-07 14:21:47
insert into professeur(matriculeProfesseur,nomProfesseur,ismeProfesseur,sexeProfesseur,adresseProfesseur,nniProfesseur,codeSpecialite,dateDebutProfesseur,dateArriveeProfesseur,telProfesseur,emailProfesseur,statutProfesseur) values('64522259','Abdoul Dia','عبدول جا ','M','Boghé','611189656','mpc','2000-01-01','2000-01-01','45622823','abdoul@gmail','actif');
-- 2025-05-07 14:29:50
update professeur set matriculeProfesseur='124871D',nomProfesseur='Ibrahima Abou Lam',ismeProfesseur='إبراهيم أبو لام ',sexeProfesseur='M',adresseProfesseur='',nniProfesseur='9872324575',codeSpecialite='mpc',dateDebutProfesseur='2024-10-01',dateArriveeProfesseur='2024-12-01',telProfesseur='',emailProfesseur='',statutProfesseur='actif' where matriculeProfesseur='124871D';
-- 2025-05-07 14:30:32
update professeur set matriculeProfesseur='124871D',nomProfesseur='Ibrahima Abou Lam',ismeProfesseur='إبراهيم أبو لام ',sexeProfesseur='M',adresseProfesseur='Boghe',nniProfesseur='9872324575',codeSpecialite='mpc',dateDebutProfesseur='2024-10-01',dateArriveeProfesseur='2024-12-01',telProfesseur='41916418',emailProfesseur='ibrahimaaboulam@gmail.com',statutProfesseur='actif' where matriculeProfesseur='124871D';
-- 2025-05-07 14:34:21
update professeur set matriculeProfesseur='64522259',nomProfesseur='Abdoul Dia',ismeProfesseur='عبدول جا ',sexeProfesseur='M',adresseProfesseur='Boghé',nniProfesseur='611189656',codeSpecialite='mpc',dateDebutProfesseur='2000-01-01',dateArriveeProfesseur='2000-01-01',telProfesseur='45622823',emailProfesseur='abdoul@gmail',statutProfesseur='actif' where matriculeProfesseur='64522259';
-- 2025-05-07 14:34:37
update professeur set matriculeProfesseur='64522259',nomProfesseur='Abdoul Dia',ismeProfesseur='عبدول جا ',sexeProfesseur='M',adresseProfesseur='Boghé',nniProfesseur='611189656',codeSpecialite='mpc',dateDebutProfesseur='2000-01-01',dateArriveeProfesseur='2000-01-01',telProfesseur='45622823',emailProfesseur='abdoul@gmail.com',statutProfesseur='actif' where matriculeProfesseur='64522259';
-- 2025-05-07 15:10:46
update professeur set matriculeProfesseur='124871D',nomProfesseur='Ibrahima Abou Lam',ismeProfesseur='إبراهيم أبو لام ',sexeProfesseur='M',adresseProfesseur='Boghe Thialgou',nniProfesseur='9872324575',codeSpecialite='mpc',dateDebutProfesseur='2024-10-01',dateArriveeProfesseur='2024-12-01',telProfesseur='41916418',emailProfesseur='ibrahimaaboulam@gmail.com',statutProfesseur='actif' where matriculeProfesseur='124871D';
-- 2025-05-07 18:37:18
update eleve set matricule='2AS207',nom='Aissé Bassirou Lam',isme='عيسى باسيرو لام',sexe='F',dateNaissance='2000-01-01',lieuNaissance='',adresse='',nni='NNI2AS207' where matricule='2AS207';
-- 2025-05-07 18:38:29
update eleve set matricule='2AS206',nom='Zeinbou Babacar Djibi Sarr',isme='زينبو بابكر جيبي صار',sexe='F',dateNaissance='2000-01-01',lieuNaissance='',adresse='',nni='NNI2AS206' where matricule='2AS206';
-- 2025-05-07 18:39:41
update eleve set matricule='2AS205',nom='Ibrahima Adama Ndongo',isme='ابراهيما آدما اندوكو',sexe='M',dateNaissance='2000-01-01',lieuNaissance='',adresse='',nni='NNI2AS205' where matricule='2AS205';
-- 2025-05-07 18:40:52
update eleve set matricule='2AS214',nom='Houlèye Med Yahya N''gaidé',isme='حولي محمد يحي أنكيدي ',sexe='F',dateNaissance='2000-01-01',lieuNaissance='',adresse='',nni='NNI2AS214' where matricule='2AS214';
-- 2025-05-07 18:42:05
update eleve set matricule='2AS220',nom='Coumba Wagne',isme='كومبا وآني ',sexe='F',dateNaissance='2000-01-01',lieuNaissance='',adresse='',nni='NNI2AS220' where matricule='2AS220';
-- 2025-05-07 18:52:31
update eleve set matricule='5d1036',nom='Mody Ibrahima Thiam',isme='مودي ابراهيم تسام',sexe='M',dateNaissance='2010-12-31',lieuNaissance='',adresse='Boghe',nni='00000036' where matricule='5d1036';
-- 2025-05-07 18:53:16
update eleve set matricule='5d1036',nom='Mody Ibrahima Thiam',isme='مودي إبراهيما اتيام ',sexe='M',dateNaissance='2010-12-31',lieuNaissance='',adresse='Boghe',nni='00000036' where matricule='5d1036';
-- 2025-05-07 18:59:13
update eleve set matricule='2AS203',nom='Houly Allassane N''diaye',isme='هولي الاسان انجاي ',sexe='F',dateNaissance='2000-01-01',lieuNaissance='',adresse='',nni='NNI2AS203' where matricule='2AS203';
-- 2025-05-07 19:02:12
update eleve set matricule='5d232',nom='Aissata Amadou Sao',isme='عائشة أمدو صاو ',sexe='M',dateNaissance='2000-01-01',lieuNaissance='',adresse='',nni='00000132' where matricule='5d232';
-- 2025-05-07 19:03:49
update eleve set matricule='5d232',nom='Aissata Amadou Sao',isme='عيستا أمدو صاو ',sexe='M',dateNaissance='2000-01-01',lieuNaissance='',adresse='',nni='00000132' where matricule='5d232';
-- 2025-05-08 20:34:11
update examen set codeExamen='A24255D1PC5DD2',codeClasseMatiere='PC5D',codeSalleClasse='A24255D1',codeEvaluation='D2',
        dateExamen='',statutExamen='0',heureDebutExamen='00:00:00',heureFinExamen='00:00:00' where codeExamen='A24255D1PC5DD2';
-- 2025-05-08 20:35:22
update examen set codeExamen='A24255D1PC5DD2',codeClasseMatiere='PC5D',codeSalleClasse='A24255D1',codeEvaluation='D2',
        dateExamen='',statutExamen='1',heureDebutExamen='00:00:00',heureFinExamen='00:00:00' where codeExamen='A24255D1PC5DD2';
-- 2025-05-10 21:25:44
INSERT INTO professeur_matiere (codeMatiere, matriculeProfesseur) VALUES ('64522259', 'SN');
-- 2025-05-10 21:28:41
update professeur set matriculeProfesseur='6452225',nomProfesseur='Abdoul Dia',ismeProfesseur='عبدول جا ',sexeProfesseur='M',adresseProfesseur='Boghé',nniProfesseur='611189656',codeSpecialite='mpc',dateDebutProfesseur='2000-01-01',dateArriveeProfesseur='2000-01-01',telProfesseur='45622823',emailProfesseur='abdoul@gmail.com',statutProfesseur='actif' where matriculeProfesseur='64522259';
-- 2025-05-10 21:29:17
INSERT INTO professeur_matiere (codeMatiere, matriculeProfesseur) VALUES ('6452225', 'SN');
-- 2025-05-10 21:32:33
INSERT INTO professeur_matiere (codeMatiere, matriculeProfesseur) VALUES ('SN', '6452225');
-- 2025-05-11 14:17:59
INSERT INTO professeur_matiere (codeMatiere, matriculeProfesseur) VALUES ('SN', '6452225');
-- 2025-05-11 14:28:54
INSERT INTO professeur_matiere (codeMatiere, matriculeProfesseur) VALUES ('PC', '124871D');
-- 2025-05-11 14:29:44
INSERT INTO professeur_matiere (codeMatiere, matriculeProfesseur) VALUES ('MATH', '124871D');
-- 2025-05-11 14:43:14
UPDATE professeur_matiere SET codeMatiere = 'SN', matriculeProfesseur = '124871D' WHERE codeMatiere = 'PC' AND matriculeProfesseur = '124871D';
-- 2025-05-11 14:43:30
UPDATE professeur_matiere SET codeMatiere = 'PC', matriculeProfesseur = '124871D' WHERE codeMatiere = 'SN' AND matriculeProfesseur = '124871D';
-- 2025-05-11 14:43:44
INSERT INTO professeur_matiere (codeMatiere, matriculeProfesseur) VALUES ('SN', '124871D');
-- 2025-05-11 14:43:53
DELETE FROM professeur_matiere WHERE codeMatiere = 'SN' AND matriculeProfesseur = '124871D';
-- 2025-05-12 19:06:38
UPDATE enseigner SET matriculeProfesseur = '124871D', codeMatiere = 'PC', codeSalleClasse = 'A24255LM' WHERE idEnseigner = '2';
-- 2025-05-12 19:07:03
INSERT INTO enseigner (matriculeProfesseur, codeMatiere, codeSalleClasse) VALUES ('124871D', 'PC', 'A24255D1');
-- 2025-05-12 19:07:31
DELETE FROM enseigner WHERE idEnseigner = '3';
-- 2025-05-13 20:25:45
update note set note='15.25' where idNote='1028' ;
-- 2025-05-13 20:31:26
update note set note='9.5' where idNote='1036' ;
-- 2025-05-13 20:37:48
update note set note='9' where idNote='1267' ;
-- 2025-05-27 17:05:04
insert into eleve(matricule,nom,isme,sexe,dateNaissance,lieuNaissance,adresse,nni) values('699878972','Yahya Abdoulaye Lam','يحي عبدالله لام ','M','2000-01-01','Boghe','Boghe','535563839');
-- 2025-05-27 17:05:44
update eleve set matricule='699878972',nom='Yahya Abdoulaye Lam',isme='يحي عبدالله لام ',sexe='M',dateNaissance='2000-01-01',lieuNaissance='Boghe',adresse='Thialgou',nni='535563839' where matricule='699878972';
-- 2025-05-27 17:06:18
delete from eleve where matricule='699878972';
-- 2025-05-27 17:13:40
insert into eleve(matricule,nom,isme,sexe,dateNaissance,lieuNaissance,adresse,nni) values('31413699','Abdou Kane','عبد كاني ','M','2000-01-01','','','3566323263');
-- 2025-05-27 17:14:08
update eleve set matricule='31413699',nom='Abdou Kane',isme='عبد كان ',sexe='M',dateNaissance='2000-01-01',lieuNaissance='',adresse='',nni='3566323263' where matricule='31413699';
-- 2025-05-27 17:16:47
insert into inscrit(idInscrit,matricule,codeSalleClasse,numeroInscrit,typeInscrit,dateInscription) values('','31413699','A24252AS2','58','passant','2025-05-27');
-- 2025-05-28 10:56:06
update eleve set matricule='2AS202',nom='Coumba Abdou Salam Sy',isme='كمبا عبد السلام سي',sexe='F',dateNaissance='2000-01-01',lieuNaissance='',adresse='',nni='NNI2AS202' where matricule='2AS202';
-- 2025-06-02 21:04:12
insert into eleve(matricule,nom,isme,sexe,dateNaissance,lieuNaissance,adresse,nni) values('662671','Ibrahima Lam','إبراهيما لام ','M','2000-01-01','','','56371635531');
-- 2025-06-03 10:26:28
insert into note(matricule,codeExamen,note) values('5d1001','A24255D1MATH5DC1','0');
-- 2025-06-03 10:26:28
insert into note(matricule,codeExamen,note) values('5d1002','A24255D1MATH5DC1','0');
-- 2025-06-03 10:26:28
insert into note(matricule,codeExamen,note) values('5d1003','A24255D1MATH5DC1','0');
-- 2025-06-03 10:26:28
insert into note(matricule,codeExamen,note) values('5d1004','A24255D1MATH5DC1','0');
-- 2025-06-03 10:26:28
insert into note(matricule,codeExamen,note) values('5d1005','A24255D1MATH5DC1','0');
-- 2025-06-03 10:26:28
insert into note(matricule,codeExamen,note) values('5d1006','A24255D1MATH5DC1','0');
-- 2025-06-03 10:26:28
insert into note(matricule,codeExamen,note) values('5d1007','A24255D1MATH5DC1','0');
-- 2025-06-03 10:26:28
insert into note(matricule,codeExamen,note) values('5d1008','A24255D1MATH5DC1','0');
-- 2025-06-03 10:26:28
insert into note(matricule,codeExamen,note) values('5d1009','A24255D1MATH5DC1','0');
-- 2025-06-03 10:26:28
insert into note(matricule,codeExamen,note) values('5d1010','A24255D1MATH5DC1','0');
-- 2025-06-03 10:26:28
insert into note(matricule,codeExamen,note) values('5d1011','A24255D1MATH5DC1','0');
-- 2025-06-03 10:26:28
insert into note(matricule,codeExamen,note) values('5d1012','A24255D1MATH5DC1','0');
-- 2025-06-03 10:26:28
insert into note(matricule,codeExamen,note) values('5d1013','A24255D1MATH5DC1','0');
-- 2025-06-03 10:26:29
insert into note(matricule,codeExamen,note) values('5d1014','A24255D1MATH5DC1','0');
-- 2025-06-03 10:26:29
insert into note(matricule,codeExamen,note) values('5d1015','A24255D1MATH5DC1','0');
-- 2025-06-03 10:26:29
insert into note(matricule,codeExamen,note) values('5d1016','A24255D1MATH5DC1','0');
-- 2025-06-03 10:26:29
insert into note(matricule,codeExamen,note) values('5d1017','A24255D1MATH5DC1','0');
-- 2025-06-03 10:26:29
insert into note(matricule,codeExamen,note) values('5d1018','A24255D1MATH5DC1','0');
-- 2025-06-03 10:26:29
insert into note(matricule,codeExamen,note) values('5d1019','A24255D1MATH5DC1','0');
-- 2025-06-03 10:26:29
insert into note(matricule,codeExamen,note) values('5d1020','A24255D1MATH5DC1','0');
-- 2025-06-03 10:26:29
insert into note(matricule,codeExamen,note) values('5d1021','A24255D1MATH5DC1','0');
-- 2025-06-03 10:26:29
insert into note(matricule,codeExamen,note) values('5d1022','A24255D1MATH5DC1','0');
-- 2025-06-03 10:26:29
insert into note(matricule,codeExamen,note) values('5d1023','A24255D1MATH5DC1','0');
-- 2025-06-03 10:26:29
insert into note(matricule,codeExamen,note) values('5d1024','A24255D1MATH5DC1','0');
-- 2025-06-03 10:26:29
insert into note(matricule,codeExamen,note) values('5d1025','A24255D1MATH5DC1','0');
-- 2025-06-03 10:26:29
insert into note(matricule,codeExamen,note) values('5d1026','A24255D1MATH5DC1','0');
-- 2025-06-03 10:26:29
insert into note(matricule,codeExamen,note) values('5d1027','A24255D1MATH5DC1','0');
-- 2025-06-03 10:26:29
insert into note(matricule,codeExamen,note) values('5d1028','A24255D1MATH5DC1','0');
-- 2025-06-03 10:26:29
insert into note(matricule,codeExamen,note) values('5d1029','A24255D1MATH5DC1','0');
-- 2025-06-03 10:26:29
insert into note(matricule,codeExamen,note) values('5d1030','A24255D1MATH5DC1','0');
-- 2025-06-03 10:26:30
insert into note(matricule,codeExamen,note) values('5d1031','A24255D1MATH5DC1','0');
-- 2025-06-03 10:26:30
insert into note(matricule,codeExamen,note) values('5d1032','A24255D1MATH5DC1','0');
-- 2025-06-03 10:26:30
insert into note(matricule,codeExamen,note) values('5d1033','A24255D1MATH5DC1','0');
-- 2025-06-03 10:26:30
insert into note(matricule,codeExamen,note) values('5d1034','A24255D1MATH5DC1','0');
-- 2025-06-03 10:26:30
insert into note(matricule,codeExamen,note) values('5d1035','A24255D1MATH5DC1','0');
-- 2025-06-03 10:26:30
insert into note(matricule,codeExamen,note) values('5d1036','A24255D1MATH5DC1','0');
-- 2025-06-03 10:26:30
insert into note(matricule,codeExamen,note) values('5d1037','A24255D1MATH5DC1','0');
-- 2025-06-03 10:26:30
insert into note(matricule,codeExamen,note) values('5d1038','A24255D1MATH5DC1','0');
-- 2025-06-03 10:26:30
insert into note(matricule,codeExamen,note) values('5d1039','A24255D1MATH5DC1','0');
-- 2025-06-03 10:26:30
insert into note(matricule,codeExamen,note) values('5d1040','A24255D1MATH5DC1','0');
-- 2025-06-03 10:26:30
insert into note(matricule,codeExamen,note) values('5d1041','A24255D1MATH5DC1','0');
-- 2025-06-03 10:26:30
insert into note(matricule,codeExamen,note) values('5d1042','A24255D1MATH5DC1','0');
-- 2025-06-03 10:26:30
insert into note(matricule,codeExamen,note) values('5d1043','A24255D1MATH5DC1','0');
-- 2025-06-03 10:26:30
insert into note(matricule,codeExamen,note) values('5d1044','A24255D1MATH5DC1','0');
-- 2025-06-03 10:26:30
insert into note(matricule,codeExamen,note) values('5d1045','A24255D1MATH5DC1','0');
-- 2025-06-03 10:26:30
insert into note(matricule,codeExamen,note) values('5d1046','A24255D1MATH5DC1','0');
-- 2025-06-03 10:26:30
insert into note(matricule,codeExamen,note) values('5d1047','A24255D1MATH5DC1','0');
-- 2025-06-03 10:26:30
insert into note(matricule,codeExamen,note) values('5d1048','A24255D1MATH5DC1','0');
-- 2025-06-03 10:26:31
insert into note(matricule,codeExamen,note) values('5d1049','A24255D1MATH5DC1','0');
-- 2025-06-03 10:26:31
insert into note(matricule,codeExamen,note) values('5d1050','A24255D1MATH5DC1','0');
-- 2025-06-03 10:26:31
insert into note(matricule,codeExamen,note) values('5d1051','A24255D1MATH5DC1','0');
-- 2025-06-03 10:26:31
insert into note(matricule,codeExamen,note) values('5d1052','A24255D1MATH5DC1','0');
-- 2025-06-03 10:26:31
insert into note(matricule,codeExamen,note) values('5d1053','A24255D1MATH5DC1','0');
-- 2025-06-03 10:26:31
insert into note(matricule,codeExamen,note) values('5d1054','A24255D1MATH5DC1','0');
-- 2025-06-03 10:26:31
insert into note(matricule,codeExamen,note) values('5d1055','A24255D1MATH5DC1','0');
-- 2025-06-03 10:26:31
insert into note(matricule,codeExamen,note) values('5d1056','A24255D1MATH5DC1','0');
-- 2025-06-03 10:26:31
insert into note(matricule,codeExamen,note) values('5d1057','A24255D1MATH5DC1','0');
-- 2025-06-03 10:26:31
insert into note(matricule,codeExamen,note) values('5d1058','A24255D1MATH5DC1','0');
-- 2025-06-03 10:26:31
insert into note(matricule,codeExamen,note) values('5d1059','A24255D1MATH5DC1','0');
-- 2025-06-03 10:26:31
insert into note(matricule,codeExamen,note) values('5d1060','A24255D1MATH5DC1','0');
-- 2025-06-03 10:26:31
insert into note(matricule,codeExamen,note) values('5d1061','A24255D1MATH5DC1','0');
-- 2025-06-03 10:26:31
insert into note(matricule,codeExamen,note) values('5d1062','A24255D1MATH5DC1','0');
-- 2025-06-03 10:26:31
insert into note(matricule,codeExamen,note) values('5d1063','A24255D1MATH5DC1','0');
-- 2025-06-03 10:26:31
insert into note(matricule,codeExamen,note) values('5d1064','A24255D1MATH5DC1','0');
-- 2025-06-03 10:31:41
update note set note='0' where idNote='1512' ;
-- 2025-06-03 10:31:41
update note set note='0' where idNote='1513' ;
-- 2025-06-03 10:31:41
update note set note='0' where idNote='1514' ;
-- 2025-06-03 10:31:42
update note set note='0' where idNote='1515' ;
-- 2025-06-03 10:31:42
update note set note='0' where idNote='1516' ;
-- 2025-06-03 10:31:42
update note set note='0' where idNote='1517' ;
-- 2025-06-03 10:31:42
update note set note='0' where idNote='1518' ;
-- 2025-06-03 10:31:42
update note set note='0' where idNote='1519' ;
-- 2025-06-03 10:31:42
update note set note='0' where idNote='1520' ;
-- 2025-06-03 10:31:42
update note set note='0' where idNote='1521' ;
-- 2025-06-03 10:31:42
update note set note='0' where idNote='1522' ;
-- 2025-06-03 10:31:42
update note set note='0' where idNote='1523' ;
-- 2025-06-03 10:31:42
update note set note='0' where idNote='1524' ;
-- 2025-06-03 10:31:42
update note set note='0' where idNote='1525' ;
-- 2025-06-03 10:31:42
update note set note='0' where idNote='1526' ;
-- 2025-06-03 10:31:42
update note set note='0' where idNote='1527' ;
-- 2025-06-03 10:31:42
update note set note='0' where idNote='1528' ;
-- 2025-06-03 10:31:42
update note set note='0' where idNote='1529' ;
-- 2025-06-03 10:31:42
update note set note='0' where idNote='1530' ;
-- 2025-06-03 10:31:42
update note set note='0' where idNote='1531' ;
-- 2025-06-03 10:31:42
update note set note='0' where idNote='1532' ;
-- 2025-06-03 10:31:42
update note set note='0' where idNote='1533' ;
-- 2025-06-03 10:31:42
update note set note='0' where idNote='1534' ;
-- 2025-06-03 10:31:42
update note set note='0' where idNote='1535' ;
-- 2025-06-03 10:31:42
update note set note='0' where idNote='1536' ;
-- 2025-06-03 10:31:42
update note set note='0' where idNote='1537' ;
-- 2025-06-03 10:31:42
update note set note='0' where idNote='1538' ;
-- 2025-06-03 10:31:42
update note set note='0' where idNote='1539' ;
-- 2025-06-03 10:31:42
update note set note='0' where idNote='1540' ;
-- 2025-06-03 10:31:42
update note set note='0' where idNote='1541' ;
-- 2025-06-03 10:31:42
update note set note='0' where idNote='1542' ;
-- 2025-06-03 10:31:42
update note set note='0' where idNote='1543' ;
-- 2025-06-03 10:31:43
update note set note='0' where idNote='1544' ;
-- 2025-06-03 10:31:43
update note set note='0' where idNote='1545' ;
-- 2025-06-03 10:31:43
update note set note='0' where idNote='1546' ;
-- 2025-06-03 10:31:43
update note set note='0' where idNote='1547' ;
-- 2025-06-03 10:31:43
update note set note='0' where idNote='1548' ;
-- 2025-06-03 10:31:43
update note set note='0' where idNote='1549' ;
-- 2025-06-03 10:31:43
update note set note='0' where idNote='1550' ;
-- 2025-06-03 10:31:43
update note set note='0' where idNote='1551' ;
-- 2025-06-03 10:31:43
update note set note='0' where idNote='1552' ;
-- 2025-06-03 10:31:43
update note set note='0' where idNote='1553' ;
-- 2025-06-03 10:31:43
update note set note='0' where idNote='1554' ;
-- 2025-06-03 10:31:43
update note set note='0' where idNote='1555' ;
-- 2025-06-03 10:31:43
update note set note='0' where idNote='1556' ;
-- 2025-06-03 10:31:43
update note set note='0' where idNote='1557' ;
-- 2025-06-03 10:31:43
update note set note='0' where idNote='1558' ;
-- 2025-06-03 10:31:43
update note set note='0' where idNote='1559' ;
-- 2025-06-03 10:31:43
update note set note='0' where idNote='1560' ;
-- 2025-06-03 10:31:43
update note set note='0' where idNote='1561' ;
-- 2025-06-03 10:31:43
update note set note='0' where idNote='1562' ;
-- 2025-06-03 10:31:43
update note set note='0' where idNote='1563' ;
-- 2025-06-03 10:31:43
update note set note='0' where idNote='1564' ;
-- 2025-06-03 10:31:43
update note set note='0' where idNote='1565' ;
-- 2025-06-03 10:31:43
update note set note='0' where idNote='1566' ;
-- 2025-06-03 10:31:43
update note set note='0' where idNote='1567' ;
-- 2025-06-03 10:31:43
update note set note='0' where idNote='1568' ;
-- 2025-06-03 10:31:43
update note set note='0' where idNote='1569' ;
-- 2025-06-03 10:31:43
update note set note='0' where idNote='1570' ;
-- 2025-06-03 10:31:44
update note set note='0' where idNote='1571' ;
-- 2025-06-03 10:31:44
update note set note='0' where idNote='1572' ;
-- 2025-06-03 10:31:44
update note set note='0' where idNote='1573' ;
-- 2025-06-03 10:31:44
update note set note='0' where idNote='1574' ;
-- 2025-06-03 10:31:44
update note set note='0' where idNote='1575' ;
-- 2025-06-03 12:27:59
insert into eleve(matricule,nom,isme,sexe,dateNaissance,lieuNaissance,adresse,nni) values('36153541','Amadou Abou Lam','أمدو أبو لام ','M','2000-01-01','Boghe','Boghe','655323333');
-- 2025-06-03 12:29:03
insert into inscrit(idInscrit,matricule,codeSalleClasse,numeroInscrit,typeInscrit,dateInscription) values('','36153541','A24252AS2','59','passant','2025-06-03');
-- 2025-06-03 12:29:36
insert into note(matricule,codeExamen,note) values('36153541','A24252AS2MATH2ASC1','12');
-- 2025-06-03 12:32:31
update eleve set matricule='36153541',nom='Amadou Abou Lam',isme='أمدو أبو لام ',sexe='M',dateNaissance='2000-01-01',lieuNaissance='Bababe',adresse='Boghe',nni='655323333' where matricule='36153541';
-- 2025-06-03 12:39:42
INSERT INTO salle_classe(codeSalleClasse, codeSalle, codeClasse, codeAnnee, indiceSalleClasse) 
    VALUES('A24251AS1', 'Salle2', '1AS', '2425', '1');
-- 2025-06-03 12:41:47
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,dateClasseMatiere) values('EPS1AS','1AS','EPS','2','2','2024-10-01');
-- 2025-06-03 12:41:47
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,dateClasseMatiere) values('FR1AS','1AS','FR','2','2','2024-10-01');
-- 2025-06-03 12:41:47
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,dateClasseMatiere) values('HG1AS','1AS','HG','1','1','2024-10-01');
-- 2025-06-03 12:41:47
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,dateClasseMatiere) values('IC1AS','1AS','IC','1','5','2024-10-01');
-- 2025-06-03 12:41:47
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,dateClasseMatiere) values('INFO1AS','1AS','INFO','5','5','2024-10-01');
-- 2025-06-03 12:41:47
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,dateClasseMatiere) values('IR1AS','1AS','IR','2','4','2024-10-01');
-- 2025-06-03 12:41:47
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,dateClasseMatiere) values('SN1AS','1AS','SN','3','3','2024-10-01');
-- 2025-06-03 12:42:40
insert into examen (codeExamen,codeClasseMatiere,codeSalleClasse,codeEvaluation,dateExamen,statutExamen,heureDebutExamen,heureFinExamen) values ('A24251AS1MATH1ASC1','MATH1AS','A24251AS1','C1','','1','','');
-- 2025-06-03 12:42:40
insert into examen (codeExamen,codeClasseMatiere,codeSalleClasse,codeEvaluation,dateExamen,statutExamen,heureDebutExamen,heureFinExamen) values ('A24251AS1INFO1ASC1','INFO1AS','A24251AS1','C1','','1','','');
-- 2025-06-03 12:42:40
insert into examen (codeExamen,codeClasseMatiere,codeSalleClasse,codeEvaluation,dateExamen,statutExamen,heureDebutExamen,heureFinExamen) values ('A24251AS1IC1ASC1','IC1AS','A24251AS1','C1','','1','','');
-- 2025-06-03 12:42:40
insert into examen (codeExamen,codeClasseMatiere,codeSalleClasse,codeEvaluation,dateExamen,statutExamen,heureDebutExamen,heureFinExamen) values ('A24251AS1IR1ASC1','IR1AS','A24251AS1','C1','','1','','');
-- 2025-06-03 12:42:40
insert into examen (codeExamen,codeClasseMatiere,codeSalleClasse,codeEvaluation,dateExamen,statutExamen,heureDebutExamen,heureFinExamen) values ('A24251AS1SN1ASC1','SN1AS','A24251AS1','C1','','1','','');
-- 2025-06-03 12:42:40
insert into examen (codeExamen,codeClasseMatiere,codeSalleClasse,codeEvaluation,dateExamen,statutExamen,heureDebutExamen,heureFinExamen) values ('A24251AS1FR1ASC1','FR1AS','A24251AS1','C1','','1','','');
-- 2025-06-03 12:42:40
insert into examen (codeExamen,codeClasseMatiere,codeSalleClasse,codeEvaluation,dateExamen,statutExamen,heureDebutExamen,heureFinExamen) values ('A24251AS1EPS1ASC1','EPS1AS','A24251AS1','C1','','1','','');
-- 2025-06-03 12:42:40
insert into examen (codeExamen,codeClasseMatiere,codeSalleClasse,codeEvaluation,dateExamen,statutExamen,heureDebutExamen,heureFinExamen) values ('A24251AS1HG1ASC1','HG1AS','A24251AS1','C1','','1','','');
-- 2025-06-03 13:02:56
insert into eleve(matricule,nom,isme,sexe,dateNaissance,lieuNaissance,adresse,nni) values('rim ','Baba Coumba','بابا كومبا ','M','2000-01-01','','','1232134567');
-- 2025-06-03 13:21:10
delete from eleve where matricule='rim';
-- 2025-06-03 13:22:39
insert into eleve(matricule,nom,isme,sexe,dateNaissance,lieuNaissance,adresse,nni) values('rim02','Mamadou Amadou Barry','ممدو أمدو باري ','M','2000-01-01','','','233355445');
-- 2025-06-03 13:23:00
insert into inscrit(idInscrit,matricule,codeSalleClasse,numeroInscrit,typeInscrit,dateInscription) values('','rim02','A24251AS1','1','passant','2025-06-03');
-- 2025-06-03 13:23:21
update inscrit set matricule='rim02',codeSalleClasse='A24252AS2',numeroInscrit='60',typeInscrit='passant',dateInscription='2025-06-03' where idInscrit='327';
delete from inscrit where idInscrit='327'
-- 2025-06-03 13:27:31
update note set note='19.5' where idNote='315' ;
-- 2025-06-03 13:36:29
insert into note(matricule,codeExamen,note) values('2AS201','A24252AS2FR2ASC1','1');
-- 2025-06-03 13:36:29
insert into note(matricule,codeExamen,note) values('2AS202','A24252AS2FR2ASC1','1');
-- 2025-06-03 13:36:29
insert into note(matricule,codeExamen,note) values('2AS203','A24252AS2FR2ASC1','4');
-- 2025-06-03 13:36:29
insert into note(matricule,codeExamen,note) values('2AS204','A24252AS2FR2ASC1','2');
-- 2025-06-03 13:36:29
insert into note(matricule,codeExamen,note) values('2AS205','A24252AS2FR2ASC1','0');
-- 2025-06-03 13:36:29
insert into note(matricule,codeExamen,note) values('2AS206','A24252AS2FR2ASC1','6');
-- 2025-06-03 13:36:30
insert into note(matricule,codeExamen,note) values('2AS207','A24252AS2FR2ASC1','4');
-- 2025-06-03 13:36:30
insert into note(matricule,codeExamen,note) values('2AS208','A24252AS2FR2ASC1','4.5');
-- 2025-06-03 13:36:30
insert into note(matricule,codeExamen,note) values('2AS209','A24252AS2FR2ASC1','1');
-- 2025-06-03 13:36:30
insert into note(matricule,codeExamen,note) values('2AS210','A24252AS2FR2ASC1','0.5');
-- 2025-06-03 13:36:30
insert into note(matricule,codeExamen,note) values('2AS211','A24252AS2FR2ASC1','1');
-- 2025-06-03 13:36:30
insert into note(matricule,codeExamen,note) values('2AS212','A24252AS2FR2ASC1','5');
-- 2025-06-03 13:36:30
insert into note(matricule,codeExamen,note) values('2AS213','A24252AS2FR2ASC1','10');
-- 2025-06-03 13:36:30
insert into note(matricule,codeExamen,note) values('2AS214','A24252AS2FR2ASC1','3');
-- 2025-06-03 13:36:30
insert into note(matricule,codeExamen,note) values('2AS215','A24252AS2FR2ASC1','0');
-- 2025-06-03 13:36:31
insert into note(matricule,codeExamen,note) values('2AS216','A24252AS2FR2ASC1','6');
-- 2025-06-03 13:36:31
insert into note(matricule,codeExamen,note) values('2AS217','A24252AS2FR2ASC1','5');
-- 2025-06-03 13:36:31
insert into note(matricule,codeExamen,note) values('2AS218','A24252AS2FR2ASC1','2');
-- 2025-06-03 13:36:31
insert into note(matricule,codeExamen,note) values('2AS219','A24252AS2FR2ASC1','2');
-- 2025-06-03 13:36:31
insert into note(matricule,codeExamen,note) values('2AS220','A24252AS2FR2ASC1','0');
-- 2025-06-03 13:36:31
insert into note(matricule,codeExamen,note) values('2AS221','A24252AS2FR2ASC1','7');
-- 2025-06-03 13:36:31
insert into note(matricule,codeExamen,note) values('2AS222','A24252AS2FR2ASC1','7');
-- 2025-06-03 13:36:32
insert into note(matricule,codeExamen,note) values('2AS223','A24252AS2FR2ASC1','5');
-- 2025-06-03 13:36:32
insert into note(matricule,codeExamen,note) values('2AS224','A24252AS2FR2ASC1','4');
-- 2025-06-03 13:36:32
insert into note(matricule,codeExamen,note) values('2AS225','A24252AS2FR2ASC1','2');
-- 2025-06-03 13:36:32
insert into note(matricule,codeExamen,note) values('2AS226','A24252AS2FR2ASC1','9');
-- 2025-06-03 13:36:32
insert into note(matricule,codeExamen,note) values('2AS227','A24252AS2FR2ASC1','4');
-- 2025-06-03 13:36:32
insert into note(matricule,codeExamen,note) values('2AS228','A24252AS2FR2ASC1','10');
-- 2025-06-03 13:36:32
insert into note(matricule,codeExamen,note) values('2AS229','A24252AS2FR2ASC1','8');
-- 2025-06-03 13:36:32
insert into note(matricule,codeExamen,note) values('2AS230','A24252AS2FR2ASC1','2');
-- 2025-06-03 13:36:32
insert into note(matricule,codeExamen,note) values('2AS231','A24252AS2FR2ASC1','7');
-- 2025-06-03 13:36:33
insert into note(matricule,codeExamen,note) values('2AS232','A24252AS2FR2ASC1','8');
-- 2025-06-03 13:36:33
insert into note(matricule,codeExamen,note) values('2AS233','A24252AS2FR2ASC1','2');
-- 2025-06-03 13:36:33
insert into note(matricule,codeExamen,note) values('2AS234','A24252AS2FR2ASC1','8');
-- 2025-06-03 13:36:33
insert into note(matricule,codeExamen,note) values('2AS235','A24252AS2FR2ASC1','0');
-- 2025-06-03 13:36:33
insert into note(matricule,codeExamen,note) values('2AS236','A24252AS2FR2ASC1','0');
-- 2025-06-03 13:36:33
insert into note(matricule,codeExamen,note) values('2AS237','A24252AS2FR2ASC1','4');
-- 2025-06-03 13:36:34
insert into note(matricule,codeExamen,note) values('2AS238','A24252AS2FR2ASC1','10');
-- 2025-06-03 13:36:34
insert into note(matricule,codeExamen,note) values('2AS239','A24252AS2FR2ASC1','7.5');
-- 2025-06-03 13:36:34
insert into note(matricule,codeExamen,note) values('2AS240','A24252AS2FR2ASC1','4.5');
-- 2025-06-03 13:36:34
insert into note(matricule,codeExamen,note) values('2AS241','A24252AS2FR2ASC1','1');
-- 2025-06-03 13:36:34
insert into note(matricule,codeExamen,note) values('2AS242','A24252AS2FR2ASC1','2');
-- 2025-06-03 13:36:34
insert into note(matricule,codeExamen,note) values('2AS243','A24252AS2FR2ASC1','9');
-- 2025-06-03 13:36:34
insert into note(matricule,codeExamen,note) values('2AS244','A24252AS2FR2ASC1','6');
-- 2025-06-03 13:36:34
insert into note(matricule,codeExamen,note) values('2AS245','A24252AS2FR2ASC1','2');
-- 2025-06-03 13:36:35
insert into note(matricule,codeExamen,note) values('2AS246','A24252AS2FR2ASC1','14.5');
-- 2025-06-03 13:36:35
insert into note(matricule,codeExamen,note) values('2AS247','A24252AS2FR2ASC1','3');
-- 2025-06-03 13:36:35
insert into note(matricule,codeExamen,note) values('2AS248','A24252AS2FR2ASC1','4');
-- 2025-06-03 13:36:35
insert into note(matricule,codeExamen,note) values('2AS249','A24252AS2FR2ASC1','7');
-- 2025-06-03 13:36:35
insert into note(matricule,codeExamen,note) values('2AS250','A24252AS2FR2ASC1','3.5');
-- 2025-06-03 13:36:35
insert into note(matricule,codeExamen,note) values('2AS251','A24252AS2FR2ASC1','1');
-- 2025-06-03 13:36:35
insert into note(matricule,codeExamen,note) values('2AS252','A24252AS2FR2ASC1','1');
-- 2025-06-03 13:36:36
insert into note(matricule,codeExamen,note) values('2AS253','A24252AS2FR2ASC1','6.5');
-- 2025-06-03 13:36:36
insert into note(matricule,codeExamen,note) values('2AS254','A24252AS2FR2ASC1','11');
-- 2025-06-03 13:36:36
insert into note(matricule,codeExamen,note) values('2AS255','A24252AS2FR2ASC1','5');
-- 2025-06-03 13:36:36
insert into note(matricule,codeExamen,note) values('2AS256','A24252AS2FR2ASC1','4.5');
-- 2025-06-03 13:36:36
insert into note(matricule,codeExamen,note) values('2AS257','A24252AS2FR2ASC1','0');
-- 2025-06-03 17:18:23
update note set note='19' where idNote='315' ;
-- 2025-06-03 20:42:23
update classe_matiere set codeClasse='1AS',codeMatiere='IC',horaireClasseMatiere='1',coefficientClasseMatiere='5',dateClasseMatiere='2024-10-01' where codeClasseMatiere='IC1AS';
-- 2025-06-03 20:42:23
update classe_matiere set codeClasse='1AS',codeMatiere='IR',horaireClasseMatiere='2',coefficientClasseMatiere='4',dateClasseMatiere='2024-10-01' where codeClasseMatiere='IR1AS';
-- 2025-06-03 20:42:48
update classe_matiere set codeClasse='1AS',codeMatiere='MATH',horaireClasseMatiere='6',coefficientClasseMatiere='5',dateClasseMatiere='2024-10-01' where codeClasseMatiere='MATH1AS';
-- 2025-06-03 20:42:48
update classe_matiere set codeClasse='1AS',codeMatiere='INFO',horaireClasseMatiere='5',coefficientClasseMatiere='4',dateClasseMatiere='2024-10-01' where codeClasseMatiere='INFO1AS';
-- 2025-06-03 20:42:48
update classe_matiere set codeClasse='1AS',codeMatiere='IC',horaireClasseMatiere='1',coefficientClasseMatiere='5',dateClasseMatiere='2024-10-01' where codeClasseMatiere='IC1AS';
-- 2025-06-03 20:42:48
update classe_matiere set codeClasse='1AS',codeMatiere='IR',horaireClasseMatiere='2',coefficientClasseMatiere='4',dateClasseMatiere='2024-10-01' where codeClasseMatiere='IR1AS';
-- 2025-06-03 20:42:48
update classe_matiere set codeClasse='1AS',codeMatiere='SN',horaireClasseMatiere='3',coefficientClasseMatiere='3',dateClasseMatiere='2024-10-01' where codeClasseMatiere='SN1AS';
-- 2025-06-03 20:42:49
update classe_matiere set codeClasse='1AS',codeMatiere='EPS',horaireClasseMatiere='2',coefficientClasseMatiere='2',dateClasseMatiere='2024-10-01' where codeClasseMatiere='EPS1AS';
-- 2025-06-03 20:42:49
update classe_matiere set codeClasse='1AS',codeMatiere='FR',horaireClasseMatiere='2',coefficientClasseMatiere='2',dateClasseMatiere='2024-10-01' where codeClasseMatiere='FR1AS';
-- 2025-06-03 20:42:49
update classe_matiere set codeClasse='1AS',codeMatiere='HG',horaireClasseMatiere='1',coefficientClasseMatiere='1',dateClasseMatiere='2024-10-01' where codeClasseMatiere='HG1AS';
-- 2025-06-03 20:43:52
update classe_matiere set codeClasse='1AS',codeMatiere='MATH',horaireClasseMatiere='6',coefficientClasseMatiere='5',dateClasseMatiere='2024-10-01' where codeClasseMatiere='MATH1AS';
-- 2025-06-03 20:43:52
update classe_matiere set codeClasse='1AS',codeMatiere='IC',horaireClasseMatiere='1',coefficientClasseMatiere='2',dateClasseMatiere='2024-10-01' where codeClasseMatiere='IC1AS';
-- 2025-06-03 20:43:52
update classe_matiere set codeClasse='1AS',codeMatiere='INFO',horaireClasseMatiere='5',coefficientClasseMatiere='4',dateClasseMatiere='2024-10-01' where codeClasseMatiere='INFO1AS';
-- 2025-06-03 20:43:52
update classe_matiere set codeClasse='1AS',codeMatiere='IR',horaireClasseMatiere='2',coefficientClasseMatiere='4',dateClasseMatiere='2024-10-01' where codeClasseMatiere='IR1AS';
-- 2025-06-03 20:43:52
update classe_matiere set codeClasse='1AS',codeMatiere='SN',horaireClasseMatiere='3',coefficientClasseMatiere='3',dateClasseMatiere='2024-10-01' where codeClasseMatiere='SN1AS';
-- 2025-06-03 20:43:52
update classe_matiere set codeClasse='1AS',codeMatiere='EPS',horaireClasseMatiere='2',coefficientClasseMatiere='2',dateClasseMatiere='2024-10-01' where codeClasseMatiere='EPS1AS';
-- 2025-06-03 20:43:52
update classe_matiere set codeClasse='1AS',codeMatiere='FR',horaireClasseMatiere='2',coefficientClasseMatiere='2',dateClasseMatiere='2024-10-01' where codeClasseMatiere='FR1AS';
-- 2025-06-03 20:43:52
update classe_matiere set codeClasse='1AS',codeMatiere='HG',horaireClasseMatiere='1',coefficientClasseMatiere='1',dateClasseMatiere='2024-10-01' where codeClasseMatiere='HG1AS';
-- 2025-06-03 20:45:52
update classe_matiere set codeClasse='1AS',codeMatiere='MATH',horaireClasseMatiere='6',coefficientClasseMatiere='5',dateClasseMatiere='2024-10-01' where codeClasseMatiere='MATH1AS';
-- 2025-06-03 20:45:52
update classe_matiere set codeClasse='1AS',codeMatiere='INFO',horaireClasseMatiere='5',coefficientClasseMatiere='4',dateClasseMatiere='2024-10-01' where codeClasseMatiere='INFO1AS';
-- 2025-06-03 20:45:52
update classe_matiere set codeClasse='1AS',codeMatiere='IR',horaireClasseMatiere='2',coefficientClasseMatiere='4',dateClasseMatiere='2024-10-01' where codeClasseMatiere='IR1AS';
-- 2025-06-03 20:45:52
update classe_matiere set codeClasse='1AS',codeMatiere='SN',horaireClasseMatiere='3',coefficientClasseMatiere='3',dateClasseMatiere='2024-10-01' where codeClasseMatiere='SN1AS';
-- 2025-06-03 20:45:52
update classe_matiere set codeClasse='1AS',codeMatiere='EPS',horaireClasseMatiere='2',coefficientClasseMatiere='2',dateClasseMatiere='2024-10-01' where codeClasseMatiere='EPS1AS';
-- 2025-06-03 20:45:52
update classe_matiere set codeClasse='1AS',codeMatiere='FR',horaireClasseMatiere='2',coefficientClasseMatiere='2',dateClasseMatiere='2024-10-01' where codeClasseMatiere='FR1AS';
-- 2025-06-03 20:45:52
update classe_matiere set codeClasse='1AS',codeMatiere='IC',horaireClasseMatiere='1',coefficientClasseMatiere='2',dateClasseMatiere='2024-10-01' where codeClasseMatiere='IC1AS';
-- 2025-06-03 20:45:52
update classe_matiere set codeClasse='1AS',codeMatiere='HG',horaireClasseMatiere='1',coefficientClasseMatiere='1',dateClasseMatiere='2024-10-01' where codeClasseMatiere='HG1AS';
-- 2025-06-04 13:49:42
update eleve set imagePath='img_rim02.jpg' where matricule='rim02';
-- 2025-06-04 13:50:32
update eleve set imagePath='img_rim02.jpg' where matricule='rim02';
-- 2025-06-04 13:56:35
update eleve set imagePath='img_5LM057.jpg' where matricule='5LM057';
-- 2025-06-04 13:56:56
update eleve set imagePath='img_5LM057.jpg' where matricule='5LM057';
-- 2025-06-04 14:43:37
update eleve set imagePath='img_5LM055.jpg' where matricule='5LM055';
-- 2025-06-04 18:49:07
update professeur set imagePathProfesseur='img_124871D.jpg' where matriculeProfesseur='124871D';
-- 2025-06-04 19:02:06
insert into inscrit(idInscrit,matricule,codeSalleClasse,numeroInscrit,typeInscrit,dateInscription) values('','662671','A24251AS1','1','passant','2025-06-04');
-- 2025-06-04 19:02:06
insert into inscrit(idInscrit,matricule,codeSalleClasse,numeroInscrit,typeInscrit,dateInscription) values('','rim02','A24251AS1','2','passant','2025-06-04');
-- 2025-06-04 21:00:08
update classe_matiere set codeClasse='2AS',codeMatiere='AR',horaireClasseMatiere='6',coefficientClasseMatiere='5',dateClasseMatiere='2024-10-01' where codeClasseMatiere='AR2AS';
-- 2025-06-04 21:00:08
update classe_matiere set codeClasse='5LM',codeMatiere='AR',horaireClasseMatiere='5',coefficientClasseMatiere='5',dateClasseMatiere='2024-10-01' where codeClasseMatiere='AR5LM';
-- 2025-06-04 21:00:08
update classe_matiere set codeClasse='5D',codeMatiere='AR',horaireClasseMatiere='3',coefficientClasseMatiere='3',dateClasseMatiere='2024-10-01' where codeClasseMatiere='AR5D';
-- 2025-06-04 21:07:43
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,dateClasseMatiere) values('AR4AS','4AS','AR','5','5','2024-10-01');
-- 2025-06-04 21:07:43
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,dateClasseMatiere) values('EN4AS','4AS','EN','2','1','2024-10-01');
-- 2025-06-04 21:07:43
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,dateClasseMatiere) values('EPS4AS','4AS','EPS','2','1','2024-10-01');
-- 2025-06-04 21:07:44
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,dateClasseMatiere) values('FR4AS','4AS','FR','4','3','2024-10-01');
-- 2025-06-04 21:07:44
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,dateClasseMatiere) values('HG4AS','4AS','HG','3','2','2024-10-01');
-- 2025-06-04 21:07:44
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,dateClasseMatiere) values('IC4AS','4AS','IC','1','1','2024-10-01');
-- 2025-06-04 21:07:44
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,dateClasseMatiere) values('IR4AS','4AS','IR','4','3','2024-10-01');
-- 2025-06-04 21:07:44
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,dateClasseMatiere) values('PC4AS','4AS','PC','2','2','2024-10-01');
-- 2025-06-04 21:07:44
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,dateClasseMatiere) values('SN4AS','4AS','SN','3','2','2024-10-01');
-- 2025-06-04 21:13:21
update classe_matiere set codeClasse='1AS',codeMatiere='INFO',horaireClasseMatiere='1',coefficientClasseMatiere='1',dateClasseMatiere='2024-10-01' where codeClasseMatiere='INFO1AS';
-- 2025-06-04 21:13:21
update classe_matiere set codeClasse='1AS',codeMatiere='IR',horaireClasseMatiere='4',coefficientClasseMatiere='3',dateClasseMatiere='2024-10-01' where codeClasseMatiere='IR1AS';
-- 2025-06-04 21:13:21
update classe_matiere set codeClasse='1AS',codeMatiere='SN',horaireClasseMatiere='2',coefficientClasseMatiere='2',dateClasseMatiere='2024-10-01' where codeClasseMatiere='SN1AS';
-- 2025-06-04 21:13:21
update classe_matiere set codeClasse='1AS',codeMatiere='EPS',horaireClasseMatiere='2',coefficientClasseMatiere='1',dateClasseMatiere='2024-10-01' where codeClasseMatiere='EPS1AS';
-- 2025-06-04 21:13:21
update classe_matiere set codeClasse='1AS',codeMatiere='FR',horaireClasseMatiere='5',coefficientClasseMatiere='4',dateClasseMatiere='2024-10-01' where codeClasseMatiere='FR1AS';
-- 2025-06-04 21:13:21
update classe_matiere set codeClasse='1AS',codeMatiere='IC',horaireClasseMatiere='1',coefficientClasseMatiere='1',dateClasseMatiere='2024-10-01' where codeClasseMatiere='IC1AS';
-- 2025-06-04 21:13:21
update classe_matiere set codeClasse='1AS',codeMatiere='HG',horaireClasseMatiere='2',coefficientClasseMatiere='2',dateClasseMatiere='2024-10-01' where codeClasseMatiere='HG1AS';
-- 2025-06-04 21:13:21
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,dateClasseMatiere) values('AR1AS','1AS','AR','6','5','2024-10-01');
-- 2025-06-05 20:39:24
update eleve set matricule='662671',nom='Ibrahima Lam',isme='إبراهيما لام ',sexe='M',dateNaissance='2000-01-01',lieuNaissance='',adresse='',nni='56371635531',statutEleve='Inactif' where matricule='662671';
-- 2025-06-05 20:41:21
update eleve set matricule='rim02',nom='Mamadou Amadou Barry',isme='ممدو أمدو باري ',sexe='M',dateNaissance='2000-01-01',lieuNaissance='',adresse='',nni='233355445',statutEleve='Inactif' where matricule='rim02';
-- 2025-06-05 20:41:35
update eleve set matricule='rim02',nom='Mamadou Amadou Barry',isme='ممدو أمدو باري ',sexe='M',dateNaissance='2000-01-01',lieuNaissance='',adresse='',nni='233355445',statutEleve='Actif' where matricule='rim02';
delete from inscrit where idInscrit='328'
-- 2025-06-06 13:39:11
update professeur set matriculeProfesseur='124871D',nomProfesseur='Ibrahima Abou Lam',ismeProfesseur='إبراهيم أبو لام ',sexeProfesseur='M',adresseProfesseur='Boghe Thialgou',nniProfesseur='9872324575',codeSpecialite='mpc',dateDebutProfesseur='2024-10-01',dateArriveeProfesseur='2024-12-01',telProfesseur='41916418',emailProfesseur='ibrahimaaboulam@gmail.com',statutProfesseur='actif',cycleProfesseur='2' where matriculeProfesseur='124871D';
-- 2025-06-06 14:21:55
update eleve set imagePath='img_rim02.jpg' where matricule='rim02';
-- 2025-06-06 18:33:18
INSERT INTO correspondant (nomCorrespondant, ismeCorrespondant, adresseCorrespondant, telCorrespondant, emailCorrespondant, nniCorrespondant, imagePathCorrespondant) VALUES ('Amadou', 'أمدو ', 'thialgou', '3465632', '', '463463455', '');
-- 2025-06-06 18:48:15
INSERT INTO correspondant (nomCorrespondant, ismeCorrespondant, adresseCorrespondant, telCorrespondant, emailCorrespondant, nniCorrespondant, imagePathCorrespondant) VALUES ('Lamine', '', 'v vg,ghklhjl', '8671336', '', '31561356', '');
-- 2025-06-06 18:51:41
UPDATE correspondant SET nomCorrespondant = 'Lamine', ismeCorrespondant = '', adresseCorrespondant = 'v vg,ghklhjl', telCorrespondant = '8671336', emailCorrespondant = '', nniCorrespondant = '31561356', sexeCorrespondant = 'M' WHERE idCorrespondant = '9';
-- 2025-06-06 19:05:27
UPDATE correspondant SET nomCorrespondant = 'Lamine', ismeCorrespondant = '', adresseCorrespondant = 'Boghe', telCorrespondant = '8671336', emailCorrespondant = '', nniCorrespondant = '31561356', sexeCorrespondant = 'M' WHERE idCorrespondant = '9';
-- 2025-06-06 19:07:14
UPDATE correspondant SET nomCorrespondant = 'Lamine', ismeCorrespondant = 'لمين ', adresseCorrespondant = 'Boghe', telCorrespondant = '8671336', emailCorrespondant = '', nniCorrespondant = '31561356', sexeCorrespondant = 'M' WHERE idCorrespondant = '9';
-- 2025-06-06 19:23:33
UPDATE correspondant SET nomCorrespondant = 'Amadou', ismeCorrespondant = 'أمدو ', adresseCorrespondant = 'thialgou', telCorrespondant = '3465632', emailCorrespondant = 'am@gmail.com', nniCorrespondant = '463463455', sexeCorrespondant = 'M' WHERE idCorrespondant = '8';
-- 2025-06-06 19:27:29
UPDATE correspondant SET imagePathCorrespondant = 'img_8.jpg' WHERE idCorrespondant = '8';
-- 2025-06-06 19:33:29
UPDATE correspondant SET imagePathCorrespondant = 'img_8.jpg' WHERE idCorrespondant = '8';
-- 2025-06-06 19:35:20
UPDATE correspondant SET imagePathCorrespondant = 'img_9.jpg' WHERE idCorrespondant = '9';
-- 2025-06-06 19:37:12
UPDATE correspondant SET imagePathCorrespondant = 'img_C9.jpg' WHERE idCorrespondant = '9';
-- 2025-06-07 12:49:14
UPDATE correspondant SET imagePathCorrespondant = 'img_C8.jpg' WHERE idCorrespondant = '8';
-- 2025-06-07 12:51:19
update professeur set imagePathProfesseur='img_124871D.jpg' where matriculeProfesseur='124871D';
-- 2025-06-07 12:54:21
update eleve set imagePath='img_662671.jpg' where matricule='662671';
-- 2025-06-07 13:03:03
UPDATE salle_classe 
                   SET codeSalle = 'Salle3', 
                       codeClasse = '1AS', 
                       codeAnnee = '2425', 
                       indiceSalleClasse = '1' 
                   WHERE codeSalleClasse = 'A24251AS1';
-- 2025-06-07 13:14:26
update eleve set matricule='5d223',nom='Sidi Haroune Ndaye',isme='سدإ هارون نجاي',sexe='M',dateNaissance='2000-01-01',lieuNaissance='',adresse='',nni='00000123',statutEleve='actif' where matricule='5d223';
-- 2025-06-07 14:19:01
update inscrit set matricule='2AS201',codeSalleClasse='A24252AS2',numeroInscrit='2',typeInscrit='passant',dateInscription='2025-04-30' where idInscrit='209';
-- 2025-06-07 14:19:27
update inscrit set matricule='2AS201',codeSalleClasse='A24252AS2',numeroInscrit='1',typeInscrit='passant',dateInscription='2025-04-30' where idInscrit='209';
-- 2025-06-07 17:18:01
update eleve set matricule='31413699',nom='Abdou Kane',isme='عبد كان ',sexe='M',dateNaissance='2000-01-01',lieuNaissance='Thialgou',adresse='thialgou',nni='3566323263',statutEleve='actif' where matricule='31413699';
delete from inscrit where idInscrit='325'
delete from inscrit where idInscrit='326'
delete from inscrit where idInscrit='329'
-- 2025-06-07 17:29:15
insert into inscrit(idInscrit,matricule,codeSalleClasse,numeroInscrit,typeInscrit,dateInscription) values('','31413699','A24251AS1','1','passant','2025-06-07');
-- 2025-06-07 17:29:15
insert into inscrit(idInscrit,matricule,codeSalleClasse,numeroInscrit,typeInscrit,dateInscription) values('','36153541','A24251AS1','2','passant','2025-06-07');
-- 2025-06-07 17:29:15
insert into inscrit(idInscrit,matricule,codeSalleClasse,numeroInscrit,typeInscrit,dateInscription) values('','662671','A24251AS1','3','passant','2025-06-07');
-- 2025-06-07 17:29:15
insert into inscrit(idInscrit,matricule,codeSalleClasse,numeroInscrit,typeInscrit,dateInscription) values('','rim02','A24251AS1','4','passant','2025-06-07');
delete from inscrit where idInscrit='333'
delete from inscrit where idInscrit='332'
delete from inscrit where idInscrit='331'
delete from inscrit where idInscrit='330'
-- 2025-06-08 12:55:58
INSERT INTO correspondance (matricule, idCorrespondant) VALUES ('5d202', '8');
-- 2025-06-08 13:03:29
INSERT INTO correspondance (matricule, idCorrespondant) VALUES ('5d202', '9');
-- 2025-06-08 13:05:19
UPDATE correspondance SET matricule = '5d203', idCorrespondant = '9' WHERE idCorrespondance = '9';
-- 2025-06-08 13:07:27
DELETE FROM correspondance WHERE idCorrespondance = '9';
-- 2025-06-10 18:46:40
insert into eleve(matricule,nom,isme,sexe,dateNaissance,lieuNaissance,adresse,nni,statutEleve) values('C14300','Ciré Abou Lam','سيري أبو لام ','M','2000-01-01','Boghe','Thialgou','3271499407','actif');
-- 2025-06-10 18:47:14
insert into inscrit(idInscrit,matricule,codeSalleClasse,numeroInscrit,typeInscrit,dateInscription) values('','C14300','A24255LM','58','passant','2025-06-10');
-- 2025-06-10 18:48:07
insert into note(matricule,codeExamen,note) values('C14300','A24255LMMATH5LMC1','13');
delete from inscrit where idInscrit='334'
-- 2025-06-10 19:13:36
insert into inscrit(idInscrit,matricule,codeSalleClasse,numeroInscrit,typeInscrit,dateInscription) values('','C14300','A24255LM','58','passant','2025-06-10');
delete from note where idNote='1634' 
delete from inscrit where idInscrit='335'
-- 2025-06-15 15:39:34
insert into examen (codeExamen,codeClasseMatiere,codeSalleClasse,codeEvaluation,dateExamen,statutExamen,heureDebutExamen,heureFinExamen) values ('A24255D1PC5DD3','PC5D','A24255D1','D3','','1','','');
-- 2025-06-15 16:11:10
insert into note(matricule,codeExamen,note) values('5d1001','A24255D1PC5DD3','9');
-- 2025-06-15 16:11:10
insert into note(matricule,codeExamen,note) values('5d1002','A24255D1PC5DD3','15');
-- 2025-06-15 16:11:10
insert into note(matricule,codeExamen,note) values('5d1003','A24255D1PC5DD3','11');
-- 2025-06-15 16:11:11
insert into note(matricule,codeExamen,note) values('5d1004','A24255D1PC5DD3','16');
-- 2025-06-15 16:11:11
insert into note(matricule,codeExamen,note) values('5d1005','A24255D1PC5DD3','15');
-- 2025-06-15 16:11:11
insert into note(matricule,codeExamen,note) values('5d1006','A24255D1PC5DD3','15');
-- 2025-06-15 16:11:11
insert into note(matricule,codeExamen,note) values('5d1007','A24255D1PC5DD3','11');
-- 2025-06-15 16:11:11
insert into note(matricule,codeExamen,note) values('5d1008','A24255D1PC5DD3','16');
-- 2025-06-15 16:11:11
insert into note(matricule,codeExamen,note) values('5d1009','A24255D1PC5DD3','12');
-- 2025-06-15 16:11:12
insert into note(matricule,codeExamen,note) values('5d1010','A24255D1PC5DD3','11.5');
-- 2025-06-15 16:11:12
insert into note(matricule,codeExamen,note) values('5d1011','A24255D1PC5DD3','15.5');
-- 2025-06-15 16:11:12
insert into note(matricule,codeExamen,note) values('5d1012','A24255D1PC5DD3','17.5');
-- 2025-06-15 16:11:12
insert into note(matricule,codeExamen,note) values('5d1013','A24255D1PC5DD3','15');
-- 2025-06-15 16:11:12
insert into note(matricule,codeExamen,note) values('5d1014','A24255D1PC5DD3','16');
-- 2025-06-15 16:11:12
insert into note(matricule,codeExamen,note) values('5d1015','A24255D1PC5DD3','07');
-- 2025-06-15 16:11:12
insert into note(matricule,codeExamen,note) values('5d1016','A24255D1PC5DD3','16');
-- 2025-06-15 16:11:12
insert into note(matricule,codeExamen,note) values('5d1017','A24255D1PC5DD3','18');
-- 2025-06-15 16:11:13
insert into note(matricule,codeExamen,note) values('5d1018','A24255D1PC5DD3','15');
-- 2025-06-15 16:11:13
insert into note(matricule,codeExamen,note) values('5d1019','A24255D1PC5DD3','');
-- 2025-06-15 16:11:13
insert into note(matricule,codeExamen,note) values('5d1020','A24255D1PC5DD3','16.5');
-- 2025-06-15 16:11:13
insert into note(matricule,codeExamen,note) values('5d1021','A24255D1PC5DD3','15');
-- 2025-06-15 16:11:13
insert into note(matricule,codeExamen,note) values('5d1022','A24255D1PC5DD3','14');
-- 2025-06-15 16:11:13
insert into note(matricule,codeExamen,note) values('5d1023','A24255D1PC5DD3','14');
-- 2025-06-15 16:11:14
insert into note(matricule,codeExamen,note) values('5d1024','A24255D1PC5DD3','15.5');
-- 2025-06-15 16:11:14
insert into note(matricule,codeExamen,note) values('5d1025','A24255D1PC5DD3','13');
-- 2025-06-15 16:11:14
insert into note(matricule,codeExamen,note) values('5d1026','A24255D1PC5DD3','18');
-- 2025-06-15 16:11:14
insert into note(matricule,codeExamen,note) values('5d1027','A24255D1PC5DD3','17');
-- 2025-06-15 16:11:14
insert into note(matricule,codeExamen,note) values('5d1028','A24255D1PC5DD3','10.5');
-- 2025-06-15 16:11:14
insert into note(matricule,codeExamen,note) values('5d1029','A24255D1PC5DD3','10');
-- 2025-06-15 16:11:15
insert into note(matricule,codeExamen,note) values('5d1030','A24255D1PC5DD3','16.5');
-- 2025-06-15 16:11:15
insert into note(matricule,codeExamen,note) values('5d1031','A24255D1PC5DD3','18');
-- 2025-06-15 16:11:15
insert into note(matricule,codeExamen,note) values('5d1032','A24255D1PC5DD3','13');
-- 2025-06-15 16:11:15
insert into note(matricule,codeExamen,note) values('5d1033','A24255D1PC5DD3','12');
-- 2025-06-15 16:11:15
insert into note(matricule,codeExamen,note) values('5d1034','A24255D1PC5DD3','16');
-- 2025-06-15 16:11:15
insert into note(matricule,codeExamen,note) values('5d1035','A24255D1PC5DD3','9.5');
-- 2025-06-15 16:11:16
insert into note(matricule,codeExamen,note) values('5d1036','A24255D1PC5DD3','17.75');
-- 2025-06-15 16:11:16
insert into note(matricule,codeExamen,note) values('5d1037','A24255D1PC5DD3','16.5');
-- 2025-06-15 16:11:16
insert into note(matricule,codeExamen,note) values('5d1038','A24255D1PC5DD3','13.5');
-- 2025-06-15 16:11:16
insert into note(matricule,codeExamen,note) values('5d1039','A24255D1PC5DD3','7');
-- 2025-06-15 16:11:16
insert into note(matricule,codeExamen,note) values('5d1040','A24255D1PC5DD3','10');
-- 2025-06-15 16:11:16
insert into note(matricule,codeExamen,note) values('5d1041','A24255D1PC5DD3','17.5');
-- 2025-06-15 16:11:17
insert into note(matricule,codeExamen,note) values('5d1042','A24255D1PC5DD3','16');
-- 2025-06-15 16:11:17
insert into note(matricule,codeExamen,note) values('5d1043','A24255D1PC5DD3','13');
-- 2025-06-15 16:11:17
insert into note(matricule,codeExamen,note) values('5d1044','A24255D1PC5DD3','14');
-- 2025-06-15 16:11:17
insert into note(matricule,codeExamen,note) values('5d1045','A24255D1PC5DD3','');
-- 2025-06-15 16:11:17
insert into note(matricule,codeExamen,note) values('5d1046','A24255D1PC5DD3','16');
-- 2025-06-15 16:11:17
insert into note(matricule,codeExamen,note) values('5d1047','A24255D1PC5DD3','11');
-- 2025-06-15 16:11:18
insert into note(matricule,codeExamen,note) values('5d1048','A24255D1PC5DD3','14.5');
-- 2025-06-15 16:11:18
insert into note(matricule,codeExamen,note) values('5d1049','A24255D1PC5DD3','09');
-- 2025-06-15 16:11:18
insert into note(matricule,codeExamen,note) values('5d1050','A24255D1PC5DD3','17.5');
-- 2025-06-15 16:11:18
insert into note(matricule,codeExamen,note) values('5d1051','A24255D1PC5DD3','');
-- 2025-06-15 16:11:18
insert into note(matricule,codeExamen,note) values('5d1052','A24255D1PC5DD3','19.75');
-- 2025-06-15 16:11:18
insert into note(matricule,codeExamen,note) values('5d1053','A24255D1PC5DD3','11.5');
-- 2025-06-15 16:11:19
insert into note(matricule,codeExamen,note) values('5d1054','A24255D1PC5DD3','');
-- 2025-06-15 16:11:19
insert into note(matricule,codeExamen,note) values('5d1055','A24255D1PC5DD3','5');
-- 2025-06-15 16:11:19
insert into note(matricule,codeExamen,note) values('5d1056','A24255D1PC5DD3','14');
-- 2025-06-15 16:11:19
insert into note(matricule,codeExamen,note) values('5d1057','A24255D1PC5DD3','');
-- 2025-06-15 16:11:19
insert into note(matricule,codeExamen,note) values('5d1058','A24255D1PC5DD3','');
-- 2025-06-15 16:11:20
insert into note(matricule,codeExamen,note) values('5d1059','A24255D1PC5DD3','16');
-- 2025-06-15 16:11:20
insert into note(matricule,codeExamen,note) values('5d1060','A24255D1PC5DD3','13');
-- 2025-06-15 16:11:20
insert into note(matricule,codeExamen,note) values('5d1061','A24255D1PC5DD3','12');
-- 2025-06-15 16:11:20
insert into note(matricule,codeExamen,note) values('5d1062','A24255D1PC5DD3','');
-- 2025-06-15 16:11:20
insert into note(matricule,codeExamen,note) values('5d1063','A24255D1PC5DD3','11.75');
-- 2025-06-15 16:11:20
insert into note(matricule,codeExamen,note) values('5d1064','A24255D1PC5DD3','10');
-- 2025-06-15 16:56:50
update note set note='9' where idNote='1635' ;
-- 2025-06-15 16:56:50
update note set note='15' where idNote='1636' ;
-- 2025-06-15 16:56:50
update note set note='11' where idNote='1637' ;
-- 2025-06-15 16:56:51
update note set note='16' where idNote='1638' ;
-- 2025-06-15 16:56:51
update note set note='15' where idNote='1639' ;
-- 2025-06-15 16:56:51
update note set note='15' where idNote='1640' ;
-- 2025-06-15 16:56:51
update note set note='11' where idNote='1641' ;
-- 2025-06-15 16:56:51
update note set note='16' where idNote='1642' ;
-- 2025-06-15 16:56:51
update note set note='12' where idNote='1643' ;
-- 2025-06-15 16:56:51
update note set note='11.5' where idNote='1644' ;
-- 2025-06-15 16:56:51
update note set note='15.5' where idNote='1645' ;
-- 2025-06-15 16:56:51
update note set note='17.5' where idNote='1646' ;
-- 2025-06-15 16:56:51
update note set note='15' where idNote='1647' ;
-- 2025-06-15 16:56:51
update note set note='16' where idNote='1648' ;
-- 2025-06-15 16:56:51
update note set note='7' where idNote='1649' ;
-- 2025-06-15 16:56:51
update note set note='16' where idNote='1650' ;
-- 2025-06-15 16:56:51
update note set note='18' where idNote='1651' ;
-- 2025-06-15 16:56:52
update note set note='15' where idNote='1652' ;
-- 2025-06-15 16:56:52
update note set note='0' where idNote='1653' ;
-- 2025-06-15 16:56:52
update note set note='16.5' where idNote='1654' ;
-- 2025-06-15 16:56:52
update note set note='15' where idNote='1655' ;
-- 2025-06-15 16:56:52
update note set note='14' where idNote='1656' ;
-- 2025-06-15 16:56:52
update note set note='14' where idNote='1657' ;
-- 2025-06-15 16:56:52
update note set note='15.5' where idNote='1658' ;
-- 2025-06-15 16:56:52
update note set note='13' where idNote='1659' ;
-- 2025-06-15 16:56:52
update note set note='18' where idNote='1660' ;
-- 2025-06-15 16:56:52
update note set note='17' where idNote='1661' ;
-- 2025-06-15 16:56:52
update note set note='10.5' where idNote='1662' ;
-- 2025-06-15 16:56:53
update note set note='10' where idNote='1663' ;
-- 2025-06-15 16:56:53
update note set note='16.5' where idNote='1664' ;
-- 2025-06-15 16:56:53
update note set note='18' where idNote='1665' ;
-- 2025-06-15 16:56:53
update note set note='13' where idNote='1666' ;
-- 2025-06-15 16:56:53
update note set note='12' where idNote='1667' ;
-- 2025-06-15 16:56:53
update note set note='16' where idNote='1668' ;
-- 2025-06-15 16:56:53
update note set note='9.5' where idNote='1669' ;
-- 2025-06-15 16:56:53
update note set note='17.75' where idNote='1670' ;
-- 2025-06-15 16:56:53
update note set note='16.5' where idNote='1671' ;
-- 2025-06-15 16:56:53
update note set note='13.5' where idNote='1672' ;
-- 2025-06-15 16:56:53
update note set note='7' where idNote='1673' ;
-- 2025-06-15 16:56:53
update note set note='10' where idNote='1674' ;
-- 2025-06-15 16:56:53
update note set note='17.5' where idNote='1675' ;
-- 2025-06-15 16:56:53
update note set note='16' where idNote='1676' ;
-- 2025-06-15 16:56:54
update note set note='13' where idNote='1677' ;
-- 2025-06-15 16:56:54
update note set note='14' where idNote='1678' ;
-- 2025-06-15 16:56:54
update note set note='0' where idNote='1679' ;
-- 2025-06-15 16:56:54
update note set note='16' where idNote='1680' ;
-- 2025-06-15 16:56:54
update note set note='11' where idNote='1681' ;
-- 2025-06-15 16:56:54
update note set note='14.5' where idNote='1682' ;
-- 2025-06-15 16:56:54
update note set note='9' where idNote='1683' ;
-- 2025-06-15 16:56:54
update note set note='17.5' where idNote='1684' ;
-- 2025-06-15 16:56:54
update note set note='0' where idNote='1685' ;
-- 2025-06-15 16:56:54
update note set note='19.75' where idNote='1686' ;
-- 2025-06-15 16:56:54
update note set note='11.5' where idNote='1687' ;
-- 2025-06-15 16:56:54
update note set note='0' where idNote='1688' ;
-- 2025-06-15 16:56:55
update note set note='5' where idNote='1689' ;
-- 2025-06-15 16:56:55
update note set note='14' where idNote='1690' ;
-- 2025-06-15 16:56:55
update note set note='0' where idNote='1691' ;
-- 2025-06-15 16:56:55
update note set note='0' where idNote='1692' ;
-- 2025-06-15 16:56:55
update note set note='16' where idNote='1693' ;
-- 2025-06-15 16:56:55
update note set note='13' where idNote='1694' ;
-- 2025-06-15 16:56:55
update note set note='12' where idNote='1695' ;
-- 2025-06-15 16:56:55
update note set note='0' where idNote='1696' ;
-- 2025-06-15 16:56:55
update note set note='11.75' where idNote='1697' ;
-- 2025-06-15 16:56:55
update note set note='10' where idNote='1698' ;
-- 2025-06-15 16:57:49
update note set note='9' where idNote='1635' ;
-- 2025-06-15 16:57:49
update note set note='15' where idNote='1636' ;
-- 2025-06-15 16:57:49
update note set note='11' where idNote='1637' ;
-- 2025-06-15 16:57:49
update note set note='16' where idNote='1638' ;
-- 2025-06-15 16:57:49
update note set note='15' where idNote='1639' ;
-- 2025-06-15 16:57:49
update note set note='15' where idNote='1640' ;
-- 2025-06-15 16:57:50
update note set note='11' where idNote='1641' ;
-- 2025-06-15 16:57:50
update note set note='16' where idNote='1642' ;
-- 2025-06-15 16:57:50
update note set note='12' where idNote='1643' ;
-- 2025-06-15 16:57:50
update note set note='11.5' where idNote='1644' ;
-- 2025-06-15 16:57:50
update note set note='15.5' where idNote='1645' ;
-- 2025-06-15 16:57:50
update note set note='17.5' where idNote='1646' ;
-- 2025-06-15 16:57:50
update note set note='15' where idNote='1647' ;
-- 2025-06-15 16:57:50
update note set note='16' where idNote='1648' ;
-- 2025-06-15 16:57:50
update note set note='7' where idNote='1649' ;
-- 2025-06-15 16:57:50
update note set note='16' where idNote='1650' ;
-- 2025-06-15 16:57:50
update note set note='18' where idNote='1651' ;
-- 2025-06-15 16:57:50
update note set note='15' where idNote='1652' ;
-- 2025-06-15 16:57:50
update note set note='0' where idNote='1653' ;
-- 2025-06-15 16:57:50
update note set note='16.5' where idNote='1654' ;
-- 2025-06-15 16:57:50
update note set note='15' where idNote='1655' ;
-- 2025-06-15 16:57:50
update note set note='14' where idNote='1656' ;
-- 2025-06-15 16:57:51
update note set note='14' where idNote='1657' ;
-- 2025-06-15 16:57:51
update note set note='15.5' where idNote='1658' ;
-- 2025-06-15 16:57:51
update note set note='13' where idNote='1659' ;
-- 2025-06-15 16:57:51
update note set note='18' where idNote='1660' ;
-- 2025-06-15 16:57:51
update note set note='17' where idNote='1661' ;
-- 2025-06-15 16:57:51
update note set note='10.5' where idNote='1662' ;
-- 2025-06-15 16:57:51
update note set note='10' where idNote='1663' ;
-- 2025-06-15 16:57:51
update note set note='16.5' where idNote='1664' ;
-- 2025-06-15 16:57:51
update note set note='18' where idNote='1665' ;
-- 2025-06-15 16:57:51
update note set note='13' where idNote='1666' ;
-- 2025-06-15 16:57:51
update note set note='12' where idNote='1667' ;
-- 2025-06-15 16:57:51
update note set note='16' where idNote='1668' ;
-- 2025-06-15 16:57:52
update note set note='9.5' where idNote='1669' ;
-- 2025-06-15 16:57:52
update note set note='17.75' where idNote='1670' ;
-- 2025-06-15 16:57:52
update note set note='16.5' where idNote='1671' ;
-- 2025-06-15 16:57:52
update note set note='13.5' where idNote='1672' ;
-- 2025-06-15 16:57:52
update note set note='7' where idNote='1673' ;
-- 2025-06-15 16:57:52
update note set note='10' where idNote='1674' ;
-- 2025-06-15 16:57:52
update note set note='17.5' where idNote='1675' ;
-- 2025-06-15 16:57:52
update note set note='16' where idNote='1676' ;
-- 2025-06-15 16:57:52
update note set note='13' where idNote='1677' ;
-- 2025-06-15 16:57:52
update note set note='14' where idNote='1678' ;
-- 2025-06-15 16:57:52
update note set note='0' where idNote='1679' ;
-- 2025-06-15 16:57:52
update note set note='16' where idNote='1680' ;
-- 2025-06-15 16:57:53
update note set note='11' where idNote='1681' ;
-- 2025-06-15 16:57:53
update note set note='14.5' where idNote='1682' ;
-- 2025-06-15 16:57:53
update note set note='9' where idNote='1683' ;
-- 2025-06-15 16:57:53
update note set note='17.5' where idNote='1684' ;
-- 2025-06-15 16:57:53
update note set note='0' where idNote='1685' ;
-- 2025-06-15 16:57:53
update note set note='19.75' where idNote='1686' ;
-- 2025-06-15 16:57:53
update note set note='11.5' where idNote='1687' ;
-- 2025-06-15 16:57:53
update note set note='0' where idNote='1688' ;
-- 2025-06-15 16:57:53
update note set note='5' where idNote='1689' ;
-- 2025-06-15 16:57:53
update note set note='14' where idNote='1690' ;
-- 2025-06-15 16:57:53
update note set note='0' where idNote='1691' ;
-- 2025-06-15 16:57:53
update note set note='0' where idNote='1692' ;
-- 2025-06-15 16:57:53
update note set note='16' where idNote='1693' ;
-- 2025-06-15 16:57:54
update note set note='13' where idNote='1694' ;
-- 2025-06-15 16:57:54
update note set note='12' where idNote='1695' ;
-- 2025-06-15 16:57:54
update note set note='0' where idNote='1696' ;
-- 2025-06-15 16:57:54
update note set note='11.75' where idNote='1697' ;
-- 2025-06-15 16:57:54
update note set note='10' where idNote='1698' ;
-- 2025-06-15 17:01:05
update note set note='9' where idNote='1635' ;
-- 2025-06-15 17:01:05
update note set note='15' where idNote='1636' ;
-- 2025-06-15 17:01:05
update note set note='11' where idNote='1637' ;
-- 2025-06-15 17:01:05
update note set note='16' where idNote='1638' ;
-- 2025-06-15 17:01:05
update note set note='15' where idNote='1639' ;
-- 2025-06-15 17:01:05
update note set note='15' where idNote='1640' ;
-- 2025-06-15 17:01:05
update note set note='11' where idNote='1641' ;
-- 2025-06-15 17:01:05
update note set note='16' where idNote='1642' ;
-- 2025-06-15 17:01:05
update note set note='12' where idNote='1643' ;
-- 2025-06-15 17:01:05
update note set note='11.5' where idNote='1644' ;
-- 2025-06-15 17:01:05
update note set note='15.5' where idNote='1645' ;
-- 2025-06-15 17:01:05
update note set note='17.5' where idNote='1646' ;
-- 2025-06-15 17:01:06
update note set note='15' where idNote='1647' ;
-- 2025-06-15 17:01:06
update note set note='16' where idNote='1648' ;
-- 2025-06-15 17:01:06
update note set note='7' where idNote='1649' ;
-- 2025-06-15 17:01:06
update note set note='16' where idNote='1650' ;
-- 2025-06-15 17:01:06
update note set note='18' where idNote='1651' ;
-- 2025-06-15 17:01:06
update note set note='15' where idNote='1652' ;
-- 2025-06-15 17:01:06
update note set note='0' where idNote='1653' ;
-- 2025-06-15 17:01:06
update note set note='16.5' where idNote='1654' ;
-- 2025-06-15 17:01:06
update note set note='15' where idNote='1655' ;
-- 2025-06-15 17:01:06
update note set note='14' where idNote='1656' ;
-- 2025-06-15 17:01:06
update note set note='14' where idNote='1657' ;
-- 2025-06-15 17:01:06
update note set note='15.5' where idNote='1658' ;
-- 2025-06-15 17:01:06
update note set note='13' where idNote='1659' ;
-- 2025-06-15 17:01:07
update note set note='18' where idNote='1660' ;
-- 2025-06-15 17:01:07
update note set note='17' where idNote='1661' ;
-- 2025-06-15 17:01:07
update note set note='10.5' where idNote='1662' ;
-- 2025-06-15 17:01:07
update note set note='10' where idNote='1663' ;
-- 2025-06-15 17:01:07
update note set note='16.5' where idNote='1664' ;
-- 2025-06-15 17:01:07
update note set note='18' where idNote='1665' ;
-- 2025-06-15 17:01:07
update note set note='13' where idNote='1666' ;
-- 2025-06-15 17:01:07
update note set note='12' where idNote='1667' ;
-- 2025-06-15 17:01:07
update note set note='16' where idNote='1668' ;
-- 2025-06-15 17:01:07
update note set note='9.5' where idNote='1669' ;
-- 2025-06-15 17:01:07
update note set note='17.75' where idNote='1670' ;
-- 2025-06-15 17:01:07
update note set note='16.5' where idNote='1671' ;
-- 2025-06-15 17:01:07
update note set note='13.5' where idNote='1672' ;
-- 2025-06-15 17:01:07
update note set note='7' where idNote='1673' ;
-- 2025-06-15 17:01:07
update note set note='10' where idNote='1674' ;
-- 2025-06-15 17:01:08
update note set note='17.5' where idNote='1675' ;
-- 2025-06-15 17:01:08
update note set note='16' where idNote='1676' ;
-- 2025-06-15 17:01:08
update note set note='13' where idNote='1677' ;
-- 2025-06-15 17:01:08
update note set note='14' where idNote='1678' ;
-- 2025-06-15 17:01:08
update note set note='0' where idNote='1679' ;
-- 2025-06-15 17:01:08
update note set note='16' where idNote='1680' ;
-- 2025-06-15 17:01:08
update note set note='11' where idNote='1681' ;
-- 2025-06-15 17:01:08
update note set note='14.5' where idNote='1682' ;
-- 2025-06-15 17:01:08
update note set note='9' where idNote='1683' ;
-- 2025-06-15 17:01:08
update note set note='17.5' where idNote='1684' ;
-- 2025-06-15 17:01:08
update note set note='0' where idNote='1685' ;
-- 2025-06-15 17:01:08
update note set note='19.75' where idNote='1686' ;
-- 2025-06-15 17:01:09
update note set note='11.5' where idNote='1687' ;
-- 2025-06-15 17:01:09
update note set note='0' where idNote='1688' ;
-- 2025-06-15 17:01:09
update note set note='5' where idNote='1689' ;
-- 2025-06-15 17:01:09
update note set note='14' where idNote='1690' ;
-- 2025-06-15 17:01:09
update note set note='0' where idNote='1691' ;
-- 2025-06-15 17:01:09
update note set note='0' where idNote='1692' ;
-- 2025-06-15 17:01:09
update note set note='16' where idNote='1693' ;
-- 2025-06-15 17:01:09
update note set note='13' where idNote='1694' ;
-- 2025-06-15 17:01:09
update note set note='12' where idNote='1695' ;
-- 2025-06-15 17:01:09
update note set note='11.75' where idNote='1697' ;
-- 2025-06-15 17:01:09
update note set note='10' where idNote='1698' ;
-- 2025-06-15 17:01:58
update note set note='9' where idNote='1635' ;
-- 2025-06-15 17:01:58
update note set note='15' where idNote='1636' ;
-- 2025-06-15 17:01:58
update note set note='11' where idNote='1637' ;
-- 2025-06-15 17:01:58
update note set note='16' where idNote='1638' ;
-- 2025-06-15 17:01:59
update note set note='15' where idNote='1639' ;
-- 2025-06-15 17:01:59
update note set note='15' where idNote='1640' ;
-- 2025-06-15 17:01:59
update note set note='11' where idNote='1641' ;
-- 2025-06-15 17:01:59
update note set note='16' where idNote='1642' ;
-- 2025-06-15 17:01:59
update note set note='12' where idNote='1643' ;
-- 2025-06-15 17:01:59
update note set note='11.5' where idNote='1644' ;
-- 2025-06-15 17:01:59
update note set note='15.5' where idNote='1645' ;
-- 2025-06-15 17:01:59
update note set note='17.5' where idNote='1646' ;
-- 2025-06-15 17:01:59
update note set note='15' where idNote='1647' ;
-- 2025-06-15 17:01:59
update note set note='16' where idNote='1648' ;
-- 2025-06-15 17:01:59
update note set note='7' where idNote='1649' ;
-- 2025-06-15 17:01:59
update note set note='16' where idNote='1650' ;
-- 2025-06-15 17:01:59
update note set note='18' where idNote='1651' ;
-- 2025-06-15 17:01:59
update note set note='15' where idNote='1652' ;
-- 2025-06-15 17:02:00
update note set note='0' where idNote='1653' ;
-- 2025-06-15 17:02:00
update note set note='16.5' where idNote='1654' ;
-- 2025-06-15 17:02:00
update note set note='15' where idNote='1655' ;
-- 2025-06-15 17:02:00
update note set note='14' where idNote='1656' ;
-- 2025-06-15 17:02:00
update note set note='14' where idNote='1657' ;
-- 2025-06-15 17:02:00
update note set note='15.5' where idNote='1658' ;
-- 2025-06-15 17:02:00
update note set note='13' where idNote='1659' ;
-- 2025-06-15 17:02:00
update note set note='18' where idNote='1660' ;
-- 2025-06-15 17:02:00
update note set note='17' where idNote='1661' ;
-- 2025-06-15 17:02:00
update note set note='10.5' where idNote='1662' ;
-- 2025-06-15 17:02:00
update note set note='10' where idNote='1663' ;
-- 2025-06-15 17:02:00
update note set note='16.5' where idNote='1664' ;
-- 2025-06-15 17:02:00
update note set note='18' where idNote='1665' ;
-- 2025-06-15 17:02:00
update note set note='13' where idNote='1666' ;
-- 2025-06-15 17:02:01
update note set note='12' where idNote='1667' ;
-- 2025-06-15 17:02:01
update note set note='16' where idNote='1668' ;
-- 2025-06-15 17:02:01
update note set note='9.5' where idNote='1669' ;
-- 2025-06-15 17:02:01
update note set note='17.75' where idNote='1670' ;
-- 2025-06-15 17:02:01
update note set note='16.5' where idNote='1671' ;
-- 2025-06-15 17:02:01
update note set note='13.5' where idNote='1672' ;
-- 2025-06-15 17:02:01
update note set note='7' where idNote='1673' ;
-- 2025-06-15 17:02:01
update note set note='10' where idNote='1674' ;
-- 2025-06-15 17:02:01
update note set note='17.5' where idNote='1675' ;
-- 2025-06-15 17:02:01
update note set note='16' where idNote='1676' ;
-- 2025-06-15 17:02:01
update note set note='13' where idNote='1677' ;
-- 2025-06-15 17:02:01
update note set note='14' where idNote='1678' ;
-- 2025-06-15 17:02:01
update note set note='0' where idNote='1679' ;
-- 2025-06-15 17:02:01
update note set note='16' where idNote='1680' ;
-- 2025-06-15 17:02:01
update note set note='11' where idNote='1681' ;
-- 2025-06-15 17:02:02
update note set note='14.5' where idNote='1682' ;
-- 2025-06-15 17:02:02
update note set note='9' where idNote='1683' ;
-- 2025-06-15 17:02:02
update note set note='17.5' where idNote='1684' ;
-- 2025-06-15 17:02:02
update note set note='0' where idNote='1685' ;
-- 2025-06-15 17:02:02
update note set note='19.75' where idNote='1686' ;
-- 2025-06-15 17:02:02
update note set note='11.5' where idNote='1687' ;
-- 2025-06-15 17:02:02
update note set note='0' where idNote='1688' ;
-- 2025-06-15 17:02:02
update note set note='5' where idNote='1689' ;
-- 2025-06-15 17:02:02
update note set note='14' where idNote='1690' ;
-- 2025-06-15 17:02:02
update note set note='0' where idNote='1691' ;
-- 2025-06-15 17:02:02
update note set note='0' where idNote='1692' ;
-- 2025-06-15 17:02:02
update note set note='16' where idNote='1693' ;
-- 2025-06-15 17:02:02
update note set note='13' where idNote='1694' ;
-- 2025-06-15 17:02:03
update note set note='12' where idNote='1695' ;
-- 2025-06-15 17:02:03
update note set note='11.75' where idNote='1697' ;
-- 2025-06-15 17:02:03
update note set note='10' where idNote='1698' ;
-- 2025-06-15 17:04:25
update note set note='9' where idNote='1635' ;
-- 2025-06-15 17:04:25
update note set note='15' where idNote='1636' ;
-- 2025-06-15 17:04:25
update note set note='11' where idNote='1637' ;
-- 2025-06-15 17:04:25
update note set note='16' where idNote='1638' ;
-- 2025-06-15 17:04:25
update note set note='15' where idNote='1639' ;
-- 2025-06-15 17:04:25
update note set note='15' where idNote='1640' ;
-- 2025-06-15 17:04:26
update note set note='11' where idNote='1641' ;
-- 2025-06-15 17:04:26
update note set note='16' where idNote='1642' ;
-- 2025-06-15 17:04:26
update note set note='12' where idNote='1643' ;
-- 2025-06-15 17:04:26
update note set note='11.5' where idNote='1644' ;
-- 2025-06-15 17:04:26
update note set note='15.5' where idNote='1645' ;
-- 2025-06-15 17:04:26
update note set note='17.5' where idNote='1646' ;
-- 2025-06-15 17:04:26
update note set note='15' where idNote='1647' ;
-- 2025-06-15 17:04:26
update note set note='16' where idNote='1648' ;
-- 2025-06-15 17:04:26
update note set note='7' where idNote='1649' ;
-- 2025-06-15 17:04:26
update note set note='16' where idNote='1650' ;
-- 2025-06-15 17:04:26
update note set note='18' where idNote='1651' ;
-- 2025-06-15 17:04:26
update note set note='15' where idNote='1652' ;
-- 2025-06-15 17:04:26
update note set note='0' where idNote='1653' ;
-- 2025-06-15 17:04:27
update note set note='16.5' where idNote='1654' ;
-- 2025-06-15 17:04:27
update note set note='15' where idNote='1655' ;
-- 2025-06-15 17:04:27
update note set note='14' where idNote='1656' ;
-- 2025-06-15 17:04:27
update note set note='14' where idNote='1657' ;
-- 2025-06-15 17:04:27
update note set note='15.5' where idNote='1658' ;
-- 2025-06-15 17:04:27
update note set note='13' where idNote='1659' ;
-- 2025-06-15 17:04:27
update note set note='18' where idNote='1660' ;
-- 2025-06-15 17:04:27
update note set note='17' where idNote='1661' ;
-- 2025-06-15 17:04:27
update note set note='10.5' where idNote='1662' ;
-- 2025-06-15 17:04:27
update note set note='10' where idNote='1663' ;
-- 2025-06-15 17:04:27
update note set note='16.5' where idNote='1664' ;
-- 2025-06-15 17:04:27
update note set note='18' where idNote='1665' ;
-- 2025-06-15 17:04:28
update note set note='13' where idNote='1666' ;
-- 2025-06-15 17:04:28
update note set note='12' where idNote='1667' ;
-- 2025-06-15 17:04:28
update note set note='16' where idNote='1668' ;
-- 2025-06-15 17:04:28
update note set note='9.5' where idNote='1669' ;
-- 2025-06-15 17:04:28
update note set note='17.75' where idNote='1670' ;
-- 2025-06-15 17:04:28
update note set note='16.5' where idNote='1671' ;
-- 2025-06-15 17:04:28
update note set note='13.5' where idNote='1672' ;
-- 2025-06-15 17:04:28
update note set note='7' where idNote='1673' ;
-- 2025-06-15 17:04:28
update note set note='10' where idNote='1674' ;
-- 2025-06-15 17:04:28
update note set note='17.5' where idNote='1675' ;
-- 2025-06-15 17:04:28
update note set note='16' where idNote='1676' ;
-- 2025-06-15 17:04:28
update note set note='13' where idNote='1677' ;
-- 2025-06-15 17:04:28
update note set note='14' where idNote='1678' ;
-- 2025-06-15 17:04:29
update note set note='0' where idNote='1679' ;
-- 2025-06-15 17:04:29
update note set note='16' where idNote='1680' ;
-- 2025-06-15 17:04:29
update note set note='11' where idNote='1681' ;
-- 2025-06-15 17:04:29
update note set note='14.5' where idNote='1682' ;
-- 2025-06-15 17:04:29
update note set note='9' where idNote='1683' ;
-- 2025-06-15 17:04:29
update note set note='17.5' where idNote='1684' ;
-- 2025-06-15 17:04:29
update note set note='0' where idNote='1685' ;
-- 2025-06-15 17:04:29
update note set note='19.75' where idNote='1686' ;
-- 2025-06-15 17:04:29
update note set note='11.5' where idNote='1687' ;
-- 2025-06-15 17:04:29
update note set note='0' where idNote='1688' ;
-- 2025-06-15 17:04:29
update note set note='5' where idNote='1689' ;
-- 2025-06-15 17:04:29
update note set note='14' where idNote='1690' ;
-- 2025-06-15 17:04:29
update note set note='0' where idNote='1691' ;
-- 2025-06-15 17:04:30
update note set note='0' where idNote='1692' ;
-- 2025-06-15 17:04:30
update note set note='16' where idNote='1693' ;
-- 2025-06-15 17:04:30
update note set note='13' where idNote='1694' ;
-- 2025-06-15 17:04:30
update note set note='12' where idNote='1695' ;
-- 2025-06-15 17:04:30
update note set note='11.75' where idNote='1697' ;
-- 2025-06-15 17:04:30
update note set note='10' where idNote='1698' ;
-- 2025-06-15 17:08:03
update note set note='15' where idNote='1640' ;
-- 2025-06-15 17:08:03
update note set note='11' where idNote='1641' ;
-- 2025-06-15 17:12:15
update note set note='11.75' where idNote='1697' ;
-- 2025-06-15 17:12:15
update note set note='10' where idNote='1698' ;
-- 2025-06-15 17:14:41
update note set note='9' where idNote='1635' ;
-- 2025-06-15 17:14:41
update note set note='15' where idNote='1636' ;
-- 2025-06-15 17:14:41
update note set note='11' where idNote='1637' ;
-- 2025-06-15 17:14:41
update note set note='16' where idNote='1638' ;
-- 2025-06-15 17:14:41
update note set note='15' where idNote='1639' ;
-- 2025-06-15 17:14:41
update note set note='15' where idNote='1640' ;
-- 2025-06-15 17:14:41
update note set note='11' where idNote='1641' ;
-- 2025-06-15 17:14:41
update note set note='16' where idNote='1642' ;
-- 2025-06-15 17:14:42
update note set note='12' where idNote='1643' ;
-- 2025-06-15 17:14:42
update note set note='11.5' where idNote='1644' ;
-- 2025-06-15 17:14:42
update note set note='15.5' where idNote='1645' ;
-- 2025-06-15 17:14:42
update note set note='17.5' where idNote='1646' ;
-- 2025-06-15 17:14:42
update note set note='15' where idNote='1647' ;
-- 2025-06-15 17:14:42
update note set note='16' where idNote='1648' ;
-- 2025-06-15 17:14:42
update note set note='7' where idNote='1649' ;
-- 2025-06-15 17:14:42
update note set note='16' where idNote='1650' ;
-- 2025-06-15 17:14:42
update note set note='18' where idNote='1651' ;
-- 2025-06-15 17:14:42
update note set note='15' where idNote='1652' ;
-- 2025-06-15 17:14:42
update note set note='0' where idNote='1653' ;
-- 2025-06-15 17:14:42
update note set note='16.5' where idNote='1654' ;
-- 2025-06-15 17:14:42
update note set note='15' where idNote='1655' ;
-- 2025-06-15 17:14:42
update note set note='14' where idNote='1656' ;
-- 2025-06-15 17:14:43
update note set note='14' where idNote='1657' ;
-- 2025-06-15 17:14:43
update note set note='15.5' where idNote='1658' ;
-- 2025-06-15 17:14:43
update note set note='13' where idNote='1659' ;
-- 2025-06-15 17:14:43
update note set note='18' where idNote='1660' ;
-- 2025-06-15 17:14:43
update note set note='17' where idNote='1661' ;
-- 2025-06-15 17:14:43
update note set note='10.5' where idNote='1662' ;
-- 2025-06-15 17:14:43
update note set note='10' where idNote='1663' ;
-- 2025-06-15 17:14:43
update note set note='16.5' where idNote='1664' ;
-- 2025-06-15 17:14:43
update note set note='18' where idNote='1665' ;
-- 2025-06-15 17:14:43
update note set note='13' where idNote='1666' ;
-- 2025-06-15 17:14:43
update note set note='12' where idNote='1667' ;
-- 2025-06-15 17:14:43
update note set note='16' where idNote='1668' ;
-- 2025-06-15 17:14:43
update note set note='9.5' where idNote='1669' ;
-- 2025-06-15 17:14:43
update note set note='17.75' where idNote='1670' ;
-- 2025-06-15 17:14:43
update note set note='16.5' where idNote='1671' ;
-- 2025-06-15 17:14:44
update note set note='13.5' where idNote='1672' ;
-- 2025-06-15 17:14:44
update note set note='7' where idNote='1673' ;
-- 2025-06-15 17:14:44
update note set note='10' where idNote='1674' ;
-- 2025-06-15 17:14:44
update note set note='17.5' where idNote='1675' ;
-- 2025-06-15 17:14:44
update note set note='16' where idNote='1676' ;
-- 2025-06-15 17:14:44
update note set note='13' where idNote='1677' ;
-- 2025-06-15 17:14:44
update note set note='14' where idNote='1678' ;
-- 2025-06-15 17:14:44
update note set note='0' where idNote='1679' ;
-- 2025-06-15 17:14:44
update note set note='16' where idNote='1680' ;
-- 2025-06-15 17:14:44
update note set note='11' where idNote='1681' ;
-- 2025-06-15 17:14:44
update note set note='14.5' where idNote='1682' ;
-- 2025-06-15 17:14:44
update note set note='9' where idNote='1683' ;
-- 2025-06-15 17:14:44
update note set note='17.5' where idNote='1684' ;
-- 2025-06-15 17:14:44
update note set note='0' where idNote='1685' ;
-- 2025-06-15 17:14:44
update note set note='19.75' where idNote='1686' ;
-- 2025-06-15 17:14:45
update note set note='11.5' where idNote='1687' ;
-- 2025-06-15 17:14:45
update note set note='0' where idNote='1688' ;
-- 2025-06-15 17:14:45
update note set note='5' where idNote='1689' ;
-- 2025-06-15 17:14:45
update note set note='14' where idNote='1690' ;
-- 2025-06-15 17:14:45
update note set note='0' where idNote='1691' ;
-- 2025-06-15 17:14:45
update note set note='0' where idNote='1692' ;
-- 2025-06-15 17:14:45
update note set note='16' where idNote='1693' ;
-- 2025-06-15 17:14:45
update note set note='13' where idNote='1694' ;
-- 2025-06-15 17:14:45
update note set note='12' where idNote='1695' ;
-- 2025-06-15 17:14:45
update note set note='0' where idNote='1696' ;
-- 2025-06-15 17:14:45
update note set note='11.75' where idNote='1697' ;
-- 2025-06-15 17:14:45
update note set note='10' where idNote='1698' ;
-- 2025-06-15 17:19:11
update note set note='16' where idNote='1693' ;
-- 2025-06-15 17:19:11
update note set note='13' where idNote='1694' ;
-- 2025-06-15 17:19:11
update note set note='12' where idNote='1695' ;
-- 2025-06-15 17:19:12
update note set note='0' where idNote='1696' ;
-- 2025-06-15 17:19:12
update note set note='11.75' where idNote='1697' ;
-- 2025-06-15 17:19:12
update note set note='10' where idNote='1698' ;
-- 2025-06-15 17:19:25
update note set note='10' where idNote='1698' ;
-- 2025-06-15 17:20:49
update note set note='10' where idNote='1698' ;
-- 2025-06-15 17:21:25
update note set note='10' where idNote='1698' ;
-- 2025-06-15 17:21:55
update note set note='10' where idNote='1698' ;
-- 2025-06-15 17:22:32
update note set note='10' where idNote='1698' ;
-- 2025-06-15 17:22:53
update note set note='0' where idNote='1696' ;
-- 2025-06-15 17:22:54
update note set note='11.75' where idNote='1697' ;
-- 2025-06-15 17:22:54
update note set note='10' where idNote='1698' ;
-- 2025-06-15 19:41:53
update examen set codeExamen='A24255D1PC5DD3',codeClasseMatiere='PC5D',codeSalleClasse='A24255D1',codeEvaluation='D3',
        dateExamen='',statutExamen='0',heureDebutExamen='00:00:00',heureFinExamen='00:00:00' where codeExamen='A24255D1PC5DD3';
-- 2025-06-15 19:57:39
update examen set codeExamen='A24255D1PC5DD3',codeClasseMatiere='PC5D',codeSalleClasse='A24255D1',codeEvaluation='D3',
        dateExamen='',statutExamen='1',heureDebutExamen='00:00:00',heureFinExamen='00:00:00' where codeExamen='A24255D1PC5DD3';
-- 2025-06-15 20:29:15
update examen set codeExamen='A24255D1PC5DD3',codeClasseMatiere='PC5D',codeSalleClasse='A24255D1',codeEvaluation='D3',
        dateExamen='',statutExamen='0',heureDebutExamen='00:00:00',heureFinExamen='00:00:00' where codeExamen='A24255D1PC5DD3';
-- 2025-06-15 23:22:52
insert into examen (codeExamen,codeClasseMatiere,codeSalleClasse,codeEvaluation,dateExamen,statutExamen,heureDebutExamen,heureFinExamen) values ('A24252AS2MATH2ASD3','MATH2AS','A24252AS2','D3','','1','','');
-- 2025-06-15 23:27:21
insert into note(matricule,codeExamen,note) values('2AS201','A24252AS2MATH2ASD3','11');
-- 2025-06-15 23:27:21
insert into note(matricule,codeExamen,note) values('2AS202','A24252AS2MATH2ASD3','8.5');
-- 2025-06-15 23:27:21
insert into note(matricule,codeExamen,note) values('2AS203','A24252AS2MATH2ASD3','9');
-- 2025-06-15 23:27:21
insert into note(matricule,codeExamen,note) values('2AS204','A24252AS2MATH2ASD3','11');
-- 2025-06-15 23:27:22
insert into note(matricule,codeExamen,note) values('2AS205','A24252AS2MATH2ASD3','10');
-- 2025-06-15 23:27:22
insert into note(matricule,codeExamen,note) values('2AS206','A24252AS2MATH2ASD3','9');
-- 2025-06-15 23:27:22
insert into note(matricule,codeExamen,note) values('2AS207','A24252AS2MATH2ASD3','9');
-- 2025-06-15 23:27:22
insert into note(matricule,codeExamen,note) values('2AS208','A24252AS2MATH2ASD3','15');
-- 2025-06-15 23:27:22
insert into note(matricule,codeExamen,note) values('2AS209','A24252AS2MATH2ASD3','7');
-- 2025-06-15 23:27:22
insert into note(matricule,codeExamen,note) values('2AS210','A24252AS2MATH2ASD3','8');
-- 2025-06-15 23:27:22
insert into note(matricule,codeExamen,note) values('2AS211','A24252AS2MATH2ASD3','8');
-- 2025-06-15 23:27:23
insert into note(matricule,codeExamen,note) values('2AS212','A24252AS2MATH2ASD3','8.5');
-- 2025-06-15 23:27:23
insert into note(matricule,codeExamen,note) values('2AS213','A24252AS2MATH2ASD3','9.5');
-- 2025-06-15 23:27:23
insert into note(matricule,codeExamen,note) values('2AS214','A24252AS2MATH2ASD3','9');
-- 2025-06-15 23:27:23
insert into note(matricule,codeExamen,note) values('2AS215','A24252AS2MATH2ASD3','13');
-- 2025-06-15 23:27:23
insert into note(matricule,codeExamen,note) values('2AS216','A24252AS2MATH2ASD3','8');
-- 2025-06-15 23:27:23
insert into note(matricule,codeExamen,note) values('2AS217','A24252AS2MATH2ASD3','7');
-- 2025-06-15 23:27:24
insert into note(matricule,codeExamen,note) values('2AS218','A24252AS2MATH2ASD3','12');
-- 2025-06-15 23:27:24
insert into note(matricule,codeExamen,note) values('2AS219','A24252AS2MATH2ASD3','13');
-- 2025-06-15 23:27:24
insert into note(matricule,codeExamen,note) values('2AS220','A24252AS2MATH2ASD3','6');
-- 2025-06-15 23:27:24
insert into note(matricule,codeExamen,note) values('2AS221','A24252AS2MATH2ASD3','18.5');
-- 2025-06-15 23:27:24
insert into note(matricule,codeExamen,note) values('2AS222','A24252AS2MATH2ASD3','16');
-- 2025-06-15 23:27:24
insert into note(matricule,codeExamen,note) values('2AS223','A24252AS2MATH2ASD3','12.6');
-- 2025-06-15 23:27:25
insert into note(matricule,codeExamen,note) values('2AS224','A24252AS2MATH2ASD3','6');
-- 2025-06-15 23:27:25
insert into note(matricule,codeExamen,note) values('2AS225','A24252AS2MATH2ASD3','9');
-- 2025-06-15 23:27:25
insert into note(matricule,codeExamen,note) values('2AS226','A24252AS2MATH2ASD3','8');
-- 2025-06-15 23:27:25
insert into note(matricule,codeExamen,note) values('2AS227','A24252AS2MATH2ASD3','0');
-- 2025-06-15 23:27:25
insert into note(matricule,codeExamen,note) values('2AS228','A24252AS2MATH2ASD3','13.5');
-- 2025-06-15 23:27:25
insert into note(matricule,codeExamen,note) values('2AS229','A24252AS2MATH2ASD3','19.5');
-- 2025-06-15 23:27:26
insert into note(matricule,codeExamen,note) values('2AS230','A24252AS2MATH2ASD3','17.5');
-- 2025-06-15 23:27:26
insert into note(matricule,codeExamen,note) values('2AS231','A24252AS2MATH2ASD3','9.5');
-- 2025-06-15 23:27:26
insert into note(matricule,codeExamen,note) values('2AS232','A24252AS2MATH2ASD3','9');
-- 2025-06-15 23:27:26
insert into note(matricule,codeExamen,note) values('2AS233','A24252AS2MATH2ASD3','7');
-- 2025-06-15 23:27:26
insert into note(matricule,codeExamen,note) values('2AS234','A24252AS2MATH2ASD3','10');
-- 2025-06-15 23:27:26
insert into note(matricule,codeExamen,note) values('2AS235','A24252AS2MATH2ASD3','7');
-- 2025-06-15 23:27:27
insert into note(matricule,codeExamen,note) values('2AS236','A24252AS2MATH2ASD3','5');
-- 2025-06-15 23:27:27
insert into note(matricule,codeExamen,note) values('2AS237','A24252AS2MATH2ASD3','13');
-- 2025-06-15 23:27:27
insert into note(matricule,codeExamen,note) values('2AS238','A24252AS2MATH2ASD3','7');
-- 2025-06-15 23:27:27
insert into note(matricule,codeExamen,note) values('2AS239','A24252AS2MATH2ASD3','10');
-- 2025-06-15 23:27:27
insert into note(matricule,codeExamen,note) values('2AS240','A24252AS2MATH2ASD3','12');
-- 2025-06-15 23:27:27
insert into note(matricule,codeExamen,note) values('2AS241','A24252AS2MATH2ASD3','15');
-- 2025-06-15 23:27:28
insert into note(matricule,codeExamen,note) values('2AS242','A24252AS2MATH2ASD3','10');
-- 2025-06-15 23:27:28
insert into note(matricule,codeExamen,note) values('2AS243','A24252AS2MATH2ASD3','11.5');
-- 2025-06-15 23:27:28
insert into note(matricule,codeExamen,note) values('2AS244','A24252AS2MATH2ASD3','6');
-- 2025-06-15 23:27:28
insert into note(matricule,codeExamen,note) values('2AS245','A24252AS2MATH2ASD3','10');
-- 2025-06-15 23:27:28
insert into note(matricule,codeExamen,note) values('2AS246','A24252AS2MATH2ASD3','8.5');
-- 2025-06-15 23:27:28
insert into note(matricule,codeExamen,note) values('2AS247','A24252AS2MATH2ASD3','9');
-- 2025-06-15 23:27:29
insert into note(matricule,codeExamen,note) values('2AS248','A24252AS2MATH2ASD3','11');
-- 2025-06-15 23:27:29
insert into note(matricule,codeExamen,note) values('2AS249','A24252AS2MATH2ASD3','15');
-- 2025-06-15 23:27:29
insert into note(matricule,codeExamen,note) values('2AS250','A24252AS2MATH2ASD3','0');
-- 2025-06-15 23:27:29
insert into note(matricule,codeExamen,note) values('2AS251','A24252AS2MATH2ASD3','0');
-- 2025-06-15 23:27:29
insert into note(matricule,codeExamen,note) values('2AS252','A24252AS2MATH2ASD3','8');
-- 2025-06-15 23:27:29
insert into note(matricule,codeExamen,note) values('2AS253','A24252AS2MATH2ASD3','0');
-- 2025-06-15 23:27:30
insert into note(matricule,codeExamen,note) values('2AS254','A24252AS2MATH2ASD3','11');
-- 2025-06-15 23:27:30
insert into note(matricule,codeExamen,note) values('2AS255','A24252AS2MATH2ASD3','8.5');
-- 2025-06-15 23:27:30
insert into note(matricule,codeExamen,note) values('2AS256','A24252AS2MATH2ASD3','9');
-- 2025-06-15 23:27:30
insert into note(matricule,codeExamen,note) values('2AS257','A24252AS2MATH2ASD3','13');
-- 2025-06-15 23:28:48
insert into examen (codeExamen,codeClasseMatiere,codeSalleClasse,codeEvaluation,dateExamen,statutExamen,heureDebutExamen,heureFinExamen) values ('A24255D2MATH5DD3','MATH5D','A24255D2','D3','','1','','');
-- 2025-06-15 23:29:12
insert into examen (codeExamen,codeClasseMatiere,codeSalleClasse,codeEvaluation,dateExamen,statutExamen,heureDebutExamen,heureFinExamen) values ('A24255D2PC5DD3','PC5D','A24255D2','D3','','1','','');
-- 2025-06-15 23:31:23
insert into note(matricule,codeExamen,note) values('5d201','A24255D2PC5DD3','11');
-- 2025-06-15 23:31:23
insert into note(matricule,codeExamen,note) values('5d202','A24255D2PC5DD3','14.5');
-- 2025-06-15 23:31:23
insert into note(matricule,codeExamen,note) values('5d203','A24255D2PC5DD3','11.75');
-- 2025-06-15 23:31:24
insert into note(matricule,codeExamen,note) values('5d204','A24255D2PC5DD3','');
-- 2025-06-15 23:31:24
insert into note(matricule,codeExamen,note) values('5d205','A24255D2PC5DD3','9.75');
-- 2025-06-15 23:31:24
insert into note(matricule,codeExamen,note) values('5d206','A24255D2PC5DD3','6.25');
-- 2025-06-15 23:31:24
insert into note(matricule,codeExamen,note) values('5d207','A24255D2PC5DD3','');
-- 2025-06-15 23:31:24
insert into note(matricule,codeExamen,note) values('5d208','A24255D2PC5DD3','9.25');
-- 2025-06-15 23:31:24
insert into note(matricule,codeExamen,note) values('5d209','A24255D2PC5DD3','11');
-- 2025-06-15 23:31:25
insert into note(matricule,codeExamen,note) values('5d210','A24255D2PC5DD3','');
-- 2025-06-15 23:31:25
insert into note(matricule,codeExamen,note) values('5d211','A24255D2PC5DD3','11.5');
-- 2025-06-15 23:31:25
insert into note(matricule,codeExamen,note) values('5d212','A24255D2PC5DD3','14.25');
-- 2025-06-15 23:31:25
insert into note(matricule,codeExamen,note) values('5d213','A24255D2PC5DD3','6.5');
-- 2025-06-15 23:31:25
insert into note(matricule,codeExamen,note) values('5d214','A24255D2PC5DD3','6.25');
-- 2025-06-15 23:31:25
insert into note(matricule,codeExamen,note) values('5d215','A24255D2PC5DD3','12');
-- 2025-06-15 23:31:26
insert into note(matricule,codeExamen,note) values('5d216','A24255D2PC5DD3','10');
-- 2025-06-15 23:31:26
insert into note(matricule,codeExamen,note) values('5d217','A24255D2PC5DD3','9.75');
-- 2025-06-15 23:31:26
insert into note(matricule,codeExamen,note) values('5d218','A24255D2PC5DD3','');
-- 2025-06-15 23:31:26
insert into note(matricule,codeExamen,note) values('5d219','A24255D2PC5DD3','10.75');
-- 2025-06-15 23:31:26
insert into note(matricule,codeExamen,note) values('5d220','A24255D2PC5DD3','9');
-- 2025-06-15 23:31:26
insert into note(matricule,codeExamen,note) values('5d221','A24255D2PC5DD3','');
-- 2025-06-15 23:31:27
insert into note(matricule,codeExamen,note) values('5d222','A24255D2PC5DD3','17');
-- 2025-06-15 23:31:27
insert into note(matricule,codeExamen,note) values('5d223','A24255D2PC5DD3','');
-- 2025-06-15 23:31:27
insert into note(matricule,codeExamen,note) values('5d224','A24255D2PC5DD3','6');
-- 2025-06-15 23:31:27
insert into note(matricule,codeExamen,note) values('5d225','A24255D2PC5DD3','11.6');
-- 2025-06-15 23:31:27
insert into note(matricule,codeExamen,note) values('5d226','A24255D2PC5DD3','7.5');
-- 2025-06-15 23:31:27
insert into note(matricule,codeExamen,note) values('5d227','A24255D2PC5DD3','4');
-- 2025-06-15 23:31:28
insert into note(matricule,codeExamen,note) values('5d228','A24255D2PC5DD3','9.5');
-- 2025-06-15 23:31:28
insert into note(matricule,codeExamen,note) values('5d229','A24255D2PC5DD3','11.5');
-- 2025-06-15 23:31:28
insert into note(matricule,codeExamen,note) values('5d230','A24255D2PC5DD3','5');
-- 2025-06-15 23:31:28
insert into note(matricule,codeExamen,note) values('5d231','A24255D2PC5DD3','18');
-- 2025-06-15 23:31:28
insert into note(matricule,codeExamen,note) values('5d232','A24255D2PC5DD3','17');
-- 2025-06-15 23:31:28
insert into note(matricule,codeExamen,note) values('5d233','A24255D2PC5DD3','8');
-- 2025-06-15 23:31:28
insert into note(matricule,codeExamen,note) values('5d234','A24255D2PC5DD3','16.25');
-- 2025-06-15 23:31:29
insert into note(matricule,codeExamen,note) values('5d235','A24255D2PC5DD3','17.5');
-- 2025-06-15 23:31:29
insert into note(matricule,codeExamen,note) values('5d236','A24255D2PC5DD3','19');
-- 2025-06-15 23:31:29
insert into note(matricule,codeExamen,note) values('5d237','A24255D2PC5DD3','8');
-- 2025-06-15 23:31:29
insert into note(matricule,codeExamen,note) values('5d238','A24255D2PC5DD3','');
-- 2025-06-15 23:31:29
insert into note(matricule,codeExamen,note) values('5d239','A24255D2PC5DD3','11.25');
-- 2025-06-15 23:31:30
insert into note(matricule,codeExamen,note) values('5d240','A24255D2PC5DD3','11.25');
-- 2025-06-15 23:31:30
insert into note(matricule,codeExamen,note) values('5d241','A24255D2PC5DD3','10.75');
-- 2025-06-15 23:31:30
insert into note(matricule,codeExamen,note) values('5d242','A24255D2PC5DD3','18');
-- 2025-06-15 23:31:30
insert into note(matricule,codeExamen,note) values('5d243','A24255D2PC5DD3','12.5');
-- 2025-06-15 23:31:30
insert into note(matricule,codeExamen,note) values('5d244','A24255D2PC5DD3','14.5');
-- 2025-06-15 23:31:30
insert into note(matricule,codeExamen,note) values('5d245','A24255D2PC5DD3','19');
-- 2025-06-15 23:31:31
insert into note(matricule,codeExamen,note) values('5d246','A24255D2PC5DD3','7');
-- 2025-06-15 23:31:31
insert into note(matricule,codeExamen,note) values('5d247','A24255D2PC5DD3','11');
-- 2025-06-15 23:31:31
insert into note(matricule,codeExamen,note) values('5d248','A24255D2PC5DD3','10.5');
-- 2025-06-15 23:31:31
insert into note(matricule,codeExamen,note) values('5d249','A24255D2PC5DD3','');
-- 2025-06-15 23:31:31
insert into note(matricule,codeExamen,note) values('5d250','A24255D2PC5DD3','6');
-- 2025-06-15 23:31:31
insert into note(matricule,codeExamen,note) values('5d251','A24255D2PC5DD3','5');
-- 2025-06-15 23:31:32
insert into note(matricule,codeExamen,note) values('5d252','A24255D2PC5DD3','17');
-- 2025-06-15 23:31:32
insert into note(matricule,codeExamen,note) values('5d253','A24255D2PC5DD3','');
-- 2025-06-15 23:31:32
insert into note(matricule,codeExamen,note) values('5d254','A24255D2PC5DD3','11.5');
-- 2025-06-15 23:31:32
insert into note(matricule,codeExamen,note) values('5d255','A24255D2PC5DD3','16');
-- 2025-06-15 23:31:32
insert into note(matricule,codeExamen,note) values('5d256','A24255D2PC5DD3','');
-- 2025-06-15 23:31:32
insert into note(matricule,codeExamen,note) values('5d257','A24255D2PC5DD3','14.75');
-- 2025-06-15 23:31:33
insert into note(matricule,codeExamen,note) values('5d258','A24255D2PC5DD3','16.75');
-- 2025-06-15 23:31:33
insert into note(matricule,codeExamen,note) values('5d259','A24255D2PC5DD3','6.75');
-- 2025-06-15 23:31:33
insert into note(matricule,codeExamen,note) values('5d260','A24255D2PC5DD3','6.5');
-- 2025-06-15 23:31:33
insert into note(matricule,codeExamen,note) values('5d261','A24255D2PC5DD3','');
-- 2025-06-15 23:31:33
insert into note(matricule,codeExamen,note) values('5d262','A24255D2PC5DD3','');
-- 2025-06-15 23:31:33
insert into note(matricule,codeExamen,note) values('5d263','A24255D2PC5DD3','10.5');
-- 2025-06-15 23:31:34
insert into note(matricule,codeExamen,note) values('5d2064','A24255D2PC5DD3','5');
-- 2025-06-15 23:34:21
insert into examen (codeExamen,codeClasseMatiere,codeSalleClasse,codeEvaluation,dateExamen,statutExamen,heureDebutExamen,heureFinExamen) values ('A24255D3PC5DD3','PC5D','A24255D3','D3','','1','','');
-- 2025-06-15 23:35:12
insert into note(matricule,codeExamen,note) values('5d301','A24255D3PC5DD3','7.5');
-- 2025-06-15 23:35:13
insert into note(matricule,codeExamen,note) values('5d302','A24255D3PC5DD3','7.5');
-- 2025-06-15 23:35:13
insert into note(matricule,codeExamen,note) values('5d303','A24255D3PC5DD3','7');
-- 2025-06-15 23:35:13
insert into note(matricule,codeExamen,note) values('5d304','A24255D3PC5DD3','9');
-- 2025-06-15 23:35:13
insert into note(matricule,codeExamen,note) values('5d305','A24255D3PC5DD3','7');
-- 2025-06-15 23:35:13
insert into note(matricule,codeExamen,note) values('5d306','A24255D3PC5DD3','10');
-- 2025-06-15 23:35:13
insert into note(matricule,codeExamen,note) values('5d307','A24255D3PC5DD3','');
-- 2025-06-15 23:35:14
insert into note(matricule,codeExamen,note) values('5d308','A24255D3PC5DD3','8');
-- 2025-06-15 23:35:14
insert into note(matricule,codeExamen,note) values('5d309','A24255D3PC5DD3','');
-- 2025-06-15 23:35:14
insert into note(matricule,codeExamen,note) values('5d310','A24255D3PC5DD3','7');
-- 2025-06-15 23:35:14
insert into note(matricule,codeExamen,note) values('5d311','A24255D3PC5DD3','8.5');
-- 2025-06-15 23:35:14
insert into note(matricule,codeExamen,note) values('5d312','A24255D3PC5DD3','9');
-- 2025-06-15 23:35:14
insert into note(matricule,codeExamen,note) values('5d313','A24255D3PC5DD3','8.5');
-- 2025-06-15 23:35:15
insert into note(matricule,codeExamen,note) values('5d314','A24255D3PC5DD3','7');
-- 2025-06-15 23:35:15
insert into note(matricule,codeExamen,note) values('5d315','A24255D3PC5DD3','11.5');
-- 2025-06-15 23:35:15
insert into note(matricule,codeExamen,note) values('5d316','A24255D3PC5DD3','11.5');
-- 2025-06-15 23:35:15
insert into note(matricule,codeExamen,note) values('5d317','A24255D3PC5DD3','');
-- 2025-06-15 23:35:15
insert into note(matricule,codeExamen,note) values('5d318','A24255D3PC5DD3','');
-- 2025-06-15 23:35:15
insert into note(matricule,codeExamen,note) values('5d319','A24255D3PC5DD3','');
-- 2025-06-15 23:35:16
insert into note(matricule,codeExamen,note) values('5d320','A24255D3PC5DD3','12');
-- 2025-06-15 23:35:16
insert into note(matricule,codeExamen,note) values('5d321','A24255D3PC5DD3','10.5');
-- 2025-06-15 23:35:16
insert into note(matricule,codeExamen,note) values('5d322','A24255D3PC5DD3','9.5');
-- 2025-06-15 23:35:16
insert into note(matricule,codeExamen,note) values('5d323','A24255D3PC5DD3','14');
-- 2025-06-15 23:35:16
insert into note(matricule,codeExamen,note) values('5d324','A24255D3PC5DD3','5');
-- 2025-06-15 23:35:17
insert into note(matricule,codeExamen,note) values('5d325','A24255D3PC5DD3','');
-- 2025-06-15 23:35:17
insert into note(matricule,codeExamen,note) values('5d326','A24255D3PC5DD3','6.5');
-- 2025-06-15 23:35:17
insert into note(matricule,codeExamen,note) values('5d327','A24255D3PC5DD3','10.5');
-- 2025-06-15 23:35:17
insert into note(matricule,codeExamen,note) values('5d328','A24255D3PC5DD3','');
-- 2025-06-15 23:35:17
insert into note(matricule,codeExamen,note) values('5d329','A24255D3PC5DD3','7');
-- 2025-06-15 23:35:17
insert into note(matricule,codeExamen,note) values('5d330','A24255D3PC5DD3','');
-- 2025-06-15 23:35:17
insert into note(matricule,codeExamen,note) values('5d331','A24255D3PC5DD3','10');
-- 2025-06-15 23:35:18
insert into note(matricule,codeExamen,note) values('5d332','A24255D3PC5DD3','5');
-- 2025-06-15 23:35:18
insert into note(matricule,codeExamen,note) values('5d333','A24255D3PC5DD3','');
-- 2025-06-15 23:35:18
insert into note(matricule,codeExamen,note) values('5d334','A24255D3PC5DD3','10');
-- 2025-06-15 23:35:18
insert into note(matricule,codeExamen,note) values('5d335','A24255D3PC5DD3','12.5');
-- 2025-06-15 23:35:18
insert into note(matricule,codeExamen,note) values('5d336','A24255D3PC5DD3','11');
-- 2025-06-15 23:35:18
insert into note(matricule,codeExamen,note) values('5d337','A24255D3PC5DD3','17.5');
-- 2025-06-15 23:35:19
insert into note(matricule,codeExamen,note) values('5d338','A24255D3PC5DD3','14');
-- 2025-06-15 23:35:19
insert into note(matricule,codeExamen,note) values('5d339','A24255D3PC5DD3','11');
-- 2025-06-15 23:35:19
insert into note(matricule,codeExamen,note) values('5d340','A24255D3PC5DD3','14.5');
-- 2025-06-15 23:35:19
insert into note(matricule,codeExamen,note) values('5d341','A24255D3PC5DD3','12');
-- 2025-06-15 23:35:19
insert into note(matricule,codeExamen,note) values('5d342','A24255D3PC5DD3','');
-- 2025-06-15 23:35:19
insert into note(matricule,codeExamen,note) values('5d343','A24255D3PC5DD3','6.5');
-- 2025-06-15 23:35:20
insert into note(matricule,codeExamen,note) values('5d344','A24255D3PC5DD3','8');
-- 2025-06-15 23:35:20
insert into note(matricule,codeExamen,note) values('5d345','A24255D3PC5DD3','8.5');
-- 2025-06-15 23:35:20
insert into note(matricule,codeExamen,note) values('5d346','A24255D3PC5DD3','11.5');
-- 2025-06-15 23:35:20
insert into note(matricule,codeExamen,note) values('5d347','A24255D3PC5DD3','12');
-- 2025-06-15 23:35:20
insert into note(matricule,codeExamen,note) values('5d348','A24255D3PC5DD3','7.5');
-- 2025-06-15 23:35:20
insert into note(matricule,codeExamen,note) values('5d349','A24255D3PC5DD3','5');
-- 2025-06-15 23:35:20
insert into note(matricule,codeExamen,note) values('5d350','A24255D3PC5DD3','8.5');
-- 2025-06-15 23:35:21
insert into note(matricule,codeExamen,note) values('5d351','A24255D3PC5DD3','');
-- 2025-06-15 23:35:21
insert into note(matricule,codeExamen,note) values('5d352','A24255D3PC5DD3','11.5');
-- 2025-06-15 23:35:21
insert into note(matricule,codeExamen,note) values('5d353','A24255D3PC5DD3','10.5');
-- 2025-06-15 23:35:21
insert into note(matricule,codeExamen,note) values('5d354','A24255D3PC5DD3','9');
-- 2025-06-15 23:35:21
insert into note(matricule,codeExamen,note) values('5d355','A24255D3PC5DD3','10.5');
-- 2025-06-15 23:35:21
insert into note(matricule,codeExamen,note) values('5d356','A24255D3PC5DD3','7');
-- 2025-06-15 23:35:22
insert into note(matricule,codeExamen,note) values('5d357','A24255D3PC5DD3','16.5');
-- 2025-06-15 23:35:22
insert into note(matricule,codeExamen,note) values('5d358','A24255D3PC5DD3','11.5');
-- 2025-06-15 23:35:22
insert into note(matricule,codeExamen,note) values('5d359','A24255D3PC5DD3','8.5');
-- 2025-06-15 23:35:22
insert into note(matricule,codeExamen,note) values('5d360','A24255D3PC5DD3','6.5');
-- 2025-06-15 23:35:22
insert into note(matricule,codeExamen,note) values('5d361','A24255D3PC5DD3','9.5');
-- 2025-06-16 14:45:50
insert into examen (codeExamen,codeClasseMatiere,codeSalleClasse,codeEvaluation,dateExamen,statutExamen,heureDebutExamen,heureFinExamen) values ('A24255D1MATH5DD3','MATH5D','A24255D1','D3','','1','','');
-- 2025-06-16 14:59:05
update examen set codeExamen='A24255D1PC5DD3',codeClasseMatiere='PC5D',codeSalleClasse='A24255D1',codeEvaluation='D3',
        dateExamen='',statutExamen='1',heureDebutExamen='00:00:00',heureFinExamen='00:00:00' where codeExamen='A24255D1PC5DD3';
-- 2025-06-16 15:01:48
update examen set codeExamen='A24255D1PC5DD3',codeClasseMatiere='PC5D',codeSalleClasse='A24255D1',codeEvaluation='D3',
        dateExamen='',statutExamen='0',heureDebutExamen='00:00:00',heureFinExamen='00:00:00' where codeExamen='A24255D1PC5DD3';