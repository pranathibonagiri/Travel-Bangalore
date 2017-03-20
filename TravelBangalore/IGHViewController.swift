//
//  IGHViewController.swift
//  TravelBangalore
//
//  Created by iOScsebatch on 09/02/17.
//  Copyright © 2017 Sjbit. All rights reserved.
//

import UIKit

class IGHViewController: UIViewController, UITableViewDataSource,UITableViewDelegate {

    let array1 = ["Address:","Phone:","Booking:","Cuisines:","Cost:","Opening hours:"]
    let array2 = ["45, Kalena Agrahara, Bannerghatta Road", "08049653247","Table booking recommended","European","₹5,000 for two people (approx.) ","7:30 PM to 11:30 PM, Everyday"]
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell1 = tableView.dequeueReusableCell(withIdentifier: "ghcell") as! ghTableViewCell
        cell1.title.text = array1[indexPath.row]
        cell1.des.text = array2[indexPath.row]
        return cell1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array1.count
    }
    
   }
