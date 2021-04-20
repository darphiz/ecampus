DROP TABLE IF EXISTS django_migrations;
CREATE TABLE IF NOT EXISTS `django_migrations` (`id` integer NOT NULL PRIMARY KEY , `app` varchar(255) NOT NULL, `name` varchar(255) NOT NULL, `applied` datetime NOT NULL);

INSERT INTO django_migrations VALUES(1,'contenttypes','0001_initial','2020-01-15 18:19:39.505913');

INSERT INTO django_migrations VALUES(2,'auth','0001_initial','2020-01-15 18:19:39.541677');

INSERT INTO django_migrations VALUES(3,'accounts','0001_initial','2020-01-15 18:19:39.579621');

INSERT INTO django_migrations VALUES(4,'admin','0001_initial','2020-01-15 18:19:39.609095');

INSERT INTO django_migrations VALUES(5,'admin','0002_logentry_remove_auto_add','2020-01-15 18:19:39.641066');

INSERT INTO django_migrations VALUES(6,'admin','0003_logentry_add_action_flag_choices','2020-01-15 18:19:39.685774');

INSERT INTO django_migrations VALUES(7,'contenttypes','0002_remove_content_type_name','2020-01-15 18:19:39.728926');

INSERT INTO django_migrations VALUES(8,'auth','0002_alter_permission_name_max_length','2020-01-15 18:19:39.764709');

INSERT INTO django_migrations VALUES(9,'auth','0003_alter_user_email_max_length','2020-01-15 18:19:39.806972');

INSERT INTO django_migrations VALUES(10,'auth','0004_alter_user_username_opts','2020-01-15 18:19:39.841864');

INSERT INTO django_migrations VALUES(11,'auth','0005_alter_user_last_login_null','2020-01-15 18:19:39.876723');

INSERT INTO django_migrations VALUES(12,'auth','0006_require_contenttypes_0002','2020-01-15 18:19:39.896666');

INSERT INTO django_migrations VALUES(13,'auth','0007_alter_validators_add_error_messages','2020-01-15 18:19:39.927778');

INSERT INTO django_migrations VALUES(14,'auth','0008_alter_user_username_max_length','2020-01-15 18:19:39.961955');

INSERT INTO django_migrations VALUES(15,'auth','0009_alter_user_last_name_max_length','2020-01-15 18:19:39.998225');

INSERT INTO django_migrations VALUES(16,'auth','0010_alter_group_name_max_length','2020-01-15 18:19:40.033220');

INSERT INTO django_migrations VALUES(17,'auth','0011_update_proxy_permissions','2020-01-15 18:19:40.068761');

INSERT INTO django_migrations VALUES(18,'blog','0001_initial','2020-01-15 18:19:40.097044');

INSERT INTO django_migrations VALUES(19,'blog','0002_auto_20191105_0056','2020-01-15 18:19:40.137684');

INSERT INTO django_migrations VALUES(20,'blog','0003_auto_20191110_2213','2020-01-15 18:19:40.186927');

INSERT INTO django_migrations VALUES(21,'blog','0004_auto_20191110_2216','2020-01-15 18:19:40.236072');

INSERT INTO django_migrations VALUES(22,'blog','0005_post_body_symbol','2020-01-15 18:19:40.278790');

INSERT INTO django_migrations VALUES(23,'blog','0006_remove_post_body_symbol','2020-01-15 18:19:40.325529');

INSERT INTO django_migrations VALUES(24,'blog','0007_remove_post_body','2020-01-15 18:19:40.368074');

INSERT INTO django_migrations VALUES(25,'blog','0008_auto_20200107_1652','2020-01-15 18:19:40.415098');

INSERT INTO django_migrations VALUES(26,'blog','0009_remove_post_symbol','2020-01-15 18:19:40.456019');

INSERT INTO django_migrations VALUES(27,'blog','0010_comment','2020-01-15 18:19:40.487850');

INSERT INTO django_migrations VALUES(28,'cbt','0001_initial','2020-01-15 18:19:40.516470');

INSERT INTO django_migrations VALUES(29,'cbt','0002_auto_20191231_2347','2020-01-15 18:19:40.618154');

INSERT INTO django_migrations VALUES(30,'cbt','0003_question_question_symbol','2020-01-15 18:19:40.664976');

INSERT INTO django_migrations VALUES(31,'cbt','0004_remove_question_question_symbol','2020-01-15 18:19:40.709262');

INSERT INTO django_migrations VALUES(32,'cbt','0005_question_question_symbol','2020-01-15 18:19:40.760534');

INSERT INTO django_migrations VALUES(33,'cbt','0006_remove_question_question_symbol','2020-01-15 18:19:40.804117');

INSERT INTO django_migrations VALUES(34,'mcq','0001_initial','2020-01-15 18:19:40.864709');

INSERT INTO django_migrations VALUES(35,'mcq','0002_auto_20200113_1106','2020-01-15 18:19:40.901966');

INSERT INTO django_migrations VALUES(36,'sessions','0001_initial','2020-01-15 18:19:40.934915');

INSERT INTO django_migrations VALUES(37,'community','0001_initial','2020-01-25 22:23:12.634329');

INSERT INTO django_migrations VALUES(38,'community','0002_auto_20200131_0645','2020-01-31 06:45:32.528156');

INSERT INTO django_migrations VALUES(39,'blog','0011_broadcast_email','2020-03-25 07:17:10.480519');

INSERT INTO django_migrations VALUES(40,'cbt','0007_premium','2020-05-09 12:14:53.836534');

INSERT INTO django_migrations VALUES(41,'accounts','0002_userprofile_premium','2020-05-09 13:28:30.904561');

INSERT INTO django_migrations VALUES(42,'cbt','0008_delete_premium','2020-05-09 13:28:31.059815');

INSERT INTO django_migrations VALUES(43,'premium','0001_initial','2020-05-09 13:28:31.380335');

INSERT INTO django_migrations VALUES(44,'premium','0002_delete_premium','2020-05-09 13:43:30.947586');

INSERT INTO django_migrations VALUES(45,'blog','0012_remove_post_tag','2020-05-12 07:47:17.152524');

INSERT INTO django_migrations VALUES(46,'cbt','0009_quiz_premium','2020-05-12 15:27:27.491933');

INSERT INTO django_migrations VALUES(47,'mcq','0003_auto_20200523_1406','2020-05-23 14:06:50.078661');

INSERT INTO django_migrations VALUES(48,'blog','0002_delete_premium','2020-05-30 12:30:11.778537');

INSERT INTO django_migrations VALUES(49,'blog','0003_premium','2020-05-30 12:30:11.883324');

DROP TABLE IF EXISTS auth_group_permissions;
CREATE TABLE IF NOT EXISTS `auth_group_permissions` (`id` integer NOT NULL PRIMARY KEY , `group_id` integer NOT NULL REFERENCES `auth_group` (`id`) , `permission_id` integer NOT NULL REFERENCES `auth_permission` (`id`) );

DROP TABLE IF EXISTS auth_user_groups;
CREATE TABLE IF NOT EXISTS `auth_user_groups` (`id` integer NOT NULL PRIMARY KEY , `user_id` integer NOT NULL REFERENCES `auth_user` (`id`) , `group_id` integer NOT NULL REFERENCES `auth_group` (`id`) );

DROP TABLE IF EXISTS auth_user_user_permissions;
CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (`id` integer NOT NULL PRIMARY KEY , `user_id` integer NOT NULL REFERENCES `auth_user` (`id`) , `permission_id` integer NOT NULL REFERENCES `auth_permission` (`id`) );

DROP TABLE IF EXISTS django_admin_log;
CREATE TABLE IF NOT EXISTS `django_admin_log` (`id` integer NOT NULL PRIMARY KEY , `action_time` datetime NOT NULL, `object_id` text NULL, `object_repr` varchar(200) NOT NULL, `change_message` text NOT NULL, `content_type_id` integer NULL REFERENCES `django_content_type` (`id`) , `user_id` integer NOT NULL REFERENCES `auth_user` (`id`) , `action_flag` smallint unsigned NOT NULL CHECK (`action_flag` >= 0));

INSERT INTO django_admin_log VALUES(1,'2020-01-15 21:18:59.257684','1','CHM_101','[{\'added\': {}}]',10,2,1);

INSERT INTO django_admin_log VALUES(2,'2020-01-15 21:23:51.980154','1','CHM101','[{\'added\': {}}]',14,2,1);

INSERT INTO django_admin_log VALUES(3,'2020-01-15 21:27:35.985539','1','The dissolution of calcium hydroxide is exothermic Ca(OH) &sub2; (s) ↔ Ca &sup2+; (aq) +2OH- (aq) What happens when the solution of Ca(OH) &sub2; is heated?','[{\'added\': {}}, {\'added\': {\'name\': \'Answer\', \'object\': \'The amount of Ca(OH)\u2082 (s) decreases\'}}, {\'added\': {\'name\': \'Answer\', \'object\': \'The amount of Ca(OH) \u2082 (s) increases\'}}, {\'added\': {\'name\': \'Answer\', \'object\': \'The amount of Ca(OH) \u2082 (s) remains unchanged\'}}, {\'added\': {\'name\': \'Answer\', \'object\': \'The Ca(OH) \u2082 (s) completely dissolves\'}}]',16,2,1);

INSERT INTO django_admin_log VALUES(4,'2020-01-15 22:26:42.681563','1','FUOYE shines at NUTAF 2019','[{\'added\': {}}]',2,2,1);

INSERT INTO django_admin_log VALUES(5,'2020-01-15 22:59:02.447073','2','Study Smart Not Harder','[{\'added\': {}}]',2,2,1);

INSERT INTO django_admin_log VALUES(6,'2020-01-15 23:01:14.414711','2','Study Smart Not Harder','[{\'changed\': {\'fields\': [\'Body\']}}]',2,2,2);

INSERT INTO django_admin_log VALUES(7,'2020-01-15 23:02:47.796985','2','Study Smart Not Harder','[{\'changed\': {\'fields\': [\'Body\']}}]',2,2,2);

INSERT INTO django_admin_log VALUES(8,'2020-01-15 23:04:28.044890','2','Study Smart Not Harder','[{\'changed\': {\'fields\': [\'Body\']}}]',2,2,2);

INSERT INTO django_admin_log VALUES(9,'2020-01-15 23:08:13.712807','2','Study Smart Not Harder','[]',2,2,2);

INSERT INTO django_admin_log VALUES(10,'2020-01-15 23:11:14.236195','2','Study Smart Not Harder','[{\'changed\': {\'fields\': [\'Image upload\']}}]',2,2,2);

INSERT INTO django_admin_log VALUES(11,'2020-01-15 23:15:20.260130','2','Study Smart Not Harder','',2,2,3);

INSERT INTO django_admin_log VALUES(12,'2020-01-15 23:15:58.563524','3','Study Smart Not Harder','[{\'added\': {}}]',2,2,1);

INSERT INTO django_admin_log VALUES(13,'2020-01-15 23:16:28.059193','1','FUOYE shines at NUTAF 2019','',2,2,3);

INSERT INTO django_admin_log VALUES(14,'2020-01-15 23:17:07.270830','4','FUOYE shines at NUTAF 2019','[{\'added\': {}}]',2,2,1);

INSERT INTO django_admin_log VALUES(15,'2020-01-15 23:47:36.480553','5','About easyCAMPUS Exam simulator','[{\'added\': {}}]',2,2,1);

INSERT INTO django_admin_log VALUES(16,'2020-01-15 23:48:20.696252','5','About easyCAMPUS Exam simulator','[{\'changed\': {\'fields\': [\'Status\']}}]',2,2,2);

INSERT INTO django_admin_log VALUES(17,'2020-01-15 23:59:19.526133','5','About easy CAMPUS Exam simulator','[{\'changed\': {\'fields\': [\'Title\']}}]',2,2,2);

INSERT INTO django_admin_log VALUES(18,'2020-01-16 00:04:56.465403','6','JAMB threatens to sanction e-PIN outlets over fraud, arrests five agents','[{\'added\': {}}]',2,2,1);

INSERT INTO django_admin_log VALUES(19,'2020-01-16 00:39:25.700113','1','The dissolution of calcium hydroxide is exothermic Ca(OH) <sub> 2(s)</sub> ↔ Ca &sup2+; (aq) +2OH- (aq) What happens when the solution of Ca(OH) <sub>2</sub> is heated?','[{\'changed\': {\'fields\': [\'Question\', \'Explanation\']}}]',16,2,2);

INSERT INTO django_admin_log VALUES(20,'2020-01-16 00:42:25.999324','2','The decomposition of dinitrogenpentoxide is described by the chemical equation: 	2N<sub>2</sub> O<sub>5(g)</sub>  → 4NO<sub>2(g)</sub> + O<sub> 2(g)</sub>  If the rate of appearance of NO<sub>2</sub> ','[{\'added\': {}}, {\'added\': {\'name\': \'Answer\', \'object\': \'0.140mol/min\'}}, {\'added\': {\'name\': \'Answer\', \'object\': \'0.280mol/min\'}}, {\'added\': {\'name\': \'Answer\', \'object\': \'1.12mol/min\'}}, {\'added\': {\'name\': \'Answer\', \'object\': \'2.24mol/min\'}}]',16,2,1);

INSERT INTO django_admin_log VALUES(21,'2020-01-16 00:44:49.797312','3','For a reactions that follows the general rate law , Rate = k[A][B]<sup>2</sup> , what will happen to the rate of reaction if the concentration of a is increased by a factor of 3.00?, The rate will','[{\'added\': {}}, {\'added\': {\'name\': \'Answer\', \'object\': \'decrease by a factor of 1/9.00\'}}, {\'added\': {\'name\': \'Answer\', \'object\': \'decrease by a factor of 1/3.00\'}}, {\'added\': {\'name\': \'Answer\', \'object\': \'increase by a factor of 3.00\'}}, {\'added\': {\'name\': \'Answer\', \'object\': \'increase by a factor of 9.0\'}}]',16,2,1);

INSERT INTO django_admin_log VALUES(22,'2020-01-16 00:47:27.351665','4','The rate constant k, for a first-order reaction is equal to 4.2 x 10<sup> -4</sup> s<sup>-1</sup>  What is the half-life ?','[{\'added\': {}}, {\'added\': {\'name\': \'Answer\', \'object\': \'2.9 x 10 -\u2074 s\'}}, {\'added\': {\'name\': \'Answer\', \'object\': \'1.2 x 10 \u1d4cs\'}}, {\'added\': {\'name\': \'Answer\', \'object\': \'1.7 x 10 \u1d4cs\'}}, {\'added\': {\'name\': \'Answer\', \'object\': \'2.4 x 10 \u1d4cs\'}}]',16,2,1);

INSERT INTO django_admin_log VALUES(23,'2020-01-16 00:48:03.702995','4','The rate constant k, for a first-order reaction is equal to 4.2 x 10<sup> -4</sup> s<sup>-1</sup>  What is the half-life ?','[]',16,2,2);

INSERT INTO django_admin_log VALUES(24,'2020-01-16 00:50:24.345046','5','What factor affects the rate of chemical reaction?','[{\'added\': {}}, {\'added\': {\'name\': \'Answer\', \'object\': \'collision frequency\'}}, {\'added\': {\'name\': \'Answer\', \'object\': \'fraction of collisions with sufficient energy\'}}, {\'added\': {\'name\': \'Answer\', \'object\': \'orientation of molecules\'}}, {\'added\': {\'name\': \'Answer\', \'object\': \'All of the above\'}}]',16,2,1);

INSERT INTO django_admin_log VALUES(25,'2020-01-16 00:52:09.881981','6','What is the minimum energy barrier that must be overcome for a chemical reaction to occur?','[{\'added\': {}}, {\'added\': {\'name\': \'Answer\', \'object\': \'activation energy\'}}, {\'added\': {\'name\': \'Answer\', \'object\': \'net energy\'}}, {\'added\': {\'name\': \'Answer\', \'object\': \'Potential Energy\'}}, {\'added\': {\'name\': \'Answer\', \'object\': \'rate limiting energy\'}}]',16,2,1);

INSERT INTO django_admin_log VALUES(26,'2020-01-16 00:54:37.292418','7','Which term describes the measure of the decrease in concentration of a product per unit time ?','[{\'added\': {}}, {\'added\': {\'name\': \'Answer\', \'object\': \'reactant energy\'}}, {\'added\': {\'name\': \'Answer\', \'object\': \'Kinetics\'}}, {\'added\': {\'name\': \'Answer\', \'object\': \'reaction rate\'}}, {\'added\': {\'name\': \'Answer\', \'object\': \'reaction time\'}}]',16,2,1);

INSERT INTO django_admin_log VALUES(27,'2020-01-16 00:56:54.967268','8','The configuration of Cu<sup>2+</sup> is given as','[{\'added\': {}}, {\'added\': {\'name\': \'Answer\', \'object\': \'1S\u00b22S\u00b22P\u20763S\u00b23P\u20764S\u00b23d\u2079\'}}, {\'added\': {\'name\': \'Answer\', \'object\': \'1S\u00b22S\u00b22P\u20763S\u00b23P\u20764S\u00b23d\u2077\'}}, {\'added\': {\'name\': \'Answer\', \'object\': \'1S\u00b22S\u00b22P\u20763S\u00b23P\u20764S\u00b23d\u00b9\u2070\'}}, {\'added\': {\'name\': \'Answer\', \'object\': \'1S\u00b22S\u00b22P\u20763S\u00b23P\u20764S\u00b24P\u20763d\u00b3\'}}]',16,2,1);

INSERT INTO django_admin_log VALUES(28,'2020-01-16 00:59:08.168692','9','. Which orbital is occupied by an electron described by the quantum number n=2 ,L =1','[{\'added\': {}}, {\'added\': {\'name\': \'Answer\', \'object\': \'1S\'}}, {\'added\': {\'name\': \'Answer\', \'object\': \'2S\'}}, {\'added\': {\'name\': \'Answer\', \'object\': \'2P\'}}, {\'added\': {\'name\': \'Answer\', \'object\': \'3S\'}}]',16,2,1);

INSERT INTO django_admin_log VALUES(29,'2020-01-16 01:01:49.113335','10','. Which of the following quantum number determine the shape and the orientation of orbitals','[{\'added\': {}}, {\'added\': {\'name\': \'Answer\', \'object\': \'Principal, Magnetic\'}}, {\'added\': {\'name\': \'Answer\', \'object\': \'Azimuthal, Spin\'}}, {\'added\': {\'name\': \'Answer\', \'object\': \'Principal, Azimuthal\'}}, {\'added\': {\'name\': \'Answer\', \'object\': \'Azimuthal, magnetic\'}}]',16,2,1);

INSERT INTO django_admin_log VALUES(30,'2020-01-16 01:02:07.128924','10','. Which of the following quantum number determine the shape and the orientation of orbitals','[{\'changed\': {\'fields\': [\'Answer Order\']}}]',16,2,2);

INSERT INTO django_admin_log VALUES(31,'2020-01-16 01:04:30.691002','11','What is the permitted value for Azimuthal quantum number (L) for an electron with the principal quantum number  n= 3 ?','[{\'added\': {}}, {\'added\': {\'name\': \'Answer\', \'object\': \'2\'}}, {\'added\': {\'name\': \'Answer\', \'object\': \'4\'}}, {\'added\': {\'name\': \'Answer\', \'object\': \'3\'}}, {\'added\': {\'name\': \'Answer\', \'object\': \'5\'}}]',16,2,1);

INSERT INTO django_admin_log VALUES(32,'2020-01-16 01:06:22.030965','12','Which of the following show the increasing order of atomic radius?','[{\'added\': {}}, {\'added\': {\'name\': \'Answer\', \'object\': \'S, Se, Te, Po\'}}, {\'added\': {\'name\': \'Answer\', \'object\': \'Se, Te, Po, S\'}}, {\'added\': {\'name\': \'Answer\', \'object\': \'Te, Po, S, Se\'}}, {\'added\': {\'name\': \'Answer\', \'object\': \'S, Se, Po, Te\'}}]',16,2,1);

INSERT INTO django_admin_log VALUES(33,'2020-01-16 01:08:03.522335','13','. What type of bond exists in Carbon tetrachloride?','[{\'added\': {}}, {\'added\': {\'name\': \'Answer\', \'object\': \'Electrovalent\'}}, {\'added\': {\'name\': \'Answer\', \'object\': \'Covalent\'}}, {\'added\': {\'name\': \'Answer\', \'object\': \'Coordinate\'}}, {\'added\': {\'name\': \'Answer\', \'object\': \'Metallic\'}}]',16,2,1);

INSERT INTO django_admin_log VALUES(34,'2020-01-16 01:10:15.335111','14','Which one of these compounds has the highest melting point?','[{\'added\': {}}, {\'added\': {\'name\': \'Answer\', \'object\': \'H\u2082O\'}}, {\'added\': {\'name\': \'Answer\', \'object\': \'H\u2082Te\'}}, {\'added\': {\'name\': \'Answer\', \'object\': \'H\u2082 S\'}}, {\'added\': {\'name\': \'Answer\', \'object\': \'H\u2082Se\'}}]',16,2,1);

INSERT INTO django_admin_log VALUES(35,'2020-01-16 01:12:31.186914','15','If NO₂ and NH₃ are allowed to effuse through a porous membrane under identical condition, the rate of effusion for NH₃ will be _______ times of NO₂','[{\'added\': {}}, {\'added\': {\'name\': \'Answer\', \'object\': \'0.37\'}}, {\'added\': {\'name\': \'Answer\', \'object\': \'0.61\'}}, {\'added\': {\'name\': \'Answer\', \'object\': \'1.6\'}}, {\'added\': {\'name\': \'Answer\', \'object\': \'2.7\'}}]',16,2,1);

INSERT INTO django_admin_log VALUES(36,'2020-01-16 01:14:15.978561','16','A 75.0L steel tank at 20.0<sup>o</sup> C  contains acetylene gas C<sub>2</sub>H<sub>2</sub> at a pressure 1.20atm. Assuming ideal behavior ,how many grams of acetylene are in the tank (R = 0.082 dm<su','[{\'added\': {}}, {\'added\': {\'name\': \'Answer\', \'object\': \'3.74g\'}}, {\'added\': {\'name\': \'Answer\', \'object\': \'54.8g\'}}, {\'added\': {\'name\': \'Answer\', \'object\': \'97.3g\'}}, {\'added\': {\'name\': \'Answer\', \'object\': \'1425g\'}}]',16,2,1);

INSERT INTO django_admin_log VALUES(37,'2020-01-16 01:15:49.390619','17','Which of the following is NOT a form of determinate error?','[{\'added\': {}}, {\'added\': {\'name\': \'Answer\', \'object\': \'Instrumental error\'}}, {\'added\': {\'name\': \'Answer\', \'object\': \'Operative error\'}}, {\'added\': {\'name\': \'Answer\', \'object\': \'variation associated with same analyst reading same absorbance scale over time\'}}, {\'added\': {\'name\': \'Answer\', \'object\': \'co-precipitation with impurities ,incomplete reaction ,impurities in the reagents used\'}}]',16,2,1);

INSERT INTO django_admin_log VALUES(38,'2020-01-16 01:16:33.728879','1','CHM101','[{\'changed\': {\'fields\': [\'Description\', \'Max Questions\']}}]',14,2,2);

INSERT INTO django_admin_log VALUES(39,'2020-01-16 01:17:50.283269','10','Which of the following quantum number determine the shape and the orientation of orbitals','[{\'changed\': {\'fields\': [\'Question\']}}]',16,2,2);

INSERT INTO django_admin_log VALUES(40,'2020-01-16 01:18:31.714045','9','Which orbital is occupied by an electron described by the quantum number n=2 ,L =1','[{\'changed\': {\'fields\': [\'Question\']}}]',16,2,2);

INSERT INTO django_admin_log VALUES(41,'2020-01-27 11:21:09.747844','1','Asked by admin on 2020-01-26 09:50:41.588868+00:00','',19,2,3);

INSERT INTO django_admin_log VALUES(42,'2020-01-27 11:21:09.919964','2','Asked by admin on 2020-01-26 09:51:33.358465+00:00','',19,2,3);

INSERT INTO django_admin_log VALUES(43,'2020-01-27 11:21:09.942772','3','Asked by admin on 2020-01-26 09:51:42.851175+00:00','',19,2,3);

INSERT INTO django_admin_log VALUES(44,'2020-01-27 11:21:09.969973','4','Asked by admin on 2020-01-26 09:52:12.347091+00:00','',19,2,3);

INSERT INTO django_admin_log VALUES(45,'2020-01-27 11:21:10.001266','5','Asked by admin on 2020-01-26 09:53:18.168456+00:00','',19,2,3);

INSERT INTO django_admin_log VALUES(46,'2020-01-27 11:21:48.316422','1','Comment by Anonymous on JAMB threatens to sanction e-PIN outlets over fraud, arrests five agents','',3,2,3);

INSERT INTO django_admin_log VALUES(47,'2020-01-27 13:21:04.600332','6','JAMB threatens to sanction e-PIN outlets over fraud, arrests five agents','[{\'changed\': {\'fields\': [\'Status\']}}]',2,2,2);

INSERT INTO django_admin_log VALUES(48,'2020-01-28 16:29:35.608307','6','Asked by admin on 2020-01-27 14:21:20.815778+00:00','',19,2,3);

INSERT INTO django_admin_log VALUES(49,'2020-02-02 17:48:49.964856','2','PHY_101','[{\'added\': {}}]',10,2,1);

INSERT INTO django_admin_log VALUES(50,'2020-02-02 17:51:58.454055','2','PHY101','[{\'added\': {}}]',14,2,1);

INSERT INTO django_admin_log VALUES(51,'2020-02-02 18:20:49.911647','3','GST_101','[{\'added\': {}}]',10,2,1);

INSERT INTO django_admin_log VALUES(52,'2020-02-02 22:15:24.146294','4','Ilu23','',7,2,3);

INSERT INTO django_admin_log VALUES(53,'2020-02-03 04:37:03.341727','7','Some Habits Inherent in Successful People','[{\'added\': {}}]',2,2,1);

INSERT INTO django_admin_log VALUES(54,'2020-02-03 04:39:42.187273','7','Some Habits Inherent in Successful People','[{\'changed\': {\'fields\': [\'Body\']}}]',2,2,2);

INSERT INTO django_admin_log VALUES(55,'2020-02-03 12:34:03.174158','7','Some Habits Inherent in Successful People','[{\'changed\': {\'fields\': [\'Body\']}}]',2,2,2);

INSERT INTO django_admin_log VALUES(56,'2020-02-03 15:19:33.527711','1','Asked by testuser on 2020-01-31 07:03:07.359014+00:00','',19,2,3);

INSERT INTO django_admin_log VALUES(57,'2020-02-03 15:19:33.550729','2','Asked by testuser on 2020-01-31 07:07:02.151518+00:00','',19,2,3);

INSERT INTO django_admin_log VALUES(58,'2020-02-04 11:00:31.359931','1','darphiz','',7,2,3);

INSERT INTO django_admin_log VALUES(59,'2020-02-04 11:00:31.397034','3','testuser','',7,2,3);

INSERT INTO django_admin_log VALUES(60,'2020-02-08 10:35:51.814735','3','GST101','[{\'added\': {}}]',14,2,1);

INSERT INTO django_admin_log VALUES(61,'2020-02-08 10:38:33.758470','3','GST101','[{\'changed\': {\'fields\': [\'Description\', \'Success Text\', \'Fail Text\']}}]',14,2,2);

INSERT INTO django_admin_log VALUES(62,'2020-02-08 10:39:47.477867','4','GST_103','[{\'added\': {}}]',10,2,1);

INSERT INTO django_admin_log VALUES(63,'2020-02-08 10:40:35.694255','4','GST103','[{\'added\': {}}]',14,2,1);

INSERT INTO django_admin_log VALUES(64,'2020-02-08 10:46:49.573365','5','GST_105','[{\'added\': {}}]',10,2,1);

INSERT INTO django_admin_log VALUES(65,'2020-02-08 10:47:43.450810','5','GST105','[{\'added\': {}}]',14,2,1);

INSERT INTO django_admin_log VALUES(66,'2020-02-08 10:49:22.545596','6','MTH_101','[{\'added\': {}}]',10,2,1);

INSERT INTO django_admin_log VALUES(67,'2020-02-08 10:51:04.981150','6','MTH101','[{\'added\': {}}]',14,2,1);

INSERT INTO django_admin_log VALUES(68,'2020-02-08 10:52:04.297308','7','MTH_103','[{\'added\': {}}]',10,2,1);

INSERT INTO django_admin_log VALUES(69,'2020-02-08 10:54:06.160383','7','MTH103','[{\'added\': {}}]',14,2,1);

INSERT INTO django_admin_log VALUES(70,'2020-02-08 11:02:10.457173','8','PHY_103','[{\'added\': {}}]',10,2,1);

INSERT INTO django_admin_log VALUES(71,'2020-02-08 11:03:44.838743','8','PHY103','[{\'added\': {}}]',14,2,1);

INSERT INTO django_admin_log VALUES(72,'2020-02-08 11:08:56.776757','3','GST101','[{\'changed\': {\'fields\': [\'Draft\']}}]',14,2,2);

INSERT INTO django_admin_log VALUES(73,'2020-02-09 21:10:13.152451','9','BIO_101','[{\'added\': {}}]',10,2,1);

INSERT INTO django_admin_log VALUES(74,'2020-02-09 21:14:37.797798','9','BIO101','[{\'added\': {}}]',14,2,1);

INSERT INTO django_admin_log VALUES(75,'2020-02-09 21:18:00.829286','18','Which of this statement best defines a cell','[{\'added\': {}}, {\'added\': {\'name\': \'Answer\', \'object\': \'the microscopic basic structural unit of life\'}}, {\'added\': {\'name\': \'Answer\', \'object\': \'the microscopic basic functional unit of life\'}}, {\'added\': {\'name\': \'Answer\', \'object\': \'the microscopic fundamental unit of life\'}}, {\'added\': {\'name\': \'Answer\', \'object\': \'the basic microscopic structural and functional unit of life\'}}]',16,2,1);

INSERT INTO django_admin_log VALUES(76,'2020-02-09 21:19:38.990632','19','The postulation that plants and animals are composed of repeating elements belongs to','[{\'added\': {}}, {\'added\': {\'name\': \'Answer\', \'object\': \'Aristotle and Dan Vinci\'}}, {\'added\': {\'name\': \'Answer\', \'object\': \'Dan Vinci and Darwin\'}}, {\'added\': {\'name\': \'Answer\', \'object\': \'Aristotle and Paracelsus\'}}, {\'added\': {\'name\': \'Answer\', \'object\': \'Marcello Malpighi and Dan Vinci\'}}]',16,2,1);

INSERT INTO django_admin_log VALUES(77,'2020-02-09 21:21:42.239479','20','Cell theory may not be totally true because','[{\'added\': {}}, {\'added\': {\'name\': \'Answer\', \'object\': \'There are structures like ribosomes, lysosomes and mitochondria\'}}, {\'added\': {\'name\': \'Answer\', \'object\': \'Eukaryotic Organisms\'}}, {\'added\': {\'name\': \'Answer\', \'object\': \'Prokaryotic Organisms\'}}, {\'added\': {\'name\': \'Answer\', \'object\': \'Metazoan animals\'}}]',16,2,1);

INSERT INTO django_admin_log VALUES(78,'2020-02-09 21:23:12.900127','21','The organism Vaucheria is best described as','[{\'added\': {}}, {\'added\': {\'name\': \'Answer\', \'object\': \'virus\'}}, {\'added\': {\'name\': \'Answer\', \'object\': \'Protozoan\'}}, {\'added\': {\'name\': \'Answer\', \'object\': \'fungus\'}}, {\'added\': {\'name\': \'Answer\', \'object\': \'An alga\'}}]',16,2,1);

INSERT INTO django_admin_log VALUES(79,'2020-02-09 21:24:36.223836','22','In terms of respiration, one of these organelles is equivalent to mitochondria','[{\'added\': {}}, {\'added\': {\'name\': \'Answer\', \'object\': \'Nuclear membrane\'}}, {\'added\': {\'name\': \'Answer\', \'object\': \'cell wall\'}}, {\'added\': {\'name\': \'Answer\', \'object\': \'Cytoplasm\'}}, {\'added\': {\'name\': \'Answer\', \'object\': \'Plasma membrane\'}}]',16,2,1);

INSERT INTO django_admin_log VALUES(80,'2020-02-09 21:26:08.651899','23','Cells In living organisms behave as which system','[{\'added\': {}}, {\'added\': {\'name\': \'Answer\', \'object\': \'Plasmolysis\'}}, {\'added\': {\'name\': \'Answer\', \'object\': \'Flaccid\'}}, {\'added\': {\'name\': \'Answer\', \'object\': \'dichotomous\'}}, {\'added\': {\'name\': \'Answer\', \'object\': \'Osmotic\'}}]',16,2,1);

INSERT INTO django_admin_log VALUES(81,'2020-02-09 21:28:44.092295','24','Introduction of potassium permanganate in water is a pattern in which phenomenon','[{\'added\': {}}, {\'added\': {\'name\': \'Answer\', \'object\': \'glycolysis\'}}, {\'added\': {\'name\': \'Answer\', \'object\': \'diffusion\'}}, {\'added\': {\'name\': \'Answer\', \'object\': \'flaccidity\'}}, {\'added\': {\'name\': \'Answer\', \'object\': \'turgidity\'}}]',16,2,1);

INSERT INTO django_admin_log VALUES(82,'2020-02-09 21:30:23.760794','25','What is the name of the vessels connected with the upward movement of water in xylem?','[{\'added\': {}}, {\'added\': {\'name\': \'Answer\', \'object\': \'tubes\'}}, {\'added\': {\'name\': \'Answer\', \'object\': \'sieve tubes\'}}, {\'added\': {\'name\': \'Answer\', \'object\': \'tracheid\'}}, {\'added\': {\'name\': \'Answer\', \'object\': \'pith\'}}]',16,2,1);

INSERT INTO django_admin_log VALUES(83,'2020-02-09 21:32:21.601925','26','Find out the organism with different cellular organization in the following','[{\'added\': {}}, {\'added\': {\'name\': \'Answer\', \'object\': \'amoeba\'}}, {\'added\': {\'name\': \'Answer\', \'object\': \'flatworms\'}}, {\'added\': {\'name\': \'Answer\', \'object\': \'paramecium\'}}, {\'added\': {\'name\': \'Answer\', \'object\': \'volvox\'}}]',16,2,1);

INSERT INTO django_admin_log VALUES(84,'2020-02-09 21:34:05.373968','27','Which of the following system is responsible for getting food materials to other parts of the plant?','[{\'added\': {}}, {\'added\': {\'name\': \'Answer\', \'object\': \'Excretory\'}}, {\'added\': {\'name\': \'Answer\', \'object\': \'Digestive\'}}, {\'added\': {\'name\': \'Answer\', \'object\': \'Photosynthesis\'}}, {\'added\': {\'name\': \'Answer\', \'object\': \'Transport\'}}]',16,2,1);

INSERT INTO django_admin_log VALUES(85,'2020-02-09 21:36:12.259376','28','At metaphase , the chromosomes are individually arranged at','[{\'added\': {}}, {\'added\': {\'name\': \'Answer\', \'object\': \'metaphase line\'}}, {\'added\': {\'name\': \'Answer\', \'object\': \'metaphase longitude\'}}, {\'added\': {\'name\': \'Answer\', \'object\': \'metaphase plane or plate\'}}, {\'added\': {\'name\': \'Answer\', \'object\': \'metaphase region\'}}]',16,2,1);

INSERT INTO django_admin_log VALUES(86,'2020-02-09 21:37:20.404090','29','The two types of cells in the body  of living organisms are ______ and __________','[{\'added\': {}}, {\'added\': {\'name\': \'Answer\', \'object\': \'tissue cell and organ cell\'}}, {\'added\': {\'name\': \'Answer\', \'object\': \'somatic cell and plant cell\'}}, {\'added\': {\'name\': \'Answer\', \'object\': \'animal cell and plant cell\'}}, {\'added\': {\'name\': \'Answer\', \'object\': \'mitotic cell and meiotic cell\'}}]',16,2,1);

