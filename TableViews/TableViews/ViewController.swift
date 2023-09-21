//
//  ViewController.swift
//  TableViews
//
//  Created by DA MAC M1 156 on 2023/05/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
    }


}
extension ViewController: UITableViewDataSource{
    //in tableview we need at least two methods for rows and columns
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    //properties inside the cell and the cell cannot change is immutable
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        cell.textLabel?.text = "I am at row number: \(indexPath.row)"
        return cell
    }
    
}
//allows us to edit a row (delegate)
extension ViewController: UITableViewDelegate{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("you have clicked row number: \(indexPath.row)")
    
    }
}

