//
//  ContactBPViewController.swift
//  TravelBangalore
//
//  Created by iOScsebatch on 09/02/17.
//  Copyright © 2017 Sjbit. All rights reserved.
//

import UIKit

class ContactBPViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    let array1 = ["Address:","Phone:","Entry Fee in Zoo:","Visiting Hours:","Official Website:"]
    let array2 = ["Palace Road, Vasanth Nagar", "080085 37122","Rs.210","10:00 AM - 5:30 PM","www.karnatakatourism.org"]
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell1 = tableView.dequeueReusableCell(withIdentifier: "bpcell") as! BPTableViewCell
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
