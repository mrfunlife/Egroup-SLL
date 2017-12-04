//
//  ResultViewController.swift
//  ContactBookSmart_1.0.0
//
//  Created by Admin on 11/27/17.
//  Copyright © 2017 FunLife. All rights reserved.
//


import UIKit
import SwiftCharts

class ResultViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    // Chart
     fileprivate var chart: Chart? // arc
    
    @IBOutlet weak var scrollView: UIScrollView?
    @IBOutlet weak var lblSemester: UILabel?
    @IBOutlet weak var lblTeacher: UILabel?
    @IBOutlet weak var lblsubjects: UILabel?
    @IBOutlet weak var lblTitleSelect: UILabel?
    @IBOutlet weak var stackViewHotizontal: UIStackView?
    @IBOutlet weak var stackViewVertical: UIStackView?
    @IBOutlet weak var tableView: UITableView?
    @IBOutlet weak var lblSelect: UILabel?
    @IBOutlet weak var viewSelect: UIView?
    @IBOutlet weak var viewAllSelect: UIView?
    @IBOutlet weak var segmentSelect: UISegmentedControl?
    @IBOutlet weak var viewChart: UIView?
    
    var myString:NSString = "Giáo viên: Nguyễn Thị Thanh Huyền"
    var myMutableString = NSMutableAttributedString()

    @IBAction func segmentedControlAction(sender: AnyObject) {
        handlerViewWhenSelectSegment()
    }
    
    var fakeDataResult: [Result] = fakeResults1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        segmentSelect?.selectedSegmentIndex = 0
        handlerViewWhenSelectSegment()
        tableView?.delegate = self
        tableView?.dataSource = self
        tableView?.estimatedRowHeight = 100
        tableView?.rowHeight = UITableViewAutomaticDimension
        tableView?.layer.borderWidth = 0.5
        tableView?.layer.borderColor = UIColor.gray.cgColor
        
        let heightTable:CGFloat = CGFloat((36 * fakeDataResult.count) - 5)
        tableView?.translatesAutoresizingMaskIntoConstraints = false
        tableView?.heightAnchor.constraint(equalToConstant: heightTable).isActive = true
        tableView?.isScrollEnabled = false
        
