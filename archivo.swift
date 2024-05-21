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

