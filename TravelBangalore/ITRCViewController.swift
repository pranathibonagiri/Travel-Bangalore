//
//  ITRCViewController.swift
//  TravelBangalore
//
//  Created by iOScsebatch on 09/02/17.
//  Copyright © 2017 Sjbit. All rights reserved.
//

import UIKit

class ITRCViewController: UIViewController,UITableViewDelegate, UITableViewDataSource {

    let array1 = ["Address:","Phone:","Cuisines:","Cost:","Opening hours:"]
    let array2 = ["The Ritz-Carlton, 99, Residency Road", "080 49148361","Finger Food","₹2,000 for two people (approx.) with alcohol","5 PM to 1 AM, Everyday"]
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell1 = tableView.dequeueReusableCell(withIdentifier: "ritzcell") as! TRCTableViewCell
        cell1.title.text = array1[indexPath.row]
        cell1.des.text = array2[indexPath.row]
        return cell1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array1.count
    }

}
