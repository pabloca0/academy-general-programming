//
//  ViewController.swift
//  tests
//
//  Created by Fernando Salom Carratala on 6/9/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print("--------- Exercise 1 ---------")
        print(test1(x: 1, y:2))
        print(test1(x: -1, y:2))
        print("--------- Exercise 2 ---------")
        print(test2(x: 1, y:2))
        print(test2(x: 1, y:nil))
        print(test2(x: nil, y:2))
        print("--------- Exercise 3 ---------")
        print(test3(firstName: "Pedro", lastName: "Sanchez", age: nil))
        print(test3(firstName: "Pedro", lastName: "Sanchez", age: "45"))
        print(test3(firstName: "Pedro", lastName: nil, age: "32"))
        print("--------- Exercise 4 ---------")
        test4()
        print("--------- Exercise 5 ---------")
        print(test5(x: 2, y: 2, number: 3))
        print(test5(x: nil, y: 2, number: 3))
        print(test5(x: 2, y: nil, number: 3))
        print(test5(x: nil, y: nil, number: 3))
    }


    /*:
     ## Exercise - Guard Statements
     Imagine you want to write a function to calculate the area of a rectangle. However, if you pass a negative number into the function, you don't want it to calculate a negative area. Create a function called `calculateArea` that takes two `Double` parameters, `x` and `y`, and returns an optional `Double`. Write a guard statement at the beginning of the function that verifies each of the parameters is greater than zero and returns `nil` if not. When the guard has succeeded, calculate the area by multiplying `x` and `y` together, then return the area. Call the function once with positive numbers and once with at least one negative number.
    */
    func test1(x: Double, y: Double){

    }

    /*:
     Create a function that takes two optional integers as parameters and returns an optional integer. You should use one `guard` statement to unwrap both optional parameters, returning `nil` in the `guard` body if one or both of the parameters doesn't have a value. If both parameters can successfully be unwrapped, return their sum. Call the function once with non-`nil` numbers and once with at least one parameter being `nil`.
     */
    func test2(x: Int?, y: Int?) -> Int?{

    }

    /*:
     When working with UIKit objects, you will occasionally need to unwrap optionals to handle user input. For example, the text fields initialized below have `text` properties that are of type `String?`.

     Write a function below the given code that takes no parameters and returns an optional `User` object. Write a guard statement at the beginning of the function that unwraps the values of each text field's `text` property, and returns `nil` if not all values are successfully unwrapped. After the guard statement, use the unwrapped values to create and return and instance of `User`.
     */

    struct User {
        var firstName: String
        var lastName: String
        var age: String
    }


    func test3(firstName: String?, lastName: String?, age: String?) -> User? {
        let firstNameTextField = UITextField()
        let lastNameTextField = UITextField()
        let ageTextField = UITextField()

        firstNameTextField.text = firstName
        lastNameTextField.text = lastName
        ageTextField.text = age

        return

    }

    /*:
     Call the function you made above and capture the return value. Unwrap the `User` with standard optional binding and print a statement using each of its properties.
     */
    func test4(){

    }

    /*:
     Write a function that takes two optional integers and one non optional as parameters and returns the multiplication of the non optionals (you cannot use defaults).
     */
    func test5(x: Int?, y: Int?, number: Int) -> Int{
        return
    }
}

