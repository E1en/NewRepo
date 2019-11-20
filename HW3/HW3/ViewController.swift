//
//  ViewController.swift
//  HW3
//
//  Created by RusLab on 19.11.2019.
//  Copyright © 2019 RusLab. All rights reserved.
//

import UIKit

    //    Создайте коллекцию типа [Any], включающую несколько вещественных чисел, целых, строк и булевых значений.  Распечатайте содержимое коллекции.
    
    //    Пройдите по всем элементам коллекции.  Для каждого целого, напечайте "Целое число " и его значение.  Повторите то же самое для вещественных чисел, строк и булевых значений.


let things: [Any] = [1, "Tod", 7.6, Bool()]


let firstThings = things.first

if firstThings is Int {
    print("This is Int")
} else {
    print("This is another type")
}

//
//Создайте словарь [String : Any], где все значения — это смесь вещественных и целых чисел, строк и булевых значений.  Выведите пары ключ/значения для всех элементов коллекции.



let directors: [Any] = ["Иван Васильевич", 2, true, 34.5]


class Directors {
    var name: String
    init(name: String) {
        self.name = name
    }
    var status: Int
    init(status: Int) {
        self.status = status
    }
    var admission = Bool()
    init(admission: Bool,_: ()) {
        self.admission = admission
    }
    
    var rating = Double()
    init(rating: Double) {
        self.rating = rating
    }
}

let library = [(name: "Иван Васильевич", status: 2, admission: true, rating: 34.5)]
    

//Создайте переменную total типа Double, равную 0.  Переберите все значения словаря, и добавьте значение каждого целого и вещественного числа к значению вашей переменной.  Для каждой строки добавьте 1.  Для каждого булева значения, добавьте 2, в случае, если значение равно true, либо вычтите 3, если оно false.  Напечатайте значение total.

func getSum(directors: [Any]) -> Int {
var total = 0
   for director in directors {
        if let director = directors as? Int {
            total += director
        }
    }
    
    return total
}

getSum(directors: directors)




//Обнулите переменную total и снова пройдите по всей коллекции, прибавляя к ней все целые и вещественные числа.  Для каждой строки, встретившейся на пути, попробуйте сконвертировать её в число, и добавьте это значение к общему.  Игнорируйте булевы значения.  Распечатайте итог.