//        scrollView?.layoutIfNeeded()
//        scrollView?.isScrollEnabled = true
//        scrollView?.contentSize = CGSize(width: self.view.frame.width, height: (scrollView?.frame.size.height)!)
        
        myMutableString = NSMutableAttributedString(string: myString as String)
        myMutableString.addAttribute(NSAttributedStringKey.foregroundColor, value: UIColor.red, range: NSRange(location:10,length:myString.length - 10))
        lblTeacher?.attributedText = myMutableString

    }
    

    func handlerViewWhenSelectSegment(){
        switch segmentSelect?.selectedSegmentIndex {
        case 0?:
            addViewCheckSegment(title: "Tra cứu điểm theo môn học", hideLblSubjects: false, type: 0, hideViewSelect: false)
              checkAddViewChart()
        case 1?:
            addViewCheckSegment(title: "Kết quả học kỳ 2 của học sinh Nguyễn Tuấn Anh", hideLblSubjects: true, type: 1, hideViewSelect: true)
            checkAddViewChart()
        case 2?:
            addViewCheckSegment(title: "Tra cứu điểm theo Học Kỳ", hideLblSubjects: true, type: 2, hideViewSelect: false)
            checkAddViewChart()
        default:
            break
        }
    }
    
    override func viewDidAppear(_ animated: Bool) {
    }
    
    func addViewCheckSegment(title: String?,hideLblSubjects: Bool?,type: Int?, hideViewSelect: Bool?){
        lblTitleSelect?.text = title
        if type == 0 {
            addToStackView()
        } else if type == 1 {
            removeToStackView()
            stackViewHotizontal?.removeArrangedSubview(viewAllSelect!)
        } else if type == 2{
            removeToStackView()
            stackViewHotizontal?.addArrangedSubview(viewAllSelect!)
        }
        lblsubjects?.isHidden = hideLblSubjects!
        lblTeacher?.isHidden = hideLblSubjects!
        lblSemester?.isHidden = hideLblSubjects!
        viewAllSelect?.isHidden = hideViewSelect!
    }
    
    func removeToStackView() {
        stackViewVertical?.removeArrangedSubview(lblsubjects!)
        stackViewVertical?.removeArrangedSubview(lblTeacher!)
        stackViewVertical?.removeArrangedSubview(lblSemester!)
    }
    
    func addToStackView(){
        stackViewVertical?.addArrangedSubview(lblsubjects!)
        stackViewVertical?.addArrangedSubview(lblTeacher!)
        stackViewVertical?.addArrangedSubview(lblSemester!)
        stackViewHotizontal?.addArrangedSubview(viewAllSelect!)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return fakeDataResult.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: CellIdentifier.Result.rawValue, for: indexPath) as? ResultTableViewCell else {
            return UITableViewCell()
        }
        cell.selectionStyle = .none
        cell.result = fakeResults1[indexPath.row]
        return cell
    }
    
    func setUpChart(){
        DispatchQueue.main.async {
                let labelSettings = ChartLabelSettings(font: ExamplesDefaults.labelFont)
                let cp1 = ChartPoint(x: MyMultiLabelAxisValue(myVal: 2, title: "Locdg1"), y: ChartAxisValueDouble(2))
                let cp2 = ChartPoint(x: MyMultiLabelAxisValue(myVal: 4, title: "Locdg2"), y: ChartAxisValueDouble(6))
                let cp3 = ChartPoint(x: MyMultiLabelAxisValue(myVal: 5, title: "Locdg3"), y: ChartAxisValueDouble(12))
                let cp4 = ChartPoint(x: MyMultiLabelAxisValue(myVal: 8, title: "Locdg4"), y: ChartAxisValueDouble(20))
                
                let chartPoints = [cp1, cp2, cp3, cp4]
                
                let xValues = chartPoints.map{$0.x}
                let yValues = ChartAxisValuesStaticGenerator.generateYAxisValuesWithChartPoints(chartPoints, minSegmentCount: 10, maxSegmentCount: 20, multiple: 2, axisValueGenerator: {ChartAxisValueDouble($0, labelSettings: labelSettings)}, addPaddingSegmentIfEdge: false)
                
                let xModel = ChartAxisModel(axisValues: xValues)
                let yModel = ChartAxisModel(axisValues: yValues)
                    let chartFrame = CGRect(x: 0, y:0, width: (self.viewChart?.bounds.width)!, height: (self.self.viewChart?.bounds.height)!)
                
                var chartSettings = ExamplesDefaults.chartSettingsWithPanZoom
                chartSettings.trailing = 20
                let coordsSpace = ChartCoordsSpaceLeftBottomSingleAxis(chartSettings: chartSettings, chartFrame: chartFrame, xModel: xModel, yModel: yModel)
                let (xAxisLayer, yAxisLayer, innerFrame) = (coordsSpace.xAxisLayer, coordsSpace.yAxisLayer, coordsSpace.chartInnerFrame)
                
                let lineModel = ChartLineModel(chartPoints: chartPoints, lineColor: UIColor.red, lineWidth: 1, animDuration: 1, animDelay: 0)
                let chartPointsLineLayer = ChartPointsLineLayer(xAxis: xAxisLayer.axis, yAxis: yAxisLayer.axis, lineModels: [lineModel])
                
                let settings = ChartGuideLinesDottedLayerSettings(linesColor: UIColor.black, linesWidth: ExamplesDefaults.guidelinesWidth)
                let guidelinesLayer = ChartGuideLinesDottedLayer(xAxisLayer: xAxisLayer, yAxisLayer: yAxisLayer, settings: settings)
                
                    self.chart = Chart(
                    frame: chartFrame,
                    innerFrame: innerFrame,
                    settings: chartSettings,
                    layers: [
                        xAxisLayer,
                        yAxisLayer,
                        guidelinesLayer,
                        chartPointsLineLayer
                    ]
                )
                self.viewChart?.addSubview((self.chart?.view)!)
            
        }
    }
    
    func checkAddViewChart(){
        if chart?.view != nil {
            chart?.view.removeFromSuperview()
            setUpChart()
        }else {
            setUpChart()
        }
    }

}
