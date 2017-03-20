//
//  IFLViewController.swift
//  TravelBangalore
//
//  Created by iOScsebatch on 10/02/17.
//  Copyright © 2017 Sjbit. All rights reserved.
//

import UIKit

class IFLViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    let array1 = ["Address:","Phone:","Hours:","Cuisines:","Reservations:","Cost:","Website:"]
    let array2 = ["115, 3rd Floor, 7th Block, Koramangala", "080 41282428, 9036082911","11:30AM–1AM","Mediterranean, Pizza, Continental, Seafood"," bytplus.com, zomato.com","₹1,800 for two people (approx.) with alcohol","www.fennysloungeandkitchen.com"]
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell1 = tableView.dequeueReusableCell(withIdentifier: "fennycell") as! FennyTableViewCell
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
