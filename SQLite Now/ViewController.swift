//
//  ViewController.swift
//  SQLite Now
//
//  Created by shoeb on 11/02/23.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    var db = DBManager()
    var emps = Array<Employee>()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        
        db.insert(id: 1, name: "Shoeb", age: 23)
        emps = db.read()
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emps.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = "Id: " + emps[indexPath.row].id.description + ", Name: " + emps[indexPath.row].name + ", age: " + emps[indexPath.row].age.description
        return cell
    }
    
}

