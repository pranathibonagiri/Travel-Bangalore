//
//  I1947ViewController.swift
//  TravelBangalore
//
//  Created by iOScsebatch on 09/02/17.
//  Copyright © 2017 Sjbit. All rights reserved.
//

import UIKit

class I1947ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    let array1 = ["Address:","Phone:","Booking:","Cuisines:","Cost:","Opening hours:","Highlights:","Known For:"]
    let array2 = ["High St Building, Jayanagar 4th Block", "080 41261947, 973998945","Table booking recommended","North Indian, Chinese","₹750 for two people (approx.)","2:30 PM to 3:30 PM, 7 PM to 10:30 PM","Home Delivery, Vegetarian Only","Authentic North Indian food."]
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell1 = tableView.dequeueReusableCell(withIdentifier: "i1947cell") as! I1947TableViewCell
        cell1.title.text = array1[indexPath.row]
        cell1.des.text = array2[indexPath.row]
        return cell1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array1.count
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
    }

}
