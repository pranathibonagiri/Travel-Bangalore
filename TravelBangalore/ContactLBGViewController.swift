//
//  ContactLBGViewController.swift
//  TravelBangalore
//
//  Created by iOScsebatch on 09/02/17.
//  Copyright © 2017 Sjbit. All rights reserved.
//

import UIKit

class ContactLBGViewController: UIViewController , UITableViewDataSource, UITableViewDelegate{

    let array1 = ["Address:","Phone:","Entry Fee in Zoo:","Visiting Hours:","Photography:","Approximate visit duration:"]
    let array2 = ["Mavalli, Bangalore", "080 2657 8184","Rs.20 for visitor’s above 12. Free for walkers","6:00 AM to 7:00 PM, Everyday","Rs 50","2-3 hours"]
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell1 = tableView.dequeueReusableCell(withIdentifier: "lalcell") as! LalTableViewCell
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
