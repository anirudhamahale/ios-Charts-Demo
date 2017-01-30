//
//  MasterViewController.swift
//  Charts-Demo
//
//  Created by LA Argon on 30/01/17.
//  Copyright © 2017 LA Argon. All rights reserved.
//

import UIKit

class MasterViewController: UITableViewController {

    let chartsType = ["Bar Chart",
                      "LineChart (with legend, simple design)",
                      "LineChart (cubic lines)",
                      "LineChart (single DataSet)",
                      "Combined-Chart (bar- and linechart in this case)",
                      "BarChart (with legend, simple design)",
                      "BarChart (grouped DataSets)",
                      "Horizontal-BarChart",
                      "PieChart (with selection, …)",
                      "ScatterChart (with squares, triangles, circles, … and more)",
    ]
    
    let segueNames = ["barChart","lineChart"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return chartsType.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "chartsCell")!
        cell.textLabel?.text = chartsType[indexPath.row]
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.row > 2 {
            tableView.deselectRow(at: indexPath, animated: true)
            return
        }
        self.performSegue(withIdentifier: "\(segueNames[indexPath.row])", sender: nil)
        tableView.deselectRow(at: indexPath, animated: true)
    }

}
