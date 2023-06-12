create database carlos;
use carlos;

create table tb_cadastros(
id_cad int primary key auto_increment,
name_cad varchar(255),
senha_cad varchar(255),
email_cad varchar(255),
tel_cad varchar(255)
);




create table tb_produtos(
id_produto int unsigned not null primary key auto_increment,
nome_produto varchar(40),
desc_produto varchar(255),
cod_produto varchar(30) unique,
quant_produto varchar(10),
fileira_produto varchar(70),
setor_produto varchar(70),
uso_produto varchar(5),
unidade_produto varchar(20),
anotacao_produto varchar(255)
);


create table tb_chaves(
id_chave int unsigned not null auto_increment primary key,
sala_chave varchar(80)

);

insert into tb_chaves (id_chave, sala_chave) values ('', 'Mecânica');

create table tb_emprestimos(
id_emprestimo int unsigned not null auto_increment primary key,
nome_emprestimo varchar(80),
quantidade_emprestimo varchar(15),
solicitante_emprestimo varchar(80),
emailSolicitante_emprestimo varchar(155),
telefoneSolicitante_emprestimo varchar(20),
dataEHoraRetirada_emprestimo  varchar(80),
dataEHoraDevolucao_emprestimo varchar(80)
);

create table tb_emprestimosCh(
id_emprestimoChave int unsigned not null auto_increment primary key,
nome_pessoa varchar(255),
sala_chave varchar(255)
);


 
select*from tb_emprestimos;
drop table tb_emprestimos;