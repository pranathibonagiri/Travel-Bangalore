//
//  ContactBFViewController.swift
//  TravelBangalore
//
//  Created by iOScsebatch on 09/02/17.
//  Copyright © 2017 Sjbit. All rights reserved.
//

import UIKit

class ContactBFViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    let array1 = ["Address:","Phone:","Entry Fee in Zoo:","Visiting Hours:","Photography:","Videography:"]
    let array2 = ["New Tharagupet, Bengaluru"," 080 2670 6836","Rs. 5 (Indian), Rs. 100 (Foreigners)","8:30 am to 5:30 pm. Sunday closed.","Free","Rs 25"]
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell1 = tableView.dequeueReusableCell(withIdentifier: "fortcell") as! FortTableViewCell
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