INSERT INTO django_admin_log VALUES(87,'2020-02-09 21:38:38.605225','30','The cells that are formed as a result of cell division are called','[{\'added\': {}}, {\'added\': {\'name\': \'Answer\', \'object\': \'Daughter cells\'}}, {\'added\': {\'name\': \'Answer\', \'object\': \'parent cells\'}}, {\'added\': {\'name\': \'Answer\', \'object\': \'divisible cells\'}}, {\'added\': {\'name\': \'Answer\', \'object\': \'none of the above\'}}]',16,2,1);

INSERT INTO django_admin_log VALUES(88,'2020-02-09 21:40:05.484495','31','Hereditary materials (genes) are carried on','[{\'added\': {}}, {\'added\': {\'name\': \'Answer\', \'object\': \'The cytoplasm\'}}, {\'added\': {\'name\': \'Answer\', \'object\': \'The nucleus\'}}, {\'added\': {\'name\': \'Answer\', \'object\': \'The chromosome\'}}, {\'added\': {\'name\': \'Answer\', \'object\': \'Mitochondrion\'}}]',16,2,1);

INSERT INTO django_admin_log VALUES(89,'2020-02-09 21:41:42.574741','32','The two arms presents in the chromatid are joined together at a constriction called','[{\'added\': {}}, {\'added\': {\'name\': \'Answer\', \'object\': \'chromosome\'}}, {\'added\': {\'name\': \'Answer\', \'object\': \'centromere\'}}, {\'added\': {\'name\': \'Answer\', \'object\': \'metaphase plate\'}}, {\'added\': {\'name\': \'Answer\', \'object\': \'centrocell\'}}]',16,2,1);

INSERT INTO django_admin_log VALUES(90,'2020-02-09 21:46:43.327249','33','Parenchymatous tissue embedded in the chloroplast is called','[{\'added\': {}}, {\'added\': {\'name\': \'Answer\', \'object\': \'Sclerenchyma\'}}, {\'added\': {\'name\': \'Answer\', \'object\': \'Chlorenchyma\'}}, {\'added\': {\'name\': \'Answer\', \'object\': \'Xylem\'}}, {\'added\': {\'name\': \'Answer\', \'object\': \'collenchyma\'}}]',16,2,1);

INSERT INTO django_admin_log VALUES(91,'2020-02-09 21:48:38.699037','34','The vascular tissue which functions for the conduction of water and mineral salts upward from roots to leaves of plants is','[{\'added\': {}}, {\'added\': {\'name\': \'Answer\', \'object\': \'xylem\'}}, {\'added\': {\'name\': \'Answer\', \'object\': \'sciereids\'}}, {\'added\': {\'name\': \'Answer\', \'object\': \'Phloem\'}}, {\'added\': {\'name\': \'Answer\', \'object\': \'Companion cell\'}}]',16,2,1);

INSERT INTO django_admin_log VALUES(92,'2020-02-09 21:50:40.530029','35','The tissue which appears as a secondary meristem in the dicotyledonous root but is absent in monocotyledonous root is','[{\'added\': {}}, {\'added\': {\'name\': \'Answer\', \'object\': \'Xylem bundles\'}}, {\'added\': {\'name\': \'Answer\', \'object\': \'Cambium\'}}, {\'added\': {\'name\': \'Answer\', \'object\': \'Pericyclic\'}}, {\'added\': {\'name\': \'Answer\', \'object\': \'Pith\'}}]',16,2,1);

INSERT INTO django_admin_log VALUES(93,'2020-02-09 21:53:27.039688','36','Epithelia tissue found in the small bronchi of the respiratory tract and functions either to remove dirt or mucus is known as','[{\'added\': {}}, {\'added\': {\'name\': \'Answer\', \'object\': \'Simple cuboidal epithelia\'}}, {\'added\': {\'name\': \'Answer\', \'object\': \'Simple cuboidal ciliated\'}}, {\'added\': {\'name\': \'Answer\', \'object\': \'Simple columnal epithelium\'}}, {\'added\': {\'name\': \'Answer\', \'object\': \'Simple ciliated columnar epithelium\'}}]',16,2,1);

INSERT INTO django_admin_log VALUES(94,'2020-02-09 21:56:19.516594','37','In woody plants, gases and water vapour are transported across the stem by the','[{\'added\': {}}, {\'added\': {\'name\': \'Answer\', \'object\': \'xylem fibres\'}}, {\'added\': {\'name\': \'Answer\', \'object\': \'medullar fibres\'}}, {\'added\': {\'name\': \'Answer\', \'object\': \'medullary rays\'}}, {\'added\': {\'name\': \'Answer\', \'object\': \'phloem parenchyma\'}}]',16,2,1);

INSERT INTO django_admin_log VALUES(95,'2020-02-09 22:01:02.577711','38','During gametogenesis, each gamete receives','[{\'added\': {}}, {\'added\': {\'name\': \'Answer\', \'object\': \'only one allele of a character\'}}, {\'added\': {\'name\': \'Answer\', \'object\': \'. two alleles of the same character\'}}, {\'added\': {\'name\': \'Answer\', \'object\': \'the dominant allele\'}}, {\'added\': {\'name\': \'Answer\', \'object\': \'the recessive allele\'}}]',16,2,1);

INSERT INTO django_admin_log VALUES(96,'2020-02-09 22:02:27.736902','39','In a cross between pure breeding red eyed drosophila (RR) and a white eyed drosophila (rr), the phenotypic and genotypic ratio of F2 generation will be','[{\'added\': {}}, {\'added\': {\'name\': \'Answer\', \'object\': \'1:2:1 and 3:1 respectively\'}}, {\'added\': {\'name\': \'Answer\', \'object\': \'3:1 and  1:2:1 respectively\'}}, {\'added\': {\'name\': \'Answer\', \'object\': \'9:3:3:1 and 1:3 respectively\'}}, {\'added\': {\'name\': \'Answer\', \'object\': \'1:3 and 9:3:3:1  respectively\'}}]',16,2,1);

INSERT INTO django_admin_log VALUES(97,'2020-02-09 22:04:29.048568','40','The ribosomal RNA expresses proteins of particular type and quantities based on the message sent by the','[{\'added\': {}}, {\'added\': {\'name\': \'Answer\', \'object\': \'DNA molecule\'}}, {\'added\': {\'name\': \'Answer\', \'object\': \'messenger RNA\'}}, {\'added\': {\'name\': \'Answer\', \'object\': \'proteins\'}}, {\'added\': {\'name\': \'Answer\', \'object\': \'the bases\'}}]',16,2,1);

INSERT INTO django_admin_log VALUES(98,'2020-02-09 22:06:12.702558','41','Genes controlling the same characteristics but producing different effects are','[{\'added\': {}}, {\'added\': {\'name\': \'Answer\', \'object\': \'Alleles\'}}, {\'added\': {\'name\': \'Answer\', \'object\': \'Chromosomes\'}}, {\'added\': {\'name\': \'Answer\', \'object\': \'DNA\'}}, {\'added\': {\'name\': \'Answer\', \'object\': \'RNA\'}}]',16,2,1);

INSERT INTO django_admin_log VALUES(99,'2020-02-09 22:07:53.356070','42','In a heterozygous condition, the allele whose effect is masked phenotypically is said to be','[{\'added\': {}}, {\'added\': {\'name\': \'Answer\', \'object\': \'dominant\'}}, {\'added\': {\'name\': \'Answer\', \'object\': \'recessive\'}}, {\'added\': {\'name\': \'Answer\', \'object\': \'co-dominant\'}}, {\'added\': {\'name\': \'Answer\', \'object\': \'homozygous recessive\'}}]',16,2,1);

INSERT INTO django_admin_log VALUES(100,'2020-02-12 07:28:40.281838','8','10 Study Hacks to Improve Your Memory','[{\'added\': {}}]',2,2,1);

INSERT INTO django_admin_log VALUES(101,'2020-02-12 07:32:23.318371','8','10 Study Hacks to Improve Your Memory','[{\'changed\': {\'fields\': [\'Body\']}}]',2,2,2);

INSERT INTO django_admin_log VALUES(102,'2020-02-12 07:33:04.507673','8','10 Study Hacks to Improve Your Memory','[{\'changed\': {\'fields\': [\'Body\']}}]',2,2,2);

INSERT INTO django_admin_log VALUES(103,'2020-02-12 07:34:07.809578','8','10 Study Hacks to Improve Your Memory','[{\'changed\': {\'fields\': [\'Body\']}}]',2,2,2);

INSERT INTO django_admin_log VALUES(104,'2020-02-12 07:38:40.458845','8','10 Study Hacks to Improve Your Memory','[{\'changed\': {\'fields\': [\'Body\']}}]',2,2,2);

INSERT INTO django_admin_log VALUES(105,'2020-02-12 07:39:37.052373','8','10 Study Hacks to Improve Your Memory','[{\'changed\': {\'fields\': [\'Body\']}}]',2,2,2);

INSERT INTO django_admin_log VALUES(106,'2020-02-12 07:40:46.716608','8','10 Study Hacks to Improve Your Memory','[{\'changed\': {\'fields\': [\'Body\']}}]',2,2,2);

INSERT INTO django_admin_log VALUES(107,'2020-02-12 07:42:12.666306','8','10 Study Hacks to Improve Your Memory','[{\'changed\': {\'fields\': [\'Body\']}}]',2,2,2);

INSERT INTO django_admin_log VALUES(108,'2020-02-12 07:44:33.328811','8','10 Study Hacks to Improve Your Memory','[{\'changed\': {\'fields\': [\'Body\']}}]',2,2,2);

INSERT INTO django_admin_log VALUES(109,'2020-02-12 07:55:22.175127','8','10 Study Hacks to Improve Your Memory','[{\'changed\': {\'fields\': [\'Body\']}}]',2,2,2);

INSERT INTO django_admin_log VALUES(110,'2020-02-12 07:58:38.539968','8','10 Study Hacks to Improve Your Memory','[{\'changed\': {\'fields\': [\'Body\']}}]',2,2,2);

INSERT INTO django_admin_log VALUES(111,'2020-02-12 08:01:52.152342','8','10 Study Hacks to Improve Your Memory','[{\'changed\': {\'fields\': [\'Body\']}}]',2,2,2);

INSERT INTO django_admin_log VALUES(112,'2020-02-12 08:05:06.225016','8','10 Study Hacks to Improve Your Memory','[{\'changed\': {\'fields\': [\'Body\']}}]',2,2,2);

INSERT INTO django_admin_log VALUES(113,'2020-02-12 08:07:15.381421','8','10 Study Hacks to Improve Your Memory','[{\'changed\': {\'fields\': [\'Body\']}}]',2,2,2);

INSERT INTO django_admin_log VALUES(114,'2020-02-12 08:08:21.614976','8','10 Study Hacks to Improve Your Memory','[{\'changed\': {\'fields\': [\'Body\']}}]',2,2,2);

INSERT INTO django_admin_log VALUES(115,'2020-02-13 07:55:00.601502','9','Career Choice Of Wards: A PARENT''S DUTY?','[{\'added\': {}}]',2,2,1);

INSERT INTO django_admin_log VALUES(116,'2020-02-13 08:00:58.244925','9','Career Choice Of Wards: A PARENT''S DUTY?','[{\'changed\': {\'fields\': [\'Body\']}}]',2,2,2);

INSERT INTO django_admin_log VALUES(117,'2020-02-20 09:01:23.185834','4','Asked by Sweetch on 2020-02-10 13:03:17.404744+00:00','[{\'changed\': {\'fields\': [\'Approved\']}}]',19,2,2);

INSERT INTO django_admin_log VALUES(118,'2020-02-20 09:01:45.724438','4','Asked by Sweetch on 2020-02-10 13:03:17.404744+00:00','[{\'changed\': {\'fields\': [\'Tags\']}}]',19,2,2);

INSERT INTO django_admin_log VALUES(119,'2020-03-08 20:28:23.350835','43','Note taking from oral discussion involves the receptive language skill of effective ______','[{\'added\': {}}, {\'added\': {\'name\': \'Answer\', \'object\': \'learning\'}}, {\'added\': {\'name\': \'Answer\', \'object\': \'listening\'}}, {\'added\': {\'name\': \'Answer\', \'object\': \'understanding\'}}, {\'added\': {\'name\': \'Answer\', \'object\': \'speaking\'}}]',16,2,1);

INSERT INTO django_admin_log VALUES(120,'2020-03-08 20:30:00.771478','44','The dictionary is the word treasury of our language, the basic tool in the effective use of','[{\'added\': {}}, {\'added\': {\'name\': \'Answer\', \'object\': \'clauses\'}}, {\'added\': {\'name\': \'Answer\', \'object\': \'phrases\'}}, {\'added\': {\'name\': \'Answer\', \'object\': \'words\'}}, {\'added\': {\'name\': \'Answer\', \'object\': \'sentences\'}}]',16,2,1);

INSERT INTO django_admin_log VALUES(121,'2020-03-08 20:31:48.967358','45','. Listening is the ability to hear and ______','[{\'added\': {}}, {\'added\': {\'name\': \'Answer\', \'object\': \'concentrate\'}}, {\'added\': {\'name\': \'Answer\', \'object\': \'comprehend\'}}, {\'added\': {\'name\': \'Answer\', \'object\': \'conceptualize\'}}, {\'added\': {\'name\': \'Answer\', \'object\': \'convince\'}}]',16,2,1);

INSERT INTO django_admin_log VALUES(122,'2020-03-08 20:32:14.667071','45','. Listening is the ability to hear and ______','[{\'changed\': {\'fields\': [\'Explanation\']}}]',16,2,2);

INSERT INTO django_admin_log VALUES(123,'2020-03-08 20:34:29.448654','46','Comprehension is a mental activity that is being carried out in the ______of the brains','[{\'added\': {}}, {\'added\': {\'name\': \'Answer\', \'object\': \'Central lobe\'}}, {\'added\': {\'name\': \'Answer\', \'object\': \'Frontal Lobe\'}}, {\'added\': {\'name\': \'Answer\', \'object\': \'Right hemisphere\'}}, {\'added\': {\'name\': \'Answer\', \'object\': \'Left Hemishere\'}}]',16,2,1);

INSERT INTO django_admin_log VALUES(124,'2020-03-08 20:36:24.457132','47','The major skills of language are','[{\'added\': {}}, {\'added\': {\'name\': \'Answer\', \'object\': \'Speaking and listening skills\'}}, {\'added\': {\'name\': \'Answer\', \'object\': \'Study and reading skills\'}}, {\'added\': {\'name\': \'Answer\', \'object\': \'Reading and writing skills\'}}, {\'added\': {\'name\': \'Answer\', \'object\': \'Speaking and reading skills\'}}]',16,2,1);

INSERT INTO django_admin_log VALUES(125,'2020-03-08 20:38:20.493422','48','One of the major reasons for listening is to identify the exact __________ and _______ uttered','[{\'added\': {}}, {\'added\': {\'name\': \'Answer\', \'object\': \'sentences ,statements and skills\'}}, {\'added\': {\'name\': \'Answer\', \'object\': \'words ,statements and information\'}}, {\'added\': {\'name\': \'Answer\', \'object\': \'words, phrases and expression\'}}, {\'added\': {\'name\': \'Answer\', \'object\': \'Phrases, expression and sentences\'}}]',16,2,1);

INSERT INTO django_admin_log VALUES(126,'2020-03-08 20:39:47.395915','49','Listening is a ________ activity','[{\'added\': {}}, {\'added\': {\'name\': \'Answer\', \'object\': \'Wecknickers\'}}, {\'added\': {\'name\': \'Answer\', \'object\': \'concentrating\'}}, {\'added\': {\'name\': \'Answer\', \'object\': \'mental\'}}, {\'added\': {\'name\': \'Answer\', \'object\': \'social\'}}]',16,2,1);

INSERT INTO django_admin_log VALUES(127,'2020-03-08 20:41:33.169514','50','The secondary skills of language are','[{\'added\': {}}, {\'added\': {\'name\': \'Answer\', \'object\': \'reading and study skills\'}}, {\'added\': {\'name\': \'Answer\', \'object\': \'speaking and listening skills\'}}, {\'added\': {\'name\': \'Answer\', \'object\': \'reading and writing skills\'}}, {\'added\': {\'name\': \'Answer\', \'object\': \'. listening and reading skills\'}}]',16,2,1);

INSERT INTO django_admin_log VALUES(128,'2020-03-08 20:43:35.844128','51','. Listening could effectively be carried out by putting the brain on ______','[{\'added\': {}}, {\'added\': {\'name\': \'Answer\', \'object\': \'Rest\'}}, {\'added\': {\'name\': \'Answer\', \'object\': \'high alert\'}}, {\'added\': {\'name\': \'Answer\', \'object\': \'sensitizing\'}}, {\'added\': {\'name\': \'Answer\', \'object\': \'Better mood\'}}]',16,2,1);

INSERT INTO django_admin_log VALUES(129,'2020-03-08 20:45:29.952232','52','. Sensitizing is getting ready the ears to receive incoming signals is an important condition for_________','[{\'added\': {}}, {\'added\': {\'name\': \'Answer\', \'object\': \'understanding\'}}, {\'added\': {\'name\': \'Answer\', \'object\': \'Good hearing\'}}, {\'added\': {\'name\': \'Answer\', \'object\': \'Effective listening\'}}, {\'added\': {\'name\': \'Answer\', \'object\': \'comprehension\'}}]',16,2,1);

INSERT INTO django_admin_log VALUES(130,'2020-03-08 20:47:22.785072','53','________ is the ability to read, comprehend and assimilate what has been read without effort','[{\'added\': {}}, {\'added\': {\'name\': \'Answer\', \'object\': \'reading skill\'}}, {\'added\': {\'name\': \'Answer\', \'object\': \'comprehension\'}}, {\'added\': {\'name\': \'Answer\', \'object\': \'study skill\'}}, {\'added\': {\'name\': \'Answer\', \'object\': \'summary\'}}]',16,2,1);

INSERT INTO django_admin_log VALUES(131,'2020-03-08 20:48:59.313901','54','_________ is the vivid representation of the content and the structure of any piece of writing or lecture we listen to','[{\'added\': {}}, {\'added\': {\'name\': \'Answer\', \'object\': \'an outline\'}}, {\'added\': {\'name\': \'Answer\', \'object\': \'summarizing\'}}, {\'added\': {\'name\': \'Answer\', \'object\': \'skimming\'}}, {\'added\': {\'name\': \'Answer\', \'object\': \'note making\'}}]',16,2,1);

INSERT INTO django_admin_log VALUES(132,'2020-03-08 20:50:45.564589','55','As part of the study process when we take down the major points and the important details we involve in ________________','[{\'added\': {}}, {\'added\': {\'name\': \'Answer\', \'object\': \'writing\'}}, {\'added\': {\'name\': \'Answer\', \'object\': \'Note making\'}}, {\'added\': {\'name\': \'Answer\', \'object\': \'scanning\'}}, {\'added\': {\'name\': \'Answer\', \'object\': \'jotting\'}}]',16,2,1);

INSERT INTO django_admin_log VALUES(133,'2020-03-08 20:52:27.805855','56','. Major points are normally noted by the use of _______ in outlining','[{\'added\': {}}, {\'added\': {\'name\': \'Answer\', \'object\': \'Capital roman numerals\'}}, {\'added\': {\'name\': \'Answer\', \'object\': \'Arabic numerals\'}}, {\'added\': {\'name\': \'Answer\', \'object\': \'capital letters\'}}, {\'added\': {\'name\': \'Answer\', \'object\': \'small roman numerals\'}}]',16,2,1);

INSERT INTO django_admin_log VALUES(134,'2020-03-08 20:54:10.141132','57','The secondary points are noted by the use of ____','[{\'added\': {}}, {\'added\': {\'name\': \'Answer\', \'object\': \'Arabic numerals\'}}, {\'added\': {\'name\': \'Answer\', \'object\': \'small letters\'}}, {\'added\': {\'name\': \'Answer\', \'object\': \'capital letters\'}}, {\'added\': {\'name\': \'Answer\', \'object\': \'capital roman numerals\'}}]',16,2,1);

INSERT INTO django_admin_log VALUES(135,'2020-03-08 20:55:59.106162','58','_________ is anything that take away a students attention from his studies','[{\'added\': {}}, {\'added\': {\'name\': \'Answer\', \'object\': \'distriction\'}}, {\'added\': {\'name\': \'Answer\', \'object\': \'destraction\'}}, {\'added\': {\'name\': \'Answer\', \'object\': \'distruction\'}}, {\'added\': {\'name\': \'Answer\', \'object\': \'distraction\'}}]',16,2,1);

INSERT INTO django_admin_log VALUES(136,'2020-03-08 20:57:09.478562','59','Identify the correct abbreviation for the following','[{\'added\': {}}, {\'added\': {\'name\': \'Answer\', \'object\': \'Dr\'}}, {\'added\': {\'name\': \'Answer\', \'object\': \'DR\'}}, {\'added\': {\'name\': \'Answer\', \'object\': \'dR\'}}, {\'added\': {\'name\': \'Answer\', \'object\': \'Dr.\'}}]',16,2,1);

INSERT INTO django_admin_log VALUES(137,'2020-03-08 20:58:46.670370','60','Identify the odd sentence from the following','[{\'added\': {}}, {\'added\': {\'name\': \'Answer\', \'object\': \'She is an alert , short , beautiful girl.\'}}, {\'added\': {\'name\': \'Answer\', \'object\': \'She is an alert, short , and beautiful girl\'}}, {\'added\': {\'name\': \'Answer\', \'object\': \'She is an alert: short and beautiful girl\'}}, {\'added\': {\'name\': \'Answer\', \'object\': \'She is an alert, short and beautiful girl\'}}]',16,2,1);

INSERT INTO django_admin_log VALUES(138,'2020-03-08 21:00:40.408942','61','Which of the following is wrong?','[{\'added\': {}}, {\'added\': {\'name\': \'Answer\', \'object\': \'Who gave you the papers\'}}, {\'added\': {\'name\': \'Answer\', \'object\': \'When the men arrived\'}}, {\'added\': {\'name\': \'Answer\', \'object\': \'She danced gracefully\'}}, {\'added\': {\'name\': \'Answer\', \'object\': \'Get out of the room?\'}}]',16,2,1);

INSERT INTO django_admin_log VALUES(139,'2020-03-08 21:03:53.440002','62','Morphology, syntax, and phonology are branches of','[{\'added\': {}}, {\'added\': {\'name\': \'Answer\', \'object\': \'pragmatics\'}}, {\'added\': {\'name\': \'Answer\', \'object\': \'linguists\'}}, {\'added\': {\'name\': \'Answer\', \'object\': \'grammar\'}}, {\'added\': {\'name\': \'Answer\', \'object\': \'discourse\'}}]',16,2,1);

INSERT INTO django_admin_log VALUES(140,'2020-03-08 21:05:29.845236','63','_______is concerned with formation of and internal structure of words','[{\'added\': {}}, {\'added\': {\'name\': \'Answer\', \'object\': \'morpho _phonology\'}}, {\'added\': {\'name\': \'Answer\', \'object\': \'Grammatics\'}}, {\'added\': {\'name\': \'Answer\', \'object\': \'semantics\'}}, {\'added\': {\'name\': \'Answer\', \'object\': \'morphology\'}}]',16,2,1);

INSERT INTO django_admin_log VALUES(141,'2020-03-08 21:07:17.923020','64','The punctuation mark used to indicate that some materials have been omitted from a quoted passage is known as','[{\'added\': {}}, {\'added\': {\'name\': \'Answer\', \'object\': \'dash\'}}, {\'added\': {\'name\': \'Answer\', \'object\': \'hyphen\'}}, {\'added\': {\'name\': \'Answer\', \'object\': \'ellipses\'}}, {\'added\': {\'name\': \'Answer\', \'object\': \'colon\'}}]',16,2,1);

INSERT INTO django_admin_log VALUES(142,'2020-03-08 21:09:04.270924','65','The apostrophe is used','[{\'added\': {}}, {\'added\': {\'name\': \'Answer\', \'object\': \'To link words that suggest a single meaning\'}}, {\'added\': {\'name\': \'Answer\', \'object\': \'to introduce a list\'}}, {\'added\': {\'name\': \'Answer\', \'object\': \'to form the possessives of nouns\'}}, {\'added\': {\'name\': \'Answer\', \'object\': \'to mark the completion of a sentence\'}}]',16,2,1);

INSERT INTO django_admin_log VALUES(143,'2020-03-08 21:10:22.331821','66','The type of reading to familiarize ourselves with a wide variety of reading materials is __________','[{\'added\': {}}, {\'added\': {\'name\': \'Answer\', \'object\': \'intensive readings\'}}, {\'added\': {\'name\': \'Answer\', \'object\': \'Extensive readings\'}}, {\'added\': {\'name\': \'Answer\', \'object\': \'Reading aloud\'}}, {\'added\': {\'name\': \'Answer\', \'object\': \'silent reading\'}}]',16,2,1);

INSERT INTO django_admin_log VALUES(144,'2020-03-08 21:11:14.810634','3','GST101','[{\'changed\': {\'fields\': [\'Max Questions\']}}]',14,2,2);

INSERT INTO django_admin_log VALUES(145,'2020-03-23 08:02:28.415978','10','COVID-19 Cases Hits 31 In Nigeria','[{\'added\': {}}]',2,2,1);

INSERT INTO django_admin_log VALUES(146,'2020-03-23 08:03:54.323414','10','COVID-19 Cases Hits 31 In Nigeria','[{\'changed\': {\'fields\': [\'Body\']}}]',2,2,2);

INSERT INTO django_admin_log VALUES(147,'2020-03-23 09:10:28.562326','11','FUOYE Cut-Off Mark For All Courses','[{\'added\': {}}]',2,2,1);

INSERT INTO django_admin_log VALUES(148,'2020-03-23 09:11:20.425303','11','FUOYE Cut-Off Mark For All Courses','[{\'changed\': {\'fields\': [\'Status\']}}]',2,2,2);

INSERT INTO django_admin_log VALUES(149,'2020-03-23 09:13:26.118494','11','FUOYE Cut-Off Mark For All Courses','[{\'changed\': {\'fields\': [\'Body\']}}]',2,2,2);

INSERT INTO django_admin_log VALUES(150,'2020-03-23 09:16:57.223083','11','FUOYE Cut-Off Mark For All Courses','[{\'changed\': {\'fields\': [\'Body\']}}]',2,2,2);

INSERT INTO django_admin_log VALUES(151,'2020-03-23 09:45:25.062757','11','FUOYE Cut-Off Mark For All Courses','',2,2,3);

INSERT INTO django_admin_log VALUES(152,'2020-03-25 08:15:08.151886','1','BroadCast_Email object (1)','[{\'added\': {}}]',20,2,1);

INSERT INTO django_admin_log VALUES(153,'2020-04-22 17:38:02.139024','10','CHM101 EXAM','[{\'added\': {}}]',14,62,1);

INSERT INTO django_admin_log VALUES(154,'2020-04-24 20:32:41.232485','13','What type of bond exists in Carbon tetrachloride?','[{\'changed\': {\'fields\': [\'Question\']}}]',16,62,2);

INSERT INTO django_admin_log VALUES(155,'2020-04-24 20:33:03.337790','51','Listening could effectively be carried out by putting the brain on ______','[{\'changed\': {\'fields\': [\'Question\']}}]',16,62,2);

INSERT INTO django_admin_log VALUES(156,'2020-04-24 20:33:20.340442','52','Sensitizing is getting ready the ears to receive incoming signals is an important condition for_________','[{\'changed\': {\'fields\': [\'Question\']}}]',16,62,2);

INSERT INTO django_admin_log VALUES(157,'2020-04-24 20:33:52.249536','45','Listening is the ability to hear and ______','[{\'changed\': {\'fields\': [\'Question\']}}]',16,62,2);

INSERT INTO django_admin_log VALUES(158,'2020-04-24 20:35:40.684855','1','The dissolution of calcium hydroxide is exothermic Ca(OH) <sub> 2(s)</sub> ↔ Ca <sup>2+</sup>(aq) +2OH- (aq) What happens when the solution of Ca(OH) <sub>2</sub> is heated?','[{\'changed\': {\'fields\': [\'Question\', \'Explanation\']}}]',16,62,2);

INSERT INTO django_admin_log VALUES(159,'2020-04-24 20:37:19.187837','4','The rate constant k, for a first-order reaction is equal to 4.2 x 10<sup> -4</sup> s<sup>-1</sup>  What is the half-life ?','[{\'changed\': {\'fields\': [\'Explanation\']}}]',16,62,2);

INSERT INTO django_admin_log VALUES(160,'2020-05-01 09:07:41.875281','6','JAMB threatens to sanction e-PIN outlets over fraud, arrests five agents','[{\'changed\': {\'fields\': [\'Image upload\']}}]',2,62,2);

INSERT INTO django_admin_log VALUES(161,'2020-05-01 09:07:59.581115','4','FUOYE shines at NUTAF 2019','[{\'changed\': {\'fields\': [\'Image upload\']}}]',2,62,2);

INSERT INTO django_admin_log VALUES(162,'2020-05-01 09:08:25.481958','5','About easy CAMPUS Exam simulator','[{\'changed\': {\'fields\': [\'Image upload\']}}]',2,62,2);

INSERT INTO django_admin_log VALUES(163,'2020-05-01 09:09:00.082888','9','Career Choice Of Wards: A PARENT''S DUTY?','[{\'changed\': {\'fields\': [\'Image upload\']}}]',2,62,2);

INSERT INTO django_admin_log VALUES(164,'2020-05-01 09:09:17.954568','3','Study Smart Not Harder','[{\'changed\': {\'fields\': [\'Image upload\']}}]',2,62,2);

INSERT INTO django_admin_log VALUES(165,'2020-05-01 16:15:53.939339','60','test','[{\'changed\': {\'fields\': [\'Faculty\']}}]',1,62,2);

INSERT INTO django_admin_log VALUES(166,'2020-05-09 13:52:18.287197','2','Premium_user object (2)','',22,62,3);

INSERT INTO django_admin_log VALUES(167,'2020-05-09 13:52:18.451464','1','Premium_user object (1)','',22,62,3);

INSERT INTO django_admin_log VALUES(168,'2020-05-09 14:31:14.717847','12','Premium_user object (12)','',22,62,3);

INSERT INTO django_admin_log VALUES(169,'2020-05-09 14:31:14.919677','11','Premium_user object (11)','',22,62,3);

INSERT INTO django_admin_log VALUES(170,'2020-05-09 14:31:15.024347','10','Premium_user object (10)','',22,62,3);

INSERT INTO django_admin_log VALUES(171,'2020-05-09 14:31:15.155562','9','Premium_user object (9)','',22,62,3);

INSERT INTO django_admin_log VALUES(172,'2020-05-09 14:31:15.467069','8','Premium_user object (8)','',22,62,3);

INSERT INTO django_admin_log VALUES(173,'2020-05-09 14:31:15.790598','7','Premium_user object (7)','',22,62,3);

INSERT INTO django_admin_log VALUES(174,'2020-05-09 14:31:16.109617','6','Premium_user object (6)','',22,62,3);

INSERT INTO django_admin_log VALUES(175,'2020-05-09 14:31:16.277391','5','Premium_user object (5)','',22,62,3);

INSERT INTO django_admin_log VALUES(176,'2020-05-09 14:31:16.446668','4','Premium_user object (4)','',22,62,3);

INSERT INTO django_admin_log VALUES(177,'2020-05-09 14:31:16.586397','3','Premium_user object (3)','',22,62,3);

INSERT INTO django_admin_log VALUES(178,'2020-05-12 09:31:03.070029','64','education','[{\'changed\': {\'fields\': [\'Premium\']}}]',1,62,2);

INSERT INTO django_admin_log VALUES(179,'2020-05-12 15:37:45.988965','10','CHM101 EXAM','[{\'changed\': {\'fields\': [\'Premium\']}}]',14,62,2);

INSERT INTO django_admin_log VALUES(180,'2020-05-12 15:56:30.644146','10','CHM101 EXAM','[]',14,62,2);

INSERT INTO django_admin_log VALUES(181,'2020-05-12 16:00:11.561409','10','CHM101 EXAM','[{\'changed\': {\'fields\': [\'Description\', \'Max Questions\', \'Success Text\', \'Fail Text\']}}]',14,62,2);

INSERT INTO django_admin_log VALUES(182,'2020-05-12 16:06:54.885657','11','BIO101 EXAM','[{\'added\': {}}]',14,62,1);

INSERT INTO django_admin_log VALUES(183,'2020-05-16 09:20:42.024532','63','engineering','[{\'changed\': {\'fields\': [\'Premium\']}}]',1,62,2);

INSERT INTO django_admin_log VALUES(184,'2020-05-17 12:56:37.202663','63','engineering','[{\'changed\': {\'fields\': [\'Premium\']}}]',1,2,2);

INSERT INTO django_admin_log VALUES(185,'2020-05-17 13:29:16.674038','9','Career Choice Of Wards: A PARENT''S DUTY?','[{\'changed\': {\'fields\': [\'Image upload\']}}]',2,2,2);

INSERT INTO django_admin_log VALUES(186,'2020-05-17 13:29:33.651084','10','COVID-19 Cases Hits 31 In Nigeria','[{\'changed\': {\'fields\': [\'Image upload\']}}]',2,2,2);

INSERT INTO django_admin_log VALUES(187,'2020-05-17 13:32:24.184181','7','Some Habits Inherent in Successful People','[{\'changed\': {\'fields\': [\'Image upload\']}}]',2,2,2);

INSERT INTO django_admin_log VALUES(188,'2020-05-17 13:41:49.656466','63','engineering','[{\'changed\': {\'fields\': [\'Premium\']}}]',1,2,2);

INSERT INTO django_admin_log VALUES(189,'2020-05-18 12:56:16.907922','63','engineering','[{\'changed\': {\'fields\': [\'Premium\']}}]',1,68,2);

INSERT INTO django_admin_log VALUES(190,'2020-05-19 12:03:25.973151','63','engineering','[{\'changed\': {\'fields\': [\'Premium\']}}]',1,2,2);

INSERT INTO django_admin_log VALUES(191,'2020-05-21 15:03:54.825703','12','GST101 EXAM','[{\'added\': {}}]',14,62,1);

INSERT INTO django_admin_log VALUES(192,'2020-05-21 15:09:12.585479','67','All these are regarded as aims of note taking except','[{\'added\': {}}, {\'added\': {\'name\': \'Answer\', \'object\': \'To have record of the speaker''s or writer''s main\'}}, {\'added\': {\'name\': \'Answer\', \'object\': \'To prove to people around that you have attended the lecture\'}}, {\'added\': {\'name\': \'Answer\', \'object\': \'For future reference when you are out of school\'}}, {\'added\': {\'name\': \'Answer\', \'object\': \'For research purpose\'}}]',16,62,1);

INSERT INTO django_admin_log VALUES(193,'2020-05-22 10:24:33.870245','13','PHY101 EXAM','[{\'added\': {}}]',14,62,1);

INSERT INTO django_admin_log VALUES(194,'2020-05-22 10:26:42.323530','68','The magnitude of the acceleration of a moving object is equal to the:','[{\'added\': {}}, {\'added\': {\'name\': \'Answer\', \'object\': \'gradient of a displacement time graph\'}}, {\'added\': {\'name\': \'Answer\', \'object\': \'Area below a force-time graph.\'}}, {\'added\': {\'name\': \'Answer\', \'object\': \'Area below a velocity-time graph\'}}, {\'added\': {\'name\': \'Answer\', \'object\': \'gradient of a velocity -time graph\'}}]',16,62,1);

INSERT INTO django_admin_log VALUES(195,'2020-05-22 10:28:19.258106','69','A stone is thrown from P and follows a parabolic path. The highest point reached is T. The vertical component of acceleration of the stone.','[{\'added\': {}}, {\'added\': {\'name\': \'Answer\', \'object\': \'is the same P and T\'}}, {\'added\': {\'name\': \'Answer\', \'object\': \'is greatest at T\'}}, {\'added\': {\'name\': \'Answer\', \'object\': \'is greatest at P\'}}, {\'added\': {\'name\': \'Answer\', \'object\': \'decreases at a constant rate\'}}]',16,62,1);

INSERT INTO django_admin_log VALUES(196,'2020-05-22 10:32:11.491579','70','In an experiment, the external diameter d<sub>1</sub> and the internal diameter d<sub>2</sub> of a metal tube are found to be (64 2) mm and (47 1) mm, respectively. The percentage error in (d<sub>1</s','[{\'added\': {}}, {\'added\': {\'name\': \'Answer\', \'object\': \'0.3 %\'}}, {\'added\': {\'name\': \'Answer\', \'object\': \'5%\'}}, {\'added\': {\'name\': \'Answer\', \'object\': \'6%\'}}, {\'added\': {\'name\': \'Answer\', \'object\': \'18%\'}}]',16,62,1);

INSERT INTO django_admin_log VALUES(197,'2020-05-22 10:33:52.978581','71','Force is applied to an object of mass 2kg at rest on a friction - free horizontal surface as indicated on the graph, After 1 second, the speed of the object in ms<sup>-1</sup>is?','[{\'added\': {}}, {\'added\': {\'name\': \'Answer\', \'object\': \'7.5\'}}, {\'added\': {\'name\': \'Answer\', \'object\': \'15\'}}, {\'added\': {\'name\': \'Answer\', \'object\': \'25\'}}, {\'added\': {\'name\': \'Answer\', \'object\': \'30\'}}]',16,62,1);

INSERT INTO django_admin_log VALUES(198,'2020-05-22 10:36:10.312631','72','For a simple pendulum undergoing SHM with small oscillations, which of the following correctly describes the KE of the bob and the tension of the thread supporting the bolb at zero displacement(i.e pa','[{\'added\': {}}, {\'added\': {\'name\': \'Answer\', \'object\': \'Ke = Max , Tension = Min\'}}, {\'added\': {\'name\': \'Answer\', \'object\': \'Ke = Max , Tension = Max\'}}, {\'added\': {\'name\': \'Answer\', \'object\': \'Ke = 0 , Tension = Min\'}}, {\'added\': {\'name\': \'Answer\', \'object\': \'Ke = 0 , Tension = Max\'}}]',16,62,1);

INSERT INTO django_admin_log VALUES(199,'2020-05-22 10:38:12.657908','73','If a constant force of 16N acts on a body of 4kg for 2 seconds, what change in the velocity would be produced on the body?','[{\'added\': {}}, {\'added\': {\'name\': \'Answer\', \'object\': \'8.0 m/s\'}}, {\'added\': {\'name\': \'Answer\', \'object\': \'32.0 m/s\'}}, {\'added\': {\'name\': \'Answer\', \'object\': \'4.0 m/s\'}}, {\'added\': {\'name\': \'Answer\', \'object\': \'0.5 m/s\'}}]',16,62,1);

INSERT INTO django_admin_log VALUES(200,'2020-05-22 10:39:48.638917','74','Find the magnitude of the resultant of two vectors of magnitude 5N and 12N respectivelyinclined at 90C to each other','[{\'added\': {}}, {\'added\': {\'name\': \'Answer\', \'object\': \'3.5N\'}}, {\'added\': {\'name\': \'Answer\', \'object\': \'7N\'}}, {\'added\': {\'name\': \'Answer\', \'object\': \'13N\'}}, {\'added\': {\'name\': \'Answer\', \'object\': \'12N\'}}]',16,62,1);

INSERT INTO django_admin_log VALUES(201,'2020-05-22 10:42:09.196900','75','A wooden cube of side 5cm floats in water 2.0cm of its depth below the water surface and its sides are vertical. Calculate the density of the wood in gcm<sup>-3</sup> (Density of water in1gcm<sup>-3</','[{\'added\': {}}, {\'added\': {\'name\': \'Answer\', \'object\': \'2/3\'}}, {\'added\': {\'name\': \'Answer\', \'object\': \'3/5\'}}, {\'added\': {\'name\': \'Answer\', \'object\': \'2/5\'}}, {\'added\': {\'name\': \'Answer\', \'object\': \'1/3\'}}]',16,62,1);

INSERT INTO django_admin_log VALUES(202,'2020-05-22 10:43:57.593823','76','A forceof 10N applied parallel to the surface of a horizontal table,is just sufficient to make a block ofmass 2kg move on the table. Calculate the coefficient of friction between the block and the tab','[{\'added\': {}}, {\'added\': {\'name\': \'Answer\', \'object\': \'0.05\'}}, {\'added\': {\'name\': \'Answer\', \'object\': \'0.5\'}}, {\'added\': {\'name\': \'Answer\', \'object\': \'0.2\'}}, {\'added\': {\'name\': \'Answer\', \'object\': \'0.8\'}}]',16,62,1);

INSERT INTO django_admin_log VALUES(203,'2020-05-22 10:46:47.949620','77','An elastic string of length X is classifiably stretched through a length e by a force F, the area of the cross-section of the string is A and its youngs modulus is E . Which of thefollowing expression','[{\'added\': {}}, {\'added\': {\'name\': \'Answer\', \'object\': \'F = EAe\u00b2/X\'}}, {\'added\': {\'name\': \'Answer\', \'object\': \'F = EAx/X\'}}, {\'added\': {\'name\': \'Answer\', \'object\': \'F = EAe/X\u00b2\'}}, {\'added\': {\'name\': \'Answer\', \'object\': \'F = EAe/X\'}}]',16,62,1);

INSERT INTO django_admin_log VALUES(204,'2020-05-22 10:49:16.072521','78','Which of the following instruments can best measure the internal diameter of a test tube?','[{\'added\': {}}, {\'added\': {\'name\': \'Answer\', \'object\': \'meter rule\'}}, {\'added\': {\'name\': \'Answer\', \'object\': \'a set square\'}}, {\'added\': {\'name\': \'Answer\', \'object\': \'micro-meter screw guage\'}}, {\'added\': {\'name\': \'Answer\', \'object\': \'a pair of calipers\'}}]',16,62,1);

INSERT INTO django_admin_log VALUES(205,'2020-05-22 10:50:56.829546','79','For which of the following set are fundamental units?','[{\'added\': {}}, {\'added\': {\'name\': \'Answer\', \'object\': \'volume, length, speed\'}}, {\'added\': {\'name\': \'Answer\', \'object\': \'area, length, volume\'}}, {\'added\': {\'name\': \'Answer\', \'object\': \'time, mass, momentum\'}}, {\'added\': {\'name\': \'Answer\', \'object\': \'length, mass, time\'}}]',16,62,1);

INSERT INTO django_admin_log VALUES(206,'2020-05-22 10:52:52.053368','80','A girl pulls her toy on a smooth horizontal surface with a rope inclined at 30 to the horizontal, if the tension in the rope is 10.0N. What is the effective force pulling the toy along the horizontal ','[{\'added\': {}}, {\'added\': {\'name\': \'Answer\', \'object\': \'10sin30\'}}, {\'added\': {\'name\': \'Answer\', \'object\': \'10/cos30\'}}, {\'added\': {\'name\': \'Answer\', \'object\': \'10/sin30\'}}, {\'added\': {\'name\': \'Answer\', \'object\': \'10tan30\'}}]',16,62,1);

INSERT INTO django_admin_log VALUES(207,'2020-05-22 10:55:32.005174','81','A ball is thrown vertically upwards from the top of a tower with an initial velocity of 20ms<sup>-1</sup>. If the ball took a total of 6s to reach the ground, what is the height of the tower?','[{\'added\': {}}, {\'added\': {\'name\': \'Answer\', \'object\': \'80m\'}}, {\'added\': {\'name\': \'Answer\', \'object\': \'60m\'}}, {\'added\': {\'name\': \'Answer\', \'object\': \'100m\'}}, {\'added\': {\'name\': \'Answer\', \'object\': \'40m\'}}]',16,62,1);

INSERT INTO django_admin_log VALUES(208,'2020-05-22 10:58:34.230610','82','The following are thermometric response except','[{\'added\': {}}, {\'added\': {\'name\': \'Answer\', \'object\': \'potential diffrence across a platinum wire\'}}, {\'added\': {\'name\': \'Answer\', \'object\': \'pressure of a gas\'}}, {\'added\': {\'name\': \'Answer\', \'object\': \'volume of a gas\'}}, {\'added\': {\'name\': \'Answer\', \'object\': \'expansion\'}}]',16,62,1);

INSERT INTO django_admin_log VALUES(209,'2020-05-22 11:21:07.166416','83','3.00-kg object undergoes an acceleration given by a=( 2.00 i^ + 5.00 j^ ) m/s<sup>2</sup>. Find the resultant force acting on the object','[{\'added\': {}}, {\'added\': {\'name\': \'Answer\', \'object\': \'(6.00 i + 15.00j)N\'}}, {\'added\': {\'name\': \'Answer\', \'object\': \'(3.20 i + 2.00j)N\'}}, {\'added\': {\'name\': \'Answer\', \'object\': \'(5.00 i + 10.00j)N\'}}, {\'added\': {\'name\': \'Answer\', \'object\': \'(12.00 i + 5.00j)N\'}}]',16,62,1);

INSERT INTO django_admin_log VALUES(210,'2020-05-22 11:31:15.708234','84','An electron of mass 9.11X10<sup>-31</sup> kg has an initial speed of 3.00X10<sup>5</sup> m/s. It travels in a straight line, and its speed increases to 7.00 X10<sup>5</sup> m/s in a distance of 5.00 c','[{\'added\': {}}, {\'added\': {\'name\': \'Answer\', \'object\': \'3.64 X 10-\u00b9\u2078 N\'}}, {\'added\': {\'name\': \'Answer\', \'object\': \'1.23 X 10-\u00b9\u2078 N\'}}, {\'added\': {\'name\': \'Answer\', \'object\': \'4.60 X 10-\u00b9\u2078 N\'}}, {\'added\': {\'name\': \'Answer\', \'object\': \'8.32 X 10-\u00b9\u2078 N\'}}]',16,62,1);

INSERT INTO django_admin_log VALUES(211,'2020-05-22 11:32:47.332729','2','PHY101','[{\'changed\': {\'fields\': [\'Max Questions\']}}]',14,62,2);

INSERT INTO django_admin_log VALUES(212,'2020-05-23 13:37:54.181328','79','For which of the following set are fundamental units?','[{\'changed\': {\'fields\': [\'Answer Order\']}}]',16,62,2);

INSERT INTO django_admin_log VALUES(213,'2020-05-23 13:42:55.786073','77','An elastic string of length X is classifiably stretched through a length e by a force F, the area of the cross-section of the string is A and its youngs modulus is E . Which of thefollowing expression','[{\'changed\': {\'fields\': [\'Answer Order\']}}]',16,62,2);

INSERT INTO django_admin_log VALUES(214,'2020-05-23 13:45:35.339173','82','The following are thermometric response except','[]',16,62,2);

DROP TABLE IF EXISTS django_content_type;
CREATE TABLE IF NOT EXISTS `django_content_type` (`id` integer NOT NULL PRIMARY KEY , `app_label` varchar(100) NOT NULL, `model` varchar(100) NOT NULL);

INSERT INTO django_content_type VALUES(1,'accounts','userprofile');

INSERT INTO django_content_type VALUES(2,'blog','post');

INSERT INTO django_content_type VALUES(3,'blog','comment');

INSERT INTO django_content_type VALUES(4,'admin','logentry');

INSERT INTO django_content_type VALUES(5,'auth','permission');

INSERT INTO django_content_type VALUES(6,'auth','group');

INSERT INTO django_content_type VALUES(7,'auth','user');

INSERT INTO django_content_type VALUES(8,'contenttypes','contenttype');

INSERT INTO django_content_type VALUES(9,'sessions','session');

INSERT INTO django_content_type VALUES(10,'cbt','category');

INSERT INTO django_content_type VALUES(11,'cbt','csvupload');

INSERT INTO django_content_type VALUES(12,'cbt','progress');

INSERT INTO django_content_type VALUES(13,'cbt','question');

INSERT INTO django_content_type VALUES(14,'cbt','quiz');

INSERT INTO django_content_type VALUES(15,'cbt','sitting');

INSERT INTO django_content_type VALUES(16,'mcq','mcqquestion');

INSERT INTO django_content_type VALUES(17,'mcq','answer');

INSERT INTO django_content_type VALUES(18,'community','answer');

INSERT INTO django_content_type VALUES(19,'community','question');

INSERT INTO django_content_type VALUES(20,'blog','broadcast_email');

INSERT INTO django_content_type VALUES(21,'cbt','premium');

INSERT INTO django_content_type VALUES(22,'premium','premium_user');

INSERT INTO django_content_type VALUES(23,'premium','premium');

INSERT INTO django_content_type VALUES(24,'blog','premium');

DROP TABLE IF EXISTS auth_permission;
CREATE TABLE IF NOT EXISTS `auth_permission` (`id` integer NOT NULL PRIMARY KEY , `content_type_id` integer NOT NULL REFERENCES `django_content_type` (`id`) , `codename` varchar(100) NOT NULL, `name` varchar(255) NOT NULL);

INSERT INTO auth_permission VALUES(1,1,'add_userprofile','Can add user profile');

INSERT INTO auth_permission VALUES(2,1,'change_userprofile','Can change user profile');

INSERT INTO auth_permission VALUES(3,1,'delete_userprofile','Can delete user profile');

INSERT INTO auth_permission VALUES(4,1,'view_userprofile','Can view user profile');

INSERT INTO auth_permission VALUES(5,2,'add_post','Can add post');

INSERT INTO auth_permission VALUES(6,2,'change_post','Can change post');

INSERT INTO auth_permission VALUES(7,2,'delete_post','Can delete post');

INSERT INTO auth_permission VALUES(8,2,'view_post','Can view post');

INSERT INTO auth_permission VALUES(9,3,'add_comment','Can add comment');

INSERT INTO auth_permission VALUES(10,3,'change_comment','Can change comment');

INSERT INTO auth_permission VALUES(11,3,'delete_comment','Can delete comment');

INSERT INTO auth_permission VALUES(12,3,'view_comment','Can view comment');

INSERT INTO auth_permission VALUES(13,4,'add_logentry','Can add log entry');

INSERT INTO auth_permission VALUES(14,4,'change_logentry','Can change log entry');

INSERT INTO auth_permission VALUES(15,4,'delete_logentry','Can delete log entry');

INSERT INTO auth_permission VALUES(16,4,'view_logentry','Can view log entry');

INSERT INTO auth_permission VALUES(17,5,'add_permission','Can add permission');

INSERT INTO auth_permission VALUES(18,5,'change_permission','Can change permission');

INSERT INTO auth_permission VALUES(19,5,'delete_permission','Can delete permission');

INSERT INTO auth_permission VALUES(20,5,'view_permission','Can view permission');

INSERT INTO auth_permission VALUES(21,6,'add_group','Can add group');

INSERT INTO auth_permission VALUES(22,6,'change_group','Can change group');

INSERT INTO auth_permission VALUES(23,6,'delete_group','Can delete group');

INSERT INTO auth_permission VALUES(24,6,'view_group','Can view group');

INSERT INTO auth_permission VALUES(25,7,'add_user','Can add user');

INSERT INTO auth_permission VALUES(26,7,'change_user','Can change user');

INSERT INTO auth_permission VALUES(27,7,'delete_user','Can delete user');

INSERT INTO auth_permission VALUES(28,7,'view_user','Can view user');

INSERT INTO auth_permission VALUES(29,8,'add_contenttype','Can add content type');

INSERT INTO auth_permission VALUES(30,8,'change_contenttype','Can change content type');

INSERT INTO auth_permission VALUES(31,8,'delete_contenttype','Can delete content type');

INSERT INTO auth_permission VALUES(32,8,'view_contenttype','Can view content type');

INSERT INTO auth_permission VALUES(33,9,'add_session','Can add session');

INSERT INTO auth_permission VALUES(34,9,'change_session','Can change session');

INSERT INTO auth_permission VALUES(35,9,'delete_session','Can delete session');

INSERT INTO auth_permission VALUES(36,9,'view_session','Can view session');

INSERT INTO auth_permission VALUES(37,10,'add_category','Can add Category');

INSERT INTO auth_permission VALUES(38,10,'change_category','Can change Category');

INSERT INTO auth_permission VALUES(39,10,'delete_category','Can delete Category');

INSERT INTO auth_permission VALUES(40,10,'view_category','Can view Category');

INSERT INTO auth_permission VALUES(41,11,'add_csvupload','Can add csv upload');

INSERT INTO auth_permission VALUES(42,11,'change_csvupload','Can change csv upload');

INSERT INTO auth_permission VALUES(43,11,'delete_csvupload','Can delete csv upload');

INSERT INTO auth_permission VALUES(44,11,'view_csvupload','Can view csv upload');

INSERT INTO auth_permission VALUES(45,12,'add_progress','Can add User Progress');

INSERT INTO auth_permission VALUES(46,12,'change_progress','Can change User Progress');

INSERT INTO auth_permission VALUES(47,12,'delete_progress','Can delete User Progress');

INSERT INTO auth_permission VALUES(48,12,'view_progress','Can view User Progress');

INSERT INTO auth_permission VALUES(49,13,'add_question','Can add Question');

INSERT INTO auth_permission VALUES(50,13,'change_question','Can change Question');

INSERT INTO auth_permission VALUES(51,13,'delete_question','Can delete Question');

INSERT INTO auth_permission VALUES(52,13,'view_question','Can view Question');

INSERT INTO auth_permission VALUES(53,14,'add_quiz','Can add Quiz');

INSERT INTO auth_permission VALUES(54,14,'change_quiz','Can change Quiz');

INSERT INTO auth_permission VALUES(55,14,'delete_quiz','Can delete Quiz');

INSERT INTO auth_permission VALUES(56,14,'view_quiz','Can view Quiz');

INSERT INTO auth_permission VALUES(57,15,'add_sitting','Can add sitting');

INSERT INTO auth_permission VALUES(58,15,'change_sitting','Can change sitting');

INSERT INTO auth_permission VALUES(59,15,'delete_sitting','Can delete sitting');

INSERT INTO auth_permission VALUES(60,15,'view_sitting','Can view sitting');

INSERT INTO auth_permission VALUES(61,15,'view_sittings','Can see completed exams.');

INSERT INTO auth_permission VALUES(62,16,'add_mcqquestion','Can add Multiple Choice Question');

INSERT INTO auth_permission VALUES(63,16,'change_mcqquestion','Can change Multiple Choice Question');

INSERT INTO auth_permission VALUES(64,16,'delete_mcqquestion','Can delete Multiple Choice Question');

INSERT INTO auth_permission VALUES(65,16,'view_mcqquestion','Can view Multiple Choice Question');

INSERT INTO auth_permission VALUES(66,17,'add_answer','Can add Answer');

INSERT INTO auth_permission VALUES(67,17,'change_answer','Can change Answer');

INSERT INTO auth_permission VALUES(68,17,'delete_answer','Can delete Answer');

INSERT INTO auth_permission VALUES(69,17,'view_answer','Can view Answer');

INSERT INTO auth_permission VALUES(70,18,'add_answer','Can add answer');

INSERT INTO auth_permission VALUES(71,18,'change_answer','Can change answer');

INSERT INTO auth_permission VALUES(72,18,'delete_answer','Can delete answer');

INSERT INTO auth_permission VALUES(73,18,'view_answer','Can view answer');

INSERT INTO auth_permission VALUES(74,19,'add_question','Can add question');

INSERT INTO auth_permission VALUES(75,19,'change_question','Can change question');

INSERT INTO auth_permission VALUES(76,19,'delete_question','Can delete question');

INSERT INTO auth_permission VALUES(77,19,'view_question','Can view question');

INSERT INTO auth_permission VALUES(78,20,'add_broadcast_email','Can add BroadCast Email to all Member');

INSERT INTO auth_permission VALUES(79,20,'change_broadcast_email','Can change BroadCast Email to all Member');

INSERT INTO auth_permission VALUES(80,20,'delete_broadcast_email','Can delete BroadCast Email to all Member');

INSERT INTO auth_permission VALUES(81,20,'view_broadcast_email','Can view BroadCast Email to all Member');

INSERT INTO auth_permission VALUES(82,21,'add_premium','Can add premium');

INSERT INTO auth_permission VALUES(83,21,'change_premium','Can change premium');

INSERT INTO auth_permission VALUES(84,21,'delete_premium','Can delete premium');

INSERT INTO auth_permission VALUES(85,21,'view_premium','Can view premium');

INSERT INTO auth_permission VALUES(86,22,'add_premium_user','Can add premium_user');

INSERT INTO auth_permission VALUES(87,22,'change_premium_user','Can change premium_user');

INSERT INTO auth_permission VALUES(88,22,'delete_premium_user','Can delete premium_user');

INSERT INTO auth_permission VALUES(89,22,'view_premium_user','Can view premium_user');

INSERT INTO auth_permission VALUES(90,23,'add_premium','Can add premium');

INSERT INTO auth_permission VALUES(91,23,'change_premium','Can change premium');

INSERT INTO auth_permission VALUES(92,23,'delete_premium','Can delete premium');

INSERT INTO auth_permission VALUES(93,23,'view_premium','Can view premium');

INSERT INTO auth_permission VALUES(94,24,'add_premium','Can add premium');

INSERT INTO auth_permission VALUES(95,24,'change_premium','Can change premium');

INSERT INTO auth_permission VALUES(96,24,'delete_premium','Can delete premium');

INSERT INTO auth_permission VALUES(97,24,'view_premium','Can view premium');

DROP TABLE IF EXISTS auth_user;
CREATE TABLE IF NOT EXISTS `auth_user` (`id` integer NOT NULL PRIMARY KEY , `password` varchar(128) NOT NULL, `last_login` datetime NULL, `is_superuser` bool NOT NULL, `username` varchar(150) NOT NULL UNIQUE, `first_name` varchar(30) NOT NULL, `email` varchar(254) NOT NULL, `is_staff` bool NOT NULL, `is_active` bool NOT NULL, `date_joined` datetime NOT NULL, `last_name` varchar(150) NOT NULL);

INSERT INTO auth_user VALUES(2,'pbkdf2_sha256$180000$1bdN65PfBBLV$68qDbBpSsCZMxzNMvnxGDQm2zCCo3/uWQ9uJWrC//9k=','2020-05-21 15:25:20.937728',1,'admin','','daramolaafeez123@gmail.com',1,1,'2020-01-15 18:23:12.420677','');

INSERT INTO auth_user VALUES(5,'pbkdf2_sha256$180000$0bCkCsI9gKgj$Z1f7JBoSyp/l7P0rj1eVPJA++u9031KXvV3JNMJ+/Co=','2020-02-03 04:45:59.650793',0,'Oyinoye','Oyeleke','oyinkansolarebecca126@gmail.com',0,1,'2020-02-03 04:45:40.037132','Oyinkansola');

INSERT INTO auth_user VALUES(6,'pbkdf2_sha256$180000$IVvcA4g81214$CA1VYOp3ik4MXAdwDiEFYLczO/AdatHqNoJyv4LrUQw=','2020-02-03 07:29:36.543594',0,'Damilolarae','Oresanwo','Damilolarae777@gmail.com',0,1,'2020-02-03 07:29:26.896642','Damilola');

INSERT INTO auth_user VALUES(7,'pbkdf2_sha256$180000$9cXgk4yg3IZy$hfq49THfk76chmOnML2A6QbnubHU+MHhrfoyvx6uS4c=','2020-02-03 10:10:18.313911',0,'Skycarnet','Adeoti Abodunrin','adeotiabodunrinjames@gmail.com',0,1,'2020-02-03 10:09:39.313692','James');

INSERT INTO auth_user VALUES(8,'pbkdf2_sha256$180000$KPRCEmeseCyE$1wHgbdxAflZlK3+JxNWIcsli55Bsed1zeCa3Ciq2P/k=','2020-02-03 14:07:35.957223',0,'Hephzi','Hephzibah','afolabiheplzibah123456789@gmail.com',0,1,'2020-02-03 14:07:22.772705','Afolabi');

INSERT INTO auth_user VALUES(9,'pbkdf2_sha256$180000$xcshaI69dkI0$NNTgZNvFnMDwMnXXmrkUgRKjJ/hGzZhGCHj+JLC/PSk=','2020-02-03 15:31:08.027340',0,'Giwalanre105','Olanrewaju','giwalanre105@gmail.com',0,1,'2020-02-03 15:28:43.777676','Giwa');

INSERT INTO auth_user VALUES(10,'pbkdf2_sha256$180000$njJsNoykY0Ig$x4KTR8yKSRdFKYtSpArRSW8etcmpjQDhpDU103m2zrA=',NULL,0,'BILLS','Biliameen','biliameenademola@gmail.com',0,1,'2020-02-03 16:54:47.520681','Suleiman');

INSERT INTO auth_user VALUES(11,'pbkdf2_sha256$180000$SaoTs72C1oUI$+OTo6kbkfhLfQ6OW9PbfFNiug3rlK3TABqJ06UmWawM=','2020-02-03 17:34:56.261524',0,'Qudo26','Qudus','balogunqudus10@gmail.com',0,1,'2020-02-03 17:34:02.332669','Alabi');

INSERT INTO auth_user VALUES(12,'pbkdf2_sha256$180000$9Fj9EB45qqw8$tJlUDnL64xv9VQqk7GjLpuW58Ekfk53dVHZynk/7DII=','2020-02-08 10:32:37.680999',0,'Accolade','Akolade','daramolaafeez123@gmail.com',0,1,'2020-02-03 18:54:12.241630','Oluwafemi');

INSERT INTO auth_user VALUES(13,'pbkdf2_sha256$180000$Zy0G7bdKnoAN$DEcA0n/a8MXFHV85JlD+KySH/xCM2nA8wUgmBYAFiYQ=','2020-05-09 13:56:10.864401',0,'Serrah44','Ilu','jemilatdaramola@gmail.com',0,1,'2020-02-05 18:46:03.718576','ajasin');

INSERT INTO auth_user VALUES(14,'pbkdf2_sha256$180000$uClB3wzfVkfh$CbQNIvre3mbnZ/ZJZXFGM8baqkPFf1YqaRLhRi6WXVk=','2020-02-08 10:21:13.750402',0,'Sweetch','Kayode','sweetch2001@gmail.com',0,1,'2020-02-08 10:03:49.764337','Alonge');

INSERT INTO auth_user VALUES(15,'pbkdf2_sha256$180000$rKi8XI5kT0q1$n1x5qFiTrYvW8BIPSVkM56XD57rig4aB7eWaCcMuoj0=',NULL,0,'Ayomide001','OYEWALE','Oyewaleayomide45@gmail.com',0,1,'2020-02-08 13:43:34.215972','AYOMIDE');

INSERT INTO auth_user VALUES(16,'pbkdf2_sha256$180000$swAXRhURmHv5$Q5eP7HNaTdy1oPrj/25tyoGYlpljjrJ7UHnmV8ca9Vs=','2020-02-08 14:30:41.917881',0,'Skye','Ayoola','oreayoola1@gmail.com',0,1,'2020-02-08 14:30:29.232506','Oresanya');

INSERT INTO auth_user VALUES(17,'pbkdf2_sha256$180000$oDlYLh8T0cXD$L/yy6PsjvB4DdAK55DB3L5YjtIFKYpJmM3ygmnTmMiA=','2020-02-09 17:36:06.594755',0,'Adediran','Shittu','shittuadediran@gmail.com',0,1,'2020-02-09 17:32:33.938677','Ayinla');

INSERT INTO auth_user VALUES(18,'pbkdf2_sha256$180000$6rWf43ORUK9Q$e2wL3GJAp4hNrdtjAHtrdE/VbNAJOBMh54j9TgcIhwY=','2020-02-09 18:25:07.164538',0,'Bonah','Olanrewaju','olanrewajuhajarat2@gmail.com',0,1,'2020-02-09 18:24:55.238088','Hajarat');

INSERT INTO auth_user VALUES(19,'pbkdf2_sha256$180000$qOxCa0JaunDw$SWF8xCPWWXcSRnk5mVrZotW+caSP0ZDbxyir8Zw3Wmk=','2020-02-09 18:54:56.612848',0,'Ololadethegreat','Ololade','botboy139@gmail.com',0,1,'2020-02-09 18:49:32.681064','Olasunkanmi');

INSERT INTO auth_user VALUES(20,'pbkdf2_sha256$180000$jgTnfkA2aegv$1XNZgMoIUQScTT+QIKXGChxXV/Eu8fXTjP4WDEinyfc=','2020-02-10 20:29:58.709895',0,'Alexwayne','Titilayo','victory4jamb2019@gmail.com',0,1,'2020-02-10 20:29:46.230194','Tobi');

INSERT INTO auth_user VALUES(21,'pbkdf2_sha256$180000$qcsCVlGfE656$G6jV61FDdHiybtKtuahmHGmiGI9avqbHnMUNxVwX038=','2020-02-11 22:04:21.212180',0,'Samuel','Ishola','samuelishola2003@gmail.com',0,1,'2020-02-11 22:03:59.706542','Samuel');

INSERT INTO auth_user VALUES(22,'pbkdf2_sha256$180000$uh0mKSFzlDhw$BhH7l1fM9Q/gjy5uSiP4qFsB1LrRJFoa2xPKbfNRVnc=','2020-02-12 17:04:28.468021',0,'PECULIAR2003','PECULIAR','odeyemipeculiar@gmail.com',0,1,'2020-02-12 17:03:59.303722','ODEYEMI');

INSERT INTO auth_user VALUES(23,'pbkdf2_sha256$180000$aW09FsIOgNEx$VXKJcWHovBSB1qzmU59LsSGvPFBe/EU8baRPsJqWrF8=',NULL,0,'Tosin55','Oluwatosin','odedirantosin55@gmail.com',0,1,'2020-03-07 20:59:04.846430','Damilola');

INSERT INTO auth_user VALUES(24,'pbkdf2_sha256$180000$ghehRRfLe1RR$lL2XfJwyXguNmkzRJF2RhMSqvJ4dVchvuV5Wog/bmDk=','2020-03-07 21:19:19.563706',0,'Superbest','Superbest','oluwaseye0493@gmail.com',0,1,'2020-03-07 21:16:04.844507','Ola');

INSERT INTO auth_user VALUES(25,'pbkdf2_sha256$180000$AOAxJmdEJyER$0f4+zFJ1nZcyS5Bzlt54wZpUHCq/7U5mRL6YXHMZETE=','2020-03-07 21:16:38.645599',0,'Pepperly','Ohiorenoya','ohiorenoyaprecious@gmail.com',0,1,'2020-03-07 21:16:14.091494','Precious Ailemen');

INSERT INTO auth_user VALUES(26,'pbkdf2_sha256$180000$RUJlPWOm3K4d$IdsQIIMjDGil9WWTJJOweQOoTQH7Im0eOIad/gEH86w=','2020-03-08 05:47:31.164642',0,'Samprimce_reign','Samuel','Samuelatabo01@gmail.com',0,1,'2020-03-08 05:47:11.119557','Atabo');

INSERT INTO auth_user VALUES(27,'pbkdf2_sha256$180000$hF0CoJouvD2c$1/KEQOY65P+cr4/9KyYGMt4BCJ/OPbyYuIhEK1tRmFY=','2020-03-08 05:51:32.561388',0,'Samprince','Samuel','Samuelatabo7@gmail.com',0,1,'2020-03-08 05:51:24.822282','Atabo');

INSERT INTO auth_user VALUES(28,'pbkdf2_sha256$180000$lvZJdktRFOmf$79a/nAnk9wg+sw27i1ruqGwGvLFDXF/ZP5AdG9cXOoA=',NULL,0,'Ayomide','Adebimpe','adebimpedavid2@gmail.com',0,1,'2020-03-08 12:30:50.695225','David');

INSERT INTO auth_user VALUES(29,'pbkdf2_sha256$180000$LGa8MBkeQsgU$JoOHYO2YO3L338ZGEyWQUQNvAKMRRUQMCtsMfWKxtZE=','2020-03-08 12:35:17.746923',0,'Ayomide02','David','akinpelusam4@gmail.com',0,1,'2020-03-08 12:34:36.873907','Ayomide');

INSERT INTO auth_user VALUES(30,'pbkdf2_sha256$180000$UPduw16nYIq5$pWdL6GYbOTbYM4sz6vHHLuaiQcjclJ7HXEqcMrvOqp0=','2020-03-08 13:01:34.229522',0,'Jonneykay','Dada','johnsunday8789@gmail.com',0,1,'2020-03-08 13:01:24.444960','Kehinde');

INSERT INTO auth_user VALUES(31,'pbkdf2_sha256$180000$8FGalfX0guoV$qYUfrSt/yYzfaCSrrQRJIIWKP99pHGmN5yklvTLMHI0=',NULL,0,'Ibronibaa','Adeleke','ibronibaa@gmail.com',0,1,'2020-03-08 20:32:33.892291','Ibraheem');

INSERT INTO auth_user VALUES(32,'pbkdf2_sha256$180000$fG9xWdmsC2lz$gQAjxYqJ5X3CeqfCmL+MC8B9m/R8HrM/TfSWdpSCMUQ=','2020-03-27 08:36:36.034887',0,'Cheazi','Eazrael','eaziraelguy@gmail.com',0,1,'2020-03-09 08:02:21.315205','Chinaza');

INSERT INTO auth_user VALUES(33,'pbkdf2_sha256$180000$dLkXSoouK9Dc$K8Fg7DqogiY9CrYyqO3YRSBKpBbZy7Ip/eu0d5iKqD8=','2020-03-09 08:07:36.269165',0,'Ogunebi32','Ologunebi','ologunebibayo32@gmail.com',0,1,'2020-03-09 08:06:17.262388','Idris');

INSERT INTO auth_user VALUES(34,'pbkdf2_sha256$180000$KfOlpHjRskOE$7PNQ3gY1+ZEfAGX6aa/VWsQ71XAWTxjALzFiTQXUB7s=','2020-03-09 09:10:01.800807',0,'Olawunmi','Abdulafeez','roqeebatolawunmi@gmail.com',0,1,'2020-03-09 09:09:42.494670','Roqeebat');

INSERT INTO auth_user VALUES(35,'pbkdf2_sha256$180000$RsCJpPF8q3dG$E5FBdd/Zp9scpfmmCtC3hqdwKhRXSjJUKUgEB7P/39c=','2020-03-09 13:55:13.590475',0,'Tummy','Oyewole','oyewoletaiwotunmise9@gmail.com',0,1,'2020-03-09 13:54:53.606280','Taiwo');

INSERT INTO auth_user VALUES(36,'pbkdf2_sha256$180000$QvSYx1xpVlrJ$TG9ye4qWtf7mKn0wLdMCFgBfApy5Vv2CM1FezqPbo54=',NULL,0,'Phonytunes','Phony','rynnluu@gmail.com',0,1,'2020-03-09 14:11:20.374408','Tune');

INSERT INTO auth_user VALUES(37,'pbkdf2_sha256$180000$6NaNXbgy0n4n$fIx/Fu4Ih2I4WDyp7RwQzA4QMYHyj0UR45oLUOz2eQg=','2020-03-09 14:57:07.451594',0,'Greatmarshal','Azeez','azeezadegoke99@gmail.com',0,1,'2020-03-09 14:56:50.832330','Adegoke');

INSERT INTO auth_user VALUES(38,'pbkdf2_sha256$180000$vsNymDVJGiix$wXXqsyMXTrYOGy1fFEDI/Jn6j9H1Ix9VPmu9bY94BH4=',NULL,0,'Adeleke','Adeleke','ibronibaa@gmail.com',0,1,'2020-03-09 15:00:00.119658','Ibraheem');

INSERT INTO auth_user VALUES(39,'pbkdf2_sha256$180000$3umiObOmSQEG$g/qxohRSMT987T84D0Lnw/HPaa3o6OMZM5rfQ7eGadA=','2020-03-09 17:03:33.735273',0,'lofty226','lawal','lawaljonathan9@gmail.com',0,1,'2020-03-09 17:02:47.845209','Jonathan');

INSERT INTO auth_user VALUES(40,'pbkdf2_sha256$180000$OY4iOsDhgZA9$3t1p1CjWFaHZpzndgNaB91pvYvmXJW0yS/wzSoYmzvQ=','2020-03-09 19:28:45.834534',0,'Bobopizzy','John','johnfridaygift3@gmail.com',0,1,'2020-03-09 19:28:13.564959','Friday Gift');

