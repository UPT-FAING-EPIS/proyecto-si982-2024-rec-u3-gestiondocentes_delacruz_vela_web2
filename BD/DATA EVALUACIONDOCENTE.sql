USE EvaluacionDocentes
GO

--SELECT * FROM Docente
--SELECT * FROM DocenteCurso


--SELECT * FROM Usuario
--SELECT * FROM Rol
--SELECT * FROM Auditoria
--SELECT * FROM Cargo
--SELECT * FROM Semestre
--SELECT * FROM Curso

--SELECT * FROM UsuarioRol
--SELECT * FROM Modulo
--SELECT * FROM ModuloRequerimiento
--select * from Permiso
--select * from DocenteCurso
--SELECT * FROM Usuario
--SELECT * FROM Permiso
--SELECT * FROM GradoAcademico
--SELECT * FROM PlanEstudio
--SELECT * FROM Evento
--SELECT * FROM EventoDetalle

--SELECT * FROM Estudiante
INSERT INTO Modulo(Modulo_Nombre,Modulo_Icono,Modulo_Estado) VALUES
('Mantenimiento','icon-mantenimiento.png','A'),
('Academico','icon-academico.png','A'),
('Evento','icon-evento.png','A')

INSERT INTO ModuloRequerimiento(Modulo_ID,ModuloRequerimiento_Nombre,ModuloRequerimiento_URL,ModuloRequerimiento_Visibilidad,ModuloRequerimiento_Estado) VALUES
(1,'Usuario','~/Usuario',1,'A'),
(1,'Rol','~/Rol',1,'A'),
(1,'Modulo','~/Modulo',1,'A'),
(1,'Modulo Requerimiento','~/ModuloRequerimiento',1,'A'),
(1,'Auditoria','~/Auditoria',1,'A'),
(1,'RolUsuario','~/UsuarioRol',1,'A'),
(1,'Permiso','~/Permiso',1,'A'),
(2,'Plan de Estudios','~/PlanEstudio',1,'A'),
(2,'Semestre','~/Semestre',1,'A'),
(2,'Cursos','~/Curso',1,'A'),
(2,'Cargo','~/Cargo',1,'A'),
(2,'Docente','~/Docente',1,'A'),
(2,'Docente Curso','~/DocenteCurso',1,'A'),
(2,'Grado Academico','~/GradoAcademico',1,'A'),
(2,'Titulo Profesional','~/TituloProfesional',1,'A'),
(2,'Estudiantes','~/Estudiante',1,'A'),
(3,'Evento','~/Evento',1,'A'),
(3,'Evento Detalle','~/EventoDetalle',1,'A'),
(3,'Asistencia Docente','~/EventoAsistenciaDocente',1,'A')


INSERT INTO GradoAcademico(GradoAcademico_Nombre,GradoAcademico_Descripcion,GradoAcademico_Estado) VALUES
('Bachiller','','A'),
('Magister','','A'),
('Doctor','','A')

INSERT INTO TituloProfesional(TituloProfesional_Nombre,TituloProfesional_Descripcion,TituloProfesional_Estado) VALUES
('Cirujano Dentista','','A')

insert into Docente (GradoAcademico_ID, TituloProfesional_ID, Docente_DNI, Docente_Codigo, Docente_Nombre, Docente_Apellido, Docente_Sexo, Docente_Email_Personal, Docente_Email_Virtual, Docente_Email_Institucional, Docente_Telefono, Docente_Condicion, Docente_Estado) values (3, 1, 0, 0, 'Wilek', 'Vidloc', 'M', 'wvidloc0@npr.org', 'wvidloc0@dyndns.org', 'wvidloc0@sohu.com', 940238670, 'Contratado', 'A');
insert into Docente (GradoAcademico_ID, TituloProfesional_ID, Docente_DNI, Docente_Codigo, Docente_Nombre, Docente_Apellido, Docente_Sexo, Docente_Email_Personal, Docente_Email_Virtual, Docente_Email_Institucional, Docente_Telefono, Docente_Condicion, Docente_Estado) values (2, 1, 0, 0, 'Larine', 'Babonau', 'F', 'lbabonau1@vistaprint.com', 'lbabonau1@cnn.com', 'lbabonau1@soundcloud.com', 938302910, 'Contratado TC', 'I');
insert into Docente (GradoAcademico_ID, TituloProfesional_ID, Docente_DNI, Docente_Codigo, Docente_Nombre, Docente_Apellido, Docente_Sexo, Docente_Email_Personal, Docente_Email_Virtual, Docente_Email_Institucional, Docente_Telefono, Docente_Condicion, Docente_Estado) values (3, 1, 0, 0, 'Peyton', 'Spacey', 'M', 'pspacey2@uol.com.br', 'pspacey2@51.la', 'pspacey2@php.net', 917217015, 'Contratado', 'I');
insert into Docente (GradoAcademico_ID, TituloProfesional_ID, Docente_DNI, Docente_Codigo, Docente_Nombre, Docente_Apellido, Docente_Sexo, Docente_Email_Personal, Docente_Email_Virtual, Docente_Email_Institucional, Docente_Telefono, Docente_Condicion, Docente_Estado) values (2, 1, 0, 0, 'Koren', 'Whyborn', 'F', 'kwhyborn3@google.pl', 'kwhyborn3@dailymail.co.uk', 'kwhyborn3@acquirethisname.com', 917407354, 'Auxiliar', 'I');
insert into Docente (GradoAcademico_ID, TituloProfesional_ID, Docente_DNI, Docente_Codigo, Docente_Nombre, Docente_Apellido, Docente_Sexo, Docente_Email_Personal, Docente_Email_Virtual, Docente_Email_Institucional, Docente_Telefono, Docente_Condicion, Docente_Estado) values (2, 1, 0, 0, 'Granville', 'Goode', 'M', 'ggoode4@auda.org.au', 'ggoode4@thetimes.co.uk', 'ggoode4@slate.com', 945081389, 'Asociado', 'I');
insert into Docente (GradoAcademico_ID, TituloProfesional_ID, Docente_DNI, Docente_Codigo, Docente_Nombre, Docente_Apellido, Docente_Sexo, Docente_Email_Personal, Docente_Email_Virtual, Docente_Email_Institucional, Docente_Telefono, Docente_Condicion, Docente_Estado) values (2, 1, 0, 0, 'Karon', 'Eallis', 'F', 'keallis5@instagram.com', 'keallis5@ucoz.com', 'keallis5@barnesandnoble.com', 947542024, 'Auxiliar', 'A');
insert into Docente (GradoAcademico_ID, TituloProfesional_ID, Docente_DNI, Docente_Codigo, Docente_Nombre, Docente_Apellido, Docente_Sexo, Docente_Email_Personal, Docente_Email_Virtual, Docente_Email_Institucional, Docente_Telefono, Docente_Condicion, Docente_Estado) values (2, 1, 0, 0, 'Karol', 'Maddern', 'F', 'kmaddern6@addtoany.com', 'kmaddern6@sfgate.com', 'kmaddern6@t.co', 918983346, 'Contratado', 'I');
insert into Docente (GradoAcademico_ID, TituloProfesional_ID, Docente_DNI, Docente_Codigo, Docente_Nombre, Docente_Apellido, Docente_Sexo, Docente_Email_Personal, Docente_Email_Virtual, Docente_Email_Institucional, Docente_Telefono, Docente_Condicion, Docente_Estado) values (3, 1, 0, 0, 'Langsdon', 'Corona', 'M', 'lcorona7@weather.com', 'lcorona7@vimeo.com', 'lcorona7@studiopress.com', 906816099, 'Asociado', 'A');
insert into Docente (GradoAcademico_ID, TituloProfesional_ID, Docente_DNI, Docente_Codigo, Docente_Nombre, Docente_Apellido, Docente_Sexo, Docente_Email_Personal, Docente_Email_Virtual, Docente_Email_Institucional, Docente_Telefono, Docente_Condicion, Docente_Estado) values (3, 1, 0, 0, 'Reinold', 'Brownsmith', 'M', 'rbrownsmith8@people.com.cn', 'rbrownsmith8@mysql.com', 'rbrownsmith8@odnoklassniki.ru', 965370584, 'Principal', 'I');
insert into Docente (GradoAcademico_ID, TituloProfesional_ID, Docente_DNI, Docente_Codigo, Docente_Nombre, Docente_Apellido, Docente_Sexo, Docente_Email_Personal, Docente_Email_Virtual, Docente_Email_Institucional, Docente_Telefono, Docente_Condicion, Docente_Estado) values (3, 1, 0, 0, 'Robin', 'Oldland', 'F', 'roldland9@imdb.com', 'roldland9@nps.gov', 'roldland9@sciencedirect.com', 980514305, 'Auxiliar', 'I');
insert into Docente (GradoAcademico_ID, TituloProfesional_ID, Docente_DNI, Docente_Codigo, Docente_Nombre, Docente_Apellido, Docente_Sexo, Docente_Email_Personal, Docente_Email_Virtual, Docente_Email_Institucional, Docente_Telefono, Docente_Condicion, Docente_Estado) values (3, 1, 0, 0, 'Adrea', 'Jaquiss', 'F', 'ajaquissa@meetup.com', 'ajaquissa@boston.com', 'ajaquissa@oracle.com', 980523372, 'Contratado', 'A');
insert into Docente (GradoAcademico_ID, TituloProfesional_ID, Docente_DNI, Docente_Codigo, Docente_Nombre, Docente_Apellido, Docente_Sexo, Docente_Email_Personal, Docente_Email_Virtual, Docente_Email_Institucional, Docente_Telefono, Docente_Condicion, Docente_Estado) values (3, 1, 0, 0, 'Kelwin', 'Kirtland', 'M', 'kkirtlandb@indiegogo.com', 'kkirtlandb@histats.com', 'kkirtlandb@altervista.org', 937843370, 'Contratado TC', 'I');
insert into Docente (GradoAcademico_ID, TituloProfesional_ID, Docente_DNI, Docente_Codigo, Docente_Nombre, Docente_Apellido, Docente_Sexo, Docente_Email_Personal, Docente_Email_Virtual, Docente_Email_Institucional, Docente_Telefono, Docente_Condicion, Docente_Estado) values (2, 1, 0, 0, 'Rees', 'Hughson', 'M', 'rhughsonc@wp.com', 'rhughsonc@cmu.edu', 'rhughsonc@domainmarket.com', 983005696, 'Contratado', 'A');
insert into Docente (GradoAcademico_ID, TituloProfesional_ID, Docente_DNI, Docente_Codigo, Docente_Nombre, Docente_Apellido, Docente_Sexo, Docente_Email_Personal, Docente_Email_Virtual, Docente_Email_Institucional, Docente_Telefono, Docente_Condicion, Docente_Estado) values (2, 1, 0, 0, 'Morie', 'Seatter', 'M', 'mseatterd@ycombinator.com', 'mseatterd@mayoclinic.com', 'mseatterd@yandex.ru', 916148594, 'Auxiliar', 'A');
insert into Docente (GradoAcademico_ID, TituloProfesional_ID, Docente_DNI, Docente_Codigo, Docente_Nombre, Docente_Apellido, Docente_Sexo, Docente_Email_Personal, Docente_Email_Virtual, Docente_Email_Institucional, Docente_Telefono, Docente_Condicion, Docente_Estado) values (2, 1, 0, 0, 'Alma', 'Hiscoke', 'F', 'ahiscokee@jimdo.com', 'ahiscokee@biblegateway.com', 'ahiscokee@tripod.com', 913446749, 'Contratado', 'I');
insert into Docente (GradoAcademico_ID, TituloProfesional_ID, Docente_DNI, Docente_Codigo, Docente_Nombre, Docente_Apellido, Docente_Sexo, Docente_Email_Personal, Docente_Email_Virtual, Docente_Email_Institucional, Docente_Telefono, Docente_Condicion, Docente_Estado) values (2, 1, 0, 0, 'Danya', 'Janauschek', 'F', 'djanauschekf@gizmodo.com', 'djanauschekf@patch.com', 'djanauschekf@yahoo.co.jp', 942133388, 'Principal', 'A');
insert into Docente (GradoAcademico_ID, TituloProfesional_ID, Docente_DNI, Docente_Codigo, Docente_Nombre, Docente_Apellido, Docente_Sexo, Docente_Email_Personal, Docente_Email_Virtual, Docente_Email_Institucional, Docente_Telefono, Docente_Condicion, Docente_Estado) values (3, 1, 0, 0, 'Ase', 'Norrie', 'M', 'anorrieg@fastcompany.com', 'anorrieg@nbcnews.com', 'anorrieg@miitbeian.gov.cn', 967780147, 'Asociado', 'A');
insert into Docente (GradoAcademico_ID, TituloProfesional_ID, Docente_DNI, Docente_Codigo, Docente_Nombre, Docente_Apellido, Docente_Sexo, Docente_Email_Personal, Docente_Email_Virtual, Docente_Email_Institucional, Docente_Telefono, Docente_Condicion, Docente_Estado) values (2, 1, 0, 0, 'Cassi', 'Filinkov', 'F', 'cfilinkovh@zimbio.com', 'cfilinkovh@istockphoto.com', 'cfilinkovh@latimes.com', 955945111, 'Principal', 'I');
insert into Docente (GradoAcademico_ID, TituloProfesional_ID, Docente_DNI, Docente_Codigo, Docente_Nombre, Docente_Apellido, Docente_Sexo, Docente_Email_Personal, Docente_Email_Virtual, Docente_Email_Institucional, Docente_Telefono, Docente_Condicion, Docente_Estado) values (2, 1, 0, 0, 'Wendel', 'Barme', 'M', 'wbarmei@cargocollective.com', 'wbarmei@imdb.com', 'wbarmei@aol.com', 950227162, 'Contratado', 'I');
insert into Docente (GradoAcademico_ID, TituloProfesional_ID, Docente_DNI, Docente_Codigo, Docente_Nombre, Docente_Apellido, Docente_Sexo, Docente_Email_Personal, Docente_Email_Virtual, Docente_Email_Institucional, Docente_Telefono, Docente_Condicion, Docente_Estado) values (2, 1, 0, 0, 'Lenora', 'Pitcock', 'F', 'lpitcockj@bloglines.com', 'lpitcockj@harvard.edu', 'lpitcockj@drupal.org', 989155977, 'Principal', 'A');
insert into Docente (GradoAcademico_ID, TituloProfesional_ID, Docente_DNI, Docente_Codigo, Docente_Nombre, Docente_Apellido, Docente_Sexo, Docente_Email_Personal, Docente_Email_Virtual, Docente_Email_Institucional, Docente_Telefono, Docente_Condicion, Docente_Estado) values (3, 1, 0, 0, 'Clemens', 'Ziehms', 'M', 'cziehmsk@unesco.org', 'cziehmsk@netlog.com', 'cziehmsk@seesaa.net', 973563121, 'Asociado', 'I');
insert into Docente (GradoAcademico_ID, TituloProfesional_ID, Docente_DNI, Docente_Codigo, Docente_Nombre, Docente_Apellido, Docente_Sexo, Docente_Email_Personal, Docente_Email_Virtual, Docente_Email_Institucional, Docente_Telefono, Docente_Condicion, Docente_Estado) values (2, 1, 0, 0, 'Nomi', 'Androletti', 'F', 'nandrolettil@nyu.edu', 'nandrolettil@over-blog.com', 'nandrolettil@amazon.co.uk', 984232934, 'Asociado', 'A');
insert into Docente (GradoAcademico_ID, TituloProfesional_ID, Docente_DNI, Docente_Codigo, Docente_Nombre, Docente_Apellido, Docente_Sexo, Docente_Email_Personal, Docente_Email_Virtual, Docente_Email_Institucional, Docente_Telefono, Docente_Condicion, Docente_Estado) values (3, 1, 0, 0, 'Morganica', 'Fairpo', 'F', 'mfairpom@phpbb.com', 'mfairpom@reuters.com', 'mfairpom@123-reg.co.uk', 928733803, 'Asociado', 'A');
insert into Docente (GradoAcademico_ID, TituloProfesional_ID, Docente_DNI, Docente_Codigo, Docente_Nombre, Docente_Apellido, Docente_Sexo, Docente_Email_Personal, Docente_Email_Virtual, Docente_Email_Institucional, Docente_Telefono, Docente_Condicion, Docente_Estado) values (3, 1, 0, 0, 'Jase', 'Chalke', 'M', 'jchalken@cocolog-nifty.com', 'jchalken@archive.org', 'jchalken@adobe.com', 951801211, 'Contratado TC', 'I');
insert into Docente (GradoAcademico_ID, TituloProfesional_ID, Docente_DNI, Docente_Codigo, Docente_Nombre, Docente_Apellido, Docente_Sexo, Docente_Email_Personal, Docente_Email_Virtual, Docente_Email_Institucional, Docente_Telefono, Docente_Condicion, Docente_Estado) values (2, 1, 0, 0, 'Hedvige', 'Eakin', 'F', 'heakino@yellowbook.com', 'heakino@shareasale.com', 'heakino@mashable.com', 984620713, 'Contratado TC', 'A');
insert into Docente (GradoAcademico_ID, TituloProfesional_ID, Docente_DNI, Docente_Codigo, Docente_Nombre, Docente_Apellido, Docente_Sexo, Docente_Email_Personal, Docente_Email_Virtual, Docente_Email_Institucional, Docente_Telefono, Docente_Condicion, Docente_Estado) values (3, 1, 0, 0, 'Rosalinde', 'Heindle', 'F', 'rheindlep@twitter.com', 'rheindlep@statcounter.com', 'rheindlep@hostgator.com', 923859088, 'Contratado', 'I');
insert into Docente (GradoAcademico_ID, TituloProfesional_ID, Docente_DNI, Docente_Codigo, Docente_Nombre, Docente_Apellido, Docente_Sexo, Docente_Email_Personal, Docente_Email_Virtual, Docente_Email_Institucional, Docente_Telefono, Docente_Condicion, Docente_Estado) values (2, 1, 0, 0, 'Fianna', 'Ripping', 'F', 'frippingq@plala.or.jp', 'frippingq@networksolutions.com', 'frippingq@livejournal.com', 951461293, 'Contratado TC', 'I');
insert into Docente (GradoAcademico_ID, TituloProfesional_ID, Docente_DNI, Docente_Codigo, Docente_Nombre, Docente_Apellido, Docente_Sexo, Docente_Email_Personal, Docente_Email_Virtual, Docente_Email_Institucional, Docente_Telefono, Docente_Condicion, Docente_Estado) values (3, 1, 0, 0, 'Orren', 'Gilhoolie', 'M', 'ogilhoolier@lulu.com', 'ogilhoolier@t.co', 'ogilhoolier@hc360.com', 936667789, 'Auxiliar', 'A');
insert into Docente (GradoAcademico_ID, TituloProfesional_ID, Docente_DNI, Docente_Codigo, Docente_Nombre, Docente_Apellido, Docente_Sexo, Docente_Email_Personal, Docente_Email_Virtual, Docente_Email_Institucional, Docente_Telefono, Docente_Condicion, Docente_Estado) values (2, 1, 0, 0, 'Mollie', 'Desbrow', 'F', 'mdesbrows@vinaora.com', 'mdesbrows@aboutads.info', 'mdesbrows@usa.gov', 968470321, 'Principal', 'I');
insert into Docente (GradoAcademico_ID, TituloProfesional_ID, Docente_DNI, Docente_Codigo, Docente_Nombre, Docente_Apellido, Docente_Sexo, Docente_Email_Personal, Docente_Email_Virtual, Docente_Email_Institucional, Docente_Telefono, Docente_Condicion, Docente_Estado) values (2, 1, 0, 0, 'Audre', 'Sawden', 'F', 'asawdent@state.gov', 'asawdent@infoseek.co.jp', 'asawdent@furl.net', 974908229, 'Auxiliar', 'I');
insert into Docente (GradoAcademico_ID, TituloProfesional_ID, Docente_DNI, Docente_Codigo, Docente_Nombre, Docente_Apellido, Docente_Sexo, Docente_Email_Personal, Docente_Email_Virtual, Docente_Email_Institucional, Docente_Telefono, Docente_Condicion, Docente_Estado) values (2, 1, 0, 0, 'Maire', 'Kitson', 'F', 'mkitsonu@aboutads.info', 'mkitsonu@dagondesign.com', 'mkitsonu@blogger.com', 932621620, 'Asociado', 'A');
insert into Docente (GradoAcademico_ID, TituloProfesional_ID, Docente_DNI, Docente_Codigo, Docente_Nombre, Docente_Apellido, Docente_Sexo, Docente_Email_Personal, Docente_Email_Virtual, Docente_Email_Institucional, Docente_Telefono, Docente_Condicion, Docente_Estado) values (2, 1, 0, 0, 'Stacee', 'Charkham', 'F', 'scharkhamv@mtv.com', 'scharkhamv@dedecms.com', 'scharkhamv@artisteer.com', 986957757, 'Contratado', 'I');
insert into Docente (GradoAcademico_ID, TituloProfesional_ID, Docente_DNI, Docente_Codigo, Docente_Nombre, Docente_Apellido, Docente_Sexo, Docente_Email_Personal, Docente_Email_Virtual, Docente_Email_Institucional, Docente_Telefono, Docente_Condicion, Docente_Estado) values (3, 1, 0, 0, 'Carmella', 'Nutbeam', 'F', 'cnutbeamw@prweb.com', 'cnutbeamw@w3.org', 'cnutbeamw@slashdot.org', 982056731, 'Auxiliar', 'I');
insert into Docente (GradoAcademico_ID, TituloProfesional_ID, Docente_DNI, Docente_Codigo, Docente_Nombre, Docente_Apellido, Docente_Sexo, Docente_Email_Personal, Docente_Email_Virtual, Docente_Email_Institucional, Docente_Telefono, Docente_Condicion, Docente_Estado) values (3, 1, 0, 0, 'Ulick', 'Treleven', 'M', 'utrelevenx@house.gov', 'utrelevenx@timesonline.co.uk', 'utrelevenx@hc360.com', 903127846, 'Contratado', 'I');
insert into Docente (GradoAcademico_ID, TituloProfesional_ID, Docente_DNI, Docente_Codigo, Docente_Nombre, Docente_Apellido, Docente_Sexo, Docente_Email_Personal, Docente_Email_Virtual, Docente_Email_Institucional, Docente_Telefono, Docente_Condicion, Docente_Estado) values (2, 1, 0, 0, 'Juliane', 'Plaster', 'F', 'jplastery@cpanel.net', 'jplastery@github.io', 'jplastery@wordpress.org', 997947564, 'Contratado TC', 'A');
insert into Docente (GradoAcademico_ID, TituloProfesional_ID, Docente_DNI, Docente_Codigo, Docente_Nombre, Docente_Apellido, Docente_Sexo, Docente_Email_Personal, Docente_Email_Virtual, Docente_Email_Institucional, Docente_Telefono, Docente_Condicion, Docente_Estado) values (2, 1, 0, 0, 'Roanne', 'Piscotti', 'F', 'rpiscottiz@princeton.edu', 'rpiscottiz@cmu.edu', 'rpiscottiz@alexa.com', 920061475, 'Asociado', 'I');
insert into Docente (GradoAcademico_ID, TituloProfesional_ID, Docente_DNI, Docente_Codigo, Docente_Nombre, Docente_Apellido, Docente_Sexo, Docente_Email_Personal, Docente_Email_Virtual, Docente_Email_Institucional, Docente_Telefono, Docente_Condicion, Docente_Estado) values (2, 1, 0, 0, 'Dick', 'Henriquet', 'M', 'dhenriquet10@merriam-webster.com', 'dhenriquet10@g.co', 'dhenriquet10@about.me', 979113469, 'Contratado TC', 'I');
insert into Docente (GradoAcademico_ID, TituloProfesional_ID, Docente_DNI, Docente_Codigo, Docente_Nombre, Docente_Apellido, Docente_Sexo, Docente_Email_Personal, Docente_Email_Virtual, Docente_Email_Institucional, Docente_Telefono, Docente_Condicion, Docente_Estado) values (3, 1, 0, 0, 'Christean', 'Budgen', 'F', 'cbudgen11@ft.com', 'cbudgen11@tmall.com', 'cbudgen11@berkeley.edu', 960481064, 'Contratado TC', 'A');
insert into Docente (GradoAcademico_ID, TituloProfesional_ID, Docente_DNI, Docente_Codigo, Docente_Nombre, Docente_Apellido, Docente_Sexo, Docente_Email_Personal, Docente_Email_Virtual, Docente_Email_Institucional, Docente_Telefono, Docente_Condicion, Docente_Estado) values (2, 1, 0, 0, 'Amelie', 'Dwelly', 'F', 'adwelly12@china.com.cn', 'adwelly12@census.gov', 'adwelly12@unesco.org', 926517224, 'Contratado TC', 'I');
insert into Docente (GradoAcademico_ID, TituloProfesional_ID, Docente_DNI, Docente_Codigo, Docente_Nombre, Docente_Apellido, Docente_Sexo, Docente_Email_Personal, Docente_Email_Virtual, Docente_Email_Institucional, Docente_Telefono, Docente_Condicion, Docente_Estado) values (3, 1, 0, 0, 'Mildrid', 'Dressel', 'F', 'mdressel13@google.co.jp', 'mdressel13@tumblr.com', 'mdressel13@msu.edu', 968139195, 'Contratado', 'I');


INSERT INTO Usuario(Docente_ID,
					Usuario_Nombre,
					Usuario_Password,
					Usuario_Foto,
					Usuario_Carpeta,
					Usuario_Estado) VALUES
(2,'nkuong','202cb962ac59075b964b07152d234b70','Dra.Nelly','202cb962ac59075b964b07152d234b70','A')


INSERT INTO Usuario(Docente_ID,
					Usuario_Nombre,
					Usuario_Password,
					Usuario_Foto,
					Usuario_Carpeta,
					Usuario_Estado) VALUES
(3,'ro','roro','Roro','roro','A')
