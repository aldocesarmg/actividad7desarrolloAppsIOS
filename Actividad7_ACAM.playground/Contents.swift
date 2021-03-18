import UIKit

var costo_referencia:[Float] = [8.3,10.5,9.9]

func impuesto (vals:[Float]) -> [Float] {
    var resultado:[Float] = []
    for aux in vals {
        resultado.append(aux*1.16)
    }
    return resultado
}

print(impuesto(vals:costo_referencia))

let sumados = {(v1: Int, v2: Int) -> Int in return v1 + v2}

func sumaTres (v1: Int, v2: Int, v3: Int) -> Int {
    return sumados(v1, v2) + v3
}

print(sumaTres(v1: 1, v2: 2, v3: 3))

//func cambio(val1:Int, val2:Int) -> (Int, Int){
//    var aux = val2
//    val2 = val1
//    val1 = aux
//    return (val1, val2)
//}

//cambio(val1:3, val2:4)

var datos = [3,7,9,2]

extension Array {
    func transformar<T> (cantidad:T, operacion: (T, Element) -> T) -> [T] {
        var resultado:[T] = []
        for val in self {
            resultado.append(operacion(cantidad, val))
        }
        return resultado
    }
}

print(datos.transformar(cantidad: 5) {(a, b) in a + b})

var precios = [4.2, 5.3, 8.2, 4.5]

var arreglo_impuesto = precios.map{a in return a * 1.16}
print(arreglo_impuesto)

var filtro_impuesto = arreglo_impuesto.filter{a in a > 6.0}
print(filtro_impuesto)
