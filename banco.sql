create database BD;
use BD;

drop table if exists Usuario;
drop table if exists Cursos;
drop table if exists Videos;
drop table if exists Usuario_Curso;
commit;

create table Usuario(
    idUsuario integer (8) null,
    Nome varchar (30) null,
    Email varchar (60) null,
    Senha numeric (10) null,
    Timetoken timestamp null
  );
alter table Usuario  add constraint  Usuario_PK 
	primary key (idUsuario);
  
insert into Usuario 
	(idUsuario, Nome, Email, Senha)
values 
	(1, 'Lucas', 'lucasferreira9b@gmail.com', 5163131); 

create table Cursos(
	idCurso numeric (8) null,
    	Sobre varchar (500) null,
   	cargaHoraria timestamp (6) null
    );

alter table Cursos  add constraint  Cursos_PK 
	primary key (idCurso);

insert into Cursos 
		(idCurso, Sobre, cargaHoraria)	
values 
		(1, 'asdasdasdasd', '2019-09-24');
        
        
create table Videos(
    idVideo numeric (8) null,
    tipoVideo numeric (8) null,
    tempo time (6) null,
    tema varchar (15) null
    );
    
alter table Videos  add constraint  Videos_PK 
	primary key (idVideo);
    
select * from Cursos ;


create table Usuario_Curso(
	idUS integer (8) null primary key,
	idCurso integer (8) null,
    	idUsuario integer (8) null,
	foreign key (idCurso) references Curso (idCurso),
    foreign key (idUsuario) references Usuario (idUsuario)
    );
    
drop table Usuario_Curso;
