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
}else {
print("es igual a 11")
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

//NOVEDADES DE SWIFT ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

import Foundation

print("FREYDER URBANO")

//FUNDAMENTOS

//CONVERSIONES DE INT A DOUBLE

var tres = 3
var double = 0.14159
var pi = Double(tres) + double
print(pi)

//BOOLEANOS

let elCieloEsAzul = true
let elCieloEsRojo = false

//uso

if elCieloEsAzul {
  print("SI")
} else {
  print("NO")
}

if elCieloEsRojo {
  print("SI")
} else {
  print("NO")
}

//tuplas
/*las tuplas estan compuestas por dos o mas tipos de datos en este caso un int y un string
pero pueden ser de muchos tipos y mas de dos tipos por ejemplo (int,int,int, boolean)
*/
let errorHTTP404 = (404, "nOT FOUND")

let (codigoEstado, msgEstado) = errorHTTP404
print("El codigo de estado es \(codigoEstado)")
print("El msg de estado es \(msgEstado)")

//si solo necesita un valor de la tupla se coloca un guin bajo

let (soloelCodigo, _) = errorHTTP404
print("Solo el codigo \(soloelCodigo)")

//se puede acceder a los valores de una tupla con indices

print("El codigo es \(errorHTTP404.0)")
print("El msg es \(errorHTTP404.1)")

//se pueden nombrar los elementos de una tupla al crear la tupla

let respuestaHttp200 = (codigo: 200, mensaje: "OK", estado: true)
print(
  "codigo \(respuestaHttp200.codigo), mensaje: \(respuestaHttp200.mensaje), estado: \(respuestaHttp200.estado) "
)

//OPCIONALES

let posibleNumero = "123"
let convertidoAInt = Int(posibleNumero)
print(convertidoAInt)  //imprime Optional(123)

//no se puede usar nil con constantes ni variables opcionales
var valorIntOpcional: Int? = 404
valorIntOpcional = nil

//asignacion de nil automatico
var palabra: String?  //palabra es nil automaticamente

//IF Y EXTRACCION FORZADA DE OPCIONALES

let numeroCadena = "123456"
let numeroIntOpcional = Int(numeroCadena)

if numeroIntOpcional != nil {
  print("nomeroIntOpcional contiene valor \(numeroIntOpcional!)")// la exclamacion al final de numeroIntOpcional extrae el valor de forma forzada
  // 
}

//VINCULACION OPCIONAL 

/*
SINTAXIS 
if let <#NOMBREDELACONSTANTE#> = <#OPCIONAL#>{
  <#INSTRUCCIONES#>
}
*/

let numeroString = "456789"
let numOptional = Int(numeroString)
let numeroReal = 456789

if let num = numOptional, num == numeroReal {
    print("La cadena \(numeroString) tiene un valor de \(num)")
} else {
    print("La cadena \(numeroString) no puede ser convertida o no coincide con \(numeroReal)")
}


if let primero = Int("4"), let segundo = Int("5"), primero < segundo && segundo < 100{
  print("\(primero) < \(segundo) < 100")
}

if let primero = Int("4"){
  if let segundo = Int("5"){
    if primero < segundo && segundo < 100{
      print("\(primero) < \(segundo) < 100")
    }
  }
}

//MANEJO DE ERRORES 

/*
en este ejercicio la funcion prepararUnSandwich puede arrojar errores
al colocarla funcion dentro de un do se abre un try catch. 
si prepararUnSandwich tiene errores el primero seria nohayPlatos limpios lo que lleva
a la funcion lavarPlatos()
o por faltanIngredientes lo que llevaria a la funcion comprarProviciones
y si prepararUnSandwich no tiene errores se ira por la funcion comerSandwich
*/

/* EJEMPLO
func prepararUnSandwich() throws {
    // ...
}
 
do {
    try prepararUnSandwich()
 
    comerUnSandwich()
} catch SandwichError.noHayPlatosLimpios {
    lavarPlatos()
} catch SandwichError.faltanIngredientes(let ingredientes) {
    comprarProvisiones(ingredientes)
}
*/

//DEPURACION CON ASERSIONES 
/*
SE PUEDEN USAR LAS ASERCIONES QUE SEAN NECESARIAS EN PROCESO DE DESARROLLO  
SE USA LA FUNCION assert(: :file:line:)
*/
/*
let numero = 5000
assert(numero > 2000, "el numero es mayor que 2000")
//tambien se puede llamar sin el mensaje
assert(numero < 2000)
*/


//assertionFailure( :file:line ) SE USA CUANDO UNA ASERCION A FALLADO
//EJEMPLO
//assert no se debe usar en tiempo de ejecucion
let edad = -3

if edad >= 0 {
    if edad > 10 {
        print("Puedes subir a la Montaña Rusa o a la Rueda de la Fortuna.")
    } else {
        print("Puedes subir a la Rueda de la Fortuna.")
    }
} else {
    print("La edad de una persona no puede ser menor que cero.")
}

//IMPONER PRECONDICIONES

/*
SE USA LA FUNCION   precondition(::file:line:), esta funcion recibe una expresion a true o false 
y un mensaje 
*/

precondition(index > 0 , "El indice debe ser mayor que cero")

//OPERADOES ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////



































































































