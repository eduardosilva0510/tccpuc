create database Project_M;

use Project_M;

create table Perfil_Acesso
(
perfil_id int unsigned not null auto_increment,
perfil_nome varchar (50) not null,
primary key (perfil_id)
);

create table Permissoes
(
permissao_id int unsigned not null auto_increment,
permissao_nome varchar(30) not null,
permissao_descricao varchar (1000),
primary key (permissao_id)
);

create table SLA
(
sla_id int,
sla_nome varchar (30),
primary key(sla_id)
);

create table Projetos
(
projeto_id int unsigned not null auto_increment,
projeto_nome varchar(100) not null,
projeto_status varchar (20) not null,
projeto_marco varchar (100) not null,
projeto_sprint varchar (30),
projeto_fase varchar (30),
primary key (projeto_id)
);

create table Tarefas_Projeto
(
tarefa_id int unsigned not null auto_increment,
nome_tarefa varchar (50) not null,
descricao_tarefa varchar (4000),
tarefa_sla int not null,
primary key (tarefa_id),
foreign key (tarefa_sla) references SLA(sla_id)
);

create table Lideres
(
lider_id int unsigned not null auto_increment,
lider_nome varchar (100),
primary key (lider_id)
);

create table Usuarios
(user_id int unsigned not null auto_increment,
usuario_nome varchar(100) not null,
lider_id int unsigned not null,
p_acesso_id int unsigned,
primary key (user_id),
foreign key (p_acesso_id) references Perfil_Acesso(perfil_id),
foreign key (lider_id) references Lideres(lider_id)
);

create table Equipes
(
equipe_id int unsigned not null auto_increment,
equipe_nome varchar(100) not null,
equipe_lider_id int unsigned,
membro_id int unsigned,
projeto_status varchar (20) not null,
primary key (equipe_id),
foreign key (equipe_lider_id) references Lideres(lider_id),
foreign key (membro_id) references Usuarios(user_id)
);

create Table Tarefas
(
tarefa_id int unsigned not null auto_increment,
nome_tarefa varchar (30) not null,
descricao varchar (100),
primary key (tarefa_id)
);

create table Equipes_Atribuicoes
(
atribuicao_id int unsigned not null auto_increment,
equipe_id int unsigned not null,
tarefa_id int unsigned not null,
dt_inicio datetime,
dt_prazo_final datetime,
primary key (atribuicao_id),
foreign key (equipe_id) references Equipes(equipe_id),
foreign key (tarefa_id) references Tarefas(tarefa_id)
);

create table Equipe_Membros_Tarefas
(
membro_tarefa_id int unsigned not null auto_increment,
equipe_id int unsigned not null,
membro_id int unsigned,
atribuicao_id int unsigned,
primary key (membro_tarefa_id),
foreign key (equipe_id) references Equipes(equipe_id),
foreign key (membro_id) references Equipes(membro_id),
foreign key (atribuicao_id) references Equipes_Atribuicoes(atribuicao_id)
);