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

            let optional = Optional()
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
            optional.test4()
            logger.setLine(with: "--------- Exercise 5 ---------")
            logger.setLine(with: optional.test5(x: 2, y: 2, number: 3))
            logger.setLine(with: optional.test5(x: nil, y: 2, number: 3))
            logger.setLine(with: optional.test5(x: 2, y: nil, number: 3))
            logger.setLine(with: optional.test5(x: nil, y: nil, number: 3))
            solutionTextView.text = logger.getAllLines()
        case .string:
            break
        case .array:
            break
        case .classes:
            break
        case .arrayAndclass:
            break
        }
    }

}

