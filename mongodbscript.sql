db.cliente.insert(
{
  "_id" : 654321,
  "first_name" : "John",
  "last_name" : "Doe",
  "interested_by" : [ "electronics", "sports", "music" ],
  "address" : [ {
    "name" : "John Doe",
    "company" : "Resultri",
    "street" : "1015 Mapple Street",
    "city" : "San Francisco",
    "state" : "CA",
    "zip_code" : 94105
  },
  {
    "name" : "John Doe",
    "company" : "Resultri",
    "street" : "1015 Mapple Street",
    "city" : "San Francisco",
    "state" : "CA",
    "zip_code" : 94105
  },
  {
    "name" : "John Doe",
    "company" : "Resultri",
    "street" : "1015 Mapple Street",
    "city" : "San Francisco",
    "state" : "CA",
    "zip_code" : 94105
  }
  ]
  
}
)


db.cliente.find(_id : 654321 )

db.cli.insert({nome: 'Wesley',
               endereco: 'Teste',
			   numero: 123,
			   cidade: 'Barueri'}
);


db.cli.find({"nome": /jose/})