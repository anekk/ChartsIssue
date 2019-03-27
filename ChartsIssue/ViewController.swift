//
//  ViewController.swift
//  ChartsIssue
//
//  Created by asiedlarczyk on 27/03/2019.
//  Copyright © 2019 anekk. All rights reserved.
//

import UIKit
import Charts


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let chartView = BarChartView()
        view.addSubview(chartView)
        chartView.frame = view.bounds
        chartView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
       
        let count = 10

        let values = (1...count).enumerated().map { BarChartDataEntry(x: (Double)($0.offset), y: (Double)($0.element)) }
        let set = BarChartDataSet(values)
        let data = BarChartData(dataSet: set)
        chartView.data = data
        chartView.animate(xAxisDuration: 2.5, yAxisDuration: 2.5)
        
        chartView.xAxis.labelCount = count
        chartView.setNeedsDisplay()
    }
}