INSERT INTO auth_user VALUES(41,'pbkdf2_sha256$180000$Rf7MmMeYwrdM$qjg3T4jMV0MIlXENkrOgBH0uzb49jsmcmEHD3KHgtIs=','2020-03-09 19:35:30.987425',0,'Fasoleajinde','Fasole','fasoleajinde@gmail.com',0,1,'2020-03-09 19:31:19.770642','Ajinde');

INSERT INTO auth_user VALUES(42,'pbkdf2_sha256$180000$dQIR5UO7dx2J$DLTIFsRt5RH9Ja9YZHtT0kNyhTy2/nz+49PijYoqO1g=','2020-03-09 21:09:02.797631',0,'Layade13','Layade','layadejoshua13@gmail.com',0,1,'2020-03-09 21:08:40.284945','Victor');

INSERT INTO auth_user VALUES(43,'pbkdf2_sha256$180000$SpoykLHtfCWG$bxnEwn+r7mz2FHkMmG70/DAErvXSzRcAIKuuTU4cHBA=','2020-03-09 21:30:34.457664',0,'Drewley','Amu','amucornelius@gmail.com',0,1,'2020-03-09 21:30:25.242986','Temiloluwa');

INSERT INTO auth_user VALUES(44,'pbkdf2_sha256$180000$f5wgSwjLmhu7$6ghLqKagCnKIxSV/ZfrxAntIqWXFXxJJKPQoG8QCvZM=','2020-03-10 06:55:44.181015',0,'Cherie','Akinyede','akinyedefavour.stlouis@gmail.com',0,1,'2020-03-10 06:55:19.437104','Favour');

INSERT INTO auth_user VALUES(45,'pbkdf2_sha256$180000$gGXof8fJjO9D$YfjCo7SmZXN9CzSPnbhIW2eRLrgwKuOW/5o3LOi3aQc=','2020-03-10 11:17:51.336383',0,'Wuraola03','PECULIAR','odeyemipeculiar@gmail.com',0,1,'2020-03-10 11:17:30.554326','ODEYEMI');

INSERT INTO auth_user VALUES(46,'pbkdf2_sha256$180000$NhuqIiPUjw6T$Wx2J6sK8dHovK38f+QL/OFGkazr0qV8NfOEX/0ZUgI8=','2020-03-10 11:36:40.341366',0,'Lolly','Oluwole','oluwolesuccess17@gmail.com',0,1,'2020-03-10 11:35:53.734253','Lolade');

INSERT INTO auth_user VALUES(47,'pbkdf2_sha256$180000$Efi4zINh6cOQ$juRwHbTRVykipv4X86pwEx8Hs2g6NJ5ycpNLM8STdBw=','2020-03-10 16:22:41.320280',0,'Abduljelil23','Alao','alaoabduljelil@gmail.com',0,1,'2020-03-10 16:21:10.917330','Abduljelil ayobami');

INSERT INTO auth_user VALUES(48,'pbkdf2_sha256$180000$2K6uclGU5VFG$qbtEPH5WSUEF0o/LQgh4sqy+C6Qp11q5nBRPcJQYipQ=','2020-03-10 21:53:10.395992',0,'Praise123','Akomolede','praiseakoms19@gmail.com',0,1,'2020-03-10 21:52:57.433255','Praise');

INSERT INTO auth_user VALUES(49,'pbkdf2_sha256$180000$qqOuFTHBJkU5$+jXSCNx9GKl46Tv/qMLh0VnTfdj8reup2ub4L48iZFY=','2020-03-12 16:04:40.839227',0,'Ckkyss','Silas','omoniyisilas2019@gmail.com',0,1,'2020-03-12 16:04:04.741497','Omoniyi');

INSERT INTO auth_user VALUES(50,'pbkdf2_sha256$180000$hFubIRwRvk8L$n8YX4N3aRSW7/2//fr3BHFcEXsiLkU/W/DnzO3YhfOw=','2020-03-12 17:01:26.482447',0,'HighBee','Dorcas','ibruby11@gmail.com',0,1,'2020-03-12 17:00:39.024095','Akinnibosun');

INSERT INTO auth_user VALUES(51,'pbkdf2_sha256$180000$LH9l5LHN8jRJ$SPUQW4S31fpOt7JhY0OCxr91gtPhu6vy/n0YCRo9A24=','2020-03-13 07:56:49.438278',0,'Adetunjikenny','Kenny','adetunjikehinde174@gmail.com',0,1,'2020-03-13 07:56:28.317312','Adetunji');

INSERT INTO auth_user VALUES(52,'pbkdf2_sha256$180000$oyjcKO5HHOa3$S6D3C0/I/o9Kp4N9y9AR4xGrkNCEcbaTeIrThHHGrTY=','2020-03-13 20:05:56.931924',0,'yusluv','Yusirat','Yusrohakande860@gmail.com',0,1,'2020-03-13 20:05:14.081670','Akande');

INSERT INTO auth_user VALUES(53,'pbkdf2_sha256$180000$UsGQKt56pIsH$A6TLfP+Q7f5TiNmGaY1vG4Dqsm632VawbZzDMIFHw/s=',NULL,0,'oluwagbotemisammy','Gbotemi','oluwagbotemisammy@gmail.com',0,1,'2020-03-13 21:29:39.510544','Idowu');

INSERT INTO auth_user VALUES(54,'pbkdf2_sha256$180000$r0Hqxm0DGctl$WRMtoaj4prIG1V0XrZzqYagNrZk/vdDe2tNJSGsMyJ8=',NULL,0,'Adeola12','Agbaje','rachealagbaje77@gmail.com',0,1,'2020-03-13 21:56:26.411265','Kehinde');

INSERT INTO auth_user VALUES(55,'pbkdf2_sha256$180000$LIeZibqOuLAn$PhSfgWgmN4c2gm5GVbbz/fB77SoXh3bXUxTrmJpnepo=','2020-03-13 22:49:51.468124',0,'Samkunlex8','Kabir','samkunlex8@gmail.com',0,1,'2020-03-13 22:46:20.731714','Samad');

INSERT INTO auth_user VALUES(56,'pbkdf2_sha256$180000$VtYHCcCRniy8$2vn+OTrDrLvc7tr2uQodnqLlA+QkC1g60IZMZM45W0E=','2020-03-14 05:16:07.695974',0,'Olasupodaniel11','Olasupo','olasupodaniel1999@gmail.com',0,1,'2020-03-14 05:15:53.473993','Daniel');

INSERT INTO auth_user VALUES(57,'pbkdf2_sha256$180000$fCHKKRpuuVyR$Ds+kDEwe7aHwPxwrfIeJckBjCBzwOIfnE6Q3j9RCxxw=','2020-03-14 05:23:49.318218',0,'Loveofmylife','Owoade','owoademariam2019@gmail.com',0,1,'2020-03-14 05:23:34.768941','Mariam');

INSERT INTO auth_user VALUES(58,'pbkdf2_sha256$180000$TyDpTH3sE25t$Q/J7Acyjge5aqO8j3NAr8X9YXPIYj26UYF7vLAELYc4=',NULL,0,'Captain','Adeleke','ibronibaa@gmail.com',0,1,'2020-03-14 08:25:51.939952','Ibraheem');

INSERT INTO auth_user VALUES(59,'pbkdf2_sha256$180000$DT92KtIV6jEq$Walv5GvW3MLDHub/ZQ5JL30sh3ewlXyt04TtEAQ9Isk=','2020-03-14 10:08:59.084654',0,'PrinceAji01','Isaiah','isaiahcoladeo@gmail.com',0,1,'2020-03-14 10:08:43.738704','Kolade');

INSERT INTO auth_user VALUES(60,'pbkdf2_sha256$180000$pv6EpaVdgv54$+cKBZ/2wWe8ay5C78A3CqbfSDrLGC93GJyf7b5yG69w=','2020-03-25 08:35:21.892648',0,'adekaja','ade','adekaja@gmail.com',0,1,'2020-03-25 08:35:12.029367','kaja');

INSERT INTO auth_user VALUES(61,'pbkdf2_sha256$180000$1ok3Rg7qMiqo$VzqNC2afphqF/xrBcqIX0wU6cDxuEqJEgYylpRS+Rug=','2020-04-07 11:41:46.091243',0,'Silas','Silas','omoniyisilas2019@gmail.com',0,1,'2020-04-07 11:41:37.731684','Omoniyi');

INSERT INTO auth_user VALUES(62,'pbkdf2_sha256$180000$rtzjwngx03Bp$Q7uE5e2179+4+J15Kisyte1xXZx1uJHJkhaONkSUFKU=','2020-05-30 12:32:20.811769',1,'darphiz','','daramolaafeez123@gmail.com',1,1,'2020-04-22 14:12:39.677303','');

INSERT INTO auth_user VALUES(63,'pbkdf2_sha256$180000$vBY9DPXbMNhj$V/iXRIcDAGIKUF7GSr20bzXGjR2uFJD18Z4okRhAY74=','2020-05-03 15:58:57.059171',0,'test','testing','daramolaafeez1234@gmail.com',0,1,'2020-04-22 14:43:03.551080','test');

INSERT INTO auth_user VALUES(64,'pbkdf2_sha256$180000$V2PdwOPRkEL3$DYiks5ANopykiDzYcQLv4gVoyX22kKbAKq0l5OLvcEw=','2020-05-12 09:33:26.579581',0,'bology','Daramola','daramolaafeez123@gmail.com',0,1,'2020-05-12 08:20:05.528373','Afeez');

INSERT INTO auth_user VALUES(65,'pbkdf2_sha256$180000$dcxiRq7Q9ihl$FYUP8SDrG98WC4z9pDexeDYfNZ0dfQ8LjR80dm3pgJE=','2020-05-12 08:27:33.650047',0,'others','Daramola','daramolaafeez123@gmail.com',0,1,'2020-05-12 08:27:24.892056','Afeez');

INSERT INTO auth_user VALUES(66,'pbkdf2_sha256$180000$C0rRIK6CVl3X$ii9n7hZ2gubOGhLjfSvTbS0QGpWh6GFOAc2oQCWlsz4=','2020-05-30 12:11:05.090891',0,'engineering','Daramola','daramolaafeez123@gmail.com',0,1,'2020-05-12 08:28:26.708059','dnawldnlk');

INSERT INTO auth_user VALUES(67,'pbkdf2_sha256$180000$ESP3D3W5RyyO$eqKayfEiH/g1HwdxywmE+Cx6gGVIcFlI3UWYr91L+q0=','2020-05-14 23:45:32.578379',0,'education','yudjbd','jemilatdaramola@gmail.com',0,1,'2020-05-12 08:30:59.391074','Afeez');


DROP TABLE IF EXISTS auth_group;
CREATE TABLE IF NOT EXISTS `auth_group` (`id` integer NOT NULL PRIMARY KEY , `name` varchar(150) NOT NULL UNIQUE);

DROP TABLE IF EXISTS blog_comment;
CREATE TABLE IF NOT EXISTS `blog_comment` (`id` integer NOT NULL PRIMARY KEY , `name` varchar(80) NOT NULL, `email` varchar(254) NOT NULL, `body` text NOT NULL, `created` datetime NOT NULL, `updated` datetime NOT NULL, `active` bool NOT NULL, `post_id` integer NOT NULL REFERENCES `blog_post` (`id`) );

INSERT INTO blog_comment VALUES(2,'Oresanya Ayoola Gabriel','oreayoola1@gmail.com','More blessings man i love this','2020-02-08 14:24:44.315866','2020-02-08 14:24:44.315910',1,7);

INSERT INTO blog_comment VALUES(3,'darphiz','daramolaafeez123@gmail.com','hmm,its higher now','2020-05-12 07:51:07.518714','2020-05-12 07:51:07.518714',1,10);

DROP TABLE IF EXISTS cbt_category;
CREATE TABLE IF NOT EXISTS `cbt_category` (`id` integer NOT NULL PRIMARY KEY , `category` varchar(250) NULL UNIQUE);

INSERT INTO cbt_category VALUES(1,'CHM_101');

INSERT INTO cbt_category VALUES(2,'PHY_101');

INSERT INTO cbt_category VALUES(3,'GST_101');

INSERT INTO cbt_category VALUES(4,'GST_103');

INSERT INTO cbt_category VALUES(5,'GST_105');

INSERT INTO cbt_category VALUES(6,'MTH_101');

INSERT INTO cbt_category VALUES(7,'MTH_103');

INSERT INTO cbt_category VALUES(8,'PHY_103');

INSERT INTO cbt_category VALUES(9,'BIO_101');

DROP TABLE IF EXISTS cbt_csvupload;
CREATE TABLE IF NOT EXISTS `cbt_csvupload` (`id` integer NOT NULL PRIMARY KEY , `title` varchar(100) NOT NULL, `file` varchar(100) NOT NULL, `completed` bool NOT NULL, `user_id` integer NOT NULL REFERENCES `auth_user` (`id`) );

DROP TABLE IF EXISTS cbt_progress;
CREATE TABLE IF NOT EXISTS `cbt_progress` (`id` integer NOT NULL PRIMARY KEY , `score` varchar(1024) NOT NULL, `correct_answer` varchar(10) NOT NULL, `wrong_answer` varchar(10) NOT NULL, `user_id` integer NOT NULL UNIQUE REFERENCES `auth_user` (`id`) );

INSERT INTO cbt_progress VALUES(2,'CHM_101,3,13,PHY_101,0,0,GST_101,3,6,GST_103,0,0,GST_105,0,0,MTH_101,0,0,MTH_103,0,0,PHY_103,0,0,BIO_101,3,12,','','',2);

INSERT INTO cbt_progress VALUES(3,'CHM_101,1,5,','','',5);

INSERT INTO cbt_progress VALUES(4,'CHM_101,0,0,PHY_101,0,0,GST_101,0,0,','','',6);

INSERT INTO cbt_progress VALUES(5,'CHM_101,4,10,','','',9);

INSERT INTO cbt_progress VALUES(6,'CHM_101,0,0,PHY_101,0,0,GST_101,0,0,','','',12);

INSERT INTO cbt_progress VALUES(7,'CHM_101,2,3,PHY_101,0,0,GST_101,0,0,GST_103,0,0,GST_105,0,0,MTH_101,0,0,MTH_103,0,0,PHY_103,0,0,','','',16);

INSERT INTO cbt_progress VALUES(8,'CHM_101,31,40,PHY_101,0,0,GST_101,0,0,GST_103,0,0,GST_105,0,0,MTH_101,0,0,MTH_103,0,0,PHY_103,0,0,','','',17);

INSERT INTO cbt_progress VALUES(9,'CHM_101,4,10,','','',19);

INSERT INTO cbt_progress VALUES(10,'CHM_101,0,0,PHY_101,0,0,GST_101,0,0,GST_103,0,0,GST_105,0,0,MTH_101,0,0,MTH_103,0,0,PHY_103,0,0,BIO_101,0,0,','','',14);

INSERT INTO cbt_progress VALUES(11,'CHM_101,1,2,','','',25);

INSERT INTO cbt_progress VALUES(12,'CHM_101,0,0,PHY_101,0,0,GST_101,0,0,GST_103,0,0,GST_105,0,0,MTH_101,0,0,MTH_103,0,0,PHY_103,0,0,BIO_101,0,0,','','',26);

INSERT INTO cbt_progress VALUES(13,'CHM_101,0,0,PHY_101,0,0,GST_101,0,0,GST_103,0,0,GST_105,0,0,MTH_101,0,0,MTH_103,0,0,PHY_103,0,0,BIO_101,0,0,','','',27);

INSERT INTO cbt_progress VALUES(14,'CHM_101,0,0,PHY_101,0,0,GST_101,0,0,GST_103,0,0,GST_105,0,0,MTH_101,0,0,MTH_103,0,0,PHY_103,0,0,BIO_101,0,0,','','',29);

INSERT INTO cbt_progress VALUES(15,'CHM_101,3,10,','','',30);

INSERT INTO cbt_progress VALUES(16,'GST_101,2,10,','','',34);

INSERT INTO cbt_progress VALUES(17,'CHM_101,11,20,PHY_101,0,0,GST_101,19,30,GST_103,0,0,GST_105,0,0,MTH_101,0,0,MTH_103,0,0,PHY_103,0,0,BIO_101,57,77,','','',32);

INSERT INTO cbt_progress VALUES(18,'BIO_101,39,60,CHM_101,0,1,PHY_101,0,0,GST_101,0,0,GST_103,0,0,GST_105,0,0,MTH_101,0,0,MTH_103,0,0,PHY_103,0,0,','','',35);

INSERT INTO cbt_progress VALUES(19,'BIO_101,2,4,','','',37);

INSERT INTO cbt_progress VALUES(20,'CHM_101,27,40,PHY_101,0,0,GST_101,0,0,GST_103,0,0,GST_105,0,0,MTH_101,0,0,MTH_103,0,0,PHY_103,0,0,BIO_101,0,0,','','',39);

INSERT INTO cbt_progress VALUES(21,'BIO_101,8,20,GST_101,7,10,','','',42);

INSERT INTO cbt_progress VALUES(22,'BIO_101,2,5,CHM_101,1,2,','','',43);

INSERT INTO cbt_progress VALUES(23,'GST_101,0,1,','','',44);

INSERT INTO cbt_progress VALUES(24,'CHM_101,5,10,','','',47);

INSERT INTO cbt_progress VALUES(25,'GST_101,17,30,CHM_101,0,1,','','',49);

INSERT INTO cbt_progress VALUES(26,'GST_101,29,70,CHM_101,0,0,PHY_101,0,0,GST_103,0,0,GST_105,0,0,MTH_101,0,0,MTH_103,0,0,PHY_103,0,0,BIO_101,0,0,','','',55);

INSERT INTO cbt_progress VALUES(27,'CHM_101,47,60,PHY_101,0,0,GST_101,28,40,GST_103,0,0,GST_105,0,0,MTH_101,0,0,MTH_103,0,0,PHY_103,0,0,BIO_101,0,0,','','',56);

INSERT INTO cbt_progress VALUES(28,'CHM_101,7,10,BIO_101,8,10,GST_101,5,10,','','',57);

INSERT INTO cbt_progress VALUES(29,'BIO_101,5,11,','','',59);

INSERT INTO cbt_progress VALUES(30,'CHM_101,19,30,PHY_101,0,0,GST_101,13,20,GST_103,0,0,GST_105,0,0,MTH_101,0,0,MTH_103,0,0,PHY_103,0,0,BIO_101,0,0,','','',61);

INSERT INTO cbt_progress VALUES(31,'CHM_101,112,435,PHY_101,0,0,GST_101,0,1,GST_103,0,0,GST_105,0,0,MTH_101,0,0,MTH_103,0,0,PHY_103,0,0,BIO_101,4,10,','','',62);

INSERT INTO cbt_progress VALUES(32,'CHM_101,6,32,BIO_101,2,11,PHY_101,0,0,GST_101,0,0,GST_103,0,0,GST_105,0,0,MTH_101,0,0,MTH_103,0,0,PHY_103,0,0,','','',63);

INSERT INTO cbt_progress VALUES(33,'CHM_101,0,0,PHY_101,0,0,GST_101,0,0,GST_103,0,0,GST_105,0,0,MTH_101,0,0,MTH_103,0,0,PHY_103,0,0,BIO_101,6,20,','','',67);

INSERT INTO cbt_progress VALUES(34,'CHM_101,2,4,PHY_101,7,25,GST_101,6,13,GST_103,0,0,GST_105,0,0,MTH_101,0,0,MTH_103,0,0,PHY_103,0,0,BIO_101,0,0,','','',66);

INSERT INTO cbt_progress VALUES(35,'CHM_101,0,0,PHY_101,0,0,GST_101,0,0,GST_103,0,0,GST_105,0,0,MTH_101,0,0,MTH_103,0,0,PHY_103,0,0,BIO_101,0,0,','','',68);

DROP TABLE IF EXISTS cbt_sitting;
CREATE TABLE IF NOT EXISTS `cbt_sitting` (`id` integer NOT NULL PRIMARY KEY , `question_order` varchar(1024) NOT NULL, `question_list` varchar(1024) NOT NULL, `incorrect_questions` varchar(1024) NOT NULL, `current_score` integer NOT NULL, `complete` bool NOT NULL, `user_answers` text NOT NULL, `start` datetime NOT NULL, `end` datetime NULL, `quiz_id` integer NOT NULL REFERENCES `cbt_quiz` (`id`) , `user_id` integer NOT NULL REFERENCES `auth_user` (`id`) );

INSERT INTO cbt_sitting VALUES(6,'10,15,8,16,5,11,17,2,13,4,','11,17,2,13,4,','10,,15,,8,,16,',1,0,'{\'10\': \'37\', \'15\': \'58\', \'8\': \'31\', \'16\': \'61\', \'5\': \'20\'}','2020-02-03 04:46:34.168541',NULL,1,5);

INSERT INTO cbt_sitting VALUES(8,'4,13,10,8,5,9,14,7,17,6,','8,5,9,14,7,17,6,','10,',2,0,'{\'4\': \'15\', \'13\': \'50\', \'10\': \'39\'}','2020-02-08 14:31:09.760863',NULL,1,16);

INSERT INTO cbt_sitting VALUES(15,'2,5,6,13,1,17,14,11,12,4,','2,5,6,13,1,17,14,11,12,4,','',0,0,'{}','2020-02-10 13:07:00.656174',NULL,1,14);

INSERT INTO cbt_sitting VALUES(16,'41,28,26,33,38,24,34,22,21,30,','26,33,38,24,34,22,21,30,','41,,28,',0,0,'{\'41\': \'164\', \'28\': \'112\'}','2020-03-07 20:29:46.294234',NULL,9,2);

INSERT INTO cbt_sitting VALUES(17,'7,14,5,9,1,3,10,6,8,13,','5,9,1,3,10,6,8,13,','14,',1,0,'{\'7\': \'27\', \'14\': \'54\'}','2020-03-07 21:17:20.666118',NULL,1,25);

INSERT INTO cbt_sitting VALUES(18,'8,9,6,11,1,10,14,12,16,13,','8,9,6,11,1,10,14,12,16,13,','',0,0,'{}','2020-03-08 05:48:26.965564',NULL,1,26);

INSERT INTO cbt_sitting VALUES(20,'52,54,63,53,56,55,45,43,50,62,','45,43,50,62,','52,,53,,56,',3,0,'{\'52\': \'206\', \'54\': \'213\', \'63\': \'252\', \'53\': \'210\', \'56\': \'224\', \'55\': \'218\'}','2020-03-08 21:11:50.498168',NULL,3,2);

INSERT INTO cbt_sitting VALUES(30,'16,2,9,15,17,11,6,10,3,12,','2,9,15,17,11,6,10,3,12,','16,',0,0,'{\'16\': \'64\'}','2020-03-09 14:27:04.657943',NULL,1,35);

INSERT INTO cbt_sitting VALUES(31,'32,22,36,33,38,20,37,30,42,25,','38,20,37,30,42,25,','32,,22,',2,0,'{\'32\': \'128\', \'22\': \'85\', \'36\': \'144\', \'33\': \'130\'}','2020-03-09 14:59:40.078787',NULL,9,37);

INSERT INTO cbt_sitting VALUES(38,'13,3,15,16,12,2,17,8,7,5,','13,3,15,16,12,2,17,8,7,5,','',0,0,'{}','2020-03-09 19:37:32.129866',NULL,1,41);

INSERT INTO cbt_sitting VALUES(41,'28,27,41,20,32,36,26,34,38,37,','36,26,34,38,37,','28,,41,,32,',2,0,'{\'28\': \'109\', \'27\': \'108\', \'41\': \'162\', \'20\': \'79\', \'32\': \'125\'}','2020-03-09 21:31:23.490909',NULL,9,43);

INSERT INTO cbt_sitting VALUES(42,'11,9,3,10,2,17,1,4,8,6,','3,10,2,17,1,4,8,6,','11,',1,0,'{\'11\': \'42\', \'9\': \'35\'}','2020-03-09 21:33:27.960212',NULL,1,43);

INSERT INTO cbt_sitting VALUES(49,'48,46,61,52,58,65,45,50,47,49,','46,61,52,58,65,45,50,47,49,','48,',0,0,'{\'48\': \'189\'}','2020-03-10 06:56:24.714474',NULL,3,44);

INSERT INTO cbt_sitting VALUES(50,'15,17,4,13,8,1,3,14,2,10,','15,17,4,13,8,1,3,14,2,10,','',0,0,'{}','2020-03-10 11:41:19.567948',NULL,1,46);

INSERT INTO cbt_sitting VALUES(55,'2,16,11,8,13,15,12,5,4,3,','16,11,8,13,15,12,5,4,3,','2,',0,0,'{\'2\': \'5\'}','2020-03-12 16:12:45.964680',NULL,1,49);

INSERT INTO cbt_sitting VALUES(68,'42,38,21,25,19,22,30,36,34,23,','38,21,25,19,22,30,36,34,23,','',1,0,'{\'42\': \'165\'}','2020-03-14 11:43:32.168345',NULL,9,59);

INSERT INTO cbt_sitting VALUES(81,'37,36,21,25,28,27,29,39,34,40,','39,34,40,','36,,25,,28,',4,0,'{\'37\': \'145\', \'36\': \'142\', \'21\': \'84\', \'25\': \'98\', \'28\': \'109\', \'27\': \'108\', \'29\': \'114\'}','2020-03-27 08:37:53.344147',NULL,9,32);

INSERT INTO cbt_sitting VALUES(87,'4,17,7,6,15,2,16,14,9,8,','6,15,2,16,14,9,8,','4,,7,',1,0,'{\'4\': \'14\', \'17\': \'68\', \'7\': \'25\'}','2020-04-19 14:53:37.678928',NULL,1,2);

INSERT INTO cbt_sitting VALUES(88,'15,9,1,11,17,8,3,6,16,14,','11,17,8,3,6,16,14,','15,,1,',1,1,'{\'15\': \'57\', \'9\': \'35\', \'1\': \'4\'}','2020-04-22 14:37:12.709731','2020-04-23 22:04:55.023041',1,62);

INSERT INTO cbt_sitting VALUES(89,'8,6,14,16,7,12,5,1,15,2,','5,1,15,2,','8,,6,,14,,12,',2,1,'{\'8\': \'32\', \'6\': \'24\', \'14\': \'56\', \'16\': \'63\', \'7\': \'27\', \'12\': \'46\'}','2020-04-22 14:43:21.939605','2020-04-22 15:17:07.201637',1,63);

INSERT INTO cbt_sitting VALUES(90,'6,1,5,2,16,10,11,13,7,4,','1,5,2,16,10,11,13,7,4,','6,',0,1,'{\'6\': \'24\'}','2020-04-22 15:25:39.025082','2020-04-22 15:31:01.298513',1,63);

INSERT INTO cbt_sitting VALUES(91,'13,2,16,14,10,7,4,15,9,6,','14,10,7,4,15,9,6,','13,,2,',1,1,'{\'13\': \'49\', \'2\': \'7\', \'16\': \'63\'}','2020-04-22 15:33:44.816804','2020-04-22 15:39:47.003511',1,63);

INSERT INTO cbt_sitting VALUES(92,'27,38,24,20,22,26,29,31,19,39,','38,24,20,22,26,29,31,19,39,','27,',0,1,'{\'27\': \'105\'}','2020-04-22 15:40:35.398803','2020-04-22 15:40:41.601175',9,63);

INSERT INTO cbt_sitting VALUES(93,'29,22,21,20,34,27,32,19,42,38,','29,22,21,20,34,27,32,19,42,38,','',0,1,'{}','2020-04-22 17:35:13.787193','2020-04-22 17:35:13.955468',9,63);

INSERT INTO cbt_sitting VALUES(95,'2,7,12,13,8,11,5,1,3,6,','7,12,13,8,11,5,1,3,6,','2,',0,1,'{\'2\': \'7\'}','2020-04-22 17:44:50.581321','2020-04-22 17:44:59.149142',10,62);

INSERT INTO cbt_sitting VALUES(102,'11,17,16,12,1,8,3,2,14,9,','17,16,12,1,8,3,2,14,9,','11,',0,1,'{\'11\': \'42\'}','2020-04-23 22:05:05.339457','2020-04-23 22:39:52.721871',1,62);

INSERT INTO cbt_sitting VALUES(103,'1,10,4,9,13,8,7,2,11,3,','10,4,9,13,8,7,2,11,3,','1,',0,1,'{\'1\': \'2\'}','2020-04-23 22:06:29.211943','2020-04-23 22:19:16.718050',10,62);

INSERT INTO cbt_sitting VALUES(104,'2,13,6,7,10,1,3,8,14,9,','6,7,10,1,3,8,14,9,','2,',1,1,'{\'2\': \'7\', \'13\': \'50\'}','2020-04-23 22:19:30.151630','2020-04-23 22:36:25.244499',10,62);

INSERT INTO cbt_sitting VALUES(105,'6,2,10,13,9,4,8,1,17,7,','4,8,1,17,7,','6,,2,,10,,13,,9,',0,1,'{\'6\': \'22\', \'2\': \'7\', \'10\': \'39\', \'13\': \'49\', \'9\': \'34\'}','2020-04-23 22:36:53.618259','2020-04-23 22:37:54.656009',10,62);

INSERT INTO cbt_sitting VALUES(106,'6,13,4,7,10,2,5,12,3,17,','6,13,4,7,10,2,5,12,3,17,','',0,1,'{}','2020-04-23 22:38:09.561073','2020-04-23 22:39:10.231225',10,62);

INSERT INTO cbt_sitting VALUES(107,'9,12,10,5,7,4,17,14,2,13,','9,12,10,5,7,4,17,14,2,13,','',0,1,'{}','2020-04-23 22:39:18.834319','2020-04-23 22:39:19.008604',10,62);

INSERT INTO cbt_sitting VALUES(108,'16,5,9,17,8,6,13,4,2,12,','16,5,9,17,8,6,13,4,2,12,','',0,1,'{}','2020-04-23 22:57:17.203741','2020-04-23 23:05:16.002455',1,62);

INSERT INTO cbt_sitting VALUES(109,'2,13,7,16,9,4,10,1,15,6,','2,13,7,16,9,4,10,1,15,6,','',0,1,'{}','2020-04-23 23:05:27.571268','2020-04-23 23:06:31.132412',1,62);

INSERT INTO cbt_sitting VALUES(110,'3,6,10,8,7,2,14,9,17,11,','3,6,10,8,7,2,14,9,17,11,','',0,1,'{}','2020-04-23 23:06:43.559301','2020-04-23 23:07:44.161569',10,62);

INSERT INTO cbt_sitting VALUES(112,'13,5,3,8,7,11,12,1,17,10,','13,5,3,8,7,11,12,1,17,10,','',0,1,'{}','2020-04-23 23:14:04.929421','2020-04-23 23:44:05.631064',10,62);

INSERT INTO cbt_sitting VALUES(113,'8,5,10,13,9,11,4,7,12,1,','8,5,10,13,9,11,4,7,12,1,','',0,1,'{}','2020-04-23 23:45:08.146515','2020-04-23 23:45:08.260703',10,62);

INSERT INTO cbt_sitting VALUES(114,'1,13,11,6,17,3,4,9,5,8,','1,13,11,6,17,3,4,9,5,8,','',0,1,'{}','2020-04-23 23:45:11.279122','2020-04-23 23:45:11.415846',10,62);

INSERT INTO cbt_sitting VALUES(115,'7,13,1,4,6,14,17,5,11,9,','7,13,1,4,6,14,17,5,11,9,','',0,1,'{}','2020-04-23 23:46:18.016630','2020-04-23 23:46:18.159364',10,62);

INSERT INTO cbt_sitting VALUES(116,'9,8,10,17,6,2,11,1,14,12,','9,8,10,17,6,2,11,1,14,12,','',0,1,'{}','2020-04-23 23:46:45.329672','2020-04-23 23:46:45.490935',10,62);

INSERT INTO cbt_sitting VALUES(117,'1,5,3,17,4,2,8,12,13,9,','1,5,3,17,4,2,8,12,13,9,','',0,1,'{}','2020-04-23 23:49:59.048792','2020-04-23 23:49:59.186519',10,62);

INSERT INTO cbt_sitting VALUES(118,'12,11,4,9,8,14,6,13,17,1,','12,11,4,9,8,14,6,13,17,1,','',0,1,'{}','2020-04-23 23:59:08.569638','2020-04-23 23:59:08.704858',10,62);

INSERT INTO cbt_sitting VALUES(119,'11,3,7,6,10,12,13,14,5,9,','11,3,7,6,10,12,13,14,5,9,','',0,1,'{}','2020-04-23 23:59:56.147663','2020-04-23 23:59:56.325332',10,62);

INSERT INTO cbt_sitting VALUES(120,'13,3,7,11,10,5,17,9,14,8,','13,3,7,11,10,5,17,9,14,8,','',0,1,'{}','2020-04-24 00:06:53.328213','2020-04-24 00:06:53.478458',10,62);

INSERT INTO cbt_sitting VALUES(122,'4,3,11,17,13,6,10,14,5,1,','3,11,17,13,6,10,14,5,1,','',1,1,'{\'4\': \'15\'}','2020-04-24 00:20:53.222145','2020-04-24 00:21:04.025323',10,62);

INSERT INTO cbt_sitting VALUES(126,'12,14,17,6,9,8,10,13,5,1,','17,6,9,8,10,13,5,1,','12,',1,1,'{\'12\': \'47\', \'14\': \'53\'}','2020-04-24 10:42:10.141437','2020-04-24 10:42:23.880072',10,62);

INSERT INTO cbt_sitting VALUES(127,'12,1,14,10,5,17,7,6,11,9,','1,14,10,5,17,7,6,11,9,','12,',0,1,'{\'12\': \'47\'}','2020-04-24 10:46:32.160159','2020-04-24 10:46:41.229224',10,62);

INSERT INTO cbt_sitting VALUES(128,'11,10,5,1,2,6,7,8,4,14,','11,10,5,1,2,6,7,8,4,14,','',0,1,'{}','2020-04-24 10:54:11.543535','2020-04-24 10:54:11.700291',10,62);

INSERT INTO cbt_sitting VALUES(129,'9,4,1,6,7,10,12,14,2,5,','1,6,7,10,12,14,2,5,','9,,4,',0,1,'{\'9\': \'36\', \'4\': \'14\'}','2020-04-24 10:54:18.758638','2020-04-24 10:54:34.853388',10,62);

INSERT INTO cbt_sitting VALUES(130,'12,11,6,1,3,7,2,4,5,14,','12,11,6,1,3,7,2,4,5,14,','',0,1,'{}','2020-04-24 10:57:29.415136','2020-04-24 10:57:29.829311',10,62);

INSERT INTO cbt_sitting VALUES(131,'8,9,7,6,10,1,14,11,5,4,','7,6,10,1,14,11,5,4,','8,,9,',0,1,'{\'8\': \'29\', \'9\': \'33\'}','2020-04-24 10:57:40.578702','2020-04-24 10:57:53.735285',10,62);

INSERT INTO cbt_sitting VALUES(132,'5,17,11,6,2,4,9,14,1,3,','5,17,11,6,2,4,9,14,1,3,','',0,1,'{}','2020-04-24 11:13:06.550212','2020-04-24 11:13:06.716983',10,62);

INSERT INTO cbt_sitting VALUES(133,'8,11,6,2,12,14,13,7,4,1,','8,11,6,2,12,14,13,7,4,1,','',0,1,'{}','2020-04-24 11:13:53.491304','2020-04-24 11:13:53.658078',10,62);

INSERT INTO cbt_sitting VALUES(134,'14,9,17,3,11,5,2,7,1,8,','14,9,17,3,11,5,2,7,1,8,','',0,1,'{}','2020-04-24 11:14:12.150444','2020-04-24 11:14:12.384826',10,62);

INSERT INTO cbt_sitting VALUES(135,'2,13,9,8,5,4,3,10,11,12,','2,13,9,8,5,4,3,10,11,12,','',0,1,'{}','2020-04-24 11:16:04.749725','2020-04-24 11:16:05.136355',10,62);

