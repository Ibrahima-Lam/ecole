
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
-- 2025-06-18 10:07:44
update eleve set matricule='5d1035',nom='Bane Ndoguel Dia',isme='باني أندونكل جا',sexe='M',dateNaissance='2010-12-31',lieuNaissance='',adresse='Boghe',nni='00000035',statutEleve='actif' where matricule='5d1035';
-- 2025-06-18 11:12:15
update eleve set imagePath='img_5d1052.jpg' where matricule='5d1052';
-- 2025-06-19 21:51:28
update eleve set matricule='5d1001645166666664',nom='Adja Papa Amadou Diaw',isme='اجا بابا امدو جاو',sexe='M',dateNaissance='2010-12-31',lieuNaissance='',adresse='Boghe',nni='00000001',statutEleve='actif' where matricule='5d1001';
-- 2025-06-19 21:53:11
update eleve set matricule='5d1001',nom='Adja Papa Amadou Diaw',isme='اجا بابا امدو جاو',sexe='M',dateNaissance='2010-12-31',lieuNaissance='',adresse='Boghe',nni='00000001',statutEleve='actif' where matricule='5d10016451';
-- 2025-06-21 21:49:07
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee) values('EN1AS','1AS','EN','2','1','2024-10-01');
-- 2025-06-21 22:09:48
update classe_matiere set codeClasse='1AS',codeMatiere='INFO',horaireClasseMatiere='1',coefficientClasseMatiere='1',codeAnnee='2425' where codeClasseMatiere='INFO1AS';
-- 2025-06-21 22:09:58
update classe_matiere set codeClasse='1AS',codeMatiere='INFO',horaireClasseMatiere='1',coefficientClasseMatiere='1',codeAnnee='' where codeClasseMatiere='INFO1AS';
-- 2025-06-21 22:25:16
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee) values('AR3AS','3AS','AR','5','5','');
-- 2025-06-21 22:25:16
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee) values('EN3AS','3AS','EN','2','1','');
-- 2025-06-21 22:25:16
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee) values('EPS3AS','3AS','EPS','2','1','');
-- 2025-06-21 22:25:16
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee) values('FR3AS','3AS','FR','4','3','');
-- 2025-06-21 22:25:17
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee) values('HG3AS','3AS','HG','3','2','');
-- 2025-06-21 22:25:17
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee) values('IC3AS','3AS','IC','1','1','');
-- 2025-06-21 22:25:17
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee) values('IR3AS','3AS','IR','4','3','');
-- 2025-06-21 22:25:17
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee) values('PC3AS','3AS','PC','2','2','');
-- 2025-06-21 22:25:17
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee) values('SN3AS','3AS','SN','3','2','');
-- 2025-06-21 22:29:18
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee) values('AR5C','5C','AR','3','3','');
-- 2025-06-21 22:29:18
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee) values('AR5LO','5LO','AR','4','5','');
-- 2025-06-21 22:29:18
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee) values('AR6C','6C','AR','2','2','');
-- 2025-06-21 22:29:18
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee) values('AR6D','6D','AR','2','2','');
-- 2025-06-21 22:29:18
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee) values('AR6LM','6LM','AR','5','5','');
-- 2025-06-21 22:29:18
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee) values('AR6LO','6LO','AR','5','6','');
-- 2025-06-21 22:29:19
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee) values('AR7C','7C','AR','3','3','');
-- 2025-06-21 22:29:19
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee) values('AR7D','7D','AR','3','2','');
-- 2025-06-21 22:29:19
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee) values('AR7LM','7LM','AR','6','6','');
-- 2025-06-21 22:29:19
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee) values('AR7LO','7LO','AR','6','6','');
-- 2025-06-21 22:33:21
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee) values('EN5C','5C','EN','2','2','');
-- 2025-06-21 22:33:22
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee) values('EN5LO','5LO','EN','2','2','');
-- 2025-06-21 22:33:22
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee) values('EN6C','6C','EN','2','2','');
-- 2025-06-21 22:33:22
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee) values('EN6D','6D','EN','2','2','');
-- 2025-06-21 22:33:22
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee) values('EN6LM','6LM','EN','3','3','');
-- 2025-06-21 22:33:22
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee) values('EN6LO','6LO','EN','2','1','');
-- 2025-06-21 22:33:22
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee) values('EN7C','7C','EN','2','2','');
-- 2025-06-21 22:33:22
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee) values('EN7D','7D','EN','2','2','');
-- 2025-06-21 22:33:22
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee) values('EN7LM','7LM','EN','3','4','');
-- 2025-06-21 22:38:20
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee) values('FR5C','5C','FR','3','3','');
-- 2025-06-21 22:38:20
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee) values('FR5LO','5LO','FR','4','5','');
-- 2025-06-21 22:38:20
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee) values('FR6C','6C','FR','2','2','');
-- 2025-06-21 22:38:20
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee) values('FR6D','6D','FR','2','2','');
-- 2025-06-21 22:38:20
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee) values('FR6LM','6LM','FR','5','5','');
-- 2025-06-21 22:38:20
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee) values('FR6LO','6LO','FR','2','2','');
-- 2025-06-21 22:38:20
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee) values('FR7C','7C','FR','3','3','');
-- 2025-06-21 22:38:20
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee) values('FR7D','7D','FR','3','2','');
-- 2025-06-21 22:38:20
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee) values('FR7LM','7LM','FR','6','6','');
-- 2025-06-21 22:38:21
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee) values('FR7LO','7LO','FR','2','2','');
-- 2025-06-21 22:41:05
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee) values('PHILO5C','5C','PHILO','2','2','');
-- 2025-06-21 22:41:05
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee) values('PHILO5LO','5LO','PHILO','3','3','');
-- 2025-06-21 22:41:05
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee) values('PHILO6C','6C','PHILO','2','2','');
-- 2025-06-21 22:41:05
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee) values('PHILO6D','6D','PHILO','2','2','');
-- 2025-06-21 22:41:05
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee) values('PHILO6LM','6LM','PHILO','4','4','');
-- 2025-06-21 22:41:05
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee) values('PHILO6LO','6LO','PHILO','4','3','');
-- 2025-06-21 22:41:05
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee) values('PHILO7LM','7LM','PHILO','6','5','');
-- 2025-06-21 22:41:05
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee) values('PHILO7LO','7LO','PHILO','4','4','');
-- 2025-06-22 11:43:23
update eleve set matricule='5d1052',nom='Mouhaadji Abdrahmani Diallo',isme='مجايج عبد رحمن جلو',sexe='M',dateNaissance='2010-12-31',lieuNaissance='',adresse='Boghe',nni='00000052',statutEleve='actif' where matricule='5d1052';
-- 2025-06-22 11:46:09
update eleve set matricule='5d1052',nom='Mouhaadji Abdrahmani Diallo',isme='مهاج عبد رحمن جلو',sexe='M',dateNaissance='2010-12-31',lieuNaissance='',adresse='Boghe',nni='00000052',statutEleve='actif' where matricule='5d1052';
-- 2025-06-22 12:03:40
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee) values('HG5C','5C','HG','2','2','');
-- 2025-06-22 12:03:40
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee) values('HG5LO','5LO','HG','2','3','');
-- 2025-06-22 12:03:40
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee) values('HG6C','6C','HG','2','2','');
-- 2025-06-22 12:03:40
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee) values('HG6D','6D','HG','2','2','');
-- 2025-06-22 12:03:40
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee) values('HG6LM','6LM','HG','4','4','');
-- 2025-06-22 12:03:41
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee) values('HG6LO','6LO','HG','2','3','');
-- 2025-06-22 12:03:41
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee) values('HG7LM','7LM','HG','4','4','');
-- 2025-06-22 12:03:41
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee) values('HG7LO','7LO','HG','3','3','');
-- 2025-06-22 12:05:52
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee) values('IC5C','5C','IC','1','1','');
-- 2025-06-22 12:05:52
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee) values('IC5LO','5LO','IC','1','1','');
-- 2025-06-22 12:05:52
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee) values('IC6C','6C','IC','1','1','');
-- 2025-06-22 12:05:52
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee) values('IC6D','6D','IC','1','1','');
-- 2025-06-22 12:05:52
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee) values('IC6LM','6LM','IC','1','1','');
-- 2025-06-22 12:05:53
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee) values('IC6LO','6LO','IC','1','1','');
-- 2025-06-22 12:09:46
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee) values('IR5C','5C','IR','2','2','');
-- 2025-06-22 12:09:46
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee) values('IR5LO','5LO','IR','4','3','');
-- 2025-06-22 12:09:47
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee) values('IR6C','6C','IR','2','2','');
-- 2025-06-22 12:09:47
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee) values('IR6D','6D','IR','2','2','');
-- 2025-06-22 12:09:47
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee) values('IR6LM','6LM','IR','2','2','');
-- 2025-06-22 12:09:47
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee) values('IR6LO','6LO','IR','3','3','');
-- 2025-06-22 12:09:47
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee) values('IR7C','7C','IR','2','2','');
-- 2025-06-22 12:09:47
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee) values('IR7D','7D','IR','2','2','');
-- 2025-06-22 12:09:47
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee) values('IR7LM','7LM','IR','2','2','');
-- 2025-06-22 12:09:47
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee) values('IR7LO','7LO','IR','4','4','');
-- 2025-06-22 12:11:49
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee) values('LEG5LO','5LO','LEG','5','4','');
-- 2025-06-22 12:11:49
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee) values('LEG6LO','6LO','LEG','4','6','');
-- 2025-06-22 12:11:49
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee) values('LEG7LO','7LO','LEG','6','6','');
-- 2025-06-23 20:01:57
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee) values('PC5C','5C','PC','5','5','');
-- 2025-06-23 20:01:57
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee) values('PC5LO','5LO','PC','2','2','');
-- 2025-06-23 20:01:57
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee) values('PC6C','6C','PC','6','6','');
-- 2025-06-23 20:01:57
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee) values('PC6D','6D','PC','5','6','');
-- 2025-06-23 20:01:57
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee) values('PC6LM','6LM','PC','2','2','');
-- 2025-06-23 20:01:57
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee) values('PC6LO','6LO','PC','2','1','');
-- 2025-06-23 20:01:57
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee) values('PC7C','7C','PC','7','7','');
-- 2025-06-23 20:01:57
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee) values('PC7D','7D','PC','7','7','');
-- 2025-06-23 20:05:31
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee) values('SN5C','5C','SN','3','3','');
-- 2025-06-23 20:05:31
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee) values('SN5LO','5LO','SN','2','2','');
-- 2025-06-23 20:05:31
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee) values('SN6C','6C','SN','3','3','');
-- 2025-06-23 20:05:31
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee) values('SN6D','6D','SN','6','6','');
-- 2025-06-23 20:05:32
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee) values('SN6LM','6LM','SN','2','2','');
-- 2025-06-23 20:05:32
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee) values('SN6LO','6LO','SN','2','1','');
-- 2025-06-23 20:05:32
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee) values('SN7C','7C','SN','4','4','');
-- 2025-06-23 20:05:32
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee) values('SN7D','7D','SN','7','8','');
-- 2025-06-23 20:05:32
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee) values('SN7LO','7LO','SN','2','2','');
-- 2025-06-23 20:08:43
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee) values('EPS5C','5C','EPS','2','1','');
-- 2025-06-23 20:08:43
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee) values('EPS5LO','5LO','EPS','2','1','');
-- 2025-06-23 20:08:43
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee) values('EPS6C','6C','EPS','2','1','');
-- 2025-06-23 20:08:43
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee) values('EPS6D','6D','EPS','2','1','');
-- 2025-06-23 20:08:44
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee) values('EPS6LM','6LM','EPS','2','1','');
-- 2025-06-23 20:08:44
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee) values('EPS6LO','6LO','EPS','2','1','');
-- 2025-06-23 20:08:44
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee) values('EPS7C','7C','EPS','2','1','');
-- 2025-06-23 20:08:44
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee) values('EPS7D','7D','EPS','2','1','');
-- 2025-06-23 20:08:44
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee) values('EPS7LM','7LM','EPS','2','1','');
-- 2025-06-23 20:08:44
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee) values('EPS7LO','7LO','EPS','2','1','');
-- 2025-06-23 20:33:29
update classe_matiere set codeClasse='6LO',codeMatiere='SN',horaireClasseMatiere='2',coefficientClasseMatiere='1',codeAnnee='2324',statutClasseMatiere='0' where codeClasseMatiere='SN6LO';
-- 2025-06-23 20:33:37
update classe_matiere set codeClasse='6LO',codeMatiere='SN',horaireClasseMatiere='2',coefficientClasseMatiere='1',codeAnnee='2324',statutClasseMatiere='1' where codeClasseMatiere='SN6LO';
-- 2025-06-23 21:26:28
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee,statutClasseMatiere) values('A2425SN7LO','7LO','SN','2','2','2425','1');
-- 2025-06-23 21:27:09
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee,statutClasseMatiere) values('A2425SN7LM','7LM','SN','2','2','2425','1');
-- 2025-06-23 21:34:17
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee,statutClasseMatiere) values('A2425SN6C','6C','SN','3','3','2425','1');
delete from classe_matiere where codeClasseMatiere='A2425SN7LO'
-- 2025-06-23 22:53:39
update classe_matiere set codeClasse='6C',codeMatiere='SN',horaireClasseMatiere='3',coefficientClasseMatiere='4',codeAnnee='2425',statutClasseMatiere='1' where codeClasseMatiere='A2425SN6C';
-- 2025-06-23 23:04:59
update classe_matiere set codeClasse='6C',codeMatiere='SN',horaireClasseMatiere='3',coefficientClasseMatiere='4',codeAnnee='2425',statutClasseMatiere='1' where codeClasseMatiere='A2425SN6C';
-- 2025-06-23 23:17:23
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee,statutClasseMatiere) values('A24256CAR','6C','AR','2','2','2425','1');
delete from classe_matiere where codeClasseMatiere='A24256CAR'
-- 2025-06-23 23:18:51
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee,statutClasseMatiere) values('A24256CAR','6C','AR','2','2','2425','1');
delete from classe_matiere where codeClasseMatiere='A24256CAR'
-- 2025-06-23 23:43:37
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee,statutClasseMatiere) values('A24256CMATH','6C','MATH','7','7','2425','1');
-- 2025-06-23 23:43:37
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee,statutClasseMatiere) values('A24256CPC','6C','PC','6','6','2425','1');
-- 2025-06-23 23:43:37
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee,statutClasseMatiere) values('A24256CAR','6C','AR','2','2','2425','1');
-- 2025-06-23 23:43:37
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee,statutClasseMatiere) values('A24256CEN','6C','EN','2','2','2425','1');
-- 2025-06-23 23:43:37
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee,statutClasseMatiere) values('A24256CFR','6C','FR','2','2','2425','1');
-- 2025-06-23 23:43:37
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee,statutClasseMatiere) values('A24256CHG','6C','HG','2','2','2425','1');
-- 2025-06-23 23:43:37
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee,statutClasseMatiere) values('A24256CIR','6C','IR','2','2','2425','1');
-- 2025-06-23 23:43:37
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee,statutClasseMatiere) values('A24256CPHILO','6C','PHILO','2','2','2425','1');
-- 2025-06-23 23:43:37
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee,statutClasseMatiere) values('A24256CEPS','6C','EPS','2','1','2425','1');
-- 2025-06-23 23:43:37
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee,statutClasseMatiere) values('A24256CIC','6C','IC','1','1','2425','1');
-- 2025-06-23 23:47:08
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee,statutClasseMatiere) values('A24255CMATH','5C','MATH','6','6','2425','1');
-- 2025-06-23 23:47:08
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee,statutClasseMatiere) values('A24255CPC','5C','PC','5','5','2425','1');
-- 2025-06-23 23:47:08
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee,statutClasseMatiere) values('A24255CAR','5C','AR','3','3','2425','1');
-- 2025-06-23 23:47:08
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee,statutClasseMatiere) values('A24255CFR','5C','FR','3','3','2425','1');
-- 2025-06-23 23:47:08
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee,statutClasseMatiere) values('A24255CSN','5C','SN','3','3','2425','1');
-- 2025-06-23 23:47:08
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee,statutClasseMatiere) values('A24255CEN','5C','EN','2','2','2425','1');
-- 2025-06-23 23:47:08
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee,statutClasseMatiere) values('A24255CHG','5C','HG','2','2','2425','1');
-- 2025-06-23 23:47:08
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee,statutClasseMatiere) values('A24255CIR','5C','IR','2','2','2425','1');
-- 2025-06-23 23:47:08
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee,statutClasseMatiere) values('A24255CPHILO','5C','PHILO','2','2','2425','1');
-- 2025-06-23 23:47:08
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee,statutClasseMatiere) values('A24255CEPS','5C','EPS','2','1','2425','1');
-- 2025-06-23 23:47:08
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee,statutClasseMatiere) values('A24255CIC','5C','IC','1','1','2425','1');
-- 2025-06-23 23:53:55
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee,statutClasseMatiere) values('A24257CMATH','7C','MATH','8','8','2425','1');
-- 2025-06-23 23:53:55
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee,statutClasseMatiere) values('A24257DSN','7D','SN','7','8','2425','1');
-- 2025-06-23 23:53:55
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee,statutClasseMatiere) values('A24257CPC','7C','PC','7','7','2425','1');
-- 2025-06-23 23:53:55
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee,statutClasseMatiere) values('A24257DPC','7D','PC','7','7','2425','1');
-- 2025-06-23 23:53:55
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee,statutClasseMatiere) values('A24257LMFR','7LM','FR','6','6','2425','1');
-- 2025-06-23 23:53:55
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee,statutClasseMatiere) values('A24257LMAR','7LM','AR','6','6','2425','1');
-- 2025-06-23 23:53:55
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee,statutClasseMatiere) values('A24256DSN','6D','SN','6','6','2425','1');
-- 2025-06-23 23:53:55
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee,statutClasseMatiere) values('A24257LOLEG','7LO','LEG','6','6','2425','1');
-- 2025-06-23 23:53:55
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee,statutClasseMatiere) values('A24257LOAR','7LO','AR','6','6','2425','1');
-- 2025-06-23 23:53:55
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee,statutClasseMatiere) values('A24255DSN','5D','SN','5','6','2425','1');
-- 2025-06-23 23:53:55
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee,statutClasseMatiere) values('A24256LOAR','6LO','AR','5','6','2425','1');
-- 2025-06-23 23:53:55
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee,statutClasseMatiere) values('A24257DMATH','7D','MATH','5','6','2425','1');
-- 2025-06-23 23:53:56
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee,statutClasseMatiere) values('A24256DPC','6D','PC','5','6','2425','1');
-- 2025-06-23 23:53:56
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee,statutClasseMatiere) values('A24256LOLEG','6LO','LEG','4','6','2425','1');
-- 2025-06-23 23:53:56
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee,statutClasseMatiere) values('A24251ASAR','1AS','AR','6','5','2425','1');
-- 2025-06-23 23:53:56
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee,statutClasseMatiere) values('A24252ASAR','2AS','AR','6','5','2425','1');
-- 2025-06-23 23:53:56
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee,statutClasseMatiere) values('A24251ASMATH','1AS','MATH','6','5','2425','1');
-- 2025-06-23 23:53:56
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee,statutClasseMatiere) values('A24252ASMATH','2AS','MATH','6','5','2425','1');
-- 2025-06-23 23:53:56
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee,statutClasseMatiere) values('A24253ASMATH','3AS','MATH','6','5','2425','1');
-- 2025-06-23 23:53:56
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee,statutClasseMatiere) values('A24254ASMATH','4AS','MATH','6','5','2425','1');
-- 2025-06-23 23:53:56
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee,statutClasseMatiere) values('A24257LMPHILO','7LM','PHILO','6','5','2425','1');
-- 2025-06-23 23:53:56
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee,statutClasseMatiere) values('A24255LMFR','5LM','FR','5','5','2425','1');
-- 2025-06-23 23:53:56
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee,statutClasseMatiere) values('A24256LMFR','6LM','FR','5','5','2425','1');
-- 2025-06-23 23:53:56
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee,statutClasseMatiere) values('A24255LMAR','5LM','AR','5','5','2425','1');
-- 2025-06-23 23:53:56
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee,statutClasseMatiere) values('A24256LMAR','6LM','AR','5','5','2425','1');
-- 2025-06-23 23:53:56
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee,statutClasseMatiere) values('A24253ASAR','3AS','AR','5','5','2425','1');
-- 2025-06-23 23:53:56
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee,statutClasseMatiere) values('A24254ASAR','4AS','AR','5','5','2425','1');
-- 2025-06-23 23:53:56
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee,statutClasseMatiere) values('A24255LOFR','5LO','FR','4','5','2425','1');
-- 2025-06-23 23:53:56
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee,statutClasseMatiere) values('A24255LOAR','5LO','AR','4','5','2425','1');
-- 2025-06-23 23:53:56
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee,statutClasseMatiere) values('A24251ASFR','1AS','FR','5','4','2425','1');
-- 2025-06-23 23:53:56
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee,statutClasseMatiere) values('A24252ASFR','2AS','FR','5','4','2425','1');
-- 2025-06-23 23:53:56
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee,statutClasseMatiere) values('A24255LOLEG','5LO','LEG','5','4','2425','1');
-- 2025-06-23 23:53:56
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee,statutClasseMatiere) values('A24256DMATH','6D','MATH','5','4','2425','1');
-- 2025-06-23 23:53:56
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee,statutClasseMatiere) values('A24255DPC','5D','PC','5','4','2425','1');
-- 2025-06-23 23:53:56
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee,statutClasseMatiere) values('A24257LOPHILO','7LO','PHILO','4','4','2425','1');
-- 2025-06-23 23:53:56
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee,statutClasseMatiere) values('A24257CSN','7C','SN','4','4','2425','1');
-- 2025-06-23 23:53:56
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee,statutClasseMatiere) values('A24257LOIR','7LO','IR','4','4','2425','1');
-- 2025-06-23 23:53:56
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee,statutClasseMatiere) values('A24255LMHG','5LM','HG','4','4','2425','1');
-- 2025-06-23 23:53:56
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee,statutClasseMatiere) values('A24256LMHG','6LM','HG','4','4','2425','1');
-- 2025-06-23 23:53:56
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee,statutClasseMatiere) values('A24257LMHG','7LM','HG','4','4','2425','1');
-- 2025-06-23 23:53:56
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee,statutClasseMatiere) values('A24255DMATH','5D','MATH','4','4','2425','1');
-- 2025-06-23 23:53:56
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee,statutClasseMatiere) values('A24256LMPHILO','6LM','PHILO','4','4','2425','1');
-- 2025-06-23 23:53:56
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee,statutClasseMatiere) values('A24257LMEN','7LM','EN','3','4','2425','1');
-- 2025-06-23 23:53:56
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee,statutClasseMatiere) values('A24256LOPHILO','6LO','PHILO','4','3','2425','1');
-- 2025-06-23 23:53:56
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee,statutClasseMatiere) values('A24252ASIR','2AS','IR','4','3','2425','1');
-- 2025-06-23 23:53:56
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee,statutClasseMatiere) values('A24253ASIR','3AS','IR','4','3','2425','1');
-- 2025-06-23 23:53:56
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee,statutClasseMatiere) values('A24254ASIR','4AS','IR','4','3','2425','1');
-- 2025-06-23 23:53:56
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee,statutClasseMatiere) values('A24255LOIR','5LO','IR','4','3','2425','1');
-- 2025-06-23 23:53:56
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee,statutClasseMatiere) values('A24253ASFR','3AS','FR','4','3','2425','1');
-- 2025-06-23 23:53:56
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee,statutClasseMatiere) values('A24254ASFR','4AS','FR','4','3','2425','1');
-- 2025-06-23 23:53:56
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee,statutClasseMatiere) values('A24251ASIR','1AS','IR','4','3','2425','1');
-- 2025-06-23 23:53:56
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee,statutClasseMatiere) values('A24256LOIR','6LO','IR','3','3','2425','1');
-- 2025-06-23 23:53:56
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee,statutClasseMatiere) values('A24257CFR','7C','FR','3','3','2425','1');
-- 2025-06-23 23:53:56
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee,statutClasseMatiere) values('A24255DFR','5D','FR','3','3','2425','1');
-- 2025-06-23 23:53:56
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee,statutClasseMatiere) values('A24257CAR','7C','AR','3','3','2425','1');
-- 2025-06-23 23:53:56
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee,statutClasseMatiere) values('A24255DAR','5D','AR','3','3','2425','1');
-- 2025-06-23 23:53:56
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee,statutClasseMatiere) values('A24255LMEN','5LM','EN','3','3','2425','1');
-- 2025-06-23 23:53:56
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee,statutClasseMatiere) values('A24256LMEN','6LM','EN','3','3','2425','1');
-- 2025-06-23 23:53:56
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee,statutClasseMatiere) values('A24257LOHG','7LO','HG','3','3','2425','1');
-- 2025-06-23 23:53:56
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee,statutClasseMatiere) values('A24255LOPHILO','5LO','PHILO','3','3','2425','1');
-- 2025-06-23 23:53:56
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee,statutClasseMatiere) values('A24255LOHG','5LO','HG','2','3','2425','1');
-- 2025-06-23 23:53:56
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee,statutClasseMatiere) values('A24256LOHG','6LO','HG','2','3','2425','1');
-- 2025-06-23 23:53:56
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee,statutClasseMatiere) values('A24253ASSN','3AS','SN','3','2','2425','1');
-- 2025-06-23 23:53:56
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee,statutClasseMatiere) values('A24254ASSN','4AS','SN','3','2','2425','1');
-- 2025-06-23 23:53:56
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee,statutClasseMatiere) values('A24255LMMATH','5LM','MATH','3','2','2425','1');
-- 2025-06-23 23:53:56
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee,statutClasseMatiere) values('A24257DFR','7D','FR','3','2','2425','1');
-- 2025-06-23 23:53:56
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee,statutClasseMatiere) values('A24257DAR','7D','AR','3','2','2425','1');
-- 2025-06-23 23:53:56
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee,statutClasseMatiere) values('A24253ASHG','3AS','HG','3','2','2425','1');
-- 2025-06-23 23:53:56
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee,statutClasseMatiere) values('A24254ASHG','4AS','HG','3','2','2425','1');
-- 2025-06-23 23:53:56
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee,statutClasseMatiere) values('A24255LMSN','5LM','SN','2','2','2425','1');
-- 2025-06-23 23:53:56
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee,statutClasseMatiere) values('A24256LMSN','6LM','SN','2','2','2425','1');
-- 2025-06-23 23:53:56
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee,statutClasseMatiere) values('A24251ASSN','1AS','SN','2','2','2425','1');
-- 2025-06-23 23:53:56
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee,statutClasseMatiere) values('A24252ASSN','2AS','SN','2','2','2425','1');
-- 2025-06-23 23:53:56
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee,statutClasseMatiere) values('A24257CIR','7C','IR','2','2','2425','1');
-- 2025-06-23 23:53:56
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee,statutClasseMatiere) values('A24255DIR','5D','IR','2','2','2425','1');
-- 2025-06-23 23:53:56
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee,statutClasseMatiere) values('A24256DIR','6D','IR','2','2','2425','1');
-- 2025-06-23 23:53:56
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee,statutClasseMatiere) values('A24257DIR','7D','IR','2','2','2425','1');
-- 2025-06-23 23:53:56
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee,statutClasseMatiere) values('A24255LOSN','5LO','SN','2','2','2425','1');
-- 2025-06-23 23:53:56
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee,statutClasseMatiere) values('A24256DFR','6D','FR','2','2','2425','1');
-- 2025-06-23 23:53:56
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee,statutClasseMatiere) values('A24257LOSN','7LO','SN','2','2','2425','1');
-- 2025-06-23 23:53:56
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee,statutClasseMatiere) values('A24256LMMATH','6LM','MATH','2','2','2425','1');
-- 2025-06-23 23:53:56
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee,statutClasseMatiere) values('A24257LMMATH','7LM','MATH','2','2','2425','1');
-- 2025-06-23 23:53:56
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee,statutClasseMatiere) values('A24256LOFR','6LO','FR','2','2','2425','1');
-- 2025-06-23 23:53:56
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee,statutClasseMatiere) values('A24257LOFR','7LO','FR','2','2','2425','1');
-- 2025-06-23 23:53:57
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee,statutClasseMatiere) values('A24256DAR','6D','AR','2','2','2425','1');
-- 2025-06-23 23:53:57
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee,statutClasseMatiere) values('A24251ASHG','1AS','HG','2','2','2425','1');
-- 2025-06-23 23:53:57
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee,statutClasseMatiere) values('A24252ASHG','2AS','HG','2','2','2425','1');
-- 2025-06-23 23:53:57
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee,statutClasseMatiere) values('A24255LOMATH','5LO','MATH','2','2','2425','1');
-- 2025-06-23 23:53:57
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee,statutClasseMatiere) values('A24256LOMATH','6LO','MATH','2','2','2425','1');
-- 2025-06-23 23:53:57
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee,statutClasseMatiere) values('A24255DHG','5D','HG','2','2','2425','1');
-- 2025-06-23 23:53:57
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee,statutClasseMatiere) values('A24257LOMATH','7LO','MATH','2','2','2425','1');
-- 2025-06-23 23:53:57
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee,statutClasseMatiere) values('A24256DHG','6D','HG','2','2','2425','1');
-- 2025-06-23 23:53:57
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee,statutClasseMatiere) values('A24255LMPC','5LM','PC','2','2','2425','1');
-- 2025-06-23 23:53:57
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee,statutClasseMatiere) values('A24256LMPC','6LM','PC','2','2','2425','1');
-- 2025-06-23 23:53:57
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee,statutClasseMatiere) values('A24253ASPC','3AS','PC','2','2','2425','1');
-- 2025-06-23 23:53:57
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee,statutClasseMatiere) values('A24257CEN','7C','EN','2','2','2425','1');
-- 2025-06-23 23:53:57
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee,statutClasseMatiere) values('A24254ASPC','4AS','PC','2','2','2425','1');
-- 2025-06-23 23:53:57
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee,statutClasseMatiere) values('A24255DEN','5D','EN','2','2','2425','1');
-- 2025-06-23 23:53:57
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee,statutClasseMatiere) values('A24256DEN','6D','EN','2','2','2425','1');
-- 2025-06-23 23:53:57
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee,statutClasseMatiere) values('A24257DEN','7D','EN','2','2','2425','1');
-- 2025-06-23 23:53:57
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee,statutClasseMatiere) values('A24255LOEN','5LO','EN','2','2','2425','1');
-- 2025-06-23 23:53:57
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee,statutClasseMatiere) values('A24255LOPC','5LO','PC','2','2','2425','1');
-- 2025-06-23 23:53:57
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee,statutClasseMatiere) values('A24255LMPHILO','5LM','PHILO','2','2','2425','1');
-- 2025-06-23 23:53:57
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee,statutClasseMatiere) values('A24255LMIR','5LM','IR','2','2','2425','1');
-- 2025-06-23 23:53:57
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee,statutClasseMatiere) values('A24255DPHILO','5D','PHILO','2','2','2425','1');
-- 2025-06-23 23:53:57
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee,statutClasseMatiere) values('A24256LMIR','6LM','IR','2','2','2425','1');
-- 2025-06-23 23:53:57
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee,statutClasseMatiere) values('A24256DPHILO','6D','PHILO','2','2','2425','1');
-- 2025-06-23 23:53:57
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee,statutClasseMatiere) values('A24257LMIR','7LM','IR','2','2','2425','1');
-- 2025-06-23 23:53:57
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee,statutClasseMatiere) values('A24257DEPS','7D','EPS','2','1','2425','1');
-- 2025-06-23 23:53:57
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee,statutClasseMatiere) values('A24255LOEPS','5LO','EPS','2','1','2425','1');
-- 2025-06-23 23:53:57
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee,statutClasseMatiere) values('A24256LOEPS','6LO','EPS','2','1','2425','1');
-- 2025-06-23 23:53:57
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee,statutClasseMatiere) values('A24257LOEPS','7LO','EPS','2','1','2425','1');
-- 2025-06-23 23:53:57
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee,statutClasseMatiere) values('A24256LOSN','6LO','SN','2','1','2425','1');
-- 2025-06-23 23:53:57
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee,statutClasseMatiere) values('A24251ASEN','1AS','EN','2','1','2425','1');
-- 2025-06-23 23:53:57
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee,statutClasseMatiere) values('A24252ASEN','2AS','EN','2','1','2425','1');
-- 2025-06-23 23:53:57
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee,statutClasseMatiere) values('A24253ASEN','3AS','EN','2','1','2425','1');
-- 2025-06-23 23:53:57
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee,statutClasseMatiere) values('A24254ASEN','4AS','EN','2','1','2425','1');
-- 2025-06-23 23:53:57
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee,statutClasseMatiere) values('A24256LOEN','6LO','EN','2','1','2425','1');
-- 2025-06-23 23:53:57
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee,statutClasseMatiere) values('A24255LMEPS','5LM','EPS','2','1','2425','1');
-- 2025-06-23 23:53:57
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee,statutClasseMatiere) values('A24256LMEPS','6LM','EPS','2','1','2425','1');
-- 2025-06-23 23:53:57
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee,statutClasseMatiere) values('A24257LMEPS','7LM','EPS','2','1','2425','1');
-- 2025-06-23 23:53:57
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee,statutClasseMatiere) values('A24256LOPC','6LO','PC','2','1','2425','1');
-- 2025-06-23 23:53:57
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee,statutClasseMatiere) values('A24251ASEPS','1AS','EPS','2','1','2425','1');
-- 2025-06-23 23:53:57
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee,statutClasseMatiere) values('A24252ASEPS','2AS','EPS','2','1','2425','1');
-- 2025-06-23 23:53:57
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee,statutClasseMatiere) values('A24253ASEPS','3AS','EPS','2','1','2425','1');
-- 2025-06-23 23:53:57
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee,statutClasseMatiere) values('A24254ASEPS','4AS','EPS','2','1','2425','1');
-- 2025-06-23 23:53:57
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee,statutClasseMatiere) values('A24257CEPS','7C','EPS','2','1','2425','1');
-- 2025-06-23 23:53:57
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee,statutClasseMatiere) values('A24255DEPS','5D','EPS','2','1','2425','1');
-- 2025-06-23 23:53:57
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee,statutClasseMatiere) values('A24256DEPS','6D','EPS','2','1','2425','1');
-- 2025-06-23 23:53:57
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee,statutClasseMatiere) values('A24255LMIC','5LM','IC','1','1','2425','1');
-- 2025-06-23 23:53:57
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee,statutClasseMatiere) values('A24256LMIC','6LM','IC','1','1','2425','1');
-- 2025-06-23 23:53:57
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee,statutClasseMatiere) values('A24251ASIC','1AS','IC','1','1','2425','1');
-- 2025-06-23 23:53:57
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee,statutClasseMatiere) values('A24252ASIC','2AS','IC','1','1','2425','1');
-- 2025-06-23 23:53:57
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee,statutClasseMatiere) values('A24253ASIC','3AS','IC','1','1','2425','1');
-- 2025-06-23 23:53:57
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee,statutClasseMatiere) values('A24254ASIC','4AS','IC','1','1','2425','1');
-- 2025-06-23 23:53:57
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee,statutClasseMatiere) values('A24255DIC','5D','IC','1','1','2425','1');
-- 2025-06-23 23:53:57
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee,statutClasseMatiere) values('A24256DIC','6D','IC','1','1','2425','1');
-- 2025-06-23 23:53:57
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee,statutClasseMatiere) values('A24255LOIC','5LO','IC','1','1','2425','1');
-- 2025-06-23 23:53:57
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee,statutClasseMatiere) values('A24256LOIC','6LO','IC','1','1','2425','1');
-- 2025-06-23 23:53:57
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee,statutClasseMatiere) values('A24251ASINFO','1AS','INFO','1','1','2425','1');
-- 2025-06-24 16:00:22
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee,statutClasseMatiere) values('A22235DPC','5D','PC','2','2','2223','1');
delete from classe_matiere where codeClasseMatiere='A22235DPC'
-- 2025-06-24 16:21:38
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee,statutClasseMatiere) values('A22235DPC','5D','PC','2','2','2223','1');
delete from classe_matiere where codeClasseMatiere='A22235DPC'
-- 2025-06-24 16:32:50
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee,statutClasseMatiere) values('A22235DPC','5D','PC','2','2','2223','1');
delete from classe_matiere where codeClasseMatiere='A22235DPC'
-- 2025-06-24 16:33:29
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee,statutClasseMatiere) values('A22235DPC','5D','PC','2','2','2223','1');
delete from classe_matiere where codeClasseMatiere='A22235DPC'
-- 2025-06-24 16:35:17
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee,statutClasseMatiere) values('A22235DPC','5D','PC','2','2','2223','1');
delete from classe_matiere where codeClasseMatiere='A22235DPC'
-- 2025-06-24 16:35:34
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee,statutClasseMatiere) values('A22235DPC','5D','PC','2','2','2223','1');
delete from classe_matiere where codeClasseMatiere='A22235DPC'
-- 2025-06-24 16:37:21
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee,statutClasseMatiere) values('A22235DPC','5D','PC','2','2','2223','1');
delete from classe_matiere where codeClasseMatiere='A22235DPC'
-- 2025-06-24 16:40:39
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee,statutClasseMatiere) values('A22235DPC','5D','PC','2','2','2223','1');
-- 2025-06-25 13:38:23
update examen set codeExamen='A24255D1PC5DC1',codeClasseMatiere='A24255DSN',codeSalleClasse='A24255D1',codeEvaluation='C1',
        dateExamen='2024-12-26',statutExamen='0',heureDebutExamen='08:00:00',heureFinExamen='10:00:00' where codeExamen='A24255D1PC5DC1';
