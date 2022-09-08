//
//  ViewController.swift
//  tests
//
//  Created by Fernando Salom Carratala on 6/9/22.
//

import UIKit

class MainController: UIViewController {
    @IBOutlet weak var tableView: UITableView!

    struct Section {
        var name: String
        var viewController: UIViewController
    }
    var sections = [Section]()

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self

        let storyboard = UIStoryboard(name: "Exercises", bundle: nil)
        let optionalVC = storyboard.instantiateViewController(withIdentifier: "ExercisesController") as! ExercisesController
        sections.append(Section(name: "Exercises Optional", viewController: optionalVC))

    }
}

