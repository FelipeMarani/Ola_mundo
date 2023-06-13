use master if exists(select * from SYS.databases where name = 'Funcionario')
drop database Funcionario

create database Funcionario
go

use Funcionario
go

Create table TB_Funcionario(
	COD_Func int,
	Nome varchar(80)not null,
	Filial varchar(20),
	Cod_Depto int,
	Cod_Cargo int,
	Data_Adimissao datetime,
	Salario decimal(10,2),
	Dependentes decimal(10,0),
	CPF char(11),
	primary key(COD_Func)

)

create table TB_Depto(
	COD_Depto int,
	Nome_Depto Varchar(20),
	COD_Func int,
	primary key(Cod_Depto),
		foreign key(COD_Func)
			references TB_Funcionario(COD_Func)
)

create table TB_Cargo(
	COD_Cargo int,
	Nome_Cargo varchar(20),
	COD_Depto int,
	primary key(COD_Cargo),
		foreign key(COD_Depto)
		references TB_Depto(COD_Depto)
)


select * from TB_Funcionario
select * from TB_Depto
select * from TB_Cargo