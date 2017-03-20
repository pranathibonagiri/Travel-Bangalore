//
//  IBViewController.swift
//  TravelBangalore
//
//  Created by iOScsebatch on 10/02/17.
//  Copyright © 2017 Sjbit. All rights reserved.
//

import UIKit

class IBViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    let array1 = ["Address:","Phone:","Opening hours:","Cuisines:","Cost:","Reservations:","Order:"]
    let array2 = ["55, Goenka Chambers, Phase 2, JP Nagar", "7676796666","12:30 PM to 12:30 AM, Everyday","Continental, American","₹1,600 for two people (approx.) with alcohol"," dineout.co.in, zomato.com","zomato.com, swiggy.com"]
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell1 = tableView.dequeueReusableCell(withIdentifier: "brcell") as! brTableViewCell
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
