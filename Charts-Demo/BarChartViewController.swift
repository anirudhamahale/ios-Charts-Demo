//
//  BarChartViewController.swift
//  Charts-Demo
//
//  Created by LA Argon on 30/01/17.
//  Copyright © 2017 LA Argon. All rights reserved.
//

import UIKit
import Charts

class BarChartViewController: UIViewController, ChartViewDelegate {

    @IBOutlet weak var barChartView: BarChartView!
    
    lazy var months = ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"]
    lazy var unitsSold = [20.0, 4.0, 6.0, 3.0, 12.0, 16.0, 4.0, 18.0, 2.0, 4.0, 5.0, 4.0]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        barChartView.delegate = self
        // Do any additional setup after loading the view.
        setChart(dataPoints: months, values: unitsSold)
    }

    func setChart(dataPoints: [String], values: [Double]) {
        barChartView.noDataText = "You need to provide data for the chart."
        barChartView.noDataTextColor = UIColor.red
        barChartView.noDataFont = UIFont(name: "Helvetica Neue", size: 30.0)
        barChartView.xAxis.labelPosition = .bottom
//        barChartView.animate(xAxisDuration: 2.0)
        barChartView.animate(yAxisDuration: 2.0, easingOption: .linear)
        
        let eleven = ChartLimitLine(limit: 11.0, label: "Target")
        barChartView.rightAxis.addLimitLine(eleven)
        
        var dataEntries: [BarChartDataEntry] = []
        for i in 0..<dataPoints.count {
            let dataEntry = BarChartDataEntry(x: Double(i), y: values[i])
            dataEntries.append(dataEntry)
        }
        
        let chartDataSet = BarChartDataSet(values: dataEntries, label: "Units Sold")
        let chartData = BarChartData(dataSet: chartDataSet)
        barChartView.data = chartData
    }
    
    func chartValueSelected(_ chartView: ChartViewBase, entry: ChartDataEntry, highlight: Highlight) {
        print("\(entry.description)")
    }
}





















