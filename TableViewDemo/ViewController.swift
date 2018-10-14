//
//  ViewController.swift
//  TableViewDemo
//
//  Created by Jony Singla on 22/12/16.
//  Copyright © 2016 Jony Singla. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate,UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    var tableData = ["filterA", "filterB", "filterC", "filterD", "hi how are you, i am good what about you. i am also good. hows going on life"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    override func viewDidAppear(_ animated: Bool) {
        tableView.rowHeight = UITableViewAutomaticDimension
        tableView.estimatedRowHeight = 200

    }
    
    // MARK: - UITableViewDataSource
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tableData.count
    }


    func tableView(_ tableView: UITableView,
                   cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell",
                                                 for: indexPath as IndexPath) as! CustomCell
        cell.dataLabel.text = tableData[indexPath.row]
        
        cell.dataLabel.numberOfLines = 0
        cell.dataLabel.lineBreakMode = NSLineBreakMode.byWordWrapping
        // image name same as table data name
        
        cell.imageView?.image = UIImage(named: tableData[indexPath.row])
        cell.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.6)
        

        return cell
    }
    
//    
//    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
//        print("Row \(indexPath.row) selected")
//    }
    
//    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
//        return 70
//    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    

}

