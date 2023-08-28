use project_m;

 
/*Inserir FK para linkar atividade ao projeto em desenvolvimento*/
alter table Tarefas_Projeto
add projeto_id int unsigned,
add foreign key (projeto_id) references Projetos(projeto_id);

 /*Incluir Permissoes a Perfil de Acesso*/
alter table perfil_acesso
add permissao_id int unsigned,
add foreign key(permissao_id) references Permissoes(permissao_id);

 /*Incluir perfil de Acesso a permissoes*/
 alter table permissoes
add perfil_id int unsigned,
add foreign key(perfil_id) references perfil_acesso(perfil_id);

 /*Alterar Descrição da SLA*/
start transaction;
update sla set sla_nome = 'Moderado' where sla_id = 2;
update sla set sla_nome = 'Mínimo' where sla_id = 3;
update sla set sla_nome = 'Informação/Requisição' where sla_id = 4;
commit;
