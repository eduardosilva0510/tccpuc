use project_m;

start transaction;
insert into sla (sla_id, sla_nome) values ('1', 'Critico');
insert into sla (sla_id, sla_nome) values ('2', 'Grave');
insert into sla (sla_id, sla_nome) values ('3', 'Moderado');
insert into sla (sla_id, sla_nome) values ('4', 'Mínimo');
commit;



start transaction;
insert into permissoes (permissao_nome, permissao_descricao) values('Usuários','Acesso ao Painel de Usuários/Listar Usuários');
insert into permissoes (permissao_nome, permissao_descricao) values('Adicionar Usuários','Criar Novos Usuários');
insert into permissoes (permissao_nome, permissao_descricao) values('Editar Usuários','Editar Usuários Existentes');
insert into permissoes (permissao_nome, permissao_descricao) values('Remover Usuários','Remover Usuários Existentes');
insert into permissoes (permissao_nome, permissao_descricao) values('Perfis de Usuários','Acesso ao Painel de Perfis de Usuários Usuários/Listar Perfis de Usuários');
insert into permissoes (permissao_nome, permissao_descricao) values('Adicionar Perfil de Usuário','Criar Novos Perfis de Usuários');
insert into permissoes (permissao_nome, permissao_descricao) values('Editar Perfis de Usuários','Editar Usuários Existentes');
insert into permissoes (permissao_nome, permissao_descricao) values('Remover Perfis de Usuários','Remover Perfis de Usuários Existentes');
insert into permissoes (permissao_nome, permissao_descricao) values('Projetos','Acesso ao Painel de Projetos/Listar Projetos');
insert into permissoes (permissao_nome, permissao_descricao) values('Adicionar Projetos','Criar Novos Usuários');
insert into permissoes (permissao_nome, permissao_descricao) values('Editar Projetos','Editar Usuários Existentes');
insert into permissoes (permissao_nome, permissao_descricao) values('Abortar Projetos','Abortar Projetos Existentes');
commit;

start transaction;
insert into perfil_acesso (perfil_nome,permissao_id) values ('Administrador','1');
insert into perfil_acesso (perfil_nome,permissao_id) values ('Administrador','2');
insert into perfil_acesso (perfil_nome,permissao_id) values ('Administrador','3');
insert into perfil_acesso (perfil_nome,permissao_id) values ('Administrador','4');
insert into perfil_acesso (perfil_nome,permissao_id) values ('Administrador','5');
insert into perfil_acesso (perfil_nome,permissao_id) values ('Administrador','6');
insert into perfil_acesso (perfil_nome,permissao_id) values ('Administrador','7');
insert into perfil_acesso (perfil_nome,permissao_id) values ('Administrador','8');
insert into perfil_acesso (perfil_nome,permissao_id) values ('Administrador','9');
insert into perfil_acesso (perfil_nome,permissao_id) values ('Administrador','10');
insert into perfil_acesso (perfil_nome,permissao_id) values ('Administrador','11');
insert into perfil_acesso (perfil_nome,permissao_id) values ('Administrador','12');
commit;

start transaction;
insert into lideres (lider_nome) values ('Big Brother');
commit;

start transaction;
insert into usuarios (usuario_nome, lider_id, p_acesso_id) values ('Eduardo Silva', '1', '1');
commit;