//
//  ViewController.swift
//  tests
//
//  Created by Fernando Salom Carratala on 6/9/22.
//

import UIKit

class ExercisesController: UIViewController {
    @IBOutlet weak var solutionTextView: UITextView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let logger = Logger()
        logger.setLine(with: "--------- Exercise 1 ---------")
        logger.setLine(with: test1(x: 1, y:2))
        logger.setLine(with: test1(x: -1, y:2))
        logger.setLine(with: "--------- Exercise 2 ---------")
        logger.setLine(with: test2(x: 1, y:2))
        logger.setLine(with: test2(x: 1, y:nil))
        logger.setLine(with: test2(x: nil, y:2))
        logger.setLine(with: "--------- Exercise 3 ---------")
        logger.setLine(with: test3(firstName: "Pedro", lastName: "Sanchez", age: nil))
        logger.setLine(with: test3(firstName: "Pedro", lastName: "Sanchez", age: "45"))
        logger.setLine(with: test3(firstName: "Pedro", lastName: nil, age: "32"))
        logger.setLine(with: "--------- Exercise 4 ---------")
        test4()
        logger.setLine(with: "--------- Exercise 5 ---------")
        logger.setLine(with: test5(x: 2, y: 2, number: 3))
        logger.setLine(with: test5(x: nil, y: 2, number: 3))
        logger.setLine(with: test5(x: 2, y: nil, number: 3))
        logger.setLine(with: test5(x: nil, y: nil, number: 3))
        solutionTextView.text = logger.getAllLines()
    }


    /*:
     ## Ejecicio 1
     Crea una función que calcule el area de un rectangulo con 2 parámetros de tipo Double. Sí le pasas un número negativo no debes calcular el area.
     Crea una declaración de tipo "guard" que verifique si el número es negativo o no y devuelva "nil" en caso de que sea negativo. Si ambos números son positivos calcula el area
    */
    func test1(x: Double, y: Double){

    }

    /*:
     ## Ejecicio 2
     Crea una función que tenga 2 parámetros opcionales y devuelva un Int opcional. Si algún número es nil devuelve nil sino devuelve la suma de los números
     */
    func test2(x: Int?, y: Int?) -> Int?{
        return 0
    }

    /*:
     ## Ejecicio 3
     Cuando se trabaja con objetos de UIKit ocasionalmente necesitas manejar opcionales sobre los datos que introduce el usuario. Por ejemplo los textfields inicializados más abajos tienen una propiedad text que es de tipo "String?"

     Crea una función con el código que encontrarás a continuación que devuelva un objeto User solo en el caso de que sus parametros no sean nil
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

        return User(firstName: "", lastName: "", age: "")

    }

    /*:
     ## Ejecicio 4
     Llama a la función que hay arriba y captura el valor que devuelve y haz un print de sus propiedades en caso de no ser nil

    */
    func test4(){

    }

    /*:
     ## Ejercicio 5
     Escribe una función que tenga 2 opcionales y un no opcionarl y que devuelva la multiplicación de aquellos parametros que no sean nil. No se pueden usar defaults
     */
    func test5(x: Int?, y: Int?, number: Int) -> Int{
        return 0
    }
}

