//
//  ITFViewController.swift
//  TravelBangalore
//
//  Created by iOScsebatch on 09/02/17.
//  Copyright © 2017 Sjbit. All rights reserved.
//

import UIKit

class ITFViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    let array1 = ["Address:","Phone:","Open:","Opening date:","Developer:","Total retail floor area:","No. of floors:","No. of floors","Website:"]
    let array2 = ["No. 21, Hosur Road, Koramangala", "080 2206 7803","Everyday","2004","Prestige Group","72,000 m2 (780,000 sq ft)","5","MLCP","www.theforum.com"]
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell1 = tableView.dequeueReusableCell(withIdentifier: "forumcell") as! forumTableViewCell
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
