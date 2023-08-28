use project_m;

select * from sla;

select * from tarefas_projeto;

select * from perfil_acesso;

select * from permissoes;

select * from lideres;

select * from usuarios;

 /*A Listagem de Usuários exibirá os valores como na tabela abaixo*/
select u.user_id, u.usuario_nome, l.lider_id, l.lider_nome, u.p_acesso_id, p.perfil_nome from usuarios u
left join lideres l on l.lider_id = u.lider_id
left join perfil_acesso p on p.perfil_id = u.p_acesso_id;