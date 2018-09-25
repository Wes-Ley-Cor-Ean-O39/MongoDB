 BANCO DE DADOS MYSQL

create database nttdata;
use nttdata;

create table everis (
id int not null auto_increment,
NOME VARCHAR (100),
ENDERECO VARCHAR (100),
CIDADE VARCHAR (100),
constraint pk_everis Primary Key (id)
);

insert into everis (NOME, ENDERECO, CIDADE) values
('Victor','Rua Nicácio Sena','Mairiporã');

------------------------------------------------------------------
 BANCO DE DADOS MONGODB (noSQL)

db.everis.insert({
'NOME': 'Victor',
'ENDERECO': 'Rua Nicácio Sena',
'CIDADE': 'Mairiporã'
});

---------------------------------------------------------------------------
 CURSO MONGODB (noSQL)

db.produtos.insert({
'cdProduto': 1,
'nmProduto': 'Feijão',
'dtValidade': '2018-09-25',
'tags': ['Óleo','Vegetal','Mineral','Animal'],
'fornecedor': {
	'cdFornecedor': 1,
	'nmFornecedor': 'Fazenda do Beto Cachaça'
    }          
});

db.lojas.insert([
 {'cod': 1, 'nmEndereco': 'Rua Xiu,15'},
 {'cod': 2, 'nmEndereco': 'Rua Irineu,234'}
]);

db.lojas.insertMany([
 {'cod': 3, 'nmEndereco': 'Rua Cazalbé,280'},
 {'cod': 4, 'nmEndereco': 'Rua Faustop,11'}
]); 

db.lojas.update({'cod':1}, 
	            {$set: 
	            {'nmEndereco': 'Rua Cabeleira do Zezé, 1'}});
 
db.lojas.update({'cod': 2},
                {$set:                
                {'nmEndereco': 'Rua Gonçalves Dias, 239'}});

db.lojas.update({'cod': 3},
                {$set:
                {'nmEndereco': 'Av Brigadeiro, 43'}});                 	            

db.lojas.update({'cod': 4},
                {$set:
                {'nmEndereco': 'Rua Fagundes Varela, 290'}});

db.lojas.update({'cod': 5},
                {$set:
                {'nmEndereco': 'Rua Cassiano Costa, 452'}});

db.lojas.insert({'cod': 5, 'nmEndereco': 'Av das Nações Unidas,1080'});

db.lojas.deleteOne({'cod':5});

db.lojas.remove({}); --ATENÇÃO!!! Vai remover todos os Documentos desta forma
db.lojas.remove({'cod':5}); 

db.lojas.insert({'cod': 5, 'nmEndereco': 'Av das Nações Unidas, 1080'});

db.collection.renameCollection("???");

