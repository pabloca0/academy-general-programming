//
//  ViewController.swift
//  tests
//
//  Created by Fernando Salom Carratala on 6/9/22.
//

import UIKit

class ExercisesController: UIViewController {
    @IBOutlet weak var solutionTextView: UITextView!

    var screen: Screen = .string
    let logger = Logger()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        switch screen {
        case .optional:
            let optional = OptionalExercise()
            logger.setLine(with: "--------- Exercise 1 ---------")
            logger.setLine(with: optional.test1(x: 1, y:2))
            logger.setLine(with: optional.test1(x: -1, y:2))
            logger.setLine(with: "--------- Exercise 2 ---------")
            logger.setLine(with: optional.test2(x: 1, y:2))
            logger.setLine(with: optional.test2(x: 1, y:nil))
            logger.setLine(with: optional.test2(x: nil, y:2))
            logger.setLine(with: "--------- Exercise 3 ---------")
            logger.setLine(with: optional.test3(firstName: "Pedro", lastName: "Sanchez", age: nil))
            logger.setLine(with: optional.test3(firstName: "Pedro", lastName: "Sanchez", age: "45"))
            logger.setLine(with: optional.test3(firstName: "Pedro", lastName: nil, age: "32"))
            logger.setLine(with: "--------- Exercise 4 ---------")
            logger.setLine(with: optional.test4())
            logger.setLine(with: "--------- Exercise 5 ---------")
            logger.setLine(with: optional.test5(x: 2, y: 2, number: 3))
            logger.setLine(with: optional.test5(x: nil, y: 2, number: 3))
            logger.setLine(with: optional.test5(x: 2, y: nil, number: 3))
            logger.setLine(with: optional.test5(x: nil, y: nil, number: 3))
        case .string:
            let strings = StringExercise()
            logger.setLine(with: "--------- Exercise 1 ---------")
            logger.setLine(with: strings.test1(string1: "Hola", string2: "Mario"))
            logger.setLine(with: "--------- Exercise 2 ---------")
            logger.setLine(with: strings.test2(text: "Esto es un texto largo que será reemplazado por otra cosa", search: "e", replace: "X"))
            logger.setLine(with: strings.test2(text: "Esto es un texto largo que será reemplazado por otra cosa", search: "a", replace: "v"))
            logger.setLine(with: "--------- Exercise 3 ---------")
            logger.setLine(with: strings.test3(text: "ahora mismo no quiero saber que pasa", character: "a"))
            logger.setLine(with: strings.test3(text: "Otro texto más que usaremos de prueba", character: "a"))
            logger.setLine(with: "--------- Exercise 4 ---------")
            logger.setLine(with: strings.test4(text: "Hola"))
            logger.setLine(with: strings.test4(text: "H"))
            logger.setLine(with: strings.test4(text: ""))
            logger.setLine(with: "--------- Exercise 5 ---------")
            logger.setLine(with: strings.test5(text: "asdfdfdfdfdsa"))
            logger.setLine(with: strings.test5(text: "prueba"))
        case .array:
            let array = ArrayExercise()
            logger.setLine(with: "--------- Exercise 1 ---------")
            logger.setLine(with: array.test1(elements: [1,2,3,4,5,6], number: 2, position: 4))
            logger.setLine(with: array.test1(elements: [1,2,3,4,5,6], number: 2, position: 8))
            solutionTextView.text = logger.getAllLines()
            logger.setLine(with: "--------- Exercise 2 ---------")
            logger.setLine(with: array.test2(elements: [1,4,45,6,4,32,1], search: 2))
            logger.setLine(with: array.test2(elements: [1,4,45,6,4,32,1], search: 45))
            logger.setLine(with: "--------- Exercise 3 ---------")
            logger.setLine(with: array.test3(elements: [2,3,5,7,2,56,6,7,2], search: 0))
            logger.setLine(with: array.test3(elements: [2,3,5,7,2,56,6,7,2], search: 2))
            logger.setLine(with: "--------- Exercise 4 ---------")
            logger.setLine(with: array.test4(elements: [2,3,5,7,2,56,6,7,2]))
            logger.setLine(with: array.test4(elements: [29,23,3,3,3,2,56,6,7,2]))
            logger.setLine(with: "--------- Exercise 5 ---------")
            logger.setLine(with: array.test5(elements: ["Hola", "que", "tal"], element: "Pedro"))
            logger.setLine(with: array.test5(elements: ["Muy", "bien"], element: "Paco"))            
        case .classes:
            break
        case .arrayAndclass:
            break
        }
        solutionTextView.text = logger.getAllLines()
    }

}

