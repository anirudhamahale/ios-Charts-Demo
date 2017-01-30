//
//  BarChartViewController.swift
//  Charts-Demo
//
//  Created by LA Argon on 30/01/17.
//  Copyright © 2017 LA Argon. All rights reserved.
//

import UIKit
import Charts

class BarChartViewController: UIViewController {

    @IBOutlet weak var barChartView: BarChartView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        barChartView.noDataText = "You need to provide data for the chart."
        barChartView.noDataTextColor = UIColor.red
        barChartView.noDataFont = UIFont(name: "Helvetica Neue", size: 30.0)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