INSERT INTO cbt_sitting VALUES(136,'1,3,5,4,7,14,2,6,10,12,','1,3,5,4,7,14,2,6,10,12,','',0,1,'{}','2020-04-24 11:19:36.057909','2020-04-24 11:19:36.685432',10,62);

INSERT INTO cbt_sitting VALUES(137,'4,6,1,7,3,14,17,10,12,13,','4,6,1,7,3,14,17,10,12,13,','',0,1,'{}','2020-04-24 11:20:08.601006','2020-04-24 11:20:08.783804',10,62);

INSERT INTO cbt_sitting VALUES(138,'1,17,11,3,5,12,8,13,4,2,','1,17,11,3,5,12,8,13,4,2,','',0,1,'{}','2020-04-24 11:23:01.141687','2020-04-24 11:23:01.423146',10,62);

INSERT INTO cbt_sitting VALUES(139,'9,17,14,13,12,4,10,2,8,6,','9,17,14,13,12,4,10,2,8,6,','',0,1,'{}','2020-04-24 11:27:21.860962','2020-04-24 11:27:22.063794',10,62);

INSERT INTO cbt_sitting VALUES(140,'12,9,14,4,13,1,10,5,17,11,','12,9,14,4,13,1,10,5,17,11,','',0,1,'{}','2020-04-24 11:29:42.871145','2020-04-24 11:29:43.032410',10,62);

INSERT INTO cbt_sitting VALUES(141,'4,3,13,5,9,2,10,7,6,17,','4,3,13,5,9,2,10,7,6,17,','',0,1,'{}','2020-04-24 11:31:11.907639','2020-04-24 11:31:12.623307',10,62);

INSERT INTO cbt_sitting VALUES(142,'10,13,8,6,2,4,1,14,12,11,','10,13,8,6,2,4,1,14,12,11,','',0,1,'{}','2020-04-24 11:48:56.080812','2020-04-24 11:48:56.723359',10,62);

INSERT INTO cbt_sitting VALUES(143,'13,5,3,1,7,4,9,2,10,17,','13,5,3,1,7,4,9,2,10,17,','',0,1,'{}','2020-04-24 11:49:28.401253','2020-04-24 11:49:28.592064',10,62);

INSERT INTO cbt_sitting VALUES(144,'6,3,7,10,5,2,11,12,9,17,','6,3,7,10,5,2,11,12,9,17,','',0,1,'{}','2020-04-24 11:57:49.287041','2020-04-24 11:57:49.641118',10,62);

INSERT INTO cbt_sitting VALUES(146,'2,14,11,9,10,6,13,1,3,5,','2,14,11,9,10,6,13,1,3,5,','',0,1,'{}','2020-04-24 12:06:57.941680','2020-04-24 12:09:42.272260',10,62);

INSERT INTO cbt_sitting VALUES(147,'9,10,3,17,16,7,11,5,4,2,','9,10,3,17,16,7,11,5,4,2,','',0,1,'{}','2020-04-24 19:26:26.152016','2020-04-24 19:26:32.011873',1,62);

INSERT INTO cbt_sitting VALUES(253,'37,25,22,24,28,38,41,19,18,40,26,20,23,32,21,27,35,36,39,31,','37,25,22,24,28,38,41,19,18,40,26,20,23,32,21,27,35,36,39,31,','',0,0,'{}','2020-05-14 23:56:38.225676',NULL,11,67);

INSERT INTO cbt_sitting VALUES(254,'11,2,10,6,12,4,3,17,5,16,7,13,9,1,14,','11,2,10,6,12,4,3,17,5,16,7,13,9,1,14,','',0,0,'{}','2020-05-14 23:56:48.555537',NULL,10,67);

INSERT INTO cbt_sitting VALUES(258,'2,3,1,6,7,10,5,17,13,15,16,8,9,4,12,','3,1,6,7,10,5,17,13,15,16,8,9,4,12,','2,',0,0,'{\'2\': \'6\'}','2020-05-17 14:37:13.623014',NULL,10,66);

INSERT INTO cbt_sitting VALUES(266,'78,69,83,79,75,74,68,84,82,73,','78,69,83,79,75,74,68,84,82,73,','',0,0,'{}','2020-05-30 12:11:41.919794',NULL,2,66);

DROP TABLE IF EXISTS cbt_question_quiz;
CREATE TABLE IF NOT EXISTS `cbt_question_quiz` (`id` integer NOT NULL PRIMARY KEY , `question_id` integer NOT NULL REFERENCES `cbt_question` (`id`) , `quiz_id` integer NOT NULL REFERENCES `cbt_quiz` (`id`) );

INSERT INTO cbt_question_quiz VALUES(1,1,1);

INSERT INTO cbt_question_quiz VALUES(2,2,1);

INSERT INTO cbt_question_quiz VALUES(3,3,1);

INSERT INTO cbt_question_quiz VALUES(4,4,1);

INSERT INTO cbt_question_quiz VALUES(5,5,1);

INSERT INTO cbt_question_quiz VALUES(6,6,1);

INSERT INTO cbt_question_quiz VALUES(7,7,1);

INSERT INTO cbt_question_quiz VALUES(8,8,1);

INSERT INTO cbt_question_quiz VALUES(9,9,1);

INSERT INTO cbt_question_quiz VALUES(10,10,1);

INSERT INTO cbt_question_quiz VALUES(11,11,1);

INSERT INTO cbt_question_quiz VALUES(12,12,1);

INSERT INTO cbt_question_quiz VALUES(13,13,1);

INSERT INTO cbt_question_quiz VALUES(14,14,1);

INSERT INTO cbt_question_quiz VALUES(15,15,1);

INSERT INTO cbt_question_quiz VALUES(16,16,1);

INSERT INTO cbt_question_quiz VALUES(17,17,1);

INSERT INTO cbt_question_quiz VALUES(18,18,9);

INSERT INTO cbt_question_quiz VALUES(19,19,9);

INSERT INTO cbt_question_quiz VALUES(20,20,9);

INSERT INTO cbt_question_quiz VALUES(21,21,9);

INSERT INTO cbt_question_quiz VALUES(22,22,9);

INSERT INTO cbt_question_quiz VALUES(23,23,9);

INSERT INTO cbt_question_quiz VALUES(24,24,9);

INSERT INTO cbt_question_quiz VALUES(25,25,9);

INSERT INTO cbt_question_quiz VALUES(26,26,9);

INSERT INTO cbt_question_quiz VALUES(27,27,9);

INSERT INTO cbt_question_quiz VALUES(28,28,9);

INSERT INTO cbt_question_quiz VALUES(29,29,9);

INSERT INTO cbt_question_quiz VALUES(30,30,9);

INSERT INTO cbt_question_quiz VALUES(31,31,9);

INSERT INTO cbt_question_quiz VALUES(32,32,9);

INSERT INTO cbt_question_quiz VALUES(33,33,9);

INSERT INTO cbt_question_quiz VALUES(34,34,9);

INSERT INTO cbt_question_quiz VALUES(35,35,9);

INSERT INTO cbt_question_quiz VALUES(36,36,9);

INSERT INTO cbt_question_quiz VALUES(37,37,9);

INSERT INTO cbt_question_quiz VALUES(38,38,9);

INSERT INTO cbt_question_quiz VALUES(39,39,9);

INSERT INTO cbt_question_quiz VALUES(40,40,9);

INSERT INTO cbt_question_quiz VALUES(41,41,9);

INSERT INTO cbt_question_quiz VALUES(42,42,9);

INSERT INTO cbt_question_quiz VALUES(43,43,3);

INSERT INTO cbt_question_quiz VALUES(44,44,3);

INSERT INTO cbt_question_quiz VALUES(45,45,3);

INSERT INTO cbt_question_quiz VALUES(46,46,3);

INSERT INTO cbt_question_quiz VALUES(47,47,3);

INSERT INTO cbt_question_quiz VALUES(48,48,3);

INSERT INTO cbt_question_quiz VALUES(49,49,3);

INSERT INTO cbt_question_quiz VALUES(50,50,3);

INSERT INTO cbt_question_quiz VALUES(51,51,3);

INSERT INTO cbt_question_quiz VALUES(52,52,3);

INSERT INTO cbt_question_quiz VALUES(53,53,3);

INSERT INTO cbt_question_quiz VALUES(54,54,3);

INSERT INTO cbt_question_quiz VALUES(55,55,3);

INSERT INTO cbt_question_quiz VALUES(56,56,3);

INSERT INTO cbt_question_quiz VALUES(57,57,3);

INSERT INTO cbt_question_quiz VALUES(58,58,3);

INSERT INTO cbt_question_quiz VALUES(59,59,3);

INSERT INTO cbt_question_quiz VALUES(60,60,3);

INSERT INTO cbt_question_quiz VALUES(61,61,3);

INSERT INTO cbt_question_quiz VALUES(62,62,3);

INSERT INTO cbt_question_quiz VALUES(63,63,3);

INSERT INTO cbt_question_quiz VALUES(64,64,3);

INSERT INTO cbt_question_quiz VALUES(65,65,3);

INSERT INTO cbt_question_quiz VALUES(66,66,3);

INSERT INTO cbt_question_quiz VALUES(67,1,10);

INSERT INTO cbt_question_quiz VALUES(68,2,10);

INSERT INTO cbt_question_quiz VALUES(69,3,10);

INSERT INTO cbt_question_quiz VALUES(70,4,10);

INSERT INTO cbt_question_quiz VALUES(71,5,10);

INSERT INTO cbt_question_quiz VALUES(72,6,10);

INSERT INTO cbt_question_quiz VALUES(73,7,10);

INSERT INTO cbt_question_quiz VALUES(74,8,10);

INSERT INTO cbt_question_quiz VALUES(75,9,10);

INSERT INTO cbt_question_quiz VALUES(76,10,10);

INSERT INTO cbt_question_quiz VALUES(77,11,10);

INSERT INTO cbt_question_quiz VALUES(78,12,10);

INSERT INTO cbt_question_quiz VALUES(79,13,10);

INSERT INTO cbt_question_quiz VALUES(80,14,10);

INSERT INTO cbt_question_quiz VALUES(81,17,10);

INSERT INTO cbt_question_quiz VALUES(82,16,10);

INSERT INTO cbt_question_quiz VALUES(83,15,10);

INSERT INTO cbt_question_quiz VALUES(84,18,11);

INSERT INTO cbt_question_quiz VALUES(85,19,11);

INSERT INTO cbt_question_quiz VALUES(86,20,11);

INSERT INTO cbt_question_quiz VALUES(87,21,11);

INSERT INTO cbt_question_quiz VALUES(88,22,11);

INSERT INTO cbt_question_quiz VALUES(89,23,11);

INSERT INTO cbt_question_quiz VALUES(90,24,11);

INSERT INTO cbt_question_quiz VALUES(91,25,11);

INSERT INTO cbt_question_quiz VALUES(92,26,11);

INSERT INTO cbt_question_quiz VALUES(93,27,11);

INSERT INTO cbt_question_quiz VALUES(94,28,11);

INSERT INTO cbt_question_quiz VALUES(95,29,11);

INSERT INTO cbt_question_quiz VALUES(96,30,11);

INSERT INTO cbt_question_quiz VALUES(97,31,11);

INSERT INTO cbt_question_quiz VALUES(98,32,11);

INSERT INTO cbt_question_quiz VALUES(99,33,11);

INSERT INTO cbt_question_quiz VALUES(100,34,11);

INSERT INTO cbt_question_quiz VALUES(101,35,11);

INSERT INTO cbt_question_quiz VALUES(102,36,11);

INSERT INTO cbt_question_quiz VALUES(103,37,11);

INSERT INTO cbt_question_quiz VALUES(104,38,11);

INSERT INTO cbt_question_quiz VALUES(105,39,11);

INSERT INTO cbt_question_quiz VALUES(106,40,11);

INSERT INTO cbt_question_quiz VALUES(107,41,11);

INSERT INTO cbt_question_quiz VALUES(108,42,11);

INSERT INTO cbt_question_quiz VALUES(109,43,12);

INSERT INTO cbt_question_quiz VALUES(110,44,12);

INSERT INTO cbt_question_quiz VALUES(111,45,12);

INSERT INTO cbt_question_quiz VALUES(112,46,12);

INSERT INTO cbt_question_quiz VALUES(113,47,12);

INSERT INTO cbt_question_quiz VALUES(114,48,12);

INSERT INTO cbt_question_quiz VALUES(115,49,12);

INSERT INTO cbt_question_quiz VALUES(116,50,12);

INSERT INTO cbt_question_quiz VALUES(117,51,12);

INSERT INTO cbt_question_quiz VALUES(118,52,12);

INSERT INTO cbt_question_quiz VALUES(119,53,12);

INSERT INTO cbt_question_quiz VALUES(120,54,12);

INSERT INTO cbt_question_quiz VALUES(121,55,12);

INSERT INTO cbt_question_quiz VALUES(122,56,12);

INSERT INTO cbt_question_quiz VALUES(123,57,12);

INSERT INTO cbt_question_quiz VALUES(124,58,12);

INSERT INTO cbt_question_quiz VALUES(125,59,12);

INSERT INTO cbt_question_quiz VALUES(126,60,12);

INSERT INTO cbt_question_quiz VALUES(127,61,12);

INSERT INTO cbt_question_quiz VALUES(128,62,12);

INSERT INTO cbt_question_quiz VALUES(129,63,12);

INSERT INTO cbt_question_quiz VALUES(130,64,12);

INSERT INTO cbt_question_quiz VALUES(131,65,12);

INSERT INTO cbt_question_quiz VALUES(132,66,12);

INSERT INTO cbt_question_quiz VALUES(133,67,3);

INSERT INTO cbt_question_quiz VALUES(134,67,12);

INSERT INTO cbt_question_quiz VALUES(135,68,2);

INSERT INTO cbt_question_quiz VALUES(136,68,13);

INSERT INTO cbt_question_quiz VALUES(137,69,2);

INSERT INTO cbt_question_quiz VALUES(138,69,13);

INSERT INTO cbt_question_quiz VALUES(139,70,2);

INSERT INTO cbt_question_quiz VALUES(140,70,13);

INSERT INTO cbt_question_quiz VALUES(141,71,2);

INSERT INTO cbt_question_quiz VALUES(142,71,13);

INSERT INTO cbt_question_quiz VALUES(143,72,2);

INSERT INTO cbt_question_quiz VALUES(144,72,13);

INSERT INTO cbt_question_quiz VALUES(145,73,2);

INSERT INTO cbt_question_quiz VALUES(146,73,13);

INSERT INTO cbt_question_quiz VALUES(147,74,2);

INSERT INTO cbt_question_quiz VALUES(148,74,13);

INSERT INTO cbt_question_quiz VALUES(149,75,2);

INSERT INTO cbt_question_quiz VALUES(150,75,13);

INSERT INTO cbt_question_quiz VALUES(151,76,2);

INSERT INTO cbt_question_quiz VALUES(152,76,13);

INSERT INTO cbt_question_quiz VALUES(153,77,2);

INSERT INTO cbt_question_quiz VALUES(154,77,13);

INSERT INTO cbt_question_quiz VALUES(155,78,2);

INSERT INTO cbt_question_quiz VALUES(156,78,13);

INSERT INTO cbt_question_quiz VALUES(157,79,2);

INSERT INTO cbt_question_quiz VALUES(158,79,13);

INSERT INTO cbt_question_quiz VALUES(159,80,2);

INSERT INTO cbt_question_quiz VALUES(160,80,13);

INSERT INTO cbt_question_quiz VALUES(161,81,2);

INSERT INTO cbt_question_quiz VALUES(162,81,13);

INSERT INTO cbt_question_quiz VALUES(163,82,2);

INSERT INTO cbt_question_quiz VALUES(164,82,13);

INSERT INTO cbt_question_quiz VALUES(165,83,2);

INSERT INTO cbt_question_quiz VALUES(166,83,13);

INSERT INTO cbt_question_quiz VALUES(167,84,2);

INSERT INTO cbt_question_quiz VALUES(168,84,13);

DROP TABLE IF EXISTS cbt_question;
CREATE TABLE IF NOT EXISTS `cbt_question` (`id` integer NOT NULL PRIMARY KEY , `figure` varchar(100) NULL, `content` varchar(1000) NOT NULL, `explanation` text NOT NULL, `category_id` integer NULL REFERENCES `cbt_category` (`id`) );