-- 2025-06-25 13:38:43
update examen set codeExamen='A24255D1PC5DC1',codeClasseMatiere='A24255DSN',codeSalleClasse='A24255D1',codeEvaluation='C1',
        dateExamen='2024-12-26',statutExamen='1',heureDebutExamen='08:00:00',heureFinExamen='10:00:00' where codeExamen='A24255D1PC5DC1';
-- 2025-06-25 13:40:49
update examen set codeExamen='A24255D1PC5DC1',codeClasseMatiere='A24255DSN',codeSalleClasse='A24255D1',codeEvaluation='C1',
        dateExamen='2024-12-26',statutExamen='0',heureDebutExamen='08:00:00',heureFinExamen='10:00:00' where codeExamen='A24255D1PC5DC1';
-- 2025-06-25 13:41:04
update examen set codeExamen='A24255D1PC5DC1',codeClasseMatiere='A24255DSN',codeSalleClasse='A24255D1',codeEvaluation='C1',
        dateExamen='2024-12-26',statutExamen='1',heureDebutExamen='08:00:00',heureFinExamen='10:00:00' where codeExamen='A24255D1PC5DC1';
delete from note where codeExamen='A24255D1MATH5DC1' 
-- 2025-06-25 14:27:47
update examen set codeExamen='A24255D1PC5DC1',codeClasseMatiere='A24255DSN',codeSalleClasse='A24255D1',codeEvaluation='C1',
        dateExamen='2024-12-26',statutExamen='1',heureDebutExamen='08:00:00',heureFinExamen='10:00:00',trimestreExamen='2' where codeExamen='A24255D1PC5DC1';
