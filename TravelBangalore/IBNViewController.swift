//
//  IBNViewController.swift
//  TravelBangalore
//
//  Created by iOScsebatch on 09/02/17.
//  Copyright © 2017 Sjbit. All rights reserved.
//

import UIKit

class IBNViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    let array1 = ["Address:","Phone:","Cuisines:","Cost:","Opening hours:"]
    let array2 = ["4005, HAL 2nd Stage, 100 Feet Road,Indiranagar", "080-67330100, 080-60600000","North Indian, European, Mediterranean","₹1,800 for two people (approx.) ","12 Noon to 3 PM, 6:30 PM to 11 PM"]
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell1 = tableView.dequeueReusableCell(withIdentifier: "bbqcell") as! BBQTableViewCell
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