INSERT INTO cbt_question VALUES(1,'','The dissolution of calcium hydroxide is exothermic Ca(OH) <sub> 2(s)</sub> ↔ Ca <sup>2+</sup>(aq) +2OH- (aq) What happens when the solution of Ca(OH) <sub>2</sub> is heated?','Since the reaction is exothermic some of the Ca(OH)<sub>2</sub> will be lost to the surrounding in the the form of vapour  i.e Ca(OH) <sub>2</sub> → CaO(g) + H<sub>2</sub> O(g)

Thus , Ca(OH) <sub>2</sub> ; decreases when heated',1);

INSERT INTO cbt_question VALUES(2,'','The decomposition of dinitrogenpentoxide is described by the chemical equation: 	2N<sub>2</sub> O<sub>5(g)</sub>  → 4NO<sub>2(g)</sub> + O<sub> 2(g)</sub>  If the rate of appearance of NO<sub>2</sub> is equal to 0.560mol/min at a particular moment,what is the rate of appearance of O<sub>2</sub>  at that moment?','2N<sub>2</sub> O<sub>5(g)</sub>  → 4NO<sub>2(g)</sub> + O<sub> 2(g)</sub>  <br>

Rate = -1/2( d[N<sub>2</sub> O<sub>5</sub>] / dt ) = 1/4(d[NO<sub>2</sub>] /dt) = d[O<sub> 2</sub>] /dt    ; <br>

1/4(d[NO<sub>2</sub>] /dt) = 0.560mol/min <br>

(d[NO<sub>2</sub>] /dt) = 4 X 0.560  = 2.24mol/min O<sub>2</sub> <br>

Therefore ,  d[O<sub> 2</sub>] /dt = 2.24mol/min',1);

INSERT INTO cbt_question VALUES(3,'','For a reactions that follows the general rate law , Rate = k[A][B]<sup>2</sup> , what will happen to the rate of reaction if the concentration of a is increased by a factor of 3.00?, The rate will','Rate = k[A][B]<sup>2</sup> <br>

Since A is in first order , and the rate is proportional to it, the rate of reaction will be increased by the same factor.',1);

INSERT INTO cbt_question VALUES(4,'','The rate constant k, for a first-order reaction is equal to 4.2 x 10<sup> -4</sup> s<sup>-1</sup>  What is the half-life ?','For first order reaction, <br>

Half-life,  t<sub>1/2</sub> = 0.693/k <br>

Given that k= 4.2 x 10<sup>-4</sup> s<sup>-1</sup><br>

t<sub>1/2</sub> = 0.693/ 4.2 x 10<sup>-4</sup> s<sup>-1</sup> <br>

=1560sec. <br>

Therefore, t<sub>1/2</sub> = 1.7 x 10 <sup>3</sup> s',1);

INSERT INTO cbt_question VALUES(5,'','What factor affects the rate of chemical reaction?','Factor that affects the rate of chemical reaction include:<br>

(i) Right energy (i.e orientation of molecules)<br>

(ii) Rate of collision<br>

(iii) The fraction of collisions with right energy<br>',1);

INSERT INTO cbt_question VALUES(6,'','What is the minimum energy barrier that must be overcome for a chemical reaction to occur?','The minimum energy barrier that must be overcome for a chemical reaction to occur is called ACTIVATION ENERGY',1);

INSERT INTO cbt_question VALUES(7,'','Which term describes the measure of the decrease in concentration of a product per unit time ?','REACTION RATE describes the measure of the decrease in concentration of a product per unit time',1);

INSERT INTO cbt_question VALUES(8,'','The configuration of Cu<sup>2+</sup> is given as','<sup>29</sup>Cu ↔ Cu <sup>2+</sup>  <br>

Cu <sup>2+</sup> contains (29 – 2) = 27 electrons<br>

The Electronic configuration is thus ;  1S²2S²2P⁶3S²3P⁶4S²3d⁷',1);

INSERT INTO cbt_question VALUES(9,'','Which orbital is occupied by an electron described by the quantum number n=2 ,L =1','For n = 2 and L=1  electron will be occupied by 2P orbital',1);

INSERT INTO cbt_question VALUES(10,'','Which of the following quantum number determine the shape and the orientation of orbitals','PRINCIPAL QUANTUM determines or govern energy of orbital <br>

AZIMUTHAL QUANTUM governs the shape of the orbital <br>

SPIN QUANTUM governs the orientation of the orbitals <br>

MAGNETIC tell us about the degeneracy of the orbitals',1);

INSERT INTO cbt_question VALUES(11,'','What is the permitted value for Azimuthal quantum number (L) for an electron with the principal quantum number  n= 3 ?','For n = 3 <br>

L has a value of 0 to n – 1  <br>

Therefore, L= 0 <br>

L = n – 1 = 3 – 1 = 2 <br>

L = n – 2 = 3 – 2 = 1 <br>

Permitted value of L are : 0,1,2',1);

INSERT INTO cbt_question VALUES(12,'','Which of the following show the increasing order of atomic radius?','Atomic radius decrease across the period and increases down the group in the periodic table thus group VIA elements are as follows : <br>

S< Se< Te< Po',1);

INSERT INTO cbt_question VALUES(13,'','What type of bond exists in Carbon tetrachloride?','Carbon is usually characterized with covalent bond

Covalent Bond is present in CCl₄',1);

INSERT INTO cbt_question VALUES(14,'','Which one of these compounds has the highest melting point?','Melting point increases from group one to group four and decreases from group four to group eight . Group IV has the highest melting point O,S,Se, Te are in the same group ,but oxygen has the highest electronegativity. Thus, H₂O has the highest melting point',1);

INSERT INTO cbt_question VALUES(15,'','If NO₂ and NH₃ are allowed to effuse through a porous membrane under identical condition, the rate of effusion for NH₃ will be _______ times of NO₂','(Rate of effusion of NH₃ / Rate of effusion of NO₂) = √(MNO₂ /MNH₃ ) <br>

Molar mass of NH₃ = 14 + 3x1 = 17g/mol <br>

Molar mass of NO₂ = 14 + 16 x 2 = 46g/mol <br>

Therefore, R NH₃ / R NO₂ = √ (46/17) <br>

 =1.6 <br>

R<sub>NH<sub>3</sub></sub>  = R <sub>NO<sub>2</sub></sub> x 1.6 <br>

R<sub>NH<sub>3</sub></sub> will be 1.6 times that of R <sub>NO<sub>2</sub></sub>',1);

INSERT INTO cbt_question VALUES(16,'','A 75.0L steel tank at 20.0<sup>o</sup> C  contains acetylene gas C<sub>2</sub>H<sub>2</sub> at a pressure 1.20atm. Assuming ideal behavior ,how many grams of acetylene are in the tank (R = 0.082 dm<sup>3</sup> atm k<sup>-1</sup> mol <sup>-1</sup> ) ?','Given the following ; <br>

Vol. = 75.0L = 75dm<sub>3</sub><br>

T= 20<sup>o</sup>C = 293K <br>

P = 1.2 atm <br>

R= 0.082 dm<sup>3</sup> atm k<sup>-1</sup> mol <sup>-1</sup> <br>

PV = nRT (perfect gas) <br>

n = PV/RT <br>

n= 90/24.026  = 3.75 mol <br>

n = mass(g)/molar mass  <br>

Molar mass of C<sub>2</sub> H<sub>2</sub> = (12 x2) + (1 x 2) <br>

= 26g/mol <br>

Mass = n x mm <br>

=3.75mol  x 26g/mol <br>

= 97.3g',1);

INSERT INTO cbt_question VALUES(17,'','Which of the following is NOT a form of determinate error?','co-precipitation with impurities ,incomplete reaction ,impurities in the reagents used are not Determinate error.',1);

INSERT INTO cbt_question VALUES(18,'','Which of this statement best defines a cell','No explanation yet',9);

INSERT INTO cbt_question VALUES(19,'','The postulation that plants and animals are composed of repeating elements belongs to','No explantion yet',9);

INSERT INTO cbt_question VALUES(20,'','Cell theory may not be totally true because','No Explanation yet',9);

INSERT INTO cbt_question VALUES(21,'','The organism Vaucheria is best described as','No Explanation yet',9);

INSERT INTO cbt_question VALUES(22,'','In terms of respiration, one of these organelles is equivalent to mitochondria','No explanation yet',9);

INSERT INTO cbt_question VALUES(23,'','Cells In living organisms behave as which system','No explanation yet',9);

INSERT INTO cbt_question VALUES(24,'','Introduction of potassium permanganate in water is a pattern in which phenomenon','No explanation yet',9);

INSERT INTO cbt_question VALUES(25,'','What is the name of the vessels connected with the upward movement of water in xylem?','No explanation yet',9);

INSERT INTO cbt_question VALUES(26,'','Find out the organism with different cellular organization in the following','No explanation yet',9);

INSERT INTO cbt_question VALUES(27,'','Which of the following system is responsible for getting food materials to other parts of the plant?','No Explanation yet',9);

INSERT INTO cbt_question VALUES(28,'','At metaphase , the chromosomes are individually arranged at','No explanation yet',9);

INSERT INTO cbt_question VALUES(29,'','The two types of cells in the body  of living organisms are ______ and __________','No explanation yet',9);

INSERT INTO cbt_question VALUES(30,'','The cells that are formed as a result of cell division are called','No explanation yet',9);

INSERT INTO cbt_question VALUES(31,'','Hereditary materials (genes) are carried on','No explanation yet',9);

INSERT INTO cbt_question VALUES(32,'','The two arms presents in the chromatid are joined together at a constriction called','No explanation yet',9);

INSERT INTO cbt_question VALUES(33,'','Parenchymatous tissue embedded in the chloroplast is called','Parenchyma tissue with chloroplasts is called chlorenchyma.

Chlorenchyma is also found in the outer parts of the cortex in the stems

of herbaceous plants as well as in leaves',9);

INSERT INTO cbt_question VALUES(34,'','The vascular tissue which functions for the conduction of water and mineral salts upward from roots to leaves of plants is','Xylem, plant vascular tissue that conveys water and dissolved minerals from the roots to the rest of the plant and also provides physical support. Xylem tissue consists of a variety of specialized, water-conducting cells known as tracheary elements.',9);

INSERT INTO cbt_question VALUES(35,'','The tissue which appears as a secondary meristem in the dicotyledonous root but is absent in monocotyledonous root is','Cambium is secondary meristematic tissue that is found in roots and stems. When these cells divide by mitosis it results in the plant becoming wider. This is called secondary growth.',9);

INSERT INTO cbt_question VALUES(36,'','Epithelia tissue found in the small bronchi of the respiratory tract and functions either to remove dirt or mucus is known as','No explanation yet',9);

INSERT INTO cbt_question VALUES(37,'','In woody plants, gases and water vapour are transported across the stem by the','Water enters a plant through the hair on the root, and moves across the root cells into the xylem, which transports it up and around the plant.',9);

INSERT INTO cbt_question VALUES(38,'','During gametogenesis, each gamete receives','No explanation yet',9);

INSERT INTO cbt_question VALUES(39,'','In a cross between pure breeding red eyed drosophila (RR) and a white eyed drosophila (rr), the phenotypic and genotypic ratio of F2 generation will be','No explanation yet',9);

INSERT INTO cbt_question VALUES(40,'','The ribosomal RNA expresses proteins of particular type and quantities based on the message sent by the','No explanation yet',9);

INSERT INTO cbt_question VALUES(41,'','Genes controlling the same characteristics but producing different effects are','No explanation yet',9);

INSERT INTO cbt_question VALUES(42,'','In a heterozygous condition, the allele whose effect is masked phenotypically is said to be','No explanation yet',9);

INSERT INTO cbt_question VALUES(43,'','Note taking from oral discussion involves the receptive language skill of effective ______','No explanation yet',3);

INSERT INTO cbt_question VALUES(44,'','The dictionary is the word treasury of our language, the basic tool in the effective use of','No explanation yet',3);

INSERT INTO cbt_question VALUES(45,'','Listening is the ability to hear and ______','No explanation yet',3);

INSERT INTO cbt_question VALUES(46,'','Comprehension is a mental activity that is being carried out in the ______of the brains','No explanation yet',3);

INSERT INTO cbt_question VALUES(47,'','The major skills of language are','No explanation yet',3);

INSERT INTO cbt_question VALUES(48,'','One of the major reasons for listening is to identify the exact __________ and _______ uttered','No explanation yet',3);

INSERT INTO cbt_question VALUES(49,'','Listening is a ________ activity','No explanation yet',3);

INSERT INTO cbt_question VALUES(50,'','The secondary skills of language are','No explanation yet',3);

INSERT INTO cbt_question VALUES(51,'','Listening could effectively be carried out by putting the brain on ______','no explanation yet',3);

INSERT INTO cbt_question VALUES(52,'','Sensitizing is getting ready the ears to receive incoming signals is an important condition for_________','No explanation yet',3);

INSERT INTO cbt_question VALUES(53,'','________ is the ability to read, comprehend and assimilate what has been read without effort','No explanation yet',3);

INSERT INTO cbt_question VALUES(54,'','_________ is the vivid representation of the content and the structure of any piece of writing or lecture we listen to','No explanation yet',3);

INSERT INTO cbt_question VALUES(55,'','As part of the study process when we take down the major points and the important details we involve in ________________','No explanation yet',3);

INSERT INTO cbt_question VALUES(56,'','. Major points are normally noted by the use of _______ in outlining','No explanation yet',3);

INSERT INTO cbt_question VALUES(57,'','The secondary points are noted by the use of ____','No explanation yet',3);

INSERT INTO cbt_question VALUES(58,'','_________ is anything that take away a students attention from his studies','No explanation yet',3);

INSERT INTO cbt_question VALUES(59,'','Identify the correct abbreviation for the following','No explanation yet',3);

INSERT INTO cbt_question VALUES(60,'','Identify the odd sentence from the following','No explanation yet',3);

INSERT INTO cbt_question VALUES(61,'','Which of the following is wrong?','No explanation yet',3);

INSERT INTO cbt_question VALUES(62,'','Morphology, syntax, and phonology are branches of','No explanation yet',3);

INSERT INTO cbt_question VALUES(63,'','_______is concerned with formation of and internal structure of words','No explanation yet',3);

INSERT INTO cbt_question VALUES(64,'','The punctuation mark used to indicate that some materials have been omitted from a quoted passage is known as','No explanation yet',3);

INSERT INTO cbt_question VALUES(65,'','The apostrophe is used','No explanation yet',3);

INSERT INTO cbt_question VALUES(66,'','The type of reading to familiarize ourselves with a wide variety of reading materials is __________','No explanation yet',3);

INSERT INTO cbt_question VALUES(67,'','All these are regarded as aims of note taking except','No Explanation Yet',3);

INSERT INTO cbt_question VALUES(68,'','The magnitude of the acceleration of a moving object is equal to the:','No Explanation Yet',2);

INSERT INTO cbt_question VALUES(69,'','A stone is thrown from P and follows a parabolic path. The highest point reached is T. The vertical component of acceleration of the stone.','No Explanation Yet',2);

INSERT INTO cbt_question VALUES(70,'','In an experiment, the external diameter d<sub>1</sub> and the internal diameter d<sub>2</sub> of a metal tube are found to be (64 2) mm and (47 1) mm, respectively. The percentage error in (d<sub>1</sub> -d<sub>2</sub>) expected from these readings is at most:','No Explanation Yet',2);

INSERT INTO cbt_question VALUES(71,'','Force is applied to an object of mass 2kg at rest on a friction - free horizontal surface as indicated on the graph, After 1 second, the speed of the object in ms<sup>-1</sup>is?','No Explanation yet',2);

INSERT INTO cbt_question VALUES(72,'','For a simple pendulum undergoing SHM with small oscillations, which of the following correctly describes the KE of the bob and the tension of the thread supporting the bolb at zero displacement(i.e passing through the equilibrum position)?','No Explanation Yet',2);

INSERT INTO cbt_question VALUES(73,'','If a constant force of 16N acts on a body of 4kg for 2 seconds, what change in the velocity would be produced on the body?','No Explanation Yet',2);

INSERT INTO cbt_question VALUES(74,'','Find the magnitude of the resultant of two vectors of magnitude 5N and 12N respectivelyinclined at 90C to each other','No Explanation Yet',2);

INSERT INTO cbt_question VALUES(75,'','A wooden cube of side 5cm floats in water 2.0cm of its depth below the water surface and its sides are vertical. Calculate the density of the wood in gcm<sup>-3</sup> (Density of water in1gcm<sup>-3</sup>)','No Explanation Yet',2);

INSERT INTO cbt_question VALUES(76,'','A forceof 10N applied parallel to the surface of a horizontal table,is just sufficient to make a block ofmass 2kg move on the table. Calculate the coefficient of friction between the block and the table (Take g = 10ms<sup>2</sup>)','No Explanation Yet',2);

INSERT INTO cbt_question VALUES(77,'','An elastic string of length X is classifiably stretched through a length e by a force F, the area of the cross-section of the string is A and its youngs modulus is E . Which of thefollowing expression is correct?','No Explanation yet',2);

INSERT INTO cbt_question VALUES(78,'','Which of the following instruments can best measure the internal diameter of a test tube?','NO Explanation Yet',2);

INSERT INTO cbt_question VALUES(79,'','For which of the following set are fundamental units?','No Explanation Yet',2);

INSERT INTO cbt_question VALUES(80,'','A girl pulls her toy on a smooth horizontal surface with a rope inclined at 30 to the horizontal, if the tension in the rope is 10.0N. What is the effective force pulling the toy along the horizontal surface.','No Explanation Yet',2);

INSERT INTO cbt_question VALUES(81,'','A ball is thrown vertically upwards from the top of a tower with an initial velocity of 20ms<sup>-1</sup>. If the ball took a total of 6s to reach the ground, what is the height of the tower?','No Explanation Yet',2);

INSERT INTO cbt_question VALUES(82,'','The following are thermometric response except','No Explanation Yet',2);

INSERT INTO cbt_question VALUES(83,'','3.00-kg object undergoes an acceleration given by a=( 2.00 i^ + 5.00 j^ ) m/s<sup>2</sup>. Find the resultant force acting on the object','No Explanation yet',2);

INSERT INTO cbt_question VALUES(84,'','An electron of mass 9.11X10<sup>-31</sup> kg has an initial speed of 3.00X10<sup>5</sup> m/s. It travels in a straight line, and its speed increases to 7.00 X10<sup>5</sup> m/s in a distance of 5.00 cm. Assuming its acceleration is constant, determine the magnitude of the force exerted on the electron','No Explanation yet',2);

DROP TABLE IF EXISTS mcq_answer;
CREATE TABLE IF NOT EXISTS `mcq_answer` (`id` integer NOT NULL PRIMARY KEY , `content` varchar(1000) NOT NULL, `correct` bool NOT NULL, `question_id` integer NOT NULL REFERENCES `mcq_mcqquestion` (`question_ptr_id`) );

INSERT INTO mcq_answer VALUES(1,'The amount of Ca(OH)₂ (s) decreases',1,1);

INSERT INTO mcq_answer VALUES(2,'The amount of Ca(OH) ₂ (s) increases',0,1);

INSERT INTO mcq_answer VALUES(3,'The amount of Ca(OH) ₂ (s) remains unchanged',0,1);

INSERT INTO mcq_answer VALUES(4,'The Ca(OH) ₂ (s) completely dissolves',0,1);

INSERT INTO mcq_answer VALUES(5,'0.140mol/min',0,2);

INSERT INTO mcq_answer VALUES(6,'0.280mol/min',0,2);

INSERT INTO mcq_answer VALUES(7,'1.12mol/min',0,2);

INSERT INTO mcq_answer VALUES(8,'2.24mol/min',1,2);

INSERT INTO mcq_answer VALUES(9,'decrease by a factor of 1/9.00',0,3);

INSERT INTO mcq_answer VALUES(10,'decrease by a factor of 1/3.00',0,3);

INSERT INTO mcq_answer VALUES(11,'increase by a factor of 3.00',1,3);

INSERT INTO mcq_answer VALUES(12,'increase by a factor of 9.0',0,3);

INSERT INTO mcq_answer VALUES(13,'2.9 x 10 -⁴ s',0,4);

INSERT INTO mcq_answer VALUES(14,'1.2 x 10 ᵌs',0,4);

INSERT INTO mcq_answer VALUES(15,'1.7 x 10 ᵌs',1,4);

INSERT INTO mcq_answer VALUES(16,'2.4 x 10 ᵌs',0,4);

INSERT INTO mcq_answer VALUES(17,'collision frequency',0,5);

INSERT INTO mcq_answer VALUES(18,'fraction of collisions with sufficient energy',0,5);

INSERT INTO mcq_answer VALUES(19,'orientation of molecules',0,5);

INSERT INTO mcq_answer VALUES(20,'All of the above',1,5);

INSERT INTO mcq_answer VALUES(21,'activation energy',1,6);

INSERT INTO mcq_answer VALUES(22,'net energy',0,6);

INSERT INTO mcq_answer VALUES(23,'Potential Energy',0,6);

INSERT INTO mcq_answer VALUES(24,'rate limiting energy',0,6);

INSERT INTO mcq_answer VALUES(25,'reactant energy',0,7);

INSERT INTO mcq_answer VALUES(26,'Kinetics',0,7);

INSERT INTO mcq_answer VALUES(27,'reaction rate',1,7);

INSERT INTO mcq_answer VALUES(28,'reaction time',0,7);

INSERT INTO mcq_answer VALUES(29,'1S²2S²2P⁶3S²3P⁶4S²3d⁹',0,8);

INSERT INTO mcq_answer VALUES(30,'1S²2S²2P⁶3S²3P⁶4S²3d⁷',1,8);

INSERT INTO mcq_answer VALUES(31,'1S²2S²2P⁶3S²3P⁶4S²3d¹⁰',0,8);

INSERT INTO mcq_answer VALUES(32,'1S²2S²2P⁶3S²3P⁶4S²4P⁶3d³',0,8);

INSERT INTO mcq_answer VALUES(33,'1S',0,9);

INSERT INTO mcq_answer VALUES(34,'2S',0,9);

INSERT INTO mcq_answer VALUES(35,'2P',1,9);

INSERT INTO mcq_answer VALUES(36,'3S',0,9);

INSERT INTO mcq_answer VALUES(37,'Principal, Magnetic',0,10);

INSERT INTO mcq_answer VALUES(38,'Azimuthal, Spin',1,10);

INSERT INTO mcq_answer VALUES(39,'Principal, Azimuthal',0,10);

INSERT INTO mcq_answer VALUES(40,'Azimuthal, magnetic',0,10);

INSERT INTO mcq_answer VALUES(41,'2',1,11);

INSERT INTO mcq_answer VALUES(42,'4',0,11);

INSERT INTO mcq_answer VALUES(43,'3',0,11);

INSERT INTO mcq_answer VALUES(44,'5',0,11);

INSERT INTO mcq_answer VALUES(45,'S, Se, Te, Po',1,12);

INSERT INTO mcq_answer VALUES(46,'Se, Te, Po, S',0,12);

INSERT INTO mcq_answer VALUES(47,'Te, Po, S, Se',0,12);

INSERT INTO mcq_answer VALUES(48,'S, Se, Po, Te',0,12);

INSERT INTO mcq_answer VALUES(49,'Electrovalent',0,13);

INSERT INTO mcq_answer VALUES(50,'Covalent',1,13);

INSERT INTO mcq_answer VALUES(51,'Coordinate',0,13);

INSERT INTO mcq_answer VALUES(52,'Metallic',0,13);

INSERT INTO mcq_answer VALUES(53,'H₂O',1,14);

INSERT INTO mcq_answer VALUES(54,'H₂Te',0,14);

INSERT INTO mcq_answer VALUES(55,'H₂ S',0,14);

INSERT INTO mcq_answer VALUES(56,'H₂Se',0,14);

INSERT INTO mcq_answer VALUES(57,'0.37',0,15);

INSERT INTO mcq_answer VALUES(58,'0.61',0,15);

INSERT INTO mcq_answer VALUES(59,'1.6',1,15);

INSERT INTO mcq_answer VALUES(60,'2.7',0,15);

INSERT INTO mcq_answer VALUES(61,'3.74g',0,16);

INSERT INTO mcq_answer VALUES(62,'54.8g',0,16);

INSERT INTO mcq_answer VALUES(63,'97.3g',1,16);

INSERT INTO mcq_answer VALUES(64,'1425g',0,16);

INSERT INTO mcq_answer VALUES(65,'Instrumental error',0,17);

INSERT INTO mcq_answer VALUES(66,'Operative error',0,17);

INSERT INTO mcq_answer VALUES(67,'variation associated with same analyst reading same absorbance scale over time',0,17);

INSERT INTO mcq_answer VALUES(68,'co-precipitation with impurities ,incomplete reaction ,impurities in the reagents used',1,17);

INSERT INTO mcq_answer VALUES(69,'the microscopic basic structural unit of life',0,18);

INSERT INTO mcq_answer VALUES(70,'the microscopic basic functional unit of life',0,18);

INSERT INTO mcq_answer VALUES(71,'the microscopic fundamental unit of life',0,18);

INSERT INTO mcq_answer VALUES(72,'the basic microscopic structural and functional unit of life',1,18);

INSERT INTO mcq_answer VALUES(73,'Aristotle and Dan Vinci',0,19);

INSERT INTO mcq_answer VALUES(74,'Dan Vinci and Darwin',1,19);

INSERT INTO mcq_answer VALUES(75,'Aristotle and Paracelsus',0,19);

INSERT INTO mcq_answer VALUES(76,'Marcello Malpighi and Dan Vinci',0,19);

INSERT INTO mcq_answer VALUES(77,'There are structures like ribosomes, lysosomes and mitochondria',0,20);

INSERT INTO mcq_answer VALUES(78,'Eukaryotic Organisms',0,20);

INSERT INTO mcq_answer VALUES(79,'Prokaryotic Organisms',1,20);

INSERT INTO mcq_answer VALUES(80,'Metazoan animals',0,20);

INSERT INTO mcq_answer VALUES(81,'virus',0,21);

INSERT INTO mcq_answer VALUES(82,'Protozoan',0,21);

INSERT INTO mcq_answer VALUES(83,'fungus',0,21);

INSERT INTO mcq_answer VALUES(84,'An alga',1,21);

INSERT INTO mcq_answer VALUES(85,'Nuclear membrane',0,22);

INSERT INTO mcq_answer VALUES(86,'cell wall',0,22);

INSERT INTO mcq_answer VALUES(87,'Cytoplasm',0,22);

INSERT INTO mcq_answer VALUES(88,'Plasma membrane',1,22);

INSERT INTO mcq_answer VALUES(89,'Plasmolysis',0,23);

INSERT INTO mcq_answer VALUES(90,'Flaccid',0,23);

INSERT INTO mcq_answer VALUES(91,'dichotomous',0,23);

INSERT INTO mcq_answer VALUES(92,'Osmotic',1,23);

INSERT INTO mcq_answer VALUES(93,'glycolysis',0,24);

INSERT INTO mcq_answer VALUES(94,'diffusion',1,24);

INSERT INTO mcq_answer VALUES(95,'flaccidity',0,24);

INSERT INTO mcq_answer VALUES(96,'turgidity',0,24);

INSERT INTO mcq_answer VALUES(97,'tubes',0,25);

INSERT INTO mcq_answer VALUES(98,'sieve tubes',0,25);

INSERT INTO mcq_answer VALUES(99,'tracheid',1,25);

INSERT INTO mcq_answer VALUES(100,'pith',0,25);

INSERT INTO mcq_answer VALUES(101,'amoeba',0,26);

INSERT INTO mcq_answer VALUES(102,'flatworms',1,26);

INSERT INTO mcq_answer VALUES(103,'paramecium',0,26);

INSERT INTO mcq_answer VALUES(104,'volvox',0,26);

INSERT INTO mcq_answer VALUES(105,'Excretory',0,27);

INSERT INTO mcq_answer VALUES(106,'Digestive',0,27);

INSERT INTO mcq_answer VALUES(107,'Photosynthesis',0,27);

INSERT INTO mcq_answer VALUES(108,'Transport',1,27);

INSERT INTO mcq_answer VALUES(109,'metaphase line',0,28);

INSERT INTO mcq_answer VALUES(110,'metaphase longitude',0,28);

INSERT INTO mcq_answer VALUES(111,'metaphase plane or plate',1,28);

INSERT INTO mcq_answer VALUES(112,'metaphase region',0,28);

INSERT INTO mcq_answer VALUES(113,'tissue cell and organ cell',0,29);

INSERT INTO mcq_answer VALUES(114,'somatic cell and plant cell',1,29);

INSERT INTO mcq_answer VALUES(115,'animal cell and plant cell',0,29);

INSERT INTO mcq_answer VALUES(116,'mitotic cell and meiotic cell',0,29);

INSERT INTO mcq_answer VALUES(117,'Daughter cells',1,30);

INSERT INTO mcq_answer VALUES(118,'parent cells',0,30);

INSERT INTO mcq_answer VALUES(119,'divisible cells',0,30);

INSERT INTO mcq_answer VALUES(120,'none of the above',0,30);

INSERT INTO mcq_answer VALUES(121,'The cytoplasm',0,31);

INSERT INTO mcq_answer VALUES(122,'The nucleus',0,31);

INSERT INTO mcq_answer VALUES(123,'The chromosome',1,31);

INSERT INTO mcq_answer VALUES(124,'Mitochondrion',0,31);

INSERT INTO mcq_answer VALUES(125,'chromosome',0,32);

INSERT INTO mcq_answer VALUES(126,'centromere',1,32);

INSERT INTO mcq_answer VALUES(127,'metaphase plate',0,32);

INSERT INTO mcq_answer VALUES(128,'centrocell',0,32);

INSERT INTO mcq_answer VALUES(129,'Sclerenchyma',0,33);

INSERT INTO mcq_answer VALUES(130,'Chlorenchyma',1,33);

INSERT INTO mcq_answer VALUES(131,'Xylem',0,33);

INSERT INTO mcq_answer VALUES(132,'collenchyma',0,33);

INSERT INTO mcq_answer VALUES(133,'xylem',1,34);

INSERT INTO mcq_answer VALUES(134,'sciereids',0,34);

INSERT INTO mcq_answer VALUES(135,'Phloem',0,34);

INSERT INTO mcq_answer VALUES(136,'Companion cell',0,34);

INSERT INTO mcq_answer VALUES(137,'Xylem bundles',0,35);

INSERT INTO mcq_answer VALUES(138,'Cambium',1,35);

INSERT INTO mcq_answer VALUES(139,'Pericyclic',0,35);

INSERT INTO mcq_answer VALUES(140,'Pith',0,35);

INSERT INTO mcq_answer VALUES(141,'Simple cuboidal epithelia',0,36);

INSERT INTO mcq_answer VALUES(142,'Simple cuboidal ciliated',0,36);

INSERT INTO mcq_answer VALUES(143,'Simple columnal epithelium',0,36);

INSERT INTO mcq_answer VALUES(144,'Simple ciliated columnar epithelium',1,36);

INSERT INTO mcq_answer VALUES(145,'xylem fibres',1,37);

INSERT INTO mcq_answer VALUES(146,'medullar fibres',0,37);

INSERT INTO mcq_answer VALUES(147,'medullary rays',0,37);

INSERT INTO mcq_answer VALUES(148,'phloem parenchyma',0,37);

INSERT INTO mcq_answer VALUES(149,'only one allele of a character',1,38);

INSERT INTO mcq_answer VALUES(150,'. two alleles of the same character',0,38);

INSERT INTO mcq_answer VALUES(151,'the dominant allele',0,38);

INSERT INTO mcq_answer VALUES(152,'the recessive allele',0,38);

INSERT INTO mcq_answer VALUES(153,'1:2:1 and 3:1 respectively',0,39);

INSERT INTO mcq_answer VALUES(154,'3:1 and  1:2:1 respectively',1,39);

INSERT INTO mcq_answer VALUES(155,'9:3:3:1 and 1:3 respectively',0,39);

INSERT INTO mcq_answer VALUES(156,'1:3 and 9:3:3:1  respectively',0,39);

INSERT INTO mcq_answer VALUES(157,'DNA molecule',0,40);

INSERT INTO mcq_answer VALUES(158,'messenger RNA',1,40);

INSERT INTO mcq_answer VALUES(159,'proteins',0,40);

INSERT INTO mcq_answer VALUES(160,'the bases',0,40);

INSERT INTO mcq_answer VALUES(161,'Alleles',1,41);

INSERT INTO mcq_answer VALUES(162,'Chromosomes',0,41);

INSERT INTO mcq_answer VALUES(163,'DNA',0,41);

INSERT INTO mcq_answer VALUES(164,'RNA',0,41);

INSERT INTO mcq_answer VALUES(165,'dominant',1,42);

INSERT INTO mcq_answer VALUES(166,'recessive',0,42);

INSERT INTO mcq_answer VALUES(167,'co-dominant',0,42);

INSERT INTO mcq_answer VALUES(168,'homozygous recessive',0,42);

INSERT INTO mcq_answer VALUES(169,'learning',0,43);

INSERT INTO mcq_answer VALUES(170,'listening',1,43);

INSERT INTO mcq_answer VALUES(171,'understanding',0,43);

INSERT INTO mcq_answer VALUES(172,'speaking',0,43);

INSERT INTO mcq_answer VALUES(173,'clauses',0,44);

INSERT INTO mcq_answer VALUES(174,'phrases',0,44);

INSERT INTO mcq_answer VALUES(175,'words',1,44);

INSERT INTO mcq_answer VALUES(176,'sentences',0,44);

INSERT INTO mcq_answer VALUES(177,'concentrate',0,45);

INSERT INTO mcq_answer VALUES(178,'comprehend',1,45);

INSERT INTO mcq_answer VALUES(179,'conceptualize',0,45);

INSERT INTO mcq_answer VALUES(180,'convince',0,45);

INSERT INTO mcq_answer VALUES(181,'Central lobe',0,46);

INSERT INTO mcq_answer VALUES(182,'Frontal Lobe',0,46);

INSERT INTO mcq_answer VALUES(183,'Right hemisphere',1,46);

INSERT INTO mcq_answer VALUES(184,'Left Hemishere',0,46);

INSERT INTO mcq_answer VALUES(185,'Speaking and listening skills',1,47);

INSERT INTO mcq_answer VALUES(186,'Study and reading skills',0,47);

INSERT INTO mcq_answer VALUES(187,'Reading and writing skills',0,47);

INSERT INTO mcq_answer VALUES(188,'Speaking and reading skills',0,47);

INSERT INTO mcq_answer VALUES(189,'sentences ,statements and skills',0,48);

INSERT INTO mcq_answer VALUES(190,'words ,statements and information',0,48);

INSERT INTO mcq_answer VALUES(191,'words, phrases and expression',1,48);

INSERT INTO mcq_answer VALUES(192,'Phrases, expression and sentences',0,48);

INSERT INTO mcq_answer VALUES(193,'Wecknickers',0,49);

INSERT INTO mcq_answer VALUES(194,'concentrating',0,49);

INSERT INTO mcq_answer VALUES(195,'mental',1,49);

INSERT INTO mcq_answer VALUES(196,'social',0,49);

INSERT INTO mcq_answer VALUES(197,'reading and study skills',0,50);

INSERT INTO mcq_answer VALUES(198,'speaking and listening skills',0,50);

INSERT INTO mcq_answer VALUES(199,'reading and writing skills',1,50);

INSERT INTO mcq_answer VALUES(200,'. listening and reading skills',0,50);

INSERT INTO mcq_answer VALUES(201,'Rest',0,51);

INSERT INTO mcq_answer VALUES(202,'high alert',1,51);

INSERT INTO mcq_answer VALUES(203,'sensitizing',0,51);

INSERT INTO mcq_answer VALUES(204,'Better mood',0,51);

INSERT INTO mcq_answer VALUES(205,'understanding',0,52);

INSERT INTO mcq_answer VALUES(206,'Good hearing',0,52);

INSERT INTO mcq_answer VALUES(207,'Effective listening',1,52);

INSERT INTO mcq_answer VALUES(208,'comprehension',0,52);

INSERT INTO mcq_answer VALUES(209,'reading skill',0,53);

INSERT INTO mcq_answer VALUES(210,'comprehension',0,53);

INSERT INTO mcq_answer VALUES(211,'study skill',1,53);

INSERT INTO mcq_answer VALUES(212,'summary',0,53);

INSERT INTO mcq_answer VALUES(213,'an outline',1,54);

INSERT INTO mcq_answer VALUES(214,'summarizing',0,54);

INSERT INTO mcq_answer VALUES(215,'skimming',0,54);

INSERT INTO mcq_answer VALUES(216,'note making',0,54);

INSERT INTO mcq_answer VALUES(217,'writing',0,55);

INSERT INTO mcq_answer VALUES(218,'Note making',1,55);

INSERT INTO mcq_answer VALUES(219,'scanning',0,55);

INSERT INTO mcq_answer VALUES(220,'jotting',0,55);

INSERT INTO mcq_answer VALUES(221,'Capital roman numerals',1,56);

INSERT INTO mcq_answer VALUES(222,'Arabic numerals',0,56);

INSERT INTO mcq_answer VALUES(223,'capital letters',0,56);

INSERT INTO mcq_answer VALUES(224,'small roman numerals',0,56);

INSERT INTO mcq_answer VALUES(225,'Arabic numerals',0,57);

INSERT INTO mcq_answer VALUES(226,'small letters',0,57);

INSERT INTO mcq_answer VALUES(227,'capital letters',1,57);

INSERT INTO mcq_answer VALUES(228,'capital roman numerals',0,57);

INSERT INTO mcq_answer VALUES(229,'distriction',0,58);

INSERT INTO mcq_answer VALUES(230,'destraction',0,58);

INSERT INTO mcq_answer VALUES(231,'distruction',0,58);

INSERT INTO mcq_answer VALUES(232,'distraction',1,58);

INSERT INTO mcq_answer VALUES(233,'Dr',0,59);

INSERT INTO mcq_answer VALUES(234,'DR',0,59);

INSERT INTO mcq_answer VALUES(235,'dR',0,59);

INSERT INTO mcq_answer VALUES(236,'Dr.',1,59);

INSERT INTO mcq_answer VALUES(237,'She is an alert , short , beautiful girl.',0,60);

INSERT INTO mcq_answer VALUES(238,'She is an alert, short , and beautiful girl',1,60);

INSERT INTO mcq_answer VALUES(239,'She is an alert: short and beautiful girl',0,60);

INSERT INTO mcq_answer VALUES(240,'She is an alert, short and beautiful girl',0,60);

INSERT INTO mcq_answer VALUES(241,'Who gave you the papers',0,61);

INSERT INTO mcq_answer VALUES(242,'When the men arrived',0,61);

INSERT INTO mcq_answer VALUES(243,'She danced gracefully',0,61);

INSERT INTO mcq_answer VALUES(244,'Get out of the room?',1,61);

INSERT INTO mcq_answer VALUES(245,'pragmatics',0,62);

INSERT INTO mcq_answer VALUES(246,'linguists',0,62);

INSERT INTO mcq_answer VALUES(247,'grammar',1,62);

INSERT INTO mcq_answer VALUES(248,'discourse',0,62);

INSERT INTO mcq_answer VALUES(249,'morpho _phonology',0,63);

INSERT INTO mcq_answer VALUES(250,'Grammatics',0,63);

INSERT INTO mcq_answer VALUES(251,'semantics',0,63);

INSERT INTO mcq_answer VALUES(252,'morphology',1,63);

INSERT INTO mcq_answer VALUES(253,'dash',0,64);

INSERT INTO mcq_answer VALUES(254,'hyphen',0,64);

INSERT INTO mcq_answer VALUES(255,'ellipses',1,64);

INSERT INTO mcq_answer VALUES(256,'colon',0,64);

INSERT INTO mcq_answer VALUES(257,'To link words that suggest a single meaning',0,65);

INSERT INTO mcq_answer VALUES(258,'to introduce a list',0,65);

INSERT INTO mcq_answer VALUES(259,'to form the possessives of nouns',1,65);

INSERT INTO mcq_answer VALUES(260,'to mark the completion of a sentence',0,65);

INSERT INTO mcq_answer VALUES(261,'intensive readings',0,66);

INSERT INTO mcq_answer VALUES(262,'Extensive readings',1,66);

INSERT INTO mcq_answer VALUES(263,'Reading aloud',0,66);

INSERT INTO mcq_answer VALUES(264,'silent reading',0,66);

INSERT INTO mcq_answer VALUES(265,'To have record of the speaker''s or writer''s main',0,67);

INSERT INTO mcq_answer VALUES(266,'To prove to people around that you have attended the lecture',1,67);

INSERT INTO mcq_answer VALUES(267,'For future reference when you are out of school',0,67);

INSERT INTO mcq_answer VALUES(268,'For research purpose',0,67);

INSERT INTO mcq_answer VALUES(269,'gradient of a displacement time graph',0,68);

INSERT INTO mcq_answer VALUES(270,'Area below a force-time graph.',0,68);

INSERT INTO mcq_answer VALUES(271,'Area below a velocity-time graph',0,68);

INSERT INTO mcq_answer VALUES(272,'gradient of a velocity -time graph',1,68);

INSERT INTO mcq_answer VALUES(273,'is the same P and T',1,69);

INSERT INTO mcq_answer VALUES(274,'is greatest at T',0,69);

INSERT INTO mcq_answer VALUES(275,'is greatest at P',0,69);

INSERT INTO mcq_answer VALUES(276,'decreases at a constant rate',0,69);

INSERT INTO mcq_answer VALUES(277,'0.3 %',1,70);

INSERT INTO mcq_answer VALUES(278,'5%',0,70);

INSERT INTO mcq_answer VALUES(279,'6%',0,70);

INSERT INTO mcq_answer VALUES(280,'18%',0,70);

INSERT INTO mcq_answer VALUES(281,'7.5',1,71);

INSERT INTO mcq_answer VALUES(282,'15',0,71);

INSERT INTO mcq_answer VALUES(283,'25',0,71);

INSERT INTO mcq_answer VALUES(284,'30',0,71);

INSERT INTO mcq_answer VALUES(285,'Ke = Max , Tension = Min',0,72);

INSERT INTO mcq_answer VALUES(286,'Ke = Max , Tension = Max',1,72);

INSERT INTO mcq_answer VALUES(287,'Ke = 0 , Tension = Min',0,72);

INSERT INTO mcq_answer VALUES(288,'Ke = 0 , Tension = Max',0,72);

INSERT INTO mcq_answer VALUES(289,'8.0 m/s',1,73);

INSERT INTO mcq_answer VALUES(290,'32.0 m/s',0,73);

INSERT INTO mcq_answer VALUES(291,'4.0 m/s',0,73);

INSERT INTO mcq_answer VALUES(292,'0.5 m/s',0,73);

INSERT INTO mcq_answer VALUES(293,'3.5N',0,74);

INSERT INTO mcq_answer VALUES(294,'7N',0,74);

INSERT INTO mcq_answer VALUES(295,'13N',1,74);

INSERT INTO mcq_answer VALUES(296,'12N',0,74);

INSERT INTO mcq_answer VALUES(297,'2/3',1,75);

INSERT INTO mcq_answer VALUES(298,'3/5',0,75);

INSERT INTO mcq_answer VALUES(299,'2/5',0,75);

INSERT INTO mcq_answer VALUES(300,'1/3',0,75);

INSERT INTO mcq_answer VALUES(301,'0.05',0,76);

INSERT INTO mcq_answer VALUES(302,'0.5',1,76);

INSERT INTO mcq_answer VALUES(303,'0.2',0,76);

INSERT INTO mcq_answer VALUES(304,'0.8',0,76);

INSERT INTO mcq_answer VALUES(305,'F = EAe²/X',0,77);

INSERT INTO mcq_answer VALUES(306,'F = EAx/X',0,77);

INSERT INTO mcq_answer VALUES(307,'F = EAe/X²',0,77);

INSERT INTO mcq_answer VALUES(308,'F = EAe/X',1,77);

INSERT INTO mcq_answer VALUES(309,'meter rule',0,78);

INSERT INTO mcq_answer VALUES(310,'a set square',0,78);

INSERT INTO mcq_answer VALUES(311,'micro-meter screw guage',0,78);

INSERT INTO mcq_answer VALUES(312,'a pair of calipers',1,78);

INSERT INTO mcq_answer VALUES(313,'volume, length, speed',0,79);

INSERT INTO mcq_answer VALUES(314,'area, length, volume',0,79);

INSERT INTO mcq_answer VALUES(315,'time, mass, momentum',0,79);

INSERT INTO mcq_answer VALUES(316,'length, mass, time',1,79);

INSERT INTO mcq_answer VALUES(317,'10sin30',0,80);

INSERT INTO mcq_answer VALUES(318,'10/cos30',0,80);

INSERT INTO mcq_answer VALUES(319,'10/sin30',1,80);

INSERT INTO mcq_answer VALUES(320,'10tan30',0,80);

INSERT INTO mcq_answer VALUES(321,'80m',0,81);

INSERT INTO mcq_answer VALUES(322,'60m',1,81);

INSERT INTO mcq_answer VALUES(323,'100m',0,81);

INSERT INTO mcq_answer VALUES(324,'40m',0,81);

INSERT INTO mcq_answer VALUES(325,'potential diffrence across a platinum wire',0,82);

INSERT INTO mcq_answer VALUES(326,'pressure of a gas',0,82);

INSERT INTO mcq_answer VALUES(327,'volume of a gas',0,82);

INSERT INTO mcq_answer VALUES(328,'expansion',1,82);

INSERT INTO mcq_answer VALUES(329,'(6.00 i + 15.00j)N',1,83);

INSERT INTO mcq_answer VALUES(330,'(3.20 i + 2.00j)N',0,83);

INSERT INTO mcq_answer VALUES(331,'(5.00 i + 10.00j)N',0,83);

INSERT INTO mcq_answer VALUES(332,'(12.00 i + 5.00j)N',0,83);

INSERT INTO mcq_answer VALUES(333,'3.64 X 10-¹⁸ N',1,84);

INSERT INTO mcq_answer VALUES(334,'1.23 X 10-¹⁸ N',0,84);

INSERT INTO mcq_answer VALUES(335,'4.60 X 10-¹⁸ N',0,84);

INSERT INTO mcq_answer VALUES(336,'8.32 X 10-¹⁸ N',0,84);

DROP TABLE IF EXISTS django_session;
CREATE TABLE IF NOT EXISTS `django_session` (`session_key` varchar(40) NOT NULL PRIMARY KEY, `session_data` text NOT NULL, `expire_date` datetime NOT NULL);

INSERT INTO django_session VALUES('s7xwglbgt2tn8l11jijdh2mfzrutnfmc','YjEzYmIyMzUwNzY5N2E0YzE5OTNmYzBhZWNjMWMwNDJhZTE1NTQ5Zjp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzZTNjOGRlZjQ4ODgwZWRkZjdkOWRiM2I4ZjY3NTQ2NTllMWE4ZWYwIn0=','2020-01-31 10:21:38.587958');

INSERT INTO django_session VALUES('s6ttm6671p4vphhemqzfhe3w9d67tri2','YWYwNjUzZDQwZjk1NjY4NWZlYzRjMTA5NTljMTlhYWZmNzMzMWU1NDp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIyNDMzMjE3MTVkMmE1ODE4ZmJkY2Y3MDRlNjU2NjA3ZDFmNWM2OGQ4In0=','2020-02-09 01:07:14.974626');

INSERT INTO django_session VALUES('0tda29ij2krvnjegu122ll57l06dcflx','YjEzYmIyMzUwNzY5N2E0YzE5OTNmYzBhZWNjMWMwNDJhZTE1NTQ5Zjp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzZTNjOGRlZjQ4ODgwZWRkZjdkOWRiM2I4ZjY3NTQ2NTllMWE4ZWYwIn0=','2020-02-10 11:20:29.536343');

INSERT INTO django_session VALUES('remfi3fuzjh4aco88yl7e2g0x8y6g4xf','NTQ1NDNhYzJmNzZmODQzY2M2NDkyMWE1NjRlODAzZTI3ZjM3ZWU0Njp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJlZDY5OWVhZDg4NzUwZjZmMTk5NTFhMTQ1NTc2YjQ2ZWMyMzY5YWJhIn0=','2020-02-17 04:45:59.667141');

INSERT INTO django_session VALUES('vshm4yxmojdixth3bdl73odw0ggiibr0','NDE3ZjRjMzZiNzkxMGY5MGQ0MDM0NjZiNjQ2Y2NlZWY5OGJhOGY2OTp7Il9hdXRoX3VzZXJfaWQiOiI2IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1ZDJkMGY4ZWRhZGE2MzA1ZGQwNTI2M2EyYzgxNDIwOWFhOTdjNWI2In0=','2020-02-17 07:29:36.566393');

INSERT INTO django_session VALUES('jy7jsbq4qw7lwkis0o2876fcl25ahkgw','NzlmZTIwNDFlNjRhZWVlNjQwYjQxOWQyZjY4MjBkODkyNTM5ZmVjYTp7Il9hdXRoX3VzZXJfaWQiOiI3IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0NWJmYzE3MmI4YjNiYzNjMDI0ZWI4MTljNWFhZWZhNTZkZjFhMGRkIn0=','2020-02-17 10:10:18.335594');

INSERT INTO django_session VALUES('z4i2infdq7eyhd8o8zxd1djmviletg6t','YWQ2MTJmMDJjOGViMGY2YjE3M2EyMWRjMjU0MzljYzMzMDY2MmRhMDp7Il9hdXRoX3VzZXJfaWQiOiI4IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJjYTMzYWRiYjFhNDVjNTQzNDFkNDk2M2FjZDgyMDQyN2M5ZjE0Y2E5In0=','2020-02-17 14:07:35.976928');

INSERT INTO django_session VALUES('7is6iij019c8azt178h6xfclc9ay47lp','MTQ4NDBjOWM5YzIwODczNTVlNGEwNmVjYThmZTdmY2Q1ZDA5NjVmNDp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJlZDY5NzI4ZjdmZTU5MzRlMTZkNGIwYWVkYjM3ZGZiMjk5YTc4NTZiIn0=','2020-02-17 15:31:08.047308');

INSERT INTO django_session VALUES('416ub55dqk5gdlj1ljk46a5m3p601ywn','YjBmZGUwNDY1NDJiZTY5MzI4N2M4MDA5ZDE3ZDU5YzhjYTJiODY3Mzp7Il9hdXRoX3VzZXJfaWQiOiIxMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiYzFmMTkxMTBiMmQ1ZTRjNTEzNTBjYjY3YzIzYTdjYzYxMmFmNzBiZiJ9','2020-02-17 17:34:56.277884');

INSERT INTO django_session VALUES('0x352l1se0zprc8o95lbvhm97adb2be1','YjEzYmIyMzUwNzY5N2E0YzE5OTNmYzBhZWNjMWMwNDJhZTE1NTQ5Zjp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzZTNjOGRlZjQ4ODgwZWRkZjdkOWRiM2I4ZjY3NTQ2NTllMWE4ZWYwIn0=','2020-02-18 10:59:42.535220');

INSERT INTO django_session VALUES('wa1lk910y3i0hhxeiwtxr64yeyvglcos','YjEzYmIyMzUwNzY5N2E0YzE5OTNmYzBhZWNjMWMwNDJhZTE1NTQ5Zjp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzZTNjOGRlZjQ4ODgwZWRkZjdkOWRiM2I4ZjY3NTQ2NTllMWE4ZWYwIn0=','2020-02-19 20:29:34.780207');

INSERT INTO django_session VALUES('zdbm8wlgtxlkkgmg5r3eti03mv1wmqq9','YTQyODBiYzEzOWJjNWViZGYwYWVkZWJhNjJjYjcyNTBmZGRjMjU4Mjp7Il9hdXRoX3VzZXJfaWQiOiIxNCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiODIwZTI4N2JkYzNjZmFiZGNjYjM5MWZkM2MyNzYwODk4ODBjY2IyZiJ9','2020-02-22 10:21:13.766935');

INSERT INTO django_session VALUES('6i1ejpvua456pkxx37hm438p1zgq7gq4','YjEzYmIyMzUwNzY5N2E0YzE5OTNmYzBhZWNjMWMwNDJhZTE1NTQ5Zjp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzZTNjOGRlZjQ4ODgwZWRkZjdkOWRiM2I4ZjY3NTQ2NTllMWE4ZWYwIn0=','2020-02-22 10:33:12.402471');

INSERT INTO django_session VALUES('sgo7ilwha71yn946gbbw3z5mqanqk4on','NWMyYzA0OGQzNzhlNjY1MDlhNzMwOTJhZDMyMmNhYzY1ZDc5NzAyYzp7Il9hdXRoX3VzZXJfaWQiOiIxNiIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiZTEyMTViMmE5NjIyYjE3MDA1NzRjMmFmZWMzYTJjN2U2ODdhMTg0MCJ9','2020-02-22 14:30:41.935736');

INSERT INTO django_session VALUES('yrtcwpnf8ubdemw3sadobtry3087r2eh','ZDY5OTg0MTRhNTg2ZWNjYzY5OTViNTFkNmUxMmY3YzkwOTBjNWQ5Nzp7Il9hdXRoX3VzZXJfaWQiOiIxNyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiODJhODJlYTk2MDBiZDI0NjE5ZThiNWY1NWJkOGMzYWI3MzhhZWY0NCJ9','2020-02-23 17:36:06.614873');

INSERT INTO django_session VALUES('i1y2ty0rtky5z740draeclr69xvuswh2','YWJiY2JhODM5N2E1ZGE4NTYwYWIzMjQ4OWMyMmYyMzI2M2QwMjUxZTp7Il9hdXRoX3VzZXJfaWQiOiIxOCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiYzkzMDYyMzhmYmZjNTQ4MWE2ZTBjMTMyMzZhMjM3OWFlMThiN2I2NiJ9','2020-02-23 18:25:07.182594');

INSERT INTO django_session VALUES('rbx61th7f59eoedtnwl7xdwfq55p7t1q','ZDdlOTdkOTY4YmMwZjlkZjE4NjVkNWVmYjdmMzAzZjAwZWM0M2I0Mjp7Il9hdXRoX3VzZXJfaWQiOiIxOSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiYWRhNGQ2NWQ2ZWIwZTBmOWNlYTUyZjQ1MTNjY2M3N2VhZjM4ZWUxMiJ9','2020-02-23 18:54:56.635296');

INSERT INTO django_session VALUES('byu4heafi74g96kp2uv4cyqaklpbfw2m','ZjExZTMyZGIzODE1MjE2YTk0NWI2OWZkNGJkYzQyODkzZTY5OGE0Mjp7Il9hdXRoX3VzZXJfaWQiOiIyMCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiOGY1ZjJkNTI1YzdhNDQ1MjMxODJhY2ViNWQwOWM1ZDRiYWYzZTQ2NyJ9','2020-02-24 20:29:58.732131');

INSERT INTO django_session VALUES('pxhtv4q00wgcapof7srltzukyb7etf0o','NzI3YjQ4YTE5YmYwYTRiMmFkYjM1MjkzMDFjN2Q0ZDk0MDg0YmEzZjp7Il9hdXRoX3VzZXJfaWQiOiIyMiIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiZWZhNzQwZjU3NmYwZTE5NGRjNDNmODI2ODc3MmMxOTZhNGU1MWM2NyJ9','2020-02-26 17:04:28.499408');

INSERT INTO django_session VALUES('g601dbsjeylj7nshlctymnpcxws86v5a','YjEzYmIyMzUwNzY5N2E0YzE5OTNmYzBhZWNjMWMwNDJhZTE1NTQ5Zjp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzZTNjOGRlZjQ4ODgwZWRkZjdkOWRiM2I4ZjY3NTQ2NTllMWE4ZWYwIn0=','2020-03-01 18:26:59.406252');

INSERT INTO django_session VALUES('estb990wh9px5vjsfkoshw73ztuczspd','YjEzYmIyMzUwNzY5N2E0YzE5OTNmYzBhZWNjMWMwNDJhZTE1NTQ5Zjp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzZTNjOGRlZjQ4ODgwZWRkZjdkOWRiM2I4ZjY3NTQ2NTllMWE4ZWYwIn0=','2020-03-12 11:00:01.689445');

INSERT INTO django_session VALUES('cdmeto2u82fg0b3w13cc3lt3pjhbcm8v','YjEzYmIyMzUwNzY5N2E0YzE5OTNmYzBhZWNjMWMwNDJhZTE1NTQ5Zjp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzZTNjOGRlZjQ4ODgwZWRkZjdkOWRiM2I4ZjY3NTQ2NTllMWE4ZWYwIn0=','2020-03-21 20:25:54.138612');

INSERT INTO django_session VALUES('d90b5n9vqsrc601lipd1s9vp1kbma1k4','MTMwZTY2MDRiMDNiMmI0YzFjNDA4ZDM5MTUyZGI4MzI4YjJjZDliOTp7Il9hdXRoX3VzZXJfaWQiOiIyNCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiYmExMjEyYjAzNTZhYjBlNGVmZjc2Y2NkNGZhMTcyMDVkMzQ0MGViMyJ9','2020-03-21 21:19:19.582104');

INSERT INTO django_session VALUES('8yhg0dwsch8gqa4mtvj4q3ni6hkbcwjb','OGI4YTZjOGQ3OTJmZmI0NTU1MTgzZjc4MjFlYTI5ZGVjM2JiMDJjNjp7Il9hdXRoX3VzZXJfaWQiOiIyNSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMmE3ODU1NTU1YmJlYmE1OWRkNTdmMjgyMmFjMjU5YWEwMmMzNjgxYyJ9','2020-03-21 21:16:38.666757');

INSERT INTO django_session VALUES('bu8dbzdbeacf7udyj7blu5901jd301xd','OWY0YTBiYjE0YWViMGM1OGY0NzQyYTZhOWU5ZDk1YjAzNzcwNDY1ODp7Il9hdXRoX3VzZXJfaWQiOiIyNyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiOGU4ZTE0ZTJjZGQzOTg3NWQzMGJhNTJiYWEyNTU5OTdlNjMzNWNjYSJ9','2020-03-22 05:51:32.581441');

INSERT INTO django_session VALUES('jjebyef5zh309z6ucg5y880f8u57x17c','YWRkMWVhYzZkMDUxNDNkMzI4NTNhMWY4NGQyMDFkZjhlZDdmNThhNDp7Il9hdXRoX3VzZXJfaWQiOiIyOSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiODI5N2E2OGRiYTQwMjFkMDE1NzNlOTU3ZTA4MWY1NzVmN2MzOGEwMyJ9','2020-03-22 12:35:17.768204');

INSERT INTO django_session VALUES('p8fu93ketttsf9azohlpmyh4lxktosxb','NGMwNWRmYzkyN2NjYjdiMDJiNDg5ZmRkODczY2JmZDFkNmJlZmQxMjp7Il9hdXRoX3VzZXJfaWQiOiIzMCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMzBiMDY4M2RkYzM1NDVmNWI4NzViODZmOTViMDRiNDU2OTQ4NjliZCJ9','2020-03-22 13:01:33.432955');

INSERT INTO django_session VALUES('eslhubdpqooepij2mzjyqyfuaqtgjrus','NGMwNWRmYzkyN2NjYjdiMDJiNDg5ZmRkODczY2JmZDFkNmJlZmQxMjp7Il9hdXRoX3VzZXJfaWQiOiIzMCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMzBiMDY4M2RkYzM1NDVmNWI4NzViODZmOTViMDRiNDU2OTQ4NjliZCJ9','2020-03-22 13:01:34.267496');

INSERT INTO django_session VALUES('nl7v3cndzf1j73hpgdakhemt3xdp7i8x','YjEzYmIyMzUwNzY5N2E0YzE5OTNmYzBhZWNjMWMwNDJhZTE1NTQ5Zjp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzZTNjOGRlZjQ4ODgwZWRkZjdkOWRiM2I4ZjY3NTQ2NTllMWE4ZWYwIn0=','2020-03-22 20:23:25.953994');

INSERT INTO django_session VALUES('i0wmuey54jkkiialy0pvf3jkav8le30n','MDA3YzUzOTFkNzhkNWMxODBhYmRlMWMzNTE3ZmZmOTJjNGU0NDM1ZDp7Il9hdXRoX3VzZXJfaWQiOiIzMyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiOWE2ODFkNmU1ZDFkYjFjMDFhMGY2MjFjZWY2NmI4ZGZjOTIzYjFjOSJ9','2020-03-23 08:07:36.285668');

INSERT INTO django_session VALUES('8u0tju9y1hnt9r4dc7dvynor6w7ypexw','ZjJhMTk2OTdkMTIyMGEyYzA0OTNmNWIyMWYxNzJmY2ExYzE2ZmIxMDp7Il9hdXRoX3VzZXJfaWQiOiIzNCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiZDUyMzc3ZjBkNTgzZjg2MGQ4MWRiYzIwMTU5YWYwODkwZDA5NWYyYSJ9','2020-03-23 09:10:01.823507');

INSERT INTO django_session VALUES('q93sthaejnrpulcd143ytonedj001959','ZmQ2ZTRiNTE1NGY0YzE1YTRhZTJkMTJiNzYzZTFiOTkyOTNkNzRmNDp7Il9hdXRoX3VzZXJfaWQiOiIzNSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiZWMzNmI2MDgyNzgwYmVlZTVjY2MzODIzNTA2ZGY3Y2E5NTJlZTU0NCJ9','2020-03-23 13:55:13.612646');

INSERT INTO django_session VALUES('anfsrhpi1szna7gmprcaevuqtzxp5xg3','YWViOTdjOTc3YzQzMWQyMzM4Y2Y5ZDlhZmY1MDAyNGJiYzkxM2I3MTp7Il9hdXRoX3VzZXJfaWQiOiIzNyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNWJkZTRhOGMzZDJkZjEyNDhlOGQ5Y2YyZjRjMDRhNjBlMjBkNjU2YSJ9','2020-03-23 14:57:07.471724');

INSERT INTO django_session VALUES('kbxkw8ttunh0kzea7q3nmtfxhwembviq','YjllMTg2NDEzZDIzOGFmNTI5NzU2ZWUwNmVlZGRiZjI4YjNmMjRiZTp7Il9hdXRoX3VzZXJfaWQiOiIzOSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiODJiMmIyYmNkOGFiNTFiYzZlMWNhODFjNzRlMDkwYjI1OWEzYWQ5NyJ9','2020-03-23 17:03:33.767604');

INSERT INTO django_session VALUES('2lqpw83ij9uxvr8isho2ivwtiy9chxr2','ODgzY2NjNDVmNjAyMjk5NjY0Y2Y2ZjEyN2I1M2I1ZjBmM2Q3MGNkZDp7Il9hdXRoX3VzZXJfaWQiOiI0MCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNTc2ZjI4NzQ0NTc5MTBmZmM1Nzg2YjM1MzUzOTA0YmYwZTUyMWMyMyJ9','2020-03-23 19:28:45.853159');

INSERT INTO django_session VALUES('6uqryu6ddvgr36zipkt5755grf9tx8k4','NjBkYjY3NTgxYmIxYmY5ODg4MjYyMzc0MjgzMTM5NDc1M2QyZjk2Mzp7Il9hdXRoX3VzZXJfaWQiOiI0MSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiYmM4YmU3ODQ3NjM0NDhkMTM4ZWJiNjI1NjVmM2E5NzQzMjYxMWRmYiJ9','2020-03-23 19:35:31.010491');

INSERT INTO django_session VALUES('hetpfpfxkum9vkkujmclw59u9ahulkhk','MTE2MTJhY2QzNDIzYmRlZWIxNjViZTIyMGJkOTBjZjk1N2YxZmFkMzp7Il9hdXRoX3VzZXJfaWQiOiI0MiIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNDk5ZmU2YTEyOTllNDRkNjFmZWFlZjg3N2U1Y2JiMjdmN2RkN2I1NCJ9','2020-03-23 21:09:02.824092');

INSERT INTO django_session VALUES('e9by21ib4jlj8bvcavejdcuva1lkxunp','MmFjNDBjNGIxYjYzYjMzYmZlOTliNjkwNTY0MzY2ZTg4YTFhNjJjYzp7Il9hdXRoX3VzZXJfaWQiOiI0MyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiYTAzMGUzN2QzMDA3MjAxNjQ2OGRjMGRjNjY2Yjk1ZTU3NWYzZjkxNiJ9','2020-03-23 21:30:34.482021');

INSERT INTO django_session VALUES('j5vr4wgjy0cpmwmp50q4htid34zsfk93','ZTNjYjBkOGZhZjM4NTA3NDY3MTYzNWMxMzBjY2M0NzUxZjBkNzI3Yzp7Il9hdXRoX3VzZXJfaWQiOiIzMiIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNWM5MDA0ZGJkYzM5ODhiZWQzN2Y5NjM1MTQ3MDhhMjYyMTNmMjdmMCJ9','2020-03-24 06:36:18.401863');

INSERT INTO django_session VALUES('1hnewn4a2gd4ro5688grur2fkaorzxyj','MmEwNDkwMmEzZTNlMDk2YmRhMWMzMzkxZDI1MTEzMmI2MWJjOWQwYjp7Il9hdXRoX3VzZXJfaWQiOiI0NCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiYTc3YWQ3ZjM0ZTYxZTJkNWJiOWMzY2VjZDFlZmU4ZWNmNmNkNjNhZCJ9','2020-03-24 06:55:44.201536');

INSERT INTO django_session VALUES('sn3lg42lm7v60fna8b7pjice5pwd88hk','ODY3ZTQ1MDM1MmExMmEzYmY4OTAzMjQ3M2QzOWNkODljZDM5OWNhNjp7Il9hdXRoX3VzZXJfaWQiOiI0NSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMmFiN2I2NTU2MGVjY2JmYWVmMzEyYmQ4YjkwMjg1OTYyZTYyYzZiOSJ9','2020-03-24 11:17:51.356554');

INSERT INTO django_session VALUES('v08tqzwpy7fta5jk4fyit0a6dkjem9sm','OGZhNWJiYzVkNDBhNTBlYTVmOWFlNGMzY2Y2ZjRkYzg4N2EyODdmNzp7Il9hdXRoX3VzZXJfaWQiOiI0NiIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiYjQ5MzI2NDc5YWE2OWJiZmEzMzYxNjJhODlmYWM0YjIyMDdiNzJmZCJ9','2020-03-24 11:36:40.367673');

INSERT INTO django_session VALUES('rqntlxd5d09si38hgoo6n7yup87qwwn0','MDc2MjMyNWJlNTU2ZDQ2ZGUzMTcyZTAyMDE4MTA1MDc4MmZkYzkwMzp7Il9hdXRoX3VzZXJfaWQiOiI0NyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiYWNjNDUwZmFjM2NlZmNjODJiZTdjNGM2NDBiNTNiZmI0ZDc4YTZiOSJ9','2020-03-24 16:22:41.346692');

INSERT INTO django_session VALUES('tt206o8r38uhmpux8cngtm235u1og9kr','M2QxYjZjMTM3ZmQ0OTYyZjIxNDhjMTVmYmFkN2E1NzZmYjkzNjEyMzp7Il9hdXRoX3VzZXJfaWQiOiI0OCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNWYyN2VjYmYxYzJhYmZjYWU2MGEyYmViOTE0OWQyZjI5ZmZiMzg4OSJ9','2020-03-24 21:53:10.422361');

INSERT INTO django_session VALUES('l2wi6i7auypvtx7vtkd6zl0ghtr41dga','YjVmYzM1NmQxZjJlM2U3Yjc0MmE5MjVlZGFjMGNlZWM0MTRjYTQyMjp7Il9hdXRoX3VzZXJfaWQiOiI0OSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiODlkZTc5MGZjMmQzZjExYzIyMjE3NmIwZmZiZmMyODdmN2JhMWU0YiJ9','2020-03-26 16:04:41.053569');

INSERT INTO django_session VALUES('hne2vsub51waox3jjm14ybboxil8ur53','OGI5NTRkZDAxMmU4YjQ2ZTg5MjNkYjcyOGJjM2U5NGNmNzM3NmU2ZTp7Il9hdXRoX3VzZXJfaWQiOiI1MCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiOTgyMjVkMzQ3MDBhYjIyNzMyYzQ4ZDI1ZjM0NTA3NWU5MDBlOTM0OCJ9','2020-03-26 17:01:26.508599');

INSERT INTO django_session VALUES('8s2dwzg251rt9rm16rkzxb29koji9via','ZWFhYTIxNjAwYjVkNzY5NTgwN2Q3ODg3Y2NlYmMyNjE2OGQ5NDJiYzp7Il9hdXRoX3VzZXJfaWQiOiI1MSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMzMwMWYyYWNlNDY1NTA5YzIxMTliMWEzM2FjZTc1NjczNWQyNThiMyJ9','2020-03-27 07:56:49.460307');

INSERT INTO django_session VALUES('eb047ckkvfd05owu9kdi1ttpmacmd922','NzExYzhhZDJhNWJlMDQ2YWIzOThiZDczNjUzNmZlOGJhOGU1MzQ1NTp7Il9hdXRoX3VzZXJfaWQiOiI1MiIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNTg4Y2Y5ZWViZDRjYmM2OTcwZjEzMmRjNmZlY2QyYjMwZTZmYTY1NSJ9','2020-03-27 20:05:56.950402');

INSERT INTO django_session VALUES('2j0ydyrxil0ogy5cgte5ueugu654tyct','NTc2NTVjNTcwMzJhZmVhYThlM2YzYjczMDZmNGFjN2Y4NjUxM2JiZDp7Il9hdXRoX3VzZXJfaWQiOiI1NSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiOGUwNTBkNzBmZjUyMmQyYzhiZmEzNzRmN2E1Mjc2ZDAwYjAyOGY1ZCJ9','2020-03-27 22:49:51.482352');

INSERT INTO django_session VALUES('g0ec8k2m6h7iot6vuebigzhots6w5jun','Y2ZiZjQwYmVhNGYxZWNkMDI5MTdhNzRlZjVkZGZjYzY0YWJlMGQxNTp7Il9hdXRoX3VzZXJfaWQiOiI1NiIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiZDFjZWY0YmZlNDVjODljNzJkYTNjMDY5NDVmNmQxZGI3MTQzYTJiNyJ9','2020-03-28 05:16:07.719712');

INSERT INTO django_session VALUES('e9b4a5e1l00f7hvm872h3try63dvhthq','MWVlNjIxZWYyMjk3NmUxNjQ5NjRhZTUyNDQyNzJlMTk4NGUyZWUyMjp7Il9hdXRoX3VzZXJfaWQiOiI1NyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiYzg4ZGRjNDRkZTIyNmM0Y2RhOWJkZjAwYjNlYTBjYzA5ZWMyNmM5NiJ9','2020-03-28 05:23:49.337794');

INSERT INTO django_session VALUES('6awog4k6vdozy7elswqkma308oux8rxe','ZjllNTBjMjUzYjU1OGMwNjA3MmVlNjY0YTYwNjc0N2E1YjVkYjc1OTp7Il9hdXRoX3VzZXJfaWQiOiI1OSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNDFmZjU1ZDk1NWZkMGRhZjU4OTkxNzA3ZWFkNjJmOGExOGQwMTE2NSJ9','2020-03-28 10:08:59.099606');

INSERT INTO django_session VALUES('0b58b8xmbrguhf8m20qpnvtqir7soy4j','YjEzYmIyMzUwNzY5N2E0YzE5OTNmYzBhZWNjMWMwNDJhZTE1NTQ5Zjp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzZTNjOGRlZjQ4ODgwZWRkZjdkOWRiM2I4ZjY3NTQ2NTllMWE4ZWYwIn0=','2020-04-06 07:59:10.490492');

INSERT INTO django_session VALUES('7oit9i3dqwztczhmcm3peo8imtkfu946','YjEzYmIyMzUwNzY5N2E0YzE5OTNmYzBhZWNjMWMwNDJhZTE1NTQ5Zjp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzZTNjOGRlZjQ4ODgwZWRkZjdkOWRiM2I4ZjY3NTQ2NTllMWE4ZWYwIn0=','2020-04-08 08:35:41.232615');

INSERT INTO django_session VALUES('npv6vdow2rmqol3mno53nmcpvzhorwxe','ZTNjYjBkOGZhZjM4NTA3NDY3MTYzNWMxMzBjY2M0NzUxZjBkNzI3Yzp7Il9hdXRoX3VzZXJfaWQiOiIzMiIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNWM5MDA0ZGJkYzM5ODhiZWQzN2Y5NjM1MTQ3MDhhMjYyMTNmMjdmMCJ9','2020-04-10 08:36:36.059049');

INSERT INTO django_session VALUES('h51rsa1b2j3b5k1nofvgxl1vbrtrnryd','ZmY4ZDk4MmE1MGYzZjNjNjhmNTk4YTg2OTNkYzg0MzU1OWZlZWU5Mzp7Il9hdXRoX3VzZXJfaWQiOiI2MSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiODdkMzI1MDhiYjFmOGE2YjkyNTc2Y2E0NWIzZTdhNDRiZWYwNGQwYyJ9','2020-04-21 11:41:46.131735');

INSERT INTO django_session VALUES('d31z576yaawbagmvms33fax31767or57','YjEzYmIyMzUwNzY5N2E0YzE5OTNmYzBhZWNjMWMwNDJhZTE1NTQ5Zjp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzZTNjOGRlZjQ4ODgwZWRkZjdkOWRiM2I4ZjY3NTQ2NTllMWE4ZWYwIn0=','2020-04-23 08:13:43.038676');

INSERT INTO django_session VALUES('qe2rqaadggoca3lq0hmkxz9lpgg2e7sj','ZmQ1Mjc1MGRlZDU4NmEwMTBhMGM5ZjAyYjY1ZWE4MjQwNzYzZmJmOTp7Il9hdXRoX3VzZXJfaWQiOiIxMyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiY2RjMzNjMjkxZmQ1MjkwNjE2Y2FhNjIwMzBhYmU3NmRjZjA5Nzk5MiIsInByZW1pdW1faWQiOjgzNzUwNDg4NH0=','2020-05-23 14:25:29.080796');

INSERT INTO django_session VALUES('0785ysnt62e8t6jbsk51htykie9e9bwx','ODIyNTdmZTRkOWFiMDNmNmI1NTE3NzViMDkwOTM0N2FmZjM4YzllODp7Il9hdXRoX3VzZXJfaWQiOiI2MiIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiZmY3Y2RiZmNiMmEyMjc4ZTkxMjhiNTY5Y2RlZTY1MDE1YTQ1NDk2MiIsInByZW1pdW1faWQiOjg1OTM1MTc2Mn0=','2020-05-23 14:28:22.066636');

INSERT INTO django_session VALUES('ipp65335qcptpnrhu0ubb5ghqnv4pj23','ZDg2ODQ3YjJjMGFjMWY5MGNkYWQ5ZDhjNmI2NDg1MTNlZDVkZDkwYzp7Il9hdXRoX3VzZXJfaWQiOiI2NiIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMDAzNDYzZWIxMDcxZGQ5MzFkYzUyYmUzZDJjMzYwMmUwNThlNTdmMCJ9','2020-02-28 12:02:08.614870');

INSERT INTO django_session VALUES('95o6191gh9aq3y8gcrugqifdvn5zna8j','ZDg2ODQ3YjJjMGFjMWY5MGNkYWQ5ZDhjNmI2NDg1MTNlZDVkZDkwYzp7Il9hdXRoX3VzZXJfaWQiOiI2NiIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMDAzNDYzZWIxMDcxZGQ5MzFkYzUyYmUzZDJjMzYwMmUwNThlNTdmMCJ9','2020-05-30 09:21:09.798514');

INSERT INTO django_session VALUES('qkusrep6dnqc93dbmlwp914gwonapfk4','ZDg2ODQ3YjJjMGFjMWY5MGNkYWQ5ZDhjNmI2NDg1MTNlZDVkZDkwYzp7Il9hdXRoX3VzZXJfaWQiOiI2NiIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMDAzNDYzZWIxMDcxZGQ5MzFkYzUyYmUzZDJjMzYwMmUwNThlNTdmMCJ9','2020-06-01 12:56:55.839965');

INSERT INTO django_session VALUES('7orivp8xmi4yaqo4hm6pqsavl4ruh908','ZDg2ODQ3YjJjMGFjMWY5MGNkYWQ5ZDhjNmI2NDg1MTNlZDVkZDkwYzp7Il9hdXRoX3VzZXJfaWQiOiI2NiIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMDAzNDYzZWIxMDcxZGQ5MzFkYzUyYmUzZDJjMzYwMmUwNThlNTdmMCJ9','2020-06-02 11:44:31.438319');

INSERT INTO django_session VALUES('7jbf4bjmkix5bjx6kkdj9xmexk6ng455','NTUyNDdmZDEzOWM0YjMyNjQyM2YwNDg5NjkyNTVmYzY1MDBmNTEwODp7Il9hdXRoX3VzZXJfaWQiOiI2MiIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiZmY3Y2RiZmNiMmEyMjc4ZTkxMjhiNTY5Y2RlZTY1MDE1YTQ1NDk2MiJ9','2020-06-04 14:48:35.613179');

INSERT INTO django_session VALUES('o334eyotfwbookdpctyu86p9asu3zvw0','ZDg2ODQ3YjJjMGFjMWY5MGNkYWQ5ZDhjNmI2NDg1MTNlZDVkZDkwYzp7Il9hdXRoX3VzZXJfaWQiOiI2NiIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMDAzNDYzZWIxMDcxZGQ5MzFkYzUyYmUzZDJjMzYwMmUwNThlNTdmMCJ9','2020-06-04 15:27:39.460958');

INSERT INTO django_session VALUES('91jbmgb7rz9tlwdm2n9o0w4o3avv10cz','NTUyNDdmZDEzOWM0YjMyNjQyM2YwNDg5NjkyNTVmYzY1MDBmNTEwODp7Il9hdXRoX3VzZXJfaWQiOiI2MiIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiZmY3Y2RiZmNiMmEyMjc4ZTkxMjhiNTY5Y2RlZTY1MDE1YTQ1NDk2MiJ9','2020-06-13 12:32:20.836693');

DROP TABLE IF EXISTS community_answer;
CREATE TABLE IF NOT EXISTS `community_answer` (`id` integer NOT NULL PRIMARY KEY , `name` varchar(80) NOT NULL, `body` text NOT NULL, `created` datetime NOT NULL, `active` bool NOT NULL, `question_id` integer NOT NULL REFERENCES `community_question` (`id`) );

INSERT INTO community_answer VALUES(1,'Serrah44','Actually , there are 5 States of matter , we have : solid,liquid, gas ,plasma and Bose Einstein condensate .','2020-02-05 18:48:41.676857',1,3);

INSERT INTO community_answer VALUES(2,'admin','The capacitance C of a capacitor is define as the ratio of maximum charge Q, that can be stored in a capacitor to the applied voltage V across its plates. In other words Capacitance is the largest amount of charge per volt that can be stored on the device.

C = Q\V','2020-02-20 09:18:34.981031',1,4);

INSERT INTO community_answer VALUES(3,'Cheazi','From what I''ve learnt, we have 4 States of matter which includes solid, liquid, gas and plasma. The plasma state of matter has variable volume and shape and it also contains significant number of ions and electrons which moves around freely. Plasma is the most common form of visible matter in the universe.

Thanks. Eazi','2020-03-09 18:19:00.718706',1,3);

DROP TABLE IF EXISTS community_question;
CREATE TABLE IF NOT EXISTS `community_question` (`id` integer NOT NULL PRIMARY KEY , `title` varchar(250) NOT NULL, `name` varchar(250) NOT NULL, `body` text NOT NULL, `date_asked` datetime NOT NULL, `approved` bool NOT NULL, `image_upload` varchar(100) NULL, `faculty` varchar(250) NULL, `tags` varchar(30) NULL);

INSERT INTO community_question VALUES(3,'Do we have more than 3 states of matter?','Accolade','Got in an argument with a friend recently , he said plasma is a state of matter .. if thats true , then can you give me an example of something in the plasma state','2020-02-04 08:53:30.726739',1,'','Faculty of Engineering','PHY101');

INSERT INTO community_question VALUES(4,'Capacitance of a capacitor','Sweetch','Details explanation about capacitance of a capacitor','2020-02-10 13:03:17.404744',1,'','Faculty of Science','PHY');

DROP TABLE IF EXISTS blog_broadcast_email;
CREATE TABLE IF NOT EXISTS `blog_broadcast_email` (`id` integer NOT NULL PRIMARY KEY , `subject` varchar(200) NOT NULL, `created` datetime NOT NULL, `message` text NOT NULL);

INSERT INTO blog_broadcast_email VALUES(1,'A message to all ; COVID-19','2020-03-25 07:42:55','Hi there,

	Its no news that school activities has been brought to halt because of the corona virus pandemic.

Therefore, we advice  all student apply all safety measures this period





1.     Wash the hand frequently -

 Regularly and thoroughly clean your hands with an alcohol-based hand rub or wash them with soap and water





2.    Maintain social distance -

Maintain at least 1 metre (3 feet) distance between yourself and anyone who is coughing or sneezing.





3. Avoid touching eyes, nose and mouth -

Why? Hands touch many surfaces and can pick up viruses. Once contaminated, hands can transfer the virus to your eyes, nose or mouth. From there, the virus can enter your body and can make you sick.





4.     Practice respiratory hygiene -

Make sure you, and the people around you, follow good respiratory hygiene. This means covering your mouth and nose with your bent elbow or tissue when you cough or sneeze. Then dispose of the used tissue immediately





5.     If you have fever, cough and difficulty breathing, seek medical care early -

Stay home if you feel unwell. If you have a fever, cough and difficulty breathing, seek medical attention and call in advance. Follow the directions of your local health authority



6.     stay informed and follow advice given by your healthcare provider -

Stay informed on the latest developments about COVID-19. Follow advice given by your healthcare provider, your national and local public health authority or your employer on how to protect yourself and others from COVID-19.



    However, You can take advantage of the current situations to cover up all the topics you’ve been lagging behind and also prepare for exams.

This has been made easy with our exam simulator at EasyCampus, practice up to five exams every day and your next exam will be a walkover!.



STAY SAFE,STAY HEALTHY !





- Darphiz  (EASYcampus)');

DROP TABLE IF EXISTS accounts_userprofile;
CREATE TABLE IF NOT EXISTS `accounts_userprofile` (`id` integer NOT NULL PRIMARY KEY , `faculty` varchar(100) NOT NULL, `level` varchar(100) NOT NULL, `gender` varchar(100) NOT NULL, `user_id` integer NOT NULL UNIQUE REFERENCES `auth_user` (`id`) , `premium` bool NOT NULL);

INSERT INTO accounts_userprofile VALUES(3,'Faculty of Agriculture','100L','female',5,0);

INSERT INTO accounts_userprofile VALUES(4,'Faculty of Engineering','200L','male',6,0);

INSERT INTO accounts_userprofile VALUES(5,'Faculty of Engineering','200L','male',7,0);

INSERT INTO accounts_userprofile VALUES(6,'Faculty of Engineering','100L','male',8,0);

INSERT INTO accounts_userprofile VALUES(7,'Faculty of Education','100L','male',9,0);

INSERT INTO accounts_userprofile VALUES(8,'Faculty of Engineering','200L','male',10,0);

INSERT INTO accounts_userprofile VALUES(9,'Faculty of Education','100L','male',11,0);

INSERT INTO accounts_userprofile VALUES(10,'Faculty of Engineering','100L','male',12,0);

INSERT INTO accounts_userprofile VALUES(11,'Faculty of Engineering','100L','female',13,0);

INSERT INTO accounts_userprofile VALUES(12,'Faculty of Science','100L','male',14,0);

INSERT INTO accounts_userprofile VALUES(13,'Faculty of Agriculture','300L','male',15,0);

INSERT INTO accounts_userprofile VALUES(14,'Faculty of Engineering','200L','male',16,0);

INSERT INTO accounts_userprofile VALUES(15,'Faculty of Engineering','100L','male',17,0);

INSERT INTO accounts_userprofile VALUES(16,'Faculty of Agriculture','100L','female',18,0);

INSERT INTO accounts_userprofile VALUES(17,'Faculty of Engineering','100L','male',19,0);

INSERT INTO accounts_userprofile VALUES(18,'Faculty of Engineering','100L','male',20,0);

INSERT INTO accounts_userprofile VALUES(19,'Faculty of Engineering','100L','male',21,0);

INSERT INTO accounts_userprofile VALUES(20,'Faculty of Engineering','100L','female',22,0);

INSERT INTO accounts_userprofile VALUES(21,'Faculty of Education','100L','female',23,0);

INSERT INTO accounts_userprofile VALUES(22,'Faculty of Science','100L','male',24,0);

INSERT INTO accounts_userprofile VALUES(23,'Faculty of Science','300L','male',25,0);

INSERT INTO accounts_userprofile VALUES(24,'Faculty of Education','100L','male',26,0);

INSERT INTO accounts_userprofile VALUES(25,'Faculty of Science','100L','male',27,0);

INSERT INTO accounts_userprofile VALUES(26,'Faculty of Faculty of Management Science','100L','male',28,0);

INSERT INTO accounts_userprofile VALUES(27,'Faculty of Faculty of Management Science','100L','male',29,0);

INSERT INTO accounts_userprofile VALUES(28,'Faculty of Engineering','100L','male',30,0);

INSERT INTO accounts_userprofile VALUES(29,'Faculty of Science','100L','male',31,0);

INSERT INTO accounts_userprofile VALUES(30,'Faculty of Agriculture','100L','male',32,0);

INSERT INTO accounts_userprofile VALUES(31,'Faculty of Science','100L','male',33,0);

INSERT INTO accounts_userprofile VALUES(32,'Faculty of Education','100L','female',34,0);

INSERT INTO accounts_userprofile VALUES(33,'Faculty of Agriculture','100L','female',35,0);

INSERT INTO accounts_userprofile VALUES(34,'Faculty of Agriculture','100L','male',36,0);

INSERT INTO accounts_userprofile VALUES(35,'Faculty of Agriculture','100L','male',37,0);

INSERT INTO accounts_userprofile VALUES(36,'Faculty of Science','100L','male',38,0);

INSERT INTO accounts_userprofile VALUES(37,'Faculty of Engineering','100L','male',39,0);

INSERT INTO accounts_userprofile VALUES(38,'Faculty of Agriculture','100L','male',40,0);

INSERT INTO accounts_userprofile VALUES(39,'Faculty of Agriculture','100L','male',41,0);

INSERT INTO accounts_userprofile VALUES(40,'Faculty of Agriculture','100L','male',42,0);

INSERT INTO accounts_userprofile VALUES(41,'Faculty of Agriculture','100L','male',43,0);

INSERT INTO accounts_userprofile VALUES(42,'Faculty of Agriculture','100L','female',44,0);

INSERT INTO accounts_userprofile VALUES(43,'Faculty of Engineering','100L','female',45,0);

INSERT INTO accounts_userprofile VALUES(44,'Faculty of Agriculture','100L','female',46,0);

INSERT INTO accounts_userprofile VALUES(45,'Faculty of Agriculture','100L','male',47,0);

INSERT INTO accounts_userprofile VALUES(46,'Faculty of Science','100L','male',48,0);

INSERT INTO accounts_userprofile VALUES(47,'Faculty of Engineering','100L','male',49,0);

INSERT INTO accounts_userprofile VALUES(48,'Faculty of Engineering','100L','female',50,0);

INSERT INTO accounts_userprofile VALUES(49,'Faculty of Engineering','100L','male',51,0);

INSERT INTO accounts_userprofile VALUES(50,'Faculty of Education','200L','female',52,0);

INSERT INTO accounts_userprofile VALUES(51,'Faculty of Education','100L','male',53,0);

INSERT INTO accounts_userprofile VALUES(52,'Faculty of Science','100L','female',54,0);

INSERT INTO accounts_userprofile VALUES(53,'Faculty of Education','100L','male',55,0);

INSERT INTO accounts_userprofile VALUES(54,'Faculty of Engineering','100L','male',56,0);

INSERT INTO accounts_userprofile VALUES(55,'Faculty of Education','100L','female',57,0);

INSERT INTO accounts_userprofile VALUES(56,'Faculty of Science','100L','male',58,0);

INSERT INTO accounts_userprofile VALUES(57,'Faculty of Agriculture','100L','male',59,0);

INSERT INTO accounts_userprofile VALUES(58,'Faculty of Education','100L','male',60,0);

INSERT INTO accounts_userprofile VALUES(59,'Faculty of Engineering','100L','male',61,0);

INSERT INTO accounts_userprofile VALUES(60,'Faculty of Engineering','100L','male',63,0);

INSERT INTO accounts_userprofile VALUES(61,'Faculty of Science','100L','female',64,0);

INSERT INTO accounts_userprofile VALUES(62,'Others','100L','male',65,0);

INSERT INTO accounts_userprofile VALUES(63,'Faculty of Engineering','100L','male',66,0);

INSERT INTO accounts_userprofile VALUES(64,'Faculty of Education','100L','male',67,1);

DROP TABLE IF EXISTS premium_premium_user;
CREATE TABLE IF NOT EXISTS `premium_premium_user` (`id` integer NOT NULL PRIMARY KEY , `premium_id` varchar(100) NOT NULL, `paid` bool NOT NULL, `braintree_id` varchar(150) NOT NULL, `user_id` integer NOT NULL REFERENCES `auth_user` (`id`) );

INSERT INTO premium_premium_user VALUES(13,'809953082',0,'',62);

INSERT INTO premium_premium_user VALUES(14,'830003993',0,'',62);

INSERT INTO premium_premium_user VALUES(15,'886873419',0,'',62);

DROP TABLE IF EXISTS blog_post;
CREATE TABLE IF NOT EXISTS `blog_post` (`id` integer NOT NULL PRIMARY KEY , `title` varchar(250) NOT NULL, `slug` varchar(250) NOT NULL, `publish` datetime NOT NULL, `created` datetime NOT NULL, `updated` datetime NOT NULL, `status` varchar(10) NOT NULL, `author_id` integer NOT NULL REFERENCES `auth_user` (`id`) , `image_upload` varchar(100) NOT NULL, `category` varchar(20) NOT NULL, `body` text NOT NULL);


INSERT INTO blog_post VALUES(4,'FUOYE shines at NUTAF 2019','fuoye-shines-nutaf-2019','2020-01-15 23:16:32','2020-01-15 23:17:07.267267','2020-05-01 09:07:59.571099','published',2,'pics/Fuoyeart1_G2fHJ6P.jpg','fuoyenews','Federal University Oye-Ekiti (FUOYE), Ekiti State, has again shined at a national event, Nigerian Universities'' Theatre Arts Festival (NUTAF), by winning gold in drama performance, third position in drums ensemble, and best individual talents in directing, acting, costuming and make-up. A team of 25 students of the Department of Theatre and Media Arts (TMA), FUOYE led by their staff adviser, Mr. Tayo Isijola, won the laurels at this year''s edition of NUTAF held at the National Theatre, Iganmu, Lagos.



The feat came barely two months after the same TMA took third position in their maiden participation in a global event,  African Drum Festival. Other departments in FUOYE including Mechatronics, Food technology and Agriculture among others have also won laurels at different contests.



Speaking about the festival, a founding member of staff of FUOYE,  pioneer Head of Department (HOD) of TMA, FUOYE, and current Dean, Post Graduate Studies, Prof. Rasaki Ojo Bakare, said: " The first edition of the Nigerian Universities'' Theatre Arts Festival, (NUTAF), held at the University of Ibadan (U.I) in 1981, about 40 years ago now. It is usually organised by the Nigerian Universities Theatre Arts Students'' Association (NUTASA) under the supervision of members of the Society of Nigerian Theatre Artists, (SONTA), a body of Theatre lecturers. NUTAF is to the creative sector what Nigerian Universities Games (NUGA) is to the sports sector.



"FUOYE Theatre Arts department officially  registered for the festival in 2017, but could not attend. In 2018, we attended as observers according to the regulation of NUTAF.  This year, 2019, our team went to compete and we got many laurels. We got gold in the major event which is drama and took third position in drums ensemble. In the category of individual talents, out of about six of such categories, we took four by winning the best director, make up, costume and actor.



" The implication of this feat is that for the next one year, FUOYE is the leader of all the 52 universities that offer Theatre Arts in Nigeria.



Our winning team is a group of 25 students drawn from 100 level to 400 level and we supervised them," he said.



When asked how FUOYE team managed to prepare and attend the festival in spite of the closure of the university, the university don who is a Fellow of NANTAP, SONTA and DGN explained that: " the closure of the university was a major challenge. Our team was mid way into their preparations, and the students went home abandoning their rehearsals.  But l convinced the HOD, Dr. Desen Jonathan Mbachaga and the staff adviser, Tayo Isijola to allow us take a risk. So, about 10 days to the commencement of NUTAF in Lagos, we asked the students to leave their homes and come to Ado Ekiti and we camped them in my house.



We looked for something to make them survive while they continued with their rehearsals using my premises.



"The students too cooperated and also took some money from their pockets to survive. When it was a day to the event, we raised money for transportation to and fro and also provided money for costumes, props and other instruments and equipment they needed for  the competition. We convinced the students to feed themselves during the seven day festival. We did all these because we know that our VC is very understanding and highly supportive and would approve our requests for funds when the school reopens and we can process the students'' request officially.



" In Lagos now and in the culture sector and other relevant quarters, FUOYE is on the lips of every one. FUOYE''s drama entry at the festival is in tandem with the theme of this year''s NUTAF which is '' Theatre, Governance and Globalization".



"A message from this feat and other feats many other departments in FUOYE have attained, is that our students should  know that they are being moulded by the best hands. Apart from 1981 when all the universities participated for the first time, no other first timer university has achieved what FUOYE has achieved in NUTAF.  I hope this would now open the eyes of the students to the fact that their choice of FUOYE was not a mistake. We appreciate the university management led by our able  VC, Prof. Kayode Soremekun for his immense support which has provided a conducive environment for creativity to thrive in FUOYE, " he said.



[Source: fuoye.edu.ng]');

INSERT INTO blog_post VALUES(5,'About easy CAMPUS Exam simulator','about-easycampus-exam-simulator','2020-01-15 23:43:49','2020-01-15 23:47:36.476887','2020-05-01 09:08:25.467934','published',2,'pics/cbt_JwxiXle.jpeg','others','Practice all FUOYE Past Questions here on easycampus.com and blast your upcoming exam!. The simulator is useful for every students especially 1st year students,because most of their exams is Computer Based Test.



For wonderful experience, its recomended you use chrome browser.



There are 2 modes available for now

<b> 1. The quiz mode; </b>

The answer and explanation to the question is shown after answering it and performance is shown after ten attempts. This mode is not time dependent.



<b> 2. The CBT mode; </b>

This is like the real exam, answers and explanations are shown at the end of the exam. its is time dependent ,as the time counts down from 30minutes. The exam is automatically submitted when the time reach 0!



Discipline yourself to practice at least 10 free CBT tests right here everyday,by doing this you get rid of exam phobia and learn proper time management .');

INSERT INTO blog_post VALUES(6,'JAMB threatens to sanction e-PIN outlets over fraud, arrests five agents','jamb-threatens-sanction-e-pin-outlets-over-fraud-arrests-five-agents','2020-01-16 00:03:03','2020-01-16 00:04:56.459923','2020-05-01 09:07:41.864762','draft',2,'pics/Official_JAMB_logo.png','fuoyeAspirant','ABUJA- THE Joint Admissions and Matriculation Board,JAMB, has threatened to sanction its e-PIN  outlet agents found involved in fraudulent practices.



This came as it  arrested four agents for allegedly selling ePINS for the ongoing 2020 Unified Tertiary Matriculation Examination,UTME and Direct Entry,DE, registrations above the stipulated amount.



The board,in a statement, yesterday, by its Head of Information, Dr. Fabian Benjamin, warned that any outlet caught selling the ePINS  higher than the prescribed amount would be sanctioned immediately.



JAMB said the arrested vendors have been suspended from further participation in the selling of ePINs for the 2020 UTME, parents and candidates have been advised to promptly report any case of exploitation. JAMB notes that the cost of the ePINs is N3500 and the reading text N500.



The statement read: “It has come to the knowledge of the Board that agents of certain registered sale outlets are vending the JAMB Registration ePINs at a cost higher than the prescribed fee.



“The Board wishes to reiterate that any outlet whose agents sell the ePINs above the prescribed fee shall be sanctioned. Sanctions to be meted out would include immediate revocation of the license to sell.



The Board, therefore, appeals to all outlets to register only credible tellers for the vending.



“On Tuesday, January 14, 2020, four agents: Abdulrazak Adiza; Mathew Joe; Obekee Godday and Inyang Patrick were arrested for selling ePINs above the stipulated fee and the vendors were immediately suspended from further participation in the selling of ePINs for the 2020 Unfied Tertiary Matriculation Examination (UTME)/Direct Entry (DE) registration exercise.



“On Wednesday, January 15, 2020, one Amodu Friday was apprehended vending the ePINs above the regulated fee. Investigations also revealed that he was actually issuing receipts covering the regulated fee but collecting higher. This is a clear instance of criminality.”



Meanwhile, the board has announced that out of the 692 approved 2020 UTME  registration centres, there would be no and should be no registration today in the 243 centres holding third-party recruitment examination.



While regretting any inconveniences caused by the one day shift, the board explained that  registrations have been shifted to Friday in order to avoid overcrowding of centres due to the nationwide recruitment examinations.



Vanguard



Kindly Share This Story:

Source:

https://www.vanguardngr.com/2020/01/jamb-threatens-to-sanction-e-pin-outlets-over-fraud-arrests-five-agents/');

INSERT INTO blog_post VALUES(7,'Some Habits Inherent in Successful People','some-habits-inherent-successful-people','2020-02-03 04:30:03','2020-02-03 04:37:03.336416','2020-05-17 13:32:24.179814','published',2,'pics/successfulpeople.jpeg','edutainnment','I can''t remember the last time I had a fight with anyone. Here I am, sitting and thinking of how my life got shaped — to this extent. Just like a flash of light, I recalled my last speech during my high school days. I was (and still am) one of those who love to show people the ‘hows’ of breaking free from so many chains, chains you locked yourself in, by yourself. It was so easy a job to do, because I was myself, not just addicted to so many habits, but was an addiction myself.



I remember my last high school speech. It was centered on ‘HABITS.’ I can’t define what an Habit is, but I sure know that your HABIT(S) is(/are) clinical in forming the person you’d become. Your habit is what makes or breaks you. Take as second, and think of who you are right now. Think deeply. What made you the who that you are today? Was it magical?



Scientifically, it takes just 21 days to make an habit, and trust me, it takes far more than that to break it. When I was much younger, my Dad would say, “it is better that an evil spirit doesn’t gain entrance to your life in the first place, than trying to cast it out, after entrance. You’d never remain the same.” This is the case with habits as well.



<b>The following are cogent points on HABITS:</b>



1.) Habits are learned behaviours.

2.) Habit is something you can be described with.

3.) No matter how frequently you pray for success, if your habits aren’t geared towards success, it’s vain.

4.) Habits dictates our life.

5.) The habits for failure or success are as common as nose picking, nail biting, etc. The only difference is that, those for success of failure are hidden, they aren’t palpable.

6.) We first make habits. Then habits make us in return.

7.) Habits are to be enjoyed. When they aren’t, check yourself. Successful people ride along with their habits.



Habits of successful people:



<b>HABITS ARE FAR MORE THAN WHAT THEY LOOK LIKE AT THE SURFACE</b>

 Habits are deep-rooted materials. They are like the harmless view of dilute Hydrochloric acid, yet move a little closer and touch. That habit you have is a constituent of your eventual success or failure.



You go around trying to change what we can change within. Your habit is your way of life. Can I add that the results we run around looking for, is in the process we run away from. Focus on what needs to be focused on, and let go of what is trivial. That’s how to deal with habits.



• The following are major habits of successful people:



~ They find breakthrough where others see problems: Does it sound ambiguous? No. Seeing problems as problems is a bad habit that has blinded people from their success. Fortunately, successful people know that every problem comes attached with a solution.



~ They are hardworking: There is a huge difference between hard labour and hardwork. Hard labour is a curse, Hardworking brings blessings. I refer to an article I wrote some months ago titled ‘Busyness versus Accomplishment.’ I wrote, “some people just busy without any productivity.” This is not the case with successful people. Remember, success is a process, other than a result.



~ They are not controlled or limited by fear: Fear is illusion in the lens of the successful. They face everything that comes their way, with a willing mind.



~ They always strive to maximise their potential: Successful people die empty. Know ye not that the graveyard is richer than the oil fields of Saudi Arabia? But not one successful person is in that statistics.



By Seyi Babs

<a href="https://www.twitter.com/Seyi_Babs1">Follow</a> Seyi babs on twitter');

INSERT INTO blog_post VALUES(8,'10 Study Hacks to Improve Your Memory','10-study-hacks-improve-your-memory','2020-02-12 07:26:26','2020-02-12 07:28:40.277492','2020-02-12 08:08:21.611380','published',2,'pics/remember.jpg','edutainnment','Studying becomes valuable when you can remember what you’ve learned so you can apply it where you most likely need it.



    A lot of us probably stood out during those tests but if you try to answer those questions again, you most likely forgot about them.



<b class="w3-tag">The reason:</b>

Your brain failed to create necessary connections in order to remember information.

The brain is comparable to a bookshelf. Imagine walking into a library filled with thousands of books. You are about to borrow a book and the genres are all mixed up together. There are no labels and catalogs to indicate where they are. I bet you would be wasting time looking and end up being frustrated that would prompt you to … “abort the mission.”

That’s how equally frustrating when you want to remember something you’ve studied yet you could not pull it in times of use.



If you have an efficient system to learn information, you’ll likely to remember them more. You can store this information properly and put them to use when needed.

<b>This quick and easy tips will not only help you remember everything you study but also boost your memory.</b>

So without further ado or delay, let’s get to it!





<b class="w3-text-teal w3-xlarge">1.  Speak Out Loud Instead of Simply Reading </b>

Although this may make you look a little crazy, give it a go! You will be surprised how much more you can remember

when you’ve said it out loud.

<span class= "w3-text-red"><b>Warning: Don’t try this in a crowded library!</b></span>







<b class="w3-text-teal  w3-xlarge">2.  Have separate study sessions: </b>

When you are studying, try not to learn everything at one go. That would be just horrible! Not only will your mind get blocked but also stops your brain from processing anything important. So when you are studying, don’t study maths, English, history and sociology one after the other. Study one subject thoroughly and plan on other study sessions if you would like to remember all of it in the long run. You should also get up once in a while, go for a walk, drink some water and try a healthy snack.







<b class="w3-text-teal w3-xlarge">3.  Teach What You Have Learned </b>

The best way to test if you really understand something is to try to teach it to someone else. If you can’t get anyone to listen to you explain the<b> Pythagorean Theorem</b>







<b class="w3-text-teal w3-xlarge"> 4. Take Regular Study Breaks</b>

When your brain is working, you need to take regular study breaks to help your brain absorb more information but also to keep you motivated and focused when you are working. Take a short break after 45-50 minutes study as your focus and concentration will become impaired after this period, anything new after 1 hour 30 minutes does not get assimilated.







<b class="w3-text-teal w3-xlarge">5. Draw Diagrams </b>

Drawing diagrams will help you to visualise information which would be hard to describe. This creates a visual memory in your mind which can be recalled in an exam. You may even be asked to draw or label diagrams such as the human heart in your exam so get practicing!







<b class="w3-text-teal w3-xlarge">6. Get rid of all procrastination:</b>

You should also get rid of everything that stops you from studying. Things that make you delay study time are just horrible for your mind. They never help you remember a single thing. You should make a list and plan your study time. Keep your phone away and make it a point to keep miles away from all kinds of distractions. Some of you tend to let your mind wander a lot while studying. That happens if you don’t study on a regular basis. But you can also develop that by simply telling your mind to getting back to your study material.







<b class="w3-text-teal w3-xlarge">7. Don’t Stay Up All Night Before an Exam</b>

Make sure to get adequate rest the nights leading up to your exams. When you sleep, your brain assimilates the information you have learned when studying so getting a good night’s sleep will help you remember those pesky maths formulas you need for your exam!







<b class="w3-text-teal w3-xlarge">8. Discover News Ways to Learn</b>

Trying new study methods can help you find what really works for you. Use technology to your advantage by watching educational TED Talks,youtube or downloading useful dictionary apps.







<b class="w3-text-teal w3-xlarge"> 9.  Write It </b>

Writing helps you remember what you learnt. People who have tried and tested this earlier have always succeeded. You can always store information in your brain if you simply remember what you jotting it down in your notebook. Start off by writing down all important points and see how it goes.







<b class="w3-text-teal w3-xlarge">10. Practice, Practice, Practice…</b>

Practicing sample answers to past exam questions can help train your brain to retrieve information. The same applies to Reading Tests.  Create realistic, exam-like condition and test your understanding by using our<a href ="https://darphiz.pythonanywhere.com/cbt/quiz_index/" > new Quiz tool</a>.');

INSERT INTO blog_post VALUES(9,'Career Choice Of Wards: A PARENT''S DUTY?','career-choice-wards-parents-duty','2020-02-13 07:45:10','2020-02-13 07:55:00.593309','2020-05-17 13:29:16.660265','published',2,'pics/images_2.jpeg','edutainnment','<b class = \'w3-text-teal w3-large\'>Welcome to Africa. </b>





In this part of the world, it is not strange to see parents choose what clothes their kids should wear, what friends they should move with, what food they should eat, what schools they should attend, what grade they should graduate with, what course to study, and prolly, who to marry. It is prevalent in our society today to see such happenings. Time over time, we begin to question if this should be the case. While we examine the scenario, we''d try to strike a balance, and point to where the parent''s influence should come in.



It is true that Parents know their children to a reasonable extent. This is so because they birthed and nurtured these kids from infancy. Whilst the above is perfectly correct, we should know that career options are a matter of the future. It in a way or more, determines the future of these kids. A lot of kids can be seen taking to the command of their parents by studying a specific assigned course only for a short while, only to later dive into an entirely different path. This could be avoided from the onset.





In like manner, it is important to distinguish between INTEREST and STRENGTH. Many at times, parents'' decision on forceful career choices for their wards are only a result of the strength the child possesses. They insist that a child skillful in Mathematics must study an Engineering course. The area in which a child is strongly footed in might not be his area of interest. A lot of kids with magical brains could be interested in a sporting career. As well, the kids succumb to their parents'' wishes out of emotions, and may later end up in regrets.





Furthermore, every child has a unique ability. That area which the parent thinks the child is good in might not be his unique area. For sure, only the child would know. Yet, some parents go this far in selecting a totally different career, because of their selfish interests. Some parents want a particular number of Doctors, Engineers and/or Lawyers to spring from their family. This concept is vague and archaic.



<b class="w3-text-teal w3-large">What then should be the role of the Parent in their Ward''s career choice? </b>





A parent is like an adviser. He/she is meant to be a guardian and not an imposer; like a compass. When he notices the child''s strength, look out for his unique skills as well. When she is interested in Fashion, direct her in that path, like a potter.





[Author : Seyi_Babs ]



<i> <a href = "https://www.twitter.com/Seyi_Babs1"> follow seyi_babs on twitter </a></i>');

INSERT INTO blog_post VALUES(10,'COVID-19 Cases Hits 31 In Nigeria','covid-19-cases-hits-31-nigeria','2020-03-23 07:59:42','2020-03-23 08:02:28.410359','2020-05-17 13:29:33.646758','published',2,'pics/images_4.jpeg','others','The coronavirus cases in the country increased from 22 on Saturday to 31 on Sunday.



The  Nigeria Centre for Disease Control, in its Twitter handle on Sunday, said the cases included 22 in Lagos State, four in the Federal Capital Territory, one in Oyo State and one in Ekiti State.



The centre said the two in Ogun State, including the Italian index case, had tested negative and had been discharged.





At 11:32pm on Sunday, former Vice-President Atiku Abubakar, tweeted that one of his sons had tested positive for the disease.



The NCDC stated, “Three new cases of #COVID19 have been confirmed in Lagos, Nigeria. Two cases are returning travellers and one is a contact of a confirmed case.  As of 05:28 pm on the 22nd of March, there are 30 confirmed cases of #COVID19 in Nigeria. Two have been discharged with no deaths.”



Nigeria recorded its first coronavirus case on February 27 when an Italian was diagnosed with the disease.





On March 19, the cases rose to 12 with most of the affected people being returnees from Europe and the United States.  On Saturday, the cases increased to 22 with Abuja recording its first cases.



As of 11am on Sunday, the NCDC said the cases were 27 in the country. It stated that the cases included 19 in Lagos; four in the  FCT;  one in  Ekiti;  one in  Oyo and two in Ogun.



But on Sunday evening, the number increased to 31 with three new cases in Lagos State and Atiku’s son who tested positive.



[Source: PunchNG ]');

DROP TABLE IF EXISTS cbt_quiz;
CREATE TABLE IF NOT EXISTS `cbt_quiz` (`id` integer NOT NULL PRIMARY KEY , `title` varchar(60) NOT NULL, `description` text NOT NULL, `url` varchar(60) NOT NULL, `random_order` bool NOT NULL, `max_questions` integer unsigned NULL CHECK (`max_questions` >= 0), `answers_at_end` bool NOT NULL, `exam_paper` bool NOT NULL, `single_attempt` bool NOT NULL, `pass_mark` smallint NOT NULL, `success_text` text NOT NULL, `fail_text` text NOT NULL, `draft` bool NOT NULL, `category_id` integer NULL REFERENCES `cbt_category` (`id`) , `premium` bool NOT NULL);

INSERT INTO cbt_quiz VALUES(1,'CHM101','CHM101







General Chemistry I (3 units)





Physical quantities and Units, Error treatments, States of matter: Derivation and calculations involving the use of the laws of gases. The mole concepts and determination of relative masses. Chemical equation and Stoichiometry: Modern electronic theory of atoms and electronic Configuration. Building up of periodic table and the periodicity. Chemical bonding and intermolecular bonds. Concept of Acid, Base and Salts. Chemical equlibria. Chemical Kinetics. Thermochemistry. Electrochemistry. Introduction to Nuclear Chemistry.','chm101',1,10,0,0,0,40,'You scored above the pass mark. Keep trying , do not rest on your OAR!','If I fail, I try again, and again, and again. If YOU fail, are you going to try again? The human spirit can handle much worse than we realize. It matters HOW you are going to FINISH. Are you going to finish strong?',0,1,0);

INSERT INTO cbt_quiz VALUES(2,'PHY101','(Mechanics, Thermal Physics and Waves)

Space and Time, frames of reference, Units and dimension, kinematics; Fundamental laws of mechanics, Statics and dynamics; Galilean invariance; Universal gravitation, work and energy; rotational dynamics and angular momentum, conservation laws.','phy101',1,10,0,0,0,40,'Good Performance keep practicing !','You need to study more ,keep practicing! you will get there',0,2,0);

INSERT INTO cbt_quiz VALUES(3,'GST101','GST101



Communication in English I (2 Units)





Communication in English will focus on two languages skills: listening and speaking as word classes. Listening skills: listening strategies, note‐taking, Speaking skills: segmental consonants, vowels; supra‐segment‐stress, intonation; dictionary and pronunciation skills in English; grammatical structures and communication: nouns, verbs, pronouns, adverbs, prepositions and adjectives in communication, English, sentence types, punctuation marks, vocabulary development, common errors, figures of speech, and effective communication, spelling. Students are to read two recommended texts.','gst101',1,10,0,0,0,40,'You scored above the pass mark. Keep trying , do not rest on your OAR!','If I fail, I try again, and again, and again. If YOU fail, are you going to try again? The human spirit can handle much worse than we realize. It matters HOW you are going to FINISH. Are you going to finish strong?',0,3,0);

INSERT INTO cbt_quiz VALUES(4,'GST103','Use of Library and ICT (2 Units)



Introduction to Library and conceptual clarification. Types of Libraries, Library organisation. Serial and Research departments, Readers services division and reference collections, Library rules and regulations, Library Automation, Hands on online databases such as TEEAL, MIT Courseware, HINARI, OARE, AGORA, etc. The basic concepts of processes, programs and the components of an Operating System. Basic knowledge of computer hardware. Demonstrating knowledge of Open Source Applications in the Workplace as they relate to Closed Source equivalents. Navigation systems on a Linux Desktop and where to go for help. A rudimentary ability to work on the command line and with files. The use of basic command line editor.','gst103',1,1,0,0,0,40,'You scored above the pass mark. Keep trying , do not rest on your OAR!','If I fail, I try again, and again, and again. If YOU fail, are you going to try again? The human spirit can handle much worse than we realize. It matters HOW you are going to FINISH. Are you going to finish strong?',0,4,0);

INSERT INTO cbt_quiz VALUES(5,'GST105','Introduction to Entrepreneurship (1 Unit)



History and background of entrepreneurship. Theories of entrepreneurship thought. Definition of entrepreneurship and management. Entrepreneurship theory and Nigeria experience. Approaches to entrepreneurship; psychological approach, sociological approach and distinctive competence. Understanding the entrepreneurship mindset. Business opportunities profile. Entrepreneurship case analysis/training workshop.','gst105',1,1,0,0,0,40,'You scored above the pass mark. Keep trying , do not rest on your OAR!','If I fail, I try again, and again, and again. If YOU fail, are you going to try again? The human spirit can handle much worse than we realize. It matters HOW you are going to FINISH. Are you going to finish strong?',0,5,0);

INSERT INTO cbt_quiz VALUES(6,'MTH101','Elementary Mathematics I (3 Units)



(Algebra and Trigonometry)

Elementary set theory; Subsets; Union; Intersection; Complements, Venn diagrams. Real numbers: integers, rational and irrational numbers, mathematical induction, real sequences and series, theory of quadratic equations, binomial theorem. Complex numbers: algebra of complex numbers; the Argand Diagram. Re moivre’s theorem, nth roots of unity. Circular measure, trigonometric functions of angles of any magnitude, addition and factor formulae','mth101',1,1,0,0,0,40,'You scored above the pass mark. Keep trying , do not rest on your OAR!','If I fail, I try again, and again, and again. If YOU fail, are you going to try again? The human spirit can handle much worse than we realize. It matters HOW you are going to FINISH. Are you going to finish strong?',0,6,0);

INSERT INTO cbt_quiz VALUES(7,'MTH103','Elementary Mathematics III (3 Units)

(Vectors, geometry and dynamics)



Geometric representation of vectors in 1 – 3 dimensions, components, direction cosines. Addition, Scalar, multiplication of vectors, linear independence. Scalar and vector products of two vectors. Differentiation and integration of vectors with respect to a scalar variable. Two-dimensional co-ordinate geometry. Straight lines, circles, parabola, ellipse, hyperbola. Tangents, normals, Kinematics of a particle. Components of velocity and acceleration of a particle moving in a plane. Force, momentum, laws of motion under gravity, projectiles, resisted vertical motion. Angular momentum. Simple harmonic motion, elastic string, simple pendulum, impulse. Impact of two smooth sphere and of a sphere on a smooth surface.','mth103',1,1,0,0,0,40,'You scored above the pass mark. Keep trying , do not rest on your OAR!','If I fail, I try again, and again, and again. If YOU fail, are you going to try again? The human spirit can handle much worse than we realize. It matters HOW you are going to FINISH. Are you going to finish strong?',0,7,0);

INSERT INTO cbt_quiz VALUES(8,'PHY103','General Physics II (2 Units)



(Electricity, Magnetism and Modern Physics)

Electrostatics, Conductors and Currents, dielectrics; magnetic fields and induction, maxwell’s equations, electromagnetic oscillations and waves.Applications.','phy103',1,1,0,0,0,40,'You scored above the pass mark. Keep trying , do not rest on your OAR!','If I fail, I try again, and again, and again. If YOU fail, are you going to try again? The human spirit can handle much worse than we realize. It matters HOW you are going to FINISH. Are you going to finish strong?',0,8,0);

INSERT INTO cbt_quiz VALUES(9,'BIO101','General Biology 1','bio101',1,10,0,0,0,40,'You scored above the pass mark. Keep trying , do not rest on your OAR!','If I fail, I try again, and again, and again. If YOU fail, are you going to try again? The human spirit can handle much worse than we realize. It matters HOW you are going to FINISH. Are you going to finish strong?',0,9,0);

INSERT INTO cbt_quiz VALUES(10,'CHM101 EXAM','General Chemistry I (3 units)





Physical quantities and Units, Error treatments, States of matter: Derivation and calculations involving the use of the laws of gases. The mole concepts and determination of relative masses. Chemical equation and Stoichiometry: Modern electronic theory of atoms and electronic Configuration. Building up of periodic table and the periodicity. Chemical bonding and intermolecular bonds. Concept of Acid, Base and Salts. Chemical equlibria. Chemical Kinetics. Thermochemistry. Electrochemistry. Introduction to Nuclear Chemistry.','chm101exam',1,15,1,0,0,40,'You scored above the pass mark. Keep trying , do not rest on your OAR!','If I fail, I try again, and again, and again. If YOU fail, are you going to try again? The human spirit can handle much worse than we realize. It matters HOW you are going to FINISH. Are you going to finish strong?',0,1,1);

INSERT INTO cbt_quiz VALUES(11,'BIO101 EXAM','General Biology 1','bio101exam',1,20,1,0,0,40,'You scored above the pass mark. Keep trying , do not rest on your OAR!','If I fail, I try again, and again, and again. If YOU fail, are you going to try again? The human spirit can handle much worse than we realize. It matters HOW you are going to FINISH. Are you going to finish strong?',0,9,1);

INSERT INTO cbt_quiz VALUES(12,'GST101 EXAM','GST101



Communication in English I (2 Units)





Communication in English will focus on two languages skills: listening and speaking as word classes. Listening skills: listening strategies, note‐taking, Speaking skills: segmental consonants, vowels; supra‐segment‐stress, intonation; dictionary and pronunciation skills in English; grammatical structures and communication: nouns, verbs, pronouns, adverbs, prepositions and adjectives in communication, English, sentence types, punctuation marks, vocabulary development, common errors, figures of speech, and effective communication, spelling. Students are to read two recommended texts.','gst101exam',1,25,1,0,0,40,'You scored above the pass mark. Keep trying , do not rest on your OAR!','If I fail, I try again, and again, and again. If YOU fail, are you going to try again? The human spirit can handle much worse than we realize. It matters HOW you are going to FINISH. Are you going to finish strong?',0,3,0);

INSERT INTO cbt_quiz VALUES(13,'PHY101 EXAM','(Mechanics, Thermal Physics and Waves)

Space and Time, frames of reference, Units and dimension, kinematics; Fundamental laws of mechanics, Statics and dynamics; Galilean invariance; Universal gravitation, work and energy; rotational dynamics and angular momentum, conservation laws.','phy101exam',1,25,1,0,0,40,'Good Performance keep practicing !','You need to study more ,keep practicing! you will get there',0,2,1);

DROP TABLE IF EXISTS mcq_mcqquestion;
CREATE TABLE IF NOT EXISTS `mcq_mcqquestion` (`question_ptr_id` integer NOT NULL PRIMARY KEY REFERENCES `cbt_question` (`id`) , `answer_order` varchar(30) NOT NULL);

INSERT INTO mcq_mcqquestion VALUES(1,'random');

INSERT INTO mcq_mcqquestion VALUES(2,'random');

INSERT INTO mcq_mcqquestion VALUES(3,'random');

INSERT INTO mcq_mcqquestion VALUES(4,'random');

INSERT INTO mcq_mcqquestion VALUES(5,'random');

INSERT INTO mcq_mcqquestion VALUES(6,'random');

INSERT INTO mcq_mcqquestion VALUES(7,'random');

INSERT INTO mcq_mcqquestion VALUES(8,'random');

INSERT INTO mcq_mcqquestion VALUES(9,'random');

INSERT INTO mcq_mcqquestion VALUES(10,'random');

INSERT INTO mcq_mcqquestion VALUES(11,'random');

INSERT INTO mcq_mcqquestion VALUES(12,'random');

INSERT INTO mcq_mcqquestion VALUES(13,'random');

INSERT INTO mcq_mcqquestion VALUES(14,'random');

INSERT INTO mcq_mcqquestion VALUES(15,'random');

INSERT INTO mcq_mcqquestion VALUES(16,'random');

INSERT INTO mcq_mcqquestion VALUES(17,'random');

INSERT INTO mcq_mcqquestion VALUES(18,'random');

INSERT INTO mcq_mcqquestion VALUES(19,'random');

INSERT INTO mcq_mcqquestion VALUES(20,'random');

INSERT INTO mcq_mcqquestion VALUES(21,'random');

INSERT INTO mcq_mcqquestion VALUES(22,'random');

INSERT INTO mcq_mcqquestion VALUES(23,'random');

INSERT INTO mcq_mcqquestion VALUES(24,'random');

INSERT INTO mcq_mcqquestion VALUES(25,'random');

INSERT INTO mcq_mcqquestion VALUES(26,'random');

INSERT INTO mcq_mcqquestion VALUES(27,'random');

INSERT INTO mcq_mcqquestion VALUES(28,'random');

INSERT INTO mcq_mcqquestion VALUES(29,'random');

INSERT INTO mcq_mcqquestion VALUES(30,'random');

INSERT INTO mcq_mcqquestion VALUES(31,'random');

INSERT INTO mcq_mcqquestion VALUES(32,'random');

INSERT INTO mcq_mcqquestion VALUES(33,'random');

INSERT INTO mcq_mcqquestion VALUES(34,'random');

INSERT INTO mcq_mcqquestion VALUES(35,'random');

INSERT INTO mcq_mcqquestion VALUES(36,'random');

INSERT INTO mcq_mcqquestion VALUES(37,'random');

INSERT INTO mcq_mcqquestion VALUES(38,'random');

INSERT INTO mcq_mcqquestion VALUES(39,'random');

INSERT INTO mcq_mcqquestion VALUES(40,'random');

INSERT INTO mcq_mcqquestion VALUES(41,'random');

INSERT INTO mcq_mcqquestion VALUES(42,'random');

INSERT INTO mcq_mcqquestion VALUES(43,'random');

INSERT INTO mcq_mcqquestion VALUES(44,'random');

INSERT INTO mcq_mcqquestion VALUES(45,'random');

INSERT INTO mcq_mcqquestion VALUES(46,'random');

INSERT INTO mcq_mcqquestion VALUES(47,'random');

INSERT INTO mcq_mcqquestion VALUES(48,'random');

INSERT INTO mcq_mcqquestion VALUES(49,'random');

INSERT INTO mcq_mcqquestion VALUES(50,'random');

INSERT INTO mcq_mcqquestion VALUES(51,'random');

INSERT INTO mcq_mcqquestion VALUES(52,'random');

INSERT INTO mcq_mcqquestion VALUES(53,'random');

INSERT INTO mcq_mcqquestion VALUES(54,'random');

INSERT INTO mcq_mcqquestion VALUES(55,'random');

INSERT INTO mcq_mcqquestion VALUES(56,'random');

INSERT INTO mcq_mcqquestion VALUES(57,'random');

INSERT INTO mcq_mcqquestion VALUES(58,'random');

INSERT INTO mcq_mcqquestion VALUES(59,'random');

INSERT INTO mcq_mcqquestion VALUES(60,'random');

INSERT INTO mcq_mcqquestion VALUES(61,'random');

INSERT INTO mcq_mcqquestion VALUES(62,'random');

INSERT INTO mcq_mcqquestion VALUES(63,'random');

INSERT INTO mcq_mcqquestion VALUES(64,'random');

INSERT INTO mcq_mcqquestion VALUES(65,'random');

INSERT INTO mcq_mcqquestion VALUES(66,'random');

INSERT INTO mcq_mcqquestion VALUES(67,'random');

INSERT INTO mcq_mcqquestion VALUES(68,'random');

INSERT INTO mcq_mcqquestion VALUES(69,'random');

INSERT INTO mcq_mcqquestion VALUES(70,'random');

INSERT INTO mcq_mcqquestion VALUES(71,'random');

INSERT INTO mcq_mcqquestion VALUES(72,'random');

INSERT INTO mcq_mcqquestion VALUES(73,'random');

INSERT INTO mcq_mcqquestion VALUES(74,'random');

INSERT INTO mcq_mcqquestion VALUES(75,'random');

INSERT INTO mcq_mcqquestion VALUES(76,'random');

INSERT INTO mcq_mcqquestion VALUES(77,'random');

INSERT INTO mcq_mcqquestion VALUES(78,'random');

INSERT INTO mcq_mcqquestion VALUES(79,'random');

INSERT INTO mcq_mcqquestion VALUES(80,'random');

INSERT INTO mcq_mcqquestion VALUES(81,'random');

INSERT INTO mcq_mcqquestion VALUES(82,'random');

INSERT INTO mcq_mcqquestion VALUES(83,'random');

INSERT INTO mcq_mcqquestion VALUES(84,'random');

DROP TABLE IF EXISTS blog_premium;
CREATE TABLE IF NOT EXISTS `blog_premium` (`id` integer NOT NULL PRIMARY KEY , `start` datetime NOT NULL, `end` datetime NOT NULL, `user_id` integer NOT NULL REFERENCES `auth_user` (`id`) );

CREATE INDEX `auth_group_permissions_group_id_b120cbf9` ON `auth_group_permissions` (`group_id`);

CREATE INDEX `auth_group_permissions_permission_id_84c5c92e` ON `auth_group_permissions` (`permission_id`);

CREATE INDEX `auth_user_groups_user_id_6a12ed8b` ON `auth_user_groups` (`user_id`);

CREATE INDEX `auth_user_groups_group_id_97559544` ON `auth_user_groups` (`group_id`);

CREATE INDEX `auth_user_user_permissions_user_id_a95ead1b` ON `auth_user_user_permissions` (`user_id`);

CREATE INDEX `auth_user_user_permissions_permission_id_1fbb5f2c` ON `auth_user_user_permissions` (`permission_id`);

CREATE INDEX `django_admin_log_content_type_id_c4bce8eb` ON `django_admin_log` (`content_type_id`);

CREATE INDEX `django_admin_log_user_id_c564eba6` ON `django_admin_log` (`user_id`);

CREATE INDEX `auth_permission_content_type_id_2f476e4b` ON `auth_permission` (`content_type_id`);

CREATE INDEX `blog_comment_post_id_580e96ef` ON `blog_comment` (`post_id`);

CREATE INDEX `cbt_csvupload_user_id_baf943f5` ON `cbt_csvupload` (`user_id`);

CREATE INDEX `cbt_sitting_quiz_id_f2a56923` ON `cbt_sitting` (`quiz_id`);

CREATE INDEX `cbt_sitting_user_id_839b36f9` ON `cbt_sitting` (`user_id`);

CREATE INDEX `cbt_question_quiz_question_id_bc62b642` ON `cbt_question_quiz` (`question_id`);

CREATE INDEX `cbt_question_quiz_quiz_id_7b596683` ON `cbt_question_quiz` (`quiz_id`);

CREATE INDEX `cbt_question_category_id_02ccc288` ON `cbt_question` (`category_id`);

CREATE INDEX `mcq_answer_question_id_c0c3924a` ON `mcq_answer` (`question_id`);

CREATE INDEX `django_session_expire_date_a5c62663` ON `django_session` (`expire_date`);

CREATE INDEX `community_answer_question_id_64553ef8` ON `community_answer` (`question_id`);

CREATE INDEX `premium_premium_user_user_id_93a21bc6` ON `premium_premium_user` (`user_id`);

CREATE INDEX `blog_post_slug_b95473f2` ON `blog_post` (`slug`);

CREATE INDEX `blog_post_author_id_dd7a8485` ON `blog_post` (`author_id`);

CREATE INDEX `cbt_quiz_url_be6defb7` ON `cbt_quiz` (`url`);

CREATE INDEX `cbt_quiz_category_id_5be35c2d` ON `cbt_quiz` (`category_id`);

CREATE INDEX `blog_premium_user_id_1a6eed86` ON `blog_premium` (`user_id`);