-- 2025-06-25 15:18:07
update examen set codeExamen='A24255D1PC5DD2',codeClasseMatiere='A24255DSN',codeSalleClasse='A24255D1',codeEvaluation='D2',
        dateExamen='',statutExamen='1',heureDebutExamen='00:00:00',heureFinExamen='00:00:00',trimestreExamen='2' where codeExamen='A24255D1PC5DD2';
-- 2025-06-25 15:19:34
update examen set codeExamen='A24255D1PC5DC1',codeClasseMatiere='A24255DPC',codeSalleClasse='A24255D1',codeEvaluation='C1',
        dateExamen='2024-12-26',statutExamen='1',heureDebutExamen='08:00:00',heureFinExamen='10:00:00',trimestreExamen='2' where codeExamen='A24255D1PC5DC1';
-- 2025-06-25 15:20:19
update examen set codeExamen='A24255D1PC5DD2',codeClasseMatiere='A24255DPC',codeSalleClasse='A24255D1',codeEvaluation='D2',
        dateExamen='',statutExamen='1',heureDebutExamen='00:00:00',heureFinExamen='00:00:00',trimestreExamen='2' where codeExamen='A24255D1PC5DD2';
delete from classe_matiere where codeClasseMatiere='A2425SN6C'
delete from classe_matiere where codeClasseMatiere='A2425SN7LM'
-- 2025-06-25 16:17:17
insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee,statutClasseMatiere) values('A24256CSN','6C','SN','3','3','2425','1');
-- 2025-06-25 17:03:11
update examen set codeExamen='A24255LMMATH5LMD2',codeClasseMatiere='A24255LMMATH',codeSalleClasse='A24255LM',codeEvaluation='D2',
        dateExamen='',statutExamen='1',heureDebutExamen='00:00:00',heureFinExamen='00:00:00',trimestreExamen='2' where codeExamen='A24255LMMATH5LMD2';
-- 2025-06-25 17:18:58
insert into examen (codeExamen,codeClasseMatiere,codeSalleClasse,codeEvaluation,dateExamen,statutExamen,heureDebutExamen,heureFinExamen,trimestreExamen) values ('A24255LM0A24255LMPC0D3','A24255LMPC','A24255LM','D3','','1','','','3');
-- 2025-06-25 17:30:18
insert into note(matricule,codeExamen,note) values('5LM041','A24255LM0A24255LMPC0D3','10');
delete from note where idNote='1881' 
-- 2025-06-26 01:39:48
insert into examen (codeExamen,codeClasseMatiere,codeSalleClasse,codeEvaluation,dateExamen,statutExamen,heureDebutExamen,heureFinExamen,trimestreExamen) values ('A24255D10A24255DMATH0D1','A24255DMATH','A24255D1','D1','','1','','','1');
-- 2025-06-26 01:47:51
insert into examen (codeExamen,codeClasseMatiere,codeSalleClasse,codeEvaluation,dateExamen,statutExamen,heureDebutExamen,heureFinExamen,trimestreExamen) values ('A24255D10A24255DMATH0C1','A24255DMATH','A24255D1','C1','','1','','','1');
-- 2025-06-26 12:26:40
insert into note(matricule,codeExamen,note) values('5d1001','A24255D10A24255DMATH0C1','1');
-- 2025-06-26 12:26:40
insert into note(matricule,codeExamen,note) values('5d1001','A24255D10A24255DMATH0D1','2');
-- 2025-06-26 12:26:40
insert into note(matricule,codeExamen,note) values('5d1002','A24255D10A24255DMATH0C1','3');
-- 2025-06-26 12:26:41
insert into note(matricule,codeExamen,note) values('5d1002','A24255D10A24255DMATH0D1','4');
-- 2025-06-26 12:26:41
insert into note(matricule,codeExamen,note) values('5d1003','A24255D10A24255DMATH0C1','5');
-- 2025-06-26 12:26:41
insert into note(matricule,codeExamen,note) values('5d1003','A24255D10A24255DMATH0D1','6');
-- 2025-06-26 12:26:41
insert into note(matricule,codeExamen,note) values('5d1004','A24255D10A24255DMATH0C1','7');
-- 2025-06-26 12:26:41
insert into note(matricule,codeExamen,note) values('5d1004','A24255D10A24255DMATH0D1','8');
-- 2025-06-26 12:26:41
insert into note(matricule,codeExamen,note) values('5d1005','A24255D10A24255DMATH0C1','9');
-- 2025-06-26 12:26:42
insert into note(matricule,codeExamen,note) values('5d1005','A24255D10A24255DMATH0D1','10');
-- 2025-06-26 12:26:42
insert into note(matricule,codeExamen,note) values('5d1006','A24255D10A24255DMATH0C1','11');
-- 2025-06-26 12:26:42
insert into note(matricule,codeExamen,note) values('5d1006','A24255D10A24255DMATH0D1','12');
-- 2025-06-26 12:26:42
insert into note(matricule,codeExamen,note) values('5d1007','A24255D10A24255DMATH0C1','13');
-- 2025-06-26 12:26:43
insert into note(matricule,codeExamen,note) values('5d1007','A24255D10A24255DMATH0D1','14');
-- 2025-06-26 12:26:43
insert into note(matricule,codeExamen,note) values('5d1008','A24255D10A24255DMATH0C1','15');
-- 2025-06-26 12:26:43
insert into note(matricule,codeExamen,note) values('5d1008','A24255D10A24255DMATH0D1','16');
-- 2025-06-26 12:34:37
update note set note='1' where idNote='1882' ;
-- 2025-06-26 12:34:37
update note set note='2' where idNote='1883' ;
-- 2025-06-26 12:34:37
update note set note='3' where idNote='1884' ;
-- 2025-06-26 12:34:37
update note set note='4' where idNote='1885' ;
-- 2025-06-26 12:34:37
update note set note='5' where idNote='1886' ;
-- 2025-06-26 12:34:37
update note set note='6' where idNote='1887' ;
-- 2025-06-26 12:34:37
update note set note='7' where idNote='1888' ;
-- 2025-06-26 12:34:37
update note set note='8' where idNote='1889' ;
-- 2025-06-26 12:34:37
update note set note='9' where idNote='1890' ;
-- 2025-06-26 12:34:38
update note set note='10' where idNote='1891' ;
-- 2025-06-26 12:34:38
update note set note='11' where idNote='1892' ;
-- 2025-06-26 12:34:38
update note set note='12' where idNote='1893' ;
-- 2025-06-26 12:34:38
update note set note='13' where idNote='1894' ;
-- 2025-06-26 12:34:38
update note set note='14' where idNote='1895' ;
-- 2025-06-26 12:34:38
update note set note='15' where idNote='1896' ;
-- 2025-06-26 12:34:38
update note set note='16' where idNote='1897' ;
-- 2025-06-26 12:35:37
update note set note='1' where idNote='1882' ;
-- 2025-06-26 12:35:37
update note set note='2' where idNote='1883' ;
-- 2025-06-26 12:35:37
update note set note='3' where idNote='1884' ;
-- 2025-06-26 12:35:37
update note set note='4' where idNote='1885' ;
-- 2025-06-26 12:35:37
update note set note='5' where idNote='1886' ;
-- 2025-06-26 12:35:37
update note set note='6' where idNote='1887' ;
-- 2025-06-26 12:35:37
update note set note='7' where idNote='1888' ;
-- 2025-06-26 12:35:37
update note set note='8' where idNote='1889' ;
-- 2025-06-26 12:35:38
update note set note='9' where idNote='1890' ;
-- 2025-06-26 12:35:38
update note set note='10' where idNote='1891' ;
-- 2025-06-26 12:35:38
update note set note='11' where idNote='1892' ;
-- 2025-06-26 12:35:38
update note set note='12' where idNote='1893' ;
-- 2025-06-26 12:35:38
update note set note='13' where idNote='1894' ;
-- 2025-06-26 12:35:38
update note set note='14' where idNote='1895' ;
-- 2025-06-26 12:35:38
update note set note='15' where idNote='1896' ;
-- 2025-06-26 12:35:39
update note set note='16' where idNote='1897' ;
-- 2025-06-26 12:38:06
update note set note='10' where idNote='1882' ;
-- 2025-06-26 12:38:06
update note set note='2' where idNote='1883' ;
-- 2025-06-26 12:38:07
update note set note='3' where idNote='1884' ;
-- 2025-06-26 12:38:07
update note set note='4' where idNote='1885' ;
-- 2025-06-26 12:38:07
update note set note='5' where idNote='1886' ;
-- 2025-06-26 12:38:07
update note set note='6' where idNote='1887' ;
-- 2025-06-26 12:38:07
update note set note='7' where idNote='1888' ;
-- 2025-06-26 12:38:07
update note set note='8' where idNote='1889' ;
-- 2025-06-26 12:38:07
update note set note='9' where idNote='1890' ;
-- 2025-06-26 12:38:07
update note set note='10' where idNote='1891' ;
-- 2025-06-26 12:38:07
update note set note='11' where idNote='1892' ;
-- 2025-06-26 12:38:08
update note set note='12' where idNote='1893' ;
-- 2025-06-26 12:38:08
update note set note='13' where idNote='1894' ;
-- 2025-06-26 12:38:08
update note set note='14' where idNote='1895' ;
-- 2025-06-26 12:38:08
update note set note='15' where idNote='1896' ;
-- 2025-06-26 12:38:08
update note set note='16' where idNote='1897' ;
delete from note where idNote='1882' 
delete from note where idNote='1883' 
delete from note where idNote='1884' 
delete from note where idNote='1885' 
delete from note where idNote='1886' 
delete from note where idNote='1887' 
delete from note where idNote='1888' 
delete from note where idNote='1889' 
delete from note where idNote='1890' 
delete from note where idNote='1891' 
delete from note where idNote='1892' 
delete from note where idNote='1893' 
delete from note where idNote='1894' 
delete from note where idNote='1895' 
delete from note where idNote='1896' 
delete from note where idNote='1897' 
-- 2025-06-26 17:14:16
update examen set codeExamen='A24255D10A24255DPC0D3',codeClasseMatiere='A24255DPC',codeSalleClasse='A24255D1',codeEvaluation='D3',
        dateExamen='',statutExamen='1',heureDebutExamen='00:00:00',heureFinExamen='00:00:00',trimestreExamen='1' where codeExamen='A24255D1PC5DD3';
-- 2025-06-26 17:14:32
update examen set codeExamen='A24255D10A24255DPC0D2',codeClasseMatiere='A24255DPC',codeSalleClasse='A24255D1',codeEvaluation='D2',
        dateExamen='',statutExamen='1',heureDebutExamen='00:00:00',heureFinExamen='00:00:00',trimestreExamen='1' where codeExamen='A24255D1PC5DD2';
