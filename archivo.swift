import Foundation
//esto es un hola mundo
/*esto es un comentario 
mas largo
*/
print("HOLA MUNDO")

//VARIABLE 
let constante = 10
var variable = 2
var x = 1, y = 2, z = 3

// DEFINICIONES DE TIPO

var palabras: String
var numero: Int
var double: Double
var float: Float
var boolean: boolean
palabras = "Varias palabra"

var camelCase = "string de palabras"
var numeroEntero = 2

//multiples varibles de un mismo tipo en una sola linea 

var num, num1, num2: Int

//nombrar las variables o constantes con cualquier tipo de caracter

let numero = 4 
let letra = ""

//Se puede cambiar el valor a una variable

var palabra = "plabra1"
palabra = "palabra2"
print(palabra)//imprimiria palabra2

//No se puede cambiar el valor a una constante

let nota = "estanota"
nota = "otranota"
print(nota)//imprimiria estanota no otranota

print("ASI SE CONCATENA UNA VARIABLE \(palabra)")
print("ASI SE CONCATENA UNA CONSTANTE \(nota)")

//tipado solo para algo complejo 

var myInt: Int = 2
print(myInt)

var myDouble = 3.5
print(myDouble)

//se debe tipar los float
var myFloat: Float = 6.5
print(myFloat)

var myBollean = true
print(myBollean)

let myConst = "mi Constante"
print(myConst)

// Controles de flujo

var myInt = 11

if myInt == 10{
    print("es igual a 10")
}else if{
print("es igual a 11")
}else {
    print("no es 10")
}

//LISTAS
//las listas van entre 
var myLista = ["freyder", "Alejandro", "Urbano", "Rosales"]
print(myList)

//adiconar 
myLista.append("Juan")
print(myList)

//control de flujo

var myInt = 11
if myInt == 12{
  print("error")
}else if myInt == 11{
  print("correcto")
}else{
  print("fin del codigo")
}

var myList = ["Freyder","Alejandro", "Urbano"]
print(myList)
print(myList[0])

//adicionar a una lista 

myList.append("Rosales")
print("esta es la lista: \(myList)")

//Sets LOS SETS NO ADMITE DUPLICACOS
var mySet: Set = [8,9,1,3,]
print(mySet)

//OPCIONALES
var opcional: String? = "mi opcional"
opcional = nil
if opcional != nil{
  print(opcional!)
}


//Mapas

var myMap = ["1": 35, "2": 40]
print(myMap)
print(myMap["1"])
print(myMap["3"])

//desempaquetado de nulos

if let edad = myMap["3"]{
  print(edad)
}else{
  print(myMap["3"] ?? "NO EXISTE")
}

//bucles

var lista = [5,6,8,7,9,2,3,6]

for item in lista{
  print(item)
}

var index = 0
while index > lista.count{
  print(lista[index])
}



//FUNCIONES
//sintaxis de una funcion
//dentro de esta funcion se crea otra funcion la cual es llamada desde miFuncion
func miFuncion(){
  otraFuncion()
}
/*esto crea un bucle que repite el contenido de la funcion en el intervalo que desemos
usando forEach
*/
(1...10).forEach { _ in 
  miFuncion()
} 
//esta es la funcion que esta dentro de mifuncion
func otraFuncion(){
  print("ESTE TEXTO VIENE DE miFuncion")
}


//funciones especificando el retorno

//en este caso tiene que retornar un String
func funcionRetornada() -> String{
  return "esto tiene que ser un string"
}
print(funcionRetornada())

//en este caso tiene que ser un entero
func funcionInt() -> Int{
  return 200000
}
print(funcionInt())

//CLASES

//las clases pueden llevar todo tipo de elementos dentro como funciones variables constantes etc
class MyClass{
  var nombre: String?
  var edad: Int?
}

var myClass = MyClass()
myClass.edad = 30
myClass.nombre = "Frey"
print(myClass.nombre)

//funcion pasando parametros int
 func suma(_ num1: Int, _ num2: Int) -> Int{
  return num1 + num2
 }
let res = suma(5,6)
print(res)

//funcion pasando parametros String

func nombres(_ nombre: String, _ apellido: String) -> 
String{
  return nombre + " " + apellido
}
let nombreCompleto = nombres("Juan", "Casanova")
print("Nombre Completo: \(nombreCompleto)")