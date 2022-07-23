//
//  main.swift
//  Home Work 19
//
//  Created by Rafik on 22.07.22.
//

import Foundation

//Home Work 19

//1. Հայտարարել Ունիվերսալ ֆունկցիա changeValue(value, a) անունով ,
//որի առաջին արգումենտը Ունիվերսալ տիպի է իսկ եկրորդ արգումենտը Double տիպի.
//Ֆունկցիան պետք է value -ի արժեքը մեծացնի a ով։



protocol  Plus{
     static func +(s: Self, e: Double) -> Self
}

extension Double:Plus{

}

func changeValue<T: Plus>(value: T, a: Double ) {
    print(value + a)
}

changeValue(value: 2, a: 5)




//2. Հայտարարել Ունիվերսալ ֆունկցիա changeValue(value, a) անունով,
//որի առաջին արգումենտը Ունիվերսալ տիպի է իսկ եկրորդ արգումենտը Double տիպի.
//Ֆունկցիան պետք է value -ի արժեքը մեծացնի a անգամ։


protocol  Multiply{
    static func *(l: Self, r: Double) -> Self

}

extension Double: Multiply{

    static func *(l: Double, r: Double) {
        return l * r
    }
}


func changeeValue<T: Multiply>(value: T, a: Double) {
    print(value * a)
}

changeeValue(value: 2, a: 5.5)




//3. Հայտարարել Ունիվերսալ ֆունկցիա changeArrayValue(arr, a) անունով,
//որի առաջին արգումենտը Ունիվերսալ տիպի մասիվ է իսկ եկրորդ արգումենտը Double տիպի.
//Ֆունկցիան պետք է arr -ի արժեքները մեծացնի a անգամ և վերադարձնի նոր մասիվը։


protocol ArrrayMultiply {

 static func *(l: Self,  r: Self) -> Self
}


extension Int: ArrrayMultiply {
    
}

func changeArrayValue<T: ArrrayMultiply>(arr:[T], a:T) -> [T] {
    
    var myArr:[T] = [ ]
 
    for item in arr {
        
        myArr.append(item * a)
    }
    return myArr
}
print(changeArrayValue(arr: [2, 4, 5], a: 4))


//4. Հայտարարել Ունիվերսալ ֆունկցիա changeArrayValue(arr, a) անունով ,
//որի առաջին արգումենտը Ունիվերսալ տիպի մասիվ է իսկ եկրորդ արգումենտը Double,
//տիպի. Ֆունկցիան պետք է arr -ի արժեքները մեծացնի a ով և վերադարձնի նոր մասիվը։

protocol ArrrayAmount {

 static func +(l: Self,  r: Self) -> Self
}

extension Int: ArrrayAmount {
    
}

func changeArrayValueAmount<T: ArrrayAmount>(arr:[T], a:T) -> [T] {
    
    var myArr:[T] = [ ]
 
    for item in arr {
        
        myArr.append(item + a)
    }
    return myArr
}
print(changeArrayValueAmount(arr: [2, 4, 5], a: 4))




