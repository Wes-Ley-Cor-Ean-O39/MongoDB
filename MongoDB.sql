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
'cdProduto': 4,
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
                {$set:()
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

db.produtos.insert([{'cdProduto': 2, 'nmProduto': 'Feijão', 'qualidade': 'alta'},
	               {'cdProduto': 3, 'nmProduto': 'Macarrão', 'qualidade': 'alta'}]);

db.produtos.find({'qualidade': /.*al.*/}).pretty(); --- LIKE

db.produtos.find({'nmProduto': /.*oz.*/}).pretty();

db.produtos.find({$and: [
                 {'cdProduto': 3},
                 {'qualidade': 'alta'}
	             ]}).pretty();

db.produtos.find({$and: [
                 {'cdProduto': 1},
                 {'qualidade': 'alta'} 
	             ]}).pretty();

db.produtos.find({$and: [
                 {'nmProduto': 'Feijão'},
                 {'qualidade': 'alta'}
	             ]}).pretty();

db.produtos.find({'qualidade': 'alta', 'cdProduto': 3}).pretty();

db.produtos.find({$or: [
                 {'nmProduto': 'Arroz'},
                 {'qualidade': 'alta'} 
                 ]}).pretty();

db.produtos.find({$or: [
                 {'nmProduto': 'Feijão'},
                 {'nmProduto': 'Arroz'}   
	             ]}).pretty();

db.produtos.find({'qualidade': 
	             {$exists: false}})
                 .pretty();

db.produtos.find({'qualidade':
                 {$exists: true}})
                 .pretty();  

db.produtos.find({'qualidade':
                 {$not:
                 {$eq: 'alta'}}})
                 .pretty(); 

db.produtos.find({'qualidade':
                 {$not:
                 {$eq: 'baixa'}}})
                 .pretty();

db.produtos.insert({'cdProduto': 5,
                   'nmProduto': 'Nescau',
                   'qualidade': 'baixa'});              

db.produtos.find({$nor: [
                 {'qualidade': 'alta'},
                 {'qualidade': {$exists: false}}  
	             ]}).pretty();

db.produtos.find({$nor: [
                 {'nmProduto': 'Feijão'},
                 {'qualidade': {$exists: false}}
	             ]}).pretty();

db.produtos.find({'cdProduto': {$not:
                 {$eq: 5}}
                 }).pretty();

db.produtos.find({'nmProduto': {$not:
                 {$eq: 'Feijão'}}
                 }).pretty();

db.produtos.find({'qualidade': {$not:
                 {$eq: 'baixa'}}
                 }).pretty();

db.produtos.find({'qualidade': {$not:
                 {$eq: 'alta'}}
	             }).pretty();

db.produtos.find({'cdProduto': {$ne: 5}}).pretty();

db.produtos.find({'nmProduto': {$ne: 'Arroz'}}).pretty();

db.produtos.find({'qualidade': {$ne: 'alta'}}).pretty();

db.produtos.find({'qualidade': {$ne: 'baixa'}}).pretty();

db.produtos.update({'cdProduto': 1}, 
		           {$set: 
		           {'preco': 2.3}});

db.produtos.update({'cdProduto': 3}, 
		           {$set: 
		           {'preco': 5.5}});

db.produtos.update({'cdProduto': 4},
                   {$set:
                   {'preco': 6.9 }});

db.produtos.update({'cdProduto': 5},
                   {$set:
                   {'preco': 3.5}});

db.produtos.insert({'cdProduto': 2,
                   'nmProduto': 'Feijão',
                   'qualidade': 'baixa',
                   'preco': 4.1});

db.produtos.find({$and: [{preco: {$gte: 2.3}}, {preco: {$lte: 5.5}}]}).pretty(); ---$gte = or > / lte = or <

db.produtos.find({$and: [{preco: {$gte: 6.9}}]}).pretty();

db.produtos.find({}, {'cdProduto': 1, 'nmProduto': 1}).pretty();

db.produtos.find({}, {'preco': 1}).pretty(); -- 0 Não retorna os atributos / 1 retorna os atributos (lógica binária)

db.produtos.find({}, {'nmProduto': 0}).pretty();

db.produtos.find({}, {}).sort({'cdProduto': 1}).pretty();

db.produtos.find({}, {}).sort({'nmProduto': 1}).pretty();

db.produtos.find({}, {}).sort({'qualidade': -1, 'cdProduto': 1}).pretty();

db.produtos.find({}, {'qualidade': 1, 'cdProduto': 1}).sort({'qualidade': -1, 'cdProduto': 1}).pretty();

db.produtos.find({}).skip(4).pretty();

db.produtos.find({}, {'cdProduto': 1, 'cdProduto': 1}).skip(3).pretty();

db.produtos.find({}, {'cdProduto': 1, 'qualidade': 1}).limit(1).pretty();

db.clientes.insertOne({'cdCliente': 1,
	                'nmCliente': 'Bruno',
	                'inAtivo': 1});
db.clientes.findOne({}, {'inAtivo': 0});

var cliente = db.clientes.findOne({}, {'inAtivo': 0});
cliente;

db.produtos.find({'cdProduto': {$lte: 2}}).pretty();

db.produtos.find({'cdProduto': {$lte: 2}}, {'qualidade': 0}).pretty();

var produto = db.produtos.find({'cdProduto': {$lte: 2}}, {'qualidade': 0}).pretty();
produto;

db.vendas.insertOne({
	'clientes': 'cliente',
	'produtos': 'produto'
	});