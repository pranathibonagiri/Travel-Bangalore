//
//  IIceViewController.swift
//  TravelBangalore
//
//  Created by iOScsebatch on 10/02/17.
//  Copyright © 2017 Sjbit. All rights reserved.
//

import UIKit

class IIceViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {

    let array1 = ["Address:","Phone:","Reservations:","Opening hours:","Cuisines:","Cost:"]
    let array2 = ["41/3, MG Road, Bangalore", "080 66604333, 080 66604444","zomato.com","11 AM to 11:30 PM, Everyday","Continental","₹2,500 for two people (approx.) with alcohol"]
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell1 = tableView.dequeueReusableCell(withIdentifier: "icecell") as! IceTableViewCell
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
