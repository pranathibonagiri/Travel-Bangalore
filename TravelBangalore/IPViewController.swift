//
//  IPViewController.swift
//  TravelBangalore
//
//  Created by iOScsebatch on 10/02/17.
//  Copyright © 2017 Sjbit. All rights reserved.
//

import UIKit

class IPViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {

    let array1 = ["Address:","Phone:","Opening hours:","Cuisines:","Cost:","Known For:"]
    let array2 = ["3, Maharishi Road, Sadashiv Nagar", "91 8884227447,+91 8147668568","7 PM to 11:30 PM, Everyday","Finger Food","₹1,500 for two people (approx.) with alcohol","Live music"]
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell1 = tableView.dequeueReusableCell(withIdentifier: "pebblecell") as! PebbleTableViewCell
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
