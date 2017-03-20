//
//  IVTSOIViewController.swift
//  TravelBangalore
//
//  Created by iOScsebatch on 09/02/17.
//  Copyright © 2017 Sjbit. All rights reserved.
//

import UIKit

class IVTSOIViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    let array1 = ["Address:","Phone:","Entry Hours:","Cuisines:","Cost :","Website:"]
    let array2 = ["6th Floor, Bangalore Central Mall, JP Nagar", "080 49652707","12:30 PM to 3:30 PM, 7:30 PM to 11 PM","Bengali, Gujarati, South Indian, Maharashtrian","₹1,000 for two people (approx.)","villagethesoulofindia.com"]
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell1 = tableView.dequeueReusableCell(withIdentifier: "villagecell") as! villageTableViewCell
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
