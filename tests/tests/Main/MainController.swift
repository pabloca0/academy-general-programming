//
//  ViewController.swift
//  tests
//
//  Created by Fernando Salom Carratala on 6/9/22.
//

import UIKit

class MainController: UIViewController {
    @IBOutlet weak var tableView: UITableView!

    var sectionNames = [String]()

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        sectionNames.append("Exercises String")
        sectionNames.append("Exercises Array")
        sectionNames.append("Exercises Class")
        sectionNames.append("Exercises Array + Class")
        sectionNames.append("Exercises Optionals")
    }
}

