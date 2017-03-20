//
//  ContactBTViewController.swift
//  TravelBangalore
//
//  Created by iOScsebatch on 09/02/17.
//  Copyright © 2017 Sjbit. All rights reserved.
//

import UIKit

class ContactBTViewController: UIViewController, UITableViewDataSource,UITableViewDelegate {
    let array1 = ["Address:","Phone:","Visiting Hours:"]
    let array2 = ["Bull Temple Rd, NR Colony, Basavanagudi", "080 2667 8777","6:00 am – 12:00 pm 5:30 pm – 9:00 pm, Everyday"]
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell1 = tableView.dequeueReusableCell(withIdentifier: "bullcell") as! BullTableViewCell
        
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
