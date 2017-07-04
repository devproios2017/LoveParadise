//
//  ProductsViewController.swift
//  LoveParadise
//
//  Created by Hieupd on 7/4/17.
//  Copyright © 2017 DHT. All rights reserved.
//

import UIKit
import Firebase
import FirebaseDatabase

class ProductsViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    @IBOutlet weak var tableview_products: UITableView!
    
    var ref:DatabaseReference!
    var TableData = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableview_products.dataSource = self
        tableview_products.delegate = self
        
        //set the firebase reference
        ref = FirebaseDatabase.DatabaseReference()
        
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell_products", for: indexPath) as! UITableViewCell
        cell.textLabel?.text = "demo data"
        return cell
    }

}