-- 2025-06-26 17:36:19
update examen set dateExamen='',heureDebutExamen='00:00:00',heureFinExamen='00:00:00',statutExamen='0',trimestreExamen='1' where codeExamen='A24255D1PC5DD3';
-- 2025-06-26 17:36:22
update examen set dateExamen='',heureDebutExamen='00:00:00',heureFinExamen='00:00:00',statutExamen='0',trimestreExamen='1' where codeExamen='A24255D1PC5DD3';
-- 2025-06-26 17:39:33
update examen set dateExamen='',heureDebutExamen='00:00:00',heureFinExamen='00:00:00',statutExamen='1',trimestreExamen='1' where codeExamen='A24255D1PC5DD3';
-- 2025-06-26 17:40:53
update examen set dateExamen='',heureDebutExamen='00:00:00',heureFinExamen='00:00:00',statutExamen='0',trimestreExamen='1' where codeExamen='A24255D1PC5DD3';
-- 2025-06-26 17:41:38
insert into examen (codeExamen,codeClasseMatiere,codeSalleClasse,codeEvaluation,dateExamen,statutExamen,heureDebutExamen,heureFinExamen,trimestreExamen) values ('A24255D10A24255DPC0devoir4','A24255DPC','A24255D1','devoir4','','0','','','1');
delete from examen where codeExamen='A24255D10A24255DPC0devoir4'
-- 2025-06-26 17:51:02
insert into examen (codeExamen,codeClasseMatiere,codeSalleClasse,codeEvaluation,dateExamen,statutExamen,heureDebutExamen,heureFinExamen,trimestreExamen) values ('A24255D10A24255DPC0D4','A24255DPC','A24255D1','D4','','0','','','1');
-- 2025-06-26 18:16:26
insert into note(matricule,codeExamen,note) values('5d1001','A24255D10A24255DMATH0C1','11');
-- 2025-06-26 18:16:26
insert into note(matricule,codeExamen,note) values('5d1001','A24255D10A24255DMATH0D1','2');
-- 2025-06-26 18:16:26
insert into note(matricule,codeExamen,note) values('5d1002','A24255D10A24255DMATH0C1','13');
-- 2025-06-26 18:16:26
insert into note(matricule,codeExamen,note) values('5d1002','A24255D10A24255DMATH0D1','4');
-- 2025-06-26 18:16:27
insert into note(matricule,codeExamen,note) values('5d1003','A24255D10A24255DMATH0C1','15');
-- 2025-06-26 18:16:27
insert into note(matricule,codeExamen,note) values('5d1003','A24255D10A24255DMATH0D1','6');
-- 2025-06-26 18:16:27
insert into note(matricule,codeExamen,note) values('5d1004','A24255D10A24255DMATH0C1','17');
-- 2025-06-26 18:16:27
insert into note(matricule,codeExamen,note) values('5d1004','A24255D10A24255DMATH0D1','8');
-- 2025-06-26 18:16:28
insert into note(matricule,codeExamen,note) values('5d1005','A24255D10A24255DMATH0C1','9');
-- 2025-06-26 18:16:28
insert into note(matricule,codeExamen,note) values('5d1005','A24255D10A24255DMATH0D1','10');
-- 2025-06-26 18:16:28
insert into note(matricule,codeExamen,note) values('5d1006','A24255D10A24255DMATH0C1','11');
-- 2025-06-26 18:16:28
insert into note(matricule,codeExamen,note) values('5d1006','A24255D10A24255DMATH0D1','12');
-- 2025-06-26 18:16:29
insert into note(matricule,codeExamen,note) values('5d1007','A24255D10A24255DMATH0C1','13');
-- 2025-06-26 18:16:29
insert into note(matricule,codeExamen,note) values('5d1007','A24255D10A24255DMATH0D1','14');
-- 2025-06-26 18:16:29
insert into note(matricule,codeExamen,note) values('5d1008','A24255D10A24255DMATH0C1','15');
-- 2025-06-26 18:16:29
insert into note(matricule,codeExamen,note) values('5d1008','A24255D10A24255DMATH0D1','16');
-- 2025-06-26 18:51:44
update note set note='15',matricule='5d1027',codeExamen='A24255D1PC5DD3' where idNote='1661' ;
-- 2025-06-26 18:51:44
update note set note='12.5',matricule='5d1028',codeExamen='A24255D1PC5DD3' where idNote='1662' ;
-- 2025-06-26 18:51:44
update note set note='16',matricule='5d1029',codeExamen='A24255D1PC5DD3' where idNote='1663' ;
-- 2025-06-26 18:51:44
update note set note='13',matricule='5d1033',codeExamen='A24255D1PC5DD3' where idNote='1667' ;
-- 2025-06-26 18:51:44
update note set note='13',matricule='5d1035',codeExamen='A24255D1PC5DD3' where idNote='1669' ;
-- 2025-06-26 18:51:44
update note set note='9',matricule='5d1040',codeExamen='A24255D1PC5DD2' where idNote='110' ;
-- 2025-06-26 18:51:44
update note set note='14',matricule='5d1043',codeExamen='A24255D1PC5DD3' where idNote='1677' ;
-- 2025-06-26 18:52:51
update note set note='9.25',matricule='5d1022',codeExamen='A24255D1PC5DD1' where idNote='28' ;
-- 2025-06-26 18:52:51
update note set note='5',matricule='5d1027',codeExamen='A24255D1PC5DD3' where idNote='1661' ;
-- 2025-06-26 18:56:50
update note set note='4',matricule='5d1001',codeExamen='A24255D1PC5DD2' where idNote='71' ;
-- 2025-06-26 18:56:50
update note set note='15.75',matricule='5d1002',codeExamen='A24255D1PC5DD2' where idNote='72' ;
-- 2025-06-26 18:56:50
update note set note='3.75',matricule='5d1003',codeExamen='A24255D1PC5DD2' where idNote='73' ;
-- 2025-06-26 18:56:50
update note set note='4',matricule='5d1004',codeExamen='A24255D1PC5DD2' where idNote='74' ;
-- 2025-06-26 18:56:50
update note set note='15',matricule='5d1005',codeExamen='A24255D1PC5DD2' where idNote='75' ;
-- 2025-06-26 18:56:51
update note set note='12',matricule='5d1006',codeExamen='A24255D1PC5DD2' where idNote='76' ;
-- 2025-06-26 18:56:51
update note set note='0',matricule='5d1007',codeExamen='A24255D1PC5DD2' where idNote='77' ;
-- 2025-06-26 18:56:51
update note set note='4',matricule='5d1008',codeExamen='A24255D1PC5DD2' where idNote='78' ;
-- 2025-06-26 18:56:51
update note set note='11.75',matricule='5d1009',codeExamen='A24255D1PC5DD2' where idNote='79' ;
-- 2025-06-26 18:56:51
update note set note='13.5',matricule='5d1010',codeExamen='A24255D1PC5DD2' where idNote='80' ;
-- 2025-06-26 18:56:51
update note set note='9.5',matricule='5d1011',codeExamen='A24255D1PC5DD2' where idNote='81' ;
-- 2025-06-26 18:56:51
update note set note='14',matricule='5d1012',codeExamen='A24255D1PC5DD2' where idNote='82' ;
-- 2025-06-26 18:56:51
update note set note='9.5',matricule='5d1013',codeExamen='A24255D1PC5DD2' where idNote='83' ;
-- 2025-06-26 18:56:52
update note set note='14',matricule='5d1014',codeExamen='A24255D1PC5DD2' where idNote='84' ;
-- 2025-06-26 18:56:52
update note set note='5',matricule='5d1015',codeExamen='A24255D1PC5DD2' where idNote='85' ;
-- 2025-06-26 18:56:52
update note set note='4',matricule='5d1016',codeExamen='A24255D1PC5DD2' where idNote='86' ;
-- 2025-06-26 18:56:52
update note set note='13.25',matricule='5d1017',codeExamen='A24255D1PC5DD2' where idNote='87' ;
-- 2025-06-26 18:56:52
update note set note='10.75',matricule='5d1018',codeExamen='A24255D1PC5DD2' where idNote='88' ;
-- 2025-06-26 18:56:52
update note set note='4',matricule='5d1019',codeExamen='A24255D1PC5DD2' where idNote='89' ;
-- 2025-06-26 18:56:52
update note set note='0',matricule='5d1020',codeExamen='A24255D1PC5DD2' where idNote='90' ;
-- 2025-06-26 18:56:52
update note set note='14.5',matricule='5d1021',codeExamen='A24255D1PC5DD2' where idNote='91' ;
-- 2025-06-26 18:56:53
update note set note='13.5',matricule='5d1022',codeExamen='A24255D1PC5DD2' where idNote='92' ;
-- 2025-06-26 18:56:53
update note set note='6',matricule='5d1023',codeExamen='A24255D1PC5DD2' where idNote='93' ;
-- 2025-06-26 18:56:53
update note set note='15.25',matricule='5d1024',codeExamen='A24255D1PC5DD2' where idNote='94' ;
-- 2025-06-26 18:56:53
update note set note='11',matricule='5d1025',codeExamen='A24255D1PC5DD2' where idNote='95' ;
-- 2025-06-26 18:56:53
update note set note='14.75',matricule='5d1026',codeExamen='A24255D1PC5DD2' where idNote='96' ;
-- 2025-06-26 18:56:53
update note set note='9.5',matricule='5d1027',codeExamen='A24255D1PC5DD2' where idNote='97' ;
-- 2025-06-26 18:56:53
update note set note='4.5',matricule='5d1028',codeExamen='A24255D1PC5DD2' where idNote='98' ;
-- 2025-06-26 18:56:53
update note set note='13.75',matricule='5d1029',codeExamen='A24255D1PC5DD2' where idNote='99' ;
-- 2025-06-26 18:56:54
update note set note='11.5',matricule='5d1030',codeExamen='A24255D1PC5DD2' where idNote='100' ;
-- 2025-06-26 18:56:54
update note set note='16.25',matricule='5d1031',codeExamen='A24255D1PC5DD2' where idNote='101' ;
-- 2025-06-26 18:56:54
update note set note='12.5',matricule='5d1032',codeExamen='A24255D1PC5DD2' where idNote='102' ;
-- 2025-06-26 18:56:54
update note set note='10.5',matricule='5d1033',codeExamen='A24255D1PC5DD2' where idNote='103' ;
-- 2025-06-26 18:56:54
update note set note='10',matricule='5d1034',codeExamen='A24255D1PC5DD2' where idNote='104' ;
-- 2025-06-26 18:56:54
update note set note='9.75',matricule='5d1035',codeExamen='A24255D1PC5DD2' where idNote='105' ;
-- 2025-06-26 18:56:54
update note set note='14.5',matricule='5d1036',codeExamen='A24255D1PC5DD2' where idNote='106' ;
-- 2025-06-26 18:56:55
update note set note='16',matricule='5d1037',codeExamen='A24255D1PC5DD2' where idNote='107' ;
-- 2025-06-26 18:56:55
update note set note='9.5',matricule='5d1038',codeExamen='A24255D1PC5DD2' where idNote='108' ;
-- 2025-06-26 18:56:55
update note set note='4',matricule='5d1039',codeExamen='A24255D1PC5DD2' where idNote='109' ;
-- 2025-06-26 18:56:55
update note set note='9',matricule='5d1040',codeExamen='A24255D1PC5DD2' where idNote='110' ;
-- 2025-06-26 18:56:55
update note set note='16.5',matricule='5d1041',codeExamen='A24255D1PC5DD2' where idNote='111' ;
-- 2025-06-26 18:56:55
update note set note='14',matricule='5d1042',codeExamen='A24255D1PC5DD2' where idNote='112' ;
-- 2025-06-26 18:56:55
update note set note='11.25',matricule='5d1043',codeExamen='A24255D1PC5DD2' where idNote='113' ;
-- 2025-06-26 18:56:56
update note set note='4',matricule='5d1044',codeExamen='A24255D1PC5DD2' where idNote='114' ;
-- 2025-06-26 18:56:56
update note set note='0',matricule='5d1045',codeExamen='A24255D1PC5DD2' where idNote='115' ;
-- 2025-06-26 18:56:56
update note set note='14.75',matricule='5d1046',codeExamen='A24255D1PC5DD2' where idNote='116' ;
-- 2025-06-26 18:56:56
update note set note='12.25',matricule='5d1047',codeExamen='A24255D1PC5DD2' where idNote='117' ;
-- 2025-06-26 18:56:56
update note set note='13.25',matricule='5d1048',codeExamen='A24255D1PC5DD2' where idNote='118' ;
-- 2025-06-26 18:56:56
update note set note='7.75',matricule='5d1049',codeExamen='A24255D1PC5DD2' where idNote='119' ;
-- 2025-06-26 18:56:56
update note set note='0',matricule='5d1050',codeExamen='A24255D1PC5DD2' where idNote='120' ;
-- 2025-06-26 18:56:57
update note set note='0',matricule='5d1051',codeExamen='A24255D1PC5DD2' where idNote='121' ;
-- 2025-06-26 18:56:57
update note set note='19.5',matricule='5d1052',codeExamen='A24255D1PC5DD2' where idNote='122' ;
-- 2025-06-26 18:56:57
update note set note='10',matricule='5d1053',codeExamen='A24255D1PC5DD2' where idNote='123' ;
-- 2025-06-26 18:56:57
update note set note='8',matricule='5d1054',codeExamen='A24255D1PC5DD2' where idNote='124' ;
-- 2025-06-26 18:56:57
update note set note='13.25',matricule='5d1055',codeExamen='A24255D1PC5DD2' where idNote='125' ;
-- 2025-06-26 18:56:57
update note set note='0',matricule='5d1056',codeExamen='A24255D1PC5DD2' where idNote='126' ;
-- 2025-06-26 18:56:57
update note set note='0',matricule='5d1057',codeExamen='A24255D1PC5DD2' where idNote='127' ;
-- 2025-06-26 18:56:58
update note set note='0',matricule='5d1058',codeExamen='A24255D1PC5DD2' where idNote='128' ;
-- 2025-06-26 18:56:58
update note set note='13.75',matricule='5d1059',codeExamen='A24255D1PC5DD2' where idNote='129' ;
-- 2025-06-26 18:56:58
update note set note='7',matricule='5d1060',codeExamen='A24255D1PC5DD2' where idNote='130' ;
-- 2025-06-26 18:56:58
update note set note='5',matricule='5d1061',codeExamen='A24255D1PC5DD2' where idNote='131' ;
-- 2025-06-26 18:56:58
update note set note='0',matricule='5d1062',codeExamen='A24255D1PC5DD2' where idNote='132' ;
-- 2025-06-26 18:56:58
update note set note='9.25',matricule='5d1063',codeExamen='A24255D1PC5DD2' where idNote='133' ;
-- 2025-06-26 18:56:59
update note set note='12.75',matricule='5d1064',codeExamen='A24255D1PC5DD2' where idNote='134' ;
-- 2025-06-26 18:58:23
insert into note(matricule,codeExamen,note) values('5d1001','A24255D10A24255DPC0D4','10');
-- 2025-06-26 18:58:23
insert into note(matricule,codeExamen,note) values('5d1002','A24255D10A24255DPC0D4','12');
-- 2025-06-26 18:58:23
insert into note(matricule,codeExamen,note) values('5d1003','A24255D10A24255DPC0D4','12');
-- 2025-06-26 18:58:23
insert into note(matricule,codeExamen,note) values('5d1004','A24255D10A24255DPC0D4','10');
-- 2025-06-26 18:58:24
insert into note(matricule,codeExamen,note) values('5d1005','A24255D10A24255DPC0D4','12');
-- 2025-06-26 18:58:24
insert into note(matricule,codeExamen,note) values('5d1006','A24255D10A24255DPC0D4','12');
-- 2025-06-26 18:58:24
insert into note(matricule,codeExamen,note) values('5d1007','A24255D10A24255DPC0D4','12');
-- 2025-06-26 18:58:24
insert into note(matricule,codeExamen,note) values('5d1008','A24255D10A24255DPC0D4','12');
-- 2025-06-26 18:58:24
insert into note(matricule,codeExamen,note) values('5d1009','A24255D10A24255DPC0D4','12');
-- 2025-06-26 18:58:25
insert into note(matricule,codeExamen,note) values('5d1010','A24255D10A24255DPC0D4','12');
-- 2025-06-26 18:58:25
insert into note(matricule,codeExamen,note) values('5d1011','A24255D10A24255DPC0D4','12');
-- 2025-06-26 18:58:25
insert into note(matricule,codeExamen,note) values('5d1012','A24255D10A24255DPC0D4','12');
-- 2025-06-26 18:58:25
insert into note(matricule,codeExamen,note) values('5d1013','A24255D10A24255DPC0D4','10');
-- 2025-06-26 18:58:26
insert into note(matricule,codeExamen,note) values('5d1014','A24255D10A24255DPC0D4','10');
-- 2025-06-26 18:58:26
insert into note(matricule,codeExamen,note) values('5d1015','A24255D10A24255DPC0D4','10');
-- 2025-06-26 18:58:26
insert into note(matricule,codeExamen,note) values('5d1016','A24255D10A24255DPC0D4','14');
-- 2025-06-26 18:58:26
insert into note(matricule,codeExamen,note) values('5d1017','A24255D10A24255DPC0D4','12');
-- 2025-06-26 18:58:27
insert into note(matricule,codeExamen,note) values('5d1018','A24255D10A24255DPC0D4','12');
-- 2025-06-26 18:58:27
insert into note(matricule,codeExamen,note) values('5d1019','A24255D10A24255DPC0D4','10');
-- 2025-06-26 18:58:27
insert into note(matricule,codeExamen,note) values('5d1020','A24255D10A24255DPC0D4','12');
-- 2025-06-26 18:58:27
insert into note(matricule,codeExamen,note) values('5d1021','A24255D10A24255DPC0D4','14');
-- 2025-06-26 18:58:28
insert into note(matricule,codeExamen,note) values('5d1022','A24255D10A24255DPC0D4','13');
-- 2025-06-26 18:58:28
insert into note(matricule,codeExamen,note) values('5d1023','A24255D10A24255DPC0D4','12');
-- 2025-06-26 18:58:28
insert into note(matricule,codeExamen,note) values('5d1024','A24255D10A24255DPC0D4','10');
-- 2025-06-26 18:58:28
insert into note(matricule,codeExamen,note) values('5d1025','A24255D10A24255DPC0D4','14');
-- 2025-06-26 18:58:28
insert into note(matricule,codeExamen,note) values('5d1026','A24255D10A24255DPC0D4','14');
-- 2025-06-26 18:58:29
insert into note(matricule,codeExamen,note) values('5d1027','A24255D10A24255DPC0D4','14');
-- 2025-06-26 18:58:29
insert into note(matricule,codeExamen,note) values('5d1028','A24255D10A24255DPC0D4','12');
-- 2025-06-26 18:58:29
insert into note(matricule,codeExamen,note) values('5d1029','A24255D10A24255DPC0D4','15');
-- 2025-06-26 18:58:29
insert into note(matricule,codeExamen,note) values('5d1030','A24255D10A24255DPC0D4','15');
-- 2025-06-26 18:58:30
insert into note(matricule,codeExamen,note) values('5d1031','A24255D10A24255DPC0D4','10');
-- 2025-06-26 18:58:30
insert into note(matricule,codeExamen,note) values('5d1032','A24255D10A24255DPC0D4','10');
-- 2025-06-26 18:58:30
insert into note(matricule,codeExamen,note) values('5d1033','A24255D10A24255DPC0D4','11');
-- 2025-06-26 18:58:30
insert into note(matricule,codeExamen,note) values('5d1034','A24255D10A24255DPC0D4','10');
-- 2025-06-26 18:58:31
insert into note(matricule,codeExamen,note) values('5d1035','A24255D10A24255DPC0D4','12');
-- 2025-06-26 18:58:31
insert into note(matricule,codeExamen,note) values('5d1036','A24255D10A24255DPC0D4','12');
-- 2025-06-26 18:58:31
insert into note(matricule,codeExamen,note) values('5d1037','A24255D10A24255DPC0D4','15');
-- 2025-06-26 18:58:31
insert into note(matricule,codeExamen,note) values('5d1038','A24255D10A24255DPC0D4','12');
-- 2025-06-26 18:58:31
insert into note(matricule,codeExamen,note) values('5d1039','A24255D10A24255DPC0D4','10');
-- 2025-06-26 18:58:31
insert into note(matricule,codeExamen,note) values('5d1040','A24255D10A24255DPC0D4','10');
-- 2025-06-26 18:58:32
insert into note(matricule,codeExamen,note) values('5d1041','A24255D10A24255DPC0D4','15');
-- 2025-06-26 18:58:32
insert into note(matricule,codeExamen,note) values('5d1042','A24255D10A24255DPC0D4','15');
-- 2025-06-26 18:58:32
insert into note(matricule,codeExamen,note) values('5d1043','A24255D10A24255DPC0D4','12');
-- 2025-06-26 18:58:32
insert into note(matricule,codeExamen,note) values('5d1044','A24255D10A24255DPC0D4','12');
-- 2025-06-26 18:58:33
insert into note(matricule,codeExamen,note) values('5d1046','A24255D10A24255DPC0D4','15');
-- 2025-06-26 18:58:33
insert into note(matricule,codeExamen,note) values('5d1047','A24255D10A24255DPC0D4','13');
-- 2025-06-26 18:58:33
insert into note(matricule,codeExamen,note) values('5d1048','A24255D10A24255DPC0D4','12');
-- 2025-06-26 18:58:33
insert into note(matricule,codeExamen,note) values('5d1049','A24255D10A24255DPC0D4','10');
-- 2025-06-26 18:58:33
insert into note(matricule,codeExamen,note) values('5d1050','A24255D10A24255DPC0D4','12');
-- 2025-06-26 18:58:33
insert into note(matricule,codeExamen,note) values('5d1052','A24255D10A24255DPC0D4','19');
-- 2025-06-26 18:58:34
insert into note(matricule,codeExamen,note) values('5d1053','A24255D10A24255DPC0D4','10');
-- 2025-06-26 18:58:34
insert into note(matricule,codeExamen,note) values('5d1054','A24255D10A24255DPC0D4','10');
-- 2025-06-26 18:58:34
insert into note(matricule,codeExamen,note) values('5d1055','A24255D10A24255DPC0D4','10');
-- 2025-06-26 18:58:34
insert into note(matricule,codeExamen,note) values('5d1056','A24255D10A24255DPC0D4','12');
-- 2025-06-26 18:58:34
insert into note(matricule,codeExamen,note) values('5d1059','A24255D10A24255DPC0D4','11');
-- 2025-06-26 18:58:35
insert into note(matricule,codeExamen,note) values('5d1060','A24255D10A24255DPC0D4','14');
-- 2025-06-26 18:58:35
insert into note(matricule,codeExamen,note) values('5d1061','A24255D10A24255DPC0D4','12');
-- 2025-06-26 18:58:35
insert into note(matricule,codeExamen,note) values('5d1062','A24255D10A24255DPC0D4','11');
-- 2025-06-26 18:58:35
insert into note(matricule,codeExamen,note) values('5d1063','A24255D10A24255DPC0D4','10');
-- 2025-06-26 18:58:36
insert into note(matricule,codeExamen,note) values('5d1064','A24255D10A24255DPC0D4','10');
-- 2025-06-26 18:59:58
update note set note='9.5',matricule='5d1061',codeExamen='A24255D1PC5DC2' where idNote='260' ;
-- 2025-06-26 19:14:24
insert into examen (codeExamen,codeClasseMatiere,codeSalleClasse,codeEvaluation,dateExamen,statutExamen,heureDebutExamen,heureFinExamen,trimestreExamen) values ('A24255D20A24255DPC0D4','A24255DPC','A24255D2','D4','','1','','','3');
-- 2025-06-26 19:16:39
update note set note='12',matricule='5d201',codeExamen='A24255D2PC5DD3' where idNote='1756' ;
-- 2025-06-26 19:16:39
insert into note(matricule,codeExamen,note) values('5d201','A24255D20A24255DPC0D4','15');
-- 2025-06-26 19:16:39
insert into note(matricule,codeExamen,note) values('5d202','A24255D20A24255DPC0D4','13');
-- 2025-06-26 19:16:39
insert into note(matricule,codeExamen,note) values('5d203','A24255D20A24255DPC0D4','10');
-- 2025-06-26 19:16:40
insert into note(matricule,codeExamen,note) values('5d205','A24255D20A24255DPC0D4','13');
-- 2025-06-26 19:16:40
insert into note(matricule,codeExamen,note) values('5d206','A24255D20A24255DPC0D4','12');
-- 2025-06-26 19:16:40
insert into note(matricule,codeExamen,note) values('5d208','A24255D20A24255DPC0D4','12');
-- 2025-06-26 19:16:40
insert into note(matricule,codeExamen,note) values('5d209','A24255D20A24255DPC0D4','14');
-- 2025-06-26 19:16:40
insert into note(matricule,codeExamen,note) values('5d210','A24255D20A24255DPC0D4','13');
-- 2025-06-26 19:16:41
insert into note(matricule,codeExamen,note) values('5d211','A24255D20A24255DPC0D4','13');
-- 2025-06-26 19:16:41
insert into note(matricule,codeExamen,note) values('5d212','A24255D20A24255DPC0D4','14');
-- 2025-06-26 19:16:41
update note set note='10',matricule='5d213',codeExamen='A24255D2PC5DD1' where idNote='404' ;
-- 2025-06-26 19:16:41
insert into note(matricule,codeExamen,note) values('5d213','A24255D20A24255DPC0D4','14');
-- 2025-06-26 19:16:41
update note set note='8',matricule='5d214',codeExamen='A24255D2PC5DD2' where idNote='469' ;
-- 2025-06-26 19:16:41
update note set note='10',matricule='5d214',codeExamen='A24255D2PC5DD3' where idNote='1769' ;
-- 2025-06-26 19:16:42
insert into note(matricule,codeExamen,note) values('5d214','A24255D20A24255DPC0D4','13');
-- 2025-06-26 19:16:42
insert into note(matricule,codeExamen,note) values('5d215','A24255D20A24255DPC0D4','14');
-- 2025-06-26 19:16:42
insert into note(matricule,codeExamen,note) values('5d216','A24255D20A24255DPC0D4','14');
-- 2025-06-26 19:16:42
insert into note(matricule,codeExamen,note) values('5d217','A24255D20A24255DPC0D4','13');
-- 2025-06-26 19:16:42
insert into note(matricule,codeExamen,note) values('5d218','A24255D20A24255DPC0D4','10');
-- 2025-06-26 19:16:43
insert into note(matricule,codeExamen,note) values('5d219','A24255D20A24255DPC0D4','12');
-- 2025-06-26 19:16:43
insert into note(matricule,codeExamen,note) values('5d220','A24255D20A24255DPC0D4','10');
-- 2025-06-26 19:16:43
insert into note(matricule,codeExamen,note) values('5d222','A24255D20A24255DPC0D4','13');
-- 2025-06-26 19:16:43
insert into note(matricule,codeExamen,note) values('5d224','A24255D20A24255DPC0D4','10');
-- 2025-06-26 19:16:43
update note set note='10.5',matricule='5d225',codeExamen='A24255D2PC5DD2' where idNote='480' ;
-- 2025-06-26 19:16:44
insert into note(matricule,codeExamen,note) values('5d225','A24255D20A24255DPC0D4','10');
-- 2025-06-26 19:16:44
insert into note(matricule,codeExamen,note) values('5d226','A24255D20A24255DPC0D4','13');
-- 2025-06-26 19:16:44
insert into note(matricule,codeExamen,note) values('5d227','A24255D20A24255DPC0D4','12');
-- 2025-06-26 19:16:44
insert into note(matricule,codeExamen,note) values('5d228','A24255D20A24255DPC0D4','11');
-- 2025-06-26 19:16:45
insert into note(matricule,codeExamen,note) values('5d229','A24255D20A24255DPC0D4','11');
-- 2025-06-26 19:16:45
insert into note(matricule,codeExamen,note) values('5d230','A24255D20A24255DPC0D4','11');
-- 2025-06-26 19:16:45
insert into note(matricule,codeExamen,note) values('5d231','A24255D20A24255DPC0D4','15');
-- 2025-06-26 19:16:45
insert into note(matricule,codeExamen,note) values('5d232','A24255D20A24255DPC0D4','17');
-- 2025-06-26 19:16:46
insert into note(matricule,codeExamen,note) values('5d233','A24255D20A24255DPC0D4','10');
-- 2025-06-26 19:16:46
insert into note(matricule,codeExamen,note) values('5d234','A24255D20A24255DPC0D4','15');
-- 2025-06-26 19:16:46
insert into note(matricule,codeExamen,note) values('5d235','A24255D20A24255DPC0D4','17');
-- 2025-06-26 19:16:47
insert into note(matricule,codeExamen,note) values('5d236','A24255D20A24255DPC0D4','19');
-- 2025-06-26 19:16:47
insert into note(matricule,codeExamen,note) values('5d237','A24255D20A24255DPC0D4','15');
-- 2025-06-26 19:16:47
insert into note(matricule,codeExamen,note) values('5d238','A24255D20A24255DPC0D4','10');
-- 2025-06-26 19:16:47
insert into note(matricule,codeExamen,note) values('5d239','A24255D20A24255DPC0D4','15');
-- 2025-06-26 19:16:48
insert into note(matricule,codeExamen,note) values('5d240','A24255D20A24255DPC0D4','15');
-- 2025-06-26 19:16:48
update note set note='11.75',matricule='5d241',codeExamen='A24255D2PC5DD3' where idNote='1796' ;
-- 2025-06-26 19:16:48
insert into note(matricule,codeExamen,note) values('5d241','A24255D20A24255DPC0D4','14');
-- 2025-06-26 19:16:48
insert into note(matricule,codeExamen,note) values('5d242','A24255D20A24255DPC0D4','10');
-- 2025-06-26 19:16:49
insert into note(matricule,codeExamen,note) values('5d243','A24255D20A24255DPC0D4','15');
-- 2025-06-26 19:16:49
insert into note(matricule,codeExamen,note) values('5d244','A24255D20A24255DPC0D4','12');
-- 2025-06-26 19:16:49
insert into note(matricule,codeExamen,note) values('5d245','A24255D20A24255DPC0D4','19');
-- 2025-06-26 19:16:50
insert into note(matricule,codeExamen,note) values('5d246','A24255D20A24255DPC0D4','13');
-- 2025-06-26 19:16:50
insert into note(matricule,codeExamen,note) values('5d247','A24255D20A24255DPC0D4','10');
-- 2025-06-26 19:16:50
insert into note(matricule,codeExamen,note) values('5d248','A24255D20A24255DPC0D4','15');
-- 2025-06-26 19:16:51
insert into note(matricule,codeExamen,note) values('5d249','A24255D20A24255DPC0D4','10');
-- 2025-06-26 19:16:51
insert into note(matricule,codeExamen,note) values('5d250','A24255D20A24255DPC0D4','10');
-- 2025-06-26 19:16:51
insert into note(matricule,codeExamen,note) values('5d251','A24255D20A24255DPC0D4','14');
-- 2025-06-26 19:16:51
insert into note(matricule,codeExamen,note) values('5d252','A24255D20A24255DPC0D4','14');
-- 2025-06-26 19:16:52
insert into note(matricule,codeExamen,note) values('5d254','A24255D20A24255DPC0D4','14');
-- 2025-06-26 19:16:52
insert into note(matricule,codeExamen,note) values('5d255','A24255D20A24255DPC0D4','10');
-- 2025-06-26 19:16:52
insert into note(matricule,codeExamen,note) values('5d257','A24255D20A24255DPC0D4','14');
-- 2025-06-26 19:16:52
insert into note(matricule,codeExamen,note) values('5d258','A24255D20A24255DPC0D4','15');
-- 2025-06-26 19:16:53
insert into note(matricule,codeExamen,note) values('5d259','A24255D20A24255DPC0D4','14');
-- 2025-06-26 19:16:53
insert into note(matricule,codeExamen,note) values('5d260','A24255D20A24255DPC0D4','10');
-- 2025-06-26 19:16:53
insert into note(matricule,codeExamen,note) values('5d262','A24255D20A24255DPC0D4','10');
-- 2025-06-26 19:16:54
insert into note(matricule,codeExamen,note) values('5d263','A24255D20A24255DPC0D4','12');
-- 2025-06-26 19:16:54
insert into note(matricule,codeExamen,note) values('5d2064','A24255D20A24255DPC0D4','10');
-- 2025-06-26 19:18:17
update note set note='8.5',matricule='5d248',codeExamen='A24255D2PC5DD2' where idNote='503' ;
-- 2025-06-26 19:18:17
update note set note='10',matricule='5d251',codeExamen='A24255D2PC5DD1' where idNote='442' ;
-- 2025-06-26 19:20:29
update note set note='7.5',matricule='5d227',codeExamen='A24255D2PC5DC1' where idNote='354' ;
-- 2025-06-26 19:20:29
update note set note='14.5',matricule='5d227',codeExamen='A24255D2PC5DC2' where idNote='546' ;
-- 2025-06-26 19:20:29
update note set note='19',matricule='5d236',codeExamen='A24255D2PC5DC2' where idNote='555' ;
-- 2025-06-26 19:20:29
update note set note='8.5',matricule='5d248',codeExamen='A24255D2PC5DC1' where idNote='375' ;
-- 2025-06-26 19:21:55
insert into examen (codeExamen,codeClasseMatiere,codeSalleClasse,codeEvaluation,dateExamen,statutExamen,heureDebutExamen,heureFinExamen,trimestreExamen) values ('A24255LM0A24255LMMATH0D3','A24255LMMATH','A24255LM','D3','','1','','','3');
-- 2025-06-26 19:30:29
update note set note='8',matricule='5LM030',codeExamen='A24255LMMATH5LMD2' where idNote='914' ;
-- 2025-06-26 19:31:12
update note set note='15',matricule='5LM038',codeExamen='A24255LMMATH5LMC2' where idNote='1036' ;
-- 2025-06-26 19:32:08
insert into note(matricule,codeExamen,note) values('5LM001','A24255LM0A24255LMMATH0D3','11');
-- 2025-06-26 19:32:08
insert into note(matricule,codeExamen,note) values('5LM004','A24255LM0A24255LMMATH0D3','9');
-- 2025-06-26 19:32:08
insert into note(matricule,codeExamen,note) values('5LM005','A24255LM0A24255LMMATH0D3','11');
-- 2025-06-26 19:32:08
insert into note(matricule,codeExamen,note) values('5LM007','A24255LM0A24255LMMATH0D3','7');
-- 2025-06-26 19:32:08
insert into note(matricule,codeExamen,note) values('5LM012','A24255LM0A24255LMMATH0D3','8');
-- 2025-06-26 19:32:08
insert into note(matricule,codeExamen,note) values('5LM014','A24255LM0A24255LMMATH0D3','9');
-- 2025-06-26 19:32:08
insert into note(matricule,codeExamen,note) values('5LM015','A24255LM0A24255LMMATH0D3','7');
-- 2025-06-26 19:32:09
insert into note(matricule,codeExamen,note) values('5LM017','A24255LM0A24255LMMATH0D3','8');
-- 2025-06-26 19:32:09
insert into note(matricule,codeExamen,note) values('5LM019','A24255LM0A24255LMMATH0D3','9');
-- 2025-06-26 19:32:09
insert into note(matricule,codeExamen,note) values('5LM026','A24255LM0A24255LMMATH0D3','7');
-- 2025-06-26 19:32:09
insert into note(matricule,codeExamen,note) values('5LM027','A24255LM0A24255LMMATH0D3','8');
-- 2025-06-26 19:32:09
insert into note(matricule,codeExamen,note) values('5LM028','A24255LM0A24255LMMATH0D3','9');
-- 2025-06-26 19:32:09
insert into note(matricule,codeExamen,note) values('5LM029','A24255LM0A24255LMMATH0D3','10');
-- 2025-06-26 19:32:09
insert into note(matricule,codeExamen,note) values('5LM030','A24255LM0A24255LMMATH0D3','8');
-- 2025-06-26 19:32:10
insert into note(matricule,codeExamen,note) values('5LM035','A24255LM0A24255LMMATH0D3','11');
-- 2025-06-26 19:32:10
insert into note(matricule,codeExamen,note) values('5LM036','A24255LM0A24255LMMATH0D3','8');
-- 2025-06-26 19:32:10
insert into note(matricule,codeExamen,note) values('5LM037','A24255LM0A24255LMMATH0D3','12');
-- 2025-06-26 19:32:10
insert into note(matricule,codeExamen,note) values('5LM038','A24255LM0A24255LMMATH0D3','9');
-- 2025-06-26 19:32:10
insert into note(matricule,codeExamen,note) values('5LM039','A24255LM0A24255LMMATH0D3','11');
-- 2025-06-26 19:32:10
insert into note(matricule,codeExamen,note) values('5LM041','A24255LM0A24255LMMATH0D3','13');
-- 2025-06-26 19:32:10
insert into note(matricule,codeExamen,note) values('5LM044','A24255LM0A24255LMMATH0D3','9');
-- 2025-06-26 19:32:11
insert into note(matricule,codeExamen,note) values('5LM045','A24255LM0A24255LMMATH0D3','8');
-- 2025-06-26 19:32:11
insert into note(matricule,codeExamen,note) values('5LM047','A24255LM0A24255LMMATH0D3','8');
-- 2025-06-26 19:32:11
insert into note(matricule,codeExamen,note) values('5LM048','A24255LM0A24255LMMATH0D3','10');
-- 2025-06-26 19:32:11
insert into note(matricule,codeExamen,note) values('5LM049','A24255LM0A24255LMMATH0D3','10');
-- 2025-06-26 19:32:11
insert into note(matricule,codeExamen,note) values('5LM050','A24255LM0A24255LMMATH0D3','10');
-- 2025-06-26 19:32:11
insert into note(matricule,codeExamen,note) values('5LM051','A24255LM0A24255LMMATH0D3','9');
-- 2025-06-26 19:32:11
insert into note(matricule,codeExamen,note) values('5LM052','A24255LM0A24255LMMATH0D3','8');
-- 2025-06-26 19:32:12
insert into note(matricule,codeExamen,note) values('5LM053','A24255LM0A24255LMMATH0D3','9');
-- 2025-06-26 19:32:12
insert into note(matricule,codeExamen,note) values('5LM054','A24255LM0A24255LMMATH0D3','8');
-- 2025-06-26 19:32:12
insert into note(matricule,codeExamen,note) values('5LM055','A24255LM0A24255LMMATH0D3','10');
-- 2025-06-26 19:32:12
insert into note(matricule,codeExamen,note) values('5LM056','A24255LM0A24255LMMATH0D3','7');
-- 2025-06-26 19:32:12
insert into note(matricule,codeExamen,note) values('5LM057','A24255LM0A24255LMMATH0D3','8');
-- 2025-06-26 19:42:30
insert into note(matricule,codeExamen,note) values('5LM001','A24255LM0A24255LMPC0D3','10');
-- 2025-06-26 19:42:31
insert into note(matricule,codeExamen,note) values('5LM002','A24255LM0A24255LMPC0D3','10');
-- 2025-06-26 19:42:31
insert into note(matricule,codeExamen,note) values('5LM004','A24255LM0A24255LMPC0D3','10');
-- 2025-06-26 19:42:31
insert into note(matricule,codeExamen,note) values('5LM005','A24255LM0A24255LMPC0D3','10');
-- 2025-06-26 19:42:31
insert into note(matricule,codeExamen,note) values('5LM007','A24255LM0A24255LMPC0D3','10');
-- 2025-06-26 19:42:31
insert into note(matricule,codeExamen,note) values('5LM014','A24255LM0A24255LMPC0D3','11');
-- 2025-06-26 19:42:31
insert into note(matricule,codeExamen,note) values('5LM017','A24255LM0A24255LMPC0D3','11');
-- 2025-06-26 19:42:31
insert into note(matricule,codeExamen,note) values('5LM019','A24255LM0A24255LMPC0D3','10');
-- 2025-06-26 19:42:31
insert into note(matricule,codeExamen,note) values('5LM026','A24255LM0A24255LMPC0D3','11');
-- 2025-06-26 19:42:32
insert into note(matricule,codeExamen,note) values('5LM027','A24255LM0A24255LMPC0D3','10');
-- 2025-06-26 19:42:32
insert into note(matricule,codeExamen,note) values('5LM028','A24255LM0A24255LMPC0D3','11');
-- 2025-06-26 19:42:32
insert into note(matricule,codeExamen,note) values('5LM029','A24255LM0A24255LMPC0D3','12');
-- 2025-06-26 19:42:32
insert into note(matricule,codeExamen,note) values('5LM030','A24255LM0A24255LMPC0D3','13');
-- 2025-06-26 19:42:32
insert into note(matricule,codeExamen,note) values('5LM031','A24255LM0A24255LMPC0D3','10');
-- 2025-06-26 19:42:32
insert into note(matricule,codeExamen,note) values('5LM035','A24255LM0A24255LMPC0D3','14');
-- 2025-06-26 19:42:32
insert into note(matricule,codeExamen,note) values('5LM036','A24255LM0A24255LMPC0D3','11');
-- 2025-06-26 19:42:32
insert into note(matricule,codeExamen,note) values('5LM037','A24255LM0A24255LMPC0D3','14');
-- 2025-06-26 19:42:33
insert into note(matricule,codeExamen,note) values('5LM038','A24255LM0A24255LMPC0D3','10');
-- 2025-06-26 19:42:33
insert into note(matricule,codeExamen,note) values('5LM039','A24255LM0A24255LMPC0D3','10');
-- 2025-06-26 19:42:33
insert into note(matricule,codeExamen,note) values('5LM047','A24255LM0A24255LMPC0D3','7');
-- 2025-06-26 19:42:33
insert into note(matricule,codeExamen,note) values('5LM048','A24255LM0A24255LMPC0D3','10');
-- 2025-06-26 19:42:33
insert into note(matricule,codeExamen,note) values('5LM049','A24255LM0A24255LMPC0D3','7');
-- 2025-06-26 19:42:33
insert into note(matricule,codeExamen,note) values('5LM050','A24255LM0A24255LMPC0D3','10');
-- 2025-06-26 19:42:34
insert into note(matricule,codeExamen,note) values('5LM051','A24255LM0A24255LMPC0D3','10');
-- 2025-06-26 19:42:34
insert into note(matricule,codeExamen,note) values('5LM052','A24255LM0A24255LMPC0D3','10');
-- 2025-06-26 19:42:34
insert into note(matricule,codeExamen,note) values('5LM054','A24255LM0A24255LMPC0D3','12');
-- 2025-06-26 19:42:34
insert into note(matricule,codeExamen,note) values('5LM055','A24255LM0A24255LMPC0D3','10');
-- 2025-06-26 19:42:34
insert into note(matricule,codeExamen,note) values('5LM057','A24255LM0A24255LMPC0D3','10');
-- 2025-06-26 19:53:52
update note set note='7',matricule='5LM017',codeExamen='A24255LM0A24255LMPC0D3' where idNote='2070' ;
-- 2025-06-26 19:53:52
insert into note(matricule,codeExamen,note) values('5LM040','A24255LM0A24255LMPC0D3','7');
-- 2025-06-26 19:53:52
insert into note(matricule,codeExamen,note) values('5LM041','A24255LM0A24255LMPC0D3','7');
-- 2025-06-26 19:58:19
update examen set dateExamen='',heureDebutExamen='00:00:00',heureFinExamen='00:00:00',statutExamen='1',trimestreExamen='3' where codeExamen='A24252AS2MATH2ASD3';
-- 2025-06-26 19:59:38
insert into examen (codeExamen,codeClasseMatiere,codeSalleClasse,codeEvaluation,dateExamen,statutExamen,heureDebutExamen,heureFinExamen,trimestreExamen) values ('A24252AS20A24252ASMATH0D4','A24252ASMATH','A24252AS2','D4','','1','','','3');
-- 2025-06-26 20:03:17
insert into note(matricule,codeExamen,note) values('2AS201','A24252AS20A24252ASMATH0D4','10');
-- 2025-06-26 20:03:17
insert into note(matricule,codeExamen,note) values('2AS202','A24252AS20A24252ASMATH0D4','10');
-- 2025-06-26 20:03:17
insert into note(matricule,codeExamen,note) values('2AS203','A24252AS20A24252ASMATH0D4','11');
-- 2025-06-26 20:03:18
insert into note(matricule,codeExamen,note) values('2AS204','A24252AS20A24252ASMATH0D4','10');
-- 2025-06-26 20:03:18
insert into note(matricule,codeExamen,note) values('2AS205','A24252AS20A24252ASMATH0D4','11');
-- 2025-06-26 20:03:18
insert into note(matricule,codeExamen,note) values('2AS206','A24252AS20A24252ASMATH0D4','14');
-- 2025-06-26 20:03:18
insert into note(matricule,codeExamen,note) values('2AS207','A24252AS20A24252ASMATH0D4','14');
-- 2025-06-26 20:03:18
insert into note(matricule,codeExamen,note) values('2AS208','A24252AS20A24252ASMATH0D4','12');
-- 2025-06-26 20:03:18
insert into note(matricule,codeExamen,note) values('2AS209','A24252AS20A24252ASMATH0D4','13');
-- 2025-06-26 20:03:19
insert into note(matricule,codeExamen,note) values('2AS210','A24252AS20A24252ASMATH0D4','11');
-- 2025-06-26 20:03:19
insert into note(matricule,codeExamen,note) values('2AS211','A24252AS20A24252ASMATH0D4','11');
-- 2025-06-26 20:03:19
insert into note(matricule,codeExamen,note) values('2AS212','A24252AS20A24252ASMATH0D4','11');
-- 2025-06-26 20:03:19
insert into note(matricule,codeExamen,note) values('2AS213','A24252AS20A24252ASMATH0D4','13');
-- 2025-06-26 20:03:19
insert into note(matricule,codeExamen,note) values('2AS214','A24252AS20A24252ASMATH0D4','17');
-- 2025-06-26 20:03:19
insert into note(matricule,codeExamen,note) values('2AS215','A24252AS20A24252ASMATH0D4','12');
-- 2025-06-26 20:03:19
insert into note(matricule,codeExamen,note) values('2AS216','A24252AS20A24252ASMATH0D4','13');
-- 2025-06-26 20:03:20
insert into note(matricule,codeExamen,note) values('2AS217','A24252AS20A24252ASMATH0D4','17');
-- 2025-06-26 20:03:20
update note set note='13',matricule='2AS218',codeExamen='A24252AS2MATH2ASD3' where idNote='1716' ;
-- 2025-06-26 20:03:20
insert into note(matricule,codeExamen,note) values('2AS218','A24252AS20A24252ASMATH0D4','16');
-- 2025-06-26 20:03:20
insert into note(matricule,codeExamen,note) values('2AS219','A24252AS20A24252ASMATH0D4','13');
-- 2025-06-26 20:03:20
insert into note(matricule,codeExamen,note) values('2AS220','A24252AS20A24252ASMATH0D4','10');
-- 2025-06-26 20:03:20
insert into note(matricule,codeExamen,note) values('2AS221','A24252AS20A24252ASMATH0D4','18');
-- 2025-06-26 20:03:20
insert into note(matricule,codeExamen,note) values('2AS222','A24252AS20A24252ASMATH0D4','18');
-- 2025-06-26 20:03:20
insert into note(matricule,codeExamen,note) values('2AS223','A24252AS20A24252ASMATH0D4','13');
-- 2025-06-26 20:03:21
insert into note(matricule,codeExamen,note) values('2AS224','A24252AS20A24252ASMATH0D4','10');
-- 2025-06-26 20:03:21
insert into note(matricule,codeExamen,note) values('2AS225','A24252AS20A24252ASMATH0D4','10');
-- 2025-06-26 20:03:21
insert into note(matricule,codeExamen,note) values('2AS226','A24252AS20A24252ASMATH0D4','17');
-- 2025-06-26 20:03:21
insert into note(matricule,codeExamen,note) values('2AS228','A24252AS20A24252ASMATH0D4','17');
-- 2025-06-26 20:03:21
insert into note(matricule,codeExamen,note) values('2AS229','A24252AS20A24252ASMATH0D4','18');
-- 2025-06-26 20:03:21
insert into note(matricule,codeExamen,note) values('2AS230','A24252AS20A24252ASMATH0D4','18');
-- 2025-06-26 20:03:21
insert into note(matricule,codeExamen,note) values('2AS231','A24252AS20A24252ASMATH0D4','12');
-- 2025-06-26 20:03:22
insert into note(matricule,codeExamen,note) values('2AS232','A24252AS20A24252ASMATH0D4','16');
-- 2025-06-26 20:03:22
update note set note='10',matricule='2AS233',codeExamen='A24252AS2MATH2ASD3' where idNote='1731' ;
-- 2025-06-26 20:03:22
insert into note(matricule,codeExamen,note) values('2AS233','A24252AS20A24252ASMATH0D4','14');
-- 2025-06-26 20:03:22
insert into note(matricule,codeExamen,note) values('2AS234','A24252AS20A24252ASMATH0D4','12');
-- 2025-06-26 20:03:22
insert into note(matricule,codeExamen,note) values('2AS235','A24252AS20A24252ASMATH0D4','10');
-- 2025-06-26 20:03:22
insert into note(matricule,codeExamen,note) values('2AS236','A24252AS20A24252ASMATH0D4','10');
-- 2025-06-26 20:03:22
insert into note(matricule,codeExamen,note) values('2AS237','A24252AS20A24252ASMATH0D4','12');
-- 2025-06-26 20:03:23
insert into note(matricule,codeExamen,note) values('2AS238','A24252AS20A24252ASMATH0D4','13');
-- 2025-06-26 20:03:23
insert into note(matricule,codeExamen,note) values('2AS239','A24252AS20A24252ASMATH0D4','12');
-- 2025-06-26 20:03:23
insert into note(matricule,codeExamen,note) values('2AS240','A24252AS20A24252ASMATH0D4','13');
-- 2025-06-26 20:03:23
insert into note(matricule,codeExamen,note) values('2AS241','A24252AS20A24252ASMATH0D4','17');
-- 2025-06-26 20:03:23
insert into note(matricule,codeExamen,note) values('2AS242','A24252AS20A24252ASMATH0D4','15');
-- 2025-06-26 20:03:23
insert into note(matricule,codeExamen,note) values('2AS243','A24252AS20A24252ASMATH0D4','18');
-- 2025-06-26 20:03:23
insert into note(matricule,codeExamen,note) values('2AS244','A24252AS20A24252ASMATH0D4','16');
-- 2025-06-26 20:03:23
insert into note(matricule,codeExamen,note) values('2AS245','A24252AS20A24252ASMATH0D4','12');
-- 2025-06-26 20:03:24
insert into note(matricule,codeExamen,note) values('2AS246','A24252AS20A24252ASMATH0D4','12');
-- 2025-06-26 20:03:24
insert into note(matricule,codeExamen,note) values('2AS247','A24252AS20A24252ASMATH0D4','12');
-- 2025-06-26 20:03:24
insert into note(matricule,codeExamen,note) values('2AS248','A24252AS20A24252ASMATH0D4','15');
-- 2025-06-26 20:03:24
insert into note(matricule,codeExamen,note) values('2AS249','A24252AS20A24252ASMATH0D4','16');
-- 2025-06-26 20:03:24
insert into note(matricule,codeExamen,note) values('2AS250','A24252AS20A24252ASMATH0D4','11');
-- 2025-06-26 20:03:24
insert into note(matricule,codeExamen,note) values('2AS252','A24252AS20A24252ASMATH0D4','10');
-- 2025-06-26 20:03:24
update note set note='8',matricule='2AS253',codeExamen='A24252AS2MATH2ASD3' where idNote='1751' ;
-- 2025-06-26 20:03:24
insert into note(matricule,codeExamen,note) values('2AS253','A24252AS20A24252ASMATH0D4','13');
-- 2025-06-26 20:03:25
insert into note(matricule,codeExamen,note) values('2AS254','A24252AS20A24252ASMATH0D4','17');
-- 2025-06-26 20:03:25
insert into note(matricule,codeExamen,note) values('2AS255','A24252AS20A24252ASMATH0D4','15');
-- 2025-06-26 20:03:25
insert into note(matricule,codeExamen,note) values('2AS256','A24252AS20A24252ASMATH0D4','11');
-- 2025-06-26 20:03:25
insert into note(matricule,codeExamen,note) values('2AS257','A24252AS20A24252ASMATH0D4','12');
-- 2025-06-26 20:23:33
insert into examen (codeExamen,codeClasseMatiere,codeSalleClasse,codeEvaluation,dateExamen,statutExamen,heureDebutExamen,heureFinExamen,trimestreExamen) values ('A24255D30A24255DPC0D4','A24255DPC','A24255D3','D4','','1','','','3');
-- 2025-06-26 20:28:05
update note set note='10',matricule='5d301',codeExamen='A24255D3PC5DD3' where idNote='1820' ;
-- 2025-06-26 20:28:06
insert into note(matricule,codeExamen,note) values('5d301','A24255D30A24255DPC0D4','13');
-- 2025-06-26 20:28:06
insert into note(matricule,codeExamen,note) values('5d302','A24255D30A24255DPC0D4','13');
-- 2025-06-26 20:28:06
insert into note(matricule,codeExamen,note) values('5d303','A24255D30A24255DPC0D4','15');
-- 2025-06-26 20:28:06
insert into note(matricule,codeExamen,note) values('5d304','A24255D30A24255DPC0D4','14');
-- 2025-06-26 20:28:06
insert into note(matricule,codeExamen,note) values('5d306','A24255D30A24255DPC0D4','17');
-- 2025-06-26 20:28:07
insert into note(matricule,codeExamen,note) values('5d308','A24255D30A24255DPC0D4','17');
-- 2025-06-26 20:28:07
update note set note='15',matricule='5d310',codeExamen='A24255D3PC5DD3' where idNote='1829' ;
-- 2025-06-26 20:28:07
insert into note(matricule,codeExamen,note) values('5d310','A24255D30A24255DPC0D4','15');
-- 2025-06-26 20:28:07
insert into note(matricule,codeExamen,note) values('5d311','A24255D30A24255DPC0D4','13');
-- 2025-06-26 20:28:07
insert into note(matricule,codeExamen,note) values('5d312','A24255D30A24255DPC0D4','10');
-- 2025-06-26 20:28:08
update note set note='10',matricule='5d313',codeExamen='A24255D3PC5DD3' where idNote='1832' ;
-- 2025-06-26 20:28:08
insert into note(matricule,codeExamen,note) values('5d313','A24255D30A24255DPC0D4','17');
-- 2025-06-26 20:28:08
update note set note='10',matricule='5d314',codeExamen='A24255D3PC5DD3' where idNote='1833' ;
-- 2025-06-26 20:28:08
insert into note(matricule,codeExamen,note) values('5d314','A24255D30A24255DPC0D4','17');
-- 2025-06-26 20:28:08
update note set note='11.75',matricule='5d315',codeExamen='A24255D3PC5DD3' where idNote='1834' ;
-- 2025-06-26 20:28:08
insert into note(matricule,codeExamen,note) values('5d315','A24255D30A24255DPC0D4','10');
-- 2025-06-26 20:28:08
insert into note(matricule,codeExamen,note) values('5d316','A24255D30A24255DPC0D4','10');
-- 2025-06-26 20:28:09
insert into note(matricule,codeExamen,note) values('5d317','A24255D30A24255DPC0D4','13');
-- 2025-06-26 20:28:09
insert into note(matricule,codeExamen,note) values('5d319','A24255D30A24255DPC0D4','10');
-- 2025-06-26 20:28:09
insert into note(matricule,codeExamen,note) values('5d320','A24255D30A24255DPC0D4','13');
-- 2025-06-26 20:28:09
insert into note(matricule,codeExamen,note) values('5d321','A24255D30A24255DPC0D4','13');
-- 2025-06-26 20:28:09
insert into note(matricule,codeExamen,note) values('5d322','A24255D30A24255DPC0D4','13');
-- 2025-06-26 20:28:09
insert into note(matricule,codeExamen,note) values('5d323','A24255D30A24255DPC0D4','17');
-- 2025-06-26 20:28:10
insert into note(matricule,codeExamen,note) values('5d324','A24255D30A24255DPC0D4','15');
-- 2025-06-26 20:28:10
insert into note(matricule,codeExamen,note) values('5d326','A24255D30A24255DPC0D4','13');
-- 2025-06-26 20:28:10
insert into note(matricule,codeExamen,note) values('5d327','A24255D30A24255DPC0D4','13');
-- 2025-06-26 20:28:10
update note set note='9',matricule='5d328',codeExamen='A24255D3PC5DD3' where idNote='1847' ;
-- 2025-06-26 20:28:11
insert into note(matricule,codeExamen,note) values('5d328','A24255D30A24255DPC0D4','13');
-- 2025-06-26 20:28:11
insert into note(matricule,codeExamen,note) values('5d329','A24255D30A24255DPC0D4','15');
-- 2025-06-26 20:28:11
insert into note(matricule,codeExamen,note) values('5d330','A24255D30A24255DPC0D4','10');
-- 2025-06-26 20:28:11
insert into note(matricule,codeExamen,note) values('5d331','A24255D30A24255DPC0D4','16');
-- 2025-06-26 20:28:11
update note set note='6',matricule='5d332',codeExamen='A24255D3PC5DD3' where idNote='1851' ;
-- 2025-06-26 20:28:12
insert into note(matricule,codeExamen,note) values('5d332','A24255D30A24255DPC0D4','13');
-- 2025-06-26 20:28:12
insert into note(matricule,codeExamen,note) values('5d333','A24255D30A24255DPC0D4','13');
-- 2025-06-26 20:28:12
update note set note='8',matricule='5d334',codeExamen='A24255D3PC5DD2' where idNote='678' ;
-- 2025-06-26 20:28:12
update note set note='13',matricule='5d334',codeExamen='A24255D3PC5DD3' where idNote='1853' ;
-- 2025-06-26 20:28:12
insert into note(matricule,codeExamen,note) values('5d334','A24255D30A24255DPC0D4','17');
-- 2025-06-26 20:28:12
insert into note(matricule,codeExamen,note) values('5d335','A24255D30A24255DPC0D4','17');
-- 2025-06-26 20:28:13
insert into note(matricule,codeExamen,note) values('5d336','A24255D30A24255DPC0D4','17');
-- 2025-06-26 20:28:13
insert into note(matricule,codeExamen,note) values('5d337','A24255D30A24255DPC0D4','17');
-- 2025-06-26 20:28:13
insert into note(matricule,codeExamen,note) values('5d338','A24255D30A24255DPC0D4','17');
-- 2025-06-26 20:28:13
insert into note(matricule,codeExamen,note) values('5d339','A24255D30A24255DPC0D4','17');
-- 2025-06-26 20:28:13
insert into note(matricule,codeExamen,note) values('5d340','A24255D30A24255DPC0D4','17');
-- 2025-06-26 20:28:13
insert into note(matricule,codeExamen,note) values('5d341','A24255D30A24255DPC0D4','17');
-- 2025-06-26 20:28:14
insert into note(matricule,codeExamen,note) values('5d342','A24255D30A24255DPC0D4','13');
-- 2025-06-26 20:28:14
update note set note='11',matricule='5d343',codeExamen='A24255D3PC5DD3' where idNote='1862' ;
-- 2025-06-26 20:28:14
insert into note(matricule,codeExamen,note) values('5d343','A24255D30A24255DPC0D4','17');
-- 2025-06-26 20:28:14
insert into note(matricule,codeExamen,note) values('5d344','A24255D30A24255DPC0D4','15');
-- 2025-06-26 20:28:15
insert into note(matricule,codeExamen,note) values('5d345','A24255D30A24255DPC0D4','13');
-- 2025-06-26 20:28:15
update note set note='12.75',matricule='5d346',codeExamen='A24255D3PC5DD3' where idNote='1865' ;
-- 2025-06-26 20:28:15
insert into note(matricule,codeExamen,note) values('5d346','A24255D30A24255DPC0D4','17');
-- 2025-06-26 20:28:15
insert into note(matricule,codeExamen,note) values('5d347','A24255D30A24255DPC0D4','10');
-- 2025-06-26 20:28:15
insert into note(matricule,codeExamen,note) values('5d348','A24255D30A24255DPC0D4','13');
-- 2025-06-26 20:28:16
insert into note(matricule,codeExamen,note) values('5d349','A24255D30A24255DPC0D4','13');
-- 2025-06-26 20:28:16
insert into note(matricule,codeExamen,note) values('5d350','A24255D30A24255DPC0D4','13');
-- 2025-06-26 20:28:16
insert into note(matricule,codeExamen,note) values('5d351','A24255D30A24255DPC0D4','10');
-- 2025-06-26 20:28:17
insert into note(matricule,codeExamen,note) values('5d352','A24255D30A24255DPC0D4','15');
-- 2025-06-26 20:28:17
insert into note(matricule,codeExamen,note) values('5d353','A24255D30A24255DPC0D4','15');
-- 2025-06-26 20:28:17
insert into note(matricule,codeExamen,note) values('5d354','A24255D30A24255DPC0D4','13');
-- 2025-06-26 20:28:17
insert into note(matricule,codeExamen,note) values('5d355','A24255D30A24255DPC0D4','13');
-- 2025-06-26 20:28:17
update note set note='10',matricule='5d356',codeExamen='A24255D3PC5DD1' where idNote='639' ;
-- 2025-06-26 20:28:18
insert into note(matricule,codeExamen,note) values('5d356','A24255D30A24255DPC0D4','17');
-- 2025-06-26 20:28:18
insert into note(matricule,codeExamen,note) values('5d357','A24255D30A24255DPC0D4','12');
-- 2025-06-26 20:28:18
insert into note(matricule,codeExamen,note) values('5d358','A24255D30A24255DPC0D4','13');
-- 2025-06-26 20:28:18
insert into note(matricule,codeExamen,note) values('5d359','A24255D30A24255DPC0D4','13');
-- 2025-06-26 20:28:19
insert into note(matricule,codeExamen,note) values('5d360','A24255D30A24255DPC0D4','14');
-- 2025-06-26 20:28:19
insert into note(matricule,codeExamen,note) values('5d361','A24255D30A24255DPC0D4','17');