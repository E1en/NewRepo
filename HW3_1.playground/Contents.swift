import UIKit


class ViewController: UIViewController {
    override func viewDidLoad() {
        let a = MyClass()
        a.printThings()
        a.printDictionary()
        
        a.getSum()
    }
}

class MyClass {
    
    
    //    Создайте коллекцию типа [Any], включающую несколько вещественных чисел, целых, строк и булевых значений.  Распечатайте содержимое коллекции.
    
    //    Пройдите по всем элементам коллекции.  Для каждого целого, напечайте "Целое число " и его значение.  Повторите то же самое для вещественных чисел, строк и булевых значений.
    
    
    let things: [Any] = [1, "Tod", 7.6, Bool()]
    
    func printThings() {
        for th in things {
            switch th {
            case is Int:
                print("Целое число \(th)")
            case is Double:
                print("Целое вещ число \(th)")
            case is String:
                print("Целое строка \(th)")
            case is Bool:
                print("Целое булевое \(th)")
            default:
                print("что-то еще")
            }
        }
    }
    

    //Создайте словарь [String : Any], где все значения — это смесь вещественных и целых чисел, строк и булевых значений.  Выведите пары ключ/значения для всех элементов коллекции.
//
//
//
    let directors: [String: Any] = ["Иван Васильевич": 2,
                                    "Sacha": 34.5,
                                    "Lena": "employed",
                                    "Amir": false,
                                    "Ivan": "2"]
    
    func printDictionary() {
        print("printDictionary")
        for (key, value) in directors {
            print("\(key) \(value)")
        }
    }

    
    
//    //Создайте переменную total типа Double, равную 0.  Переберите все значения словаря, и добавьте значение каждого целого и вещественного числа к значению вашей переменной.  Для каждой строки добавьте 1.  Для каждого булева значения, добавьте 2, в случае, если значение равно true, либо вычтите 3, если оно false.  Напечатайте значение total.

    func getSum() {
        var total: Double = 0
        for (_, value) in directors {
            switch value {
            case is Int:
                total += Double(value as! Int)
            case is Double:
                total += value as! Double
            case is String:
                total += 1
            case is Bool:
                if let v = value as? Bool {
                    total += v ? 2 : -3
                }
            default:
                print("")
            }
        }
        
        print("total \(total)")
        
        
        

        //Обнулите переменную total и снова пройдите по всей коллекции, прибавляя к ней все целые и вещественные числа.  Для каждой строки, встретившейся на пути, попробуйте сконвертировать её в число, и добавьте это значение к общему.  Игнорируйте булевы значения.  Распечатайте итог.
        
        
        print("")
        total = 0
        for (_, value) in directors {
            switch value {
            case is Int:
                total += Double(value as! Int)
            case is Double:
                total += value as! Double
            case is String:
                total += Double(value as! String) ?? 0
            case is Bool: continue
            default:
                print("")
            }


}
        
        print("total2 \(total)")
    }
    
    
    
    
}
