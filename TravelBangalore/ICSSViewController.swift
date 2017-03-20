//
//  ICSSViewController.swift
//  TravelBangalore
//
//  Created by iOScsebatch on 10/02/17.
//  Copyright © 2017 Sjbit. All rights reserved.
//

import UIKit

class ICSSViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    
    let array1 = ["Address:","Phone:","Opening hours:","Cuisines:","Cost:","Known For:"]
    let array2 = ["46/1, Cobalt Building, Church Street ", "08040515253, +91 9611218686","9 AM to 1 AM, Everyday","Continental, American","₹1,500 for two people (approx.) with alcohol"," Their Innovative drinks."]
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell1 = tableView.dequeueReusableCell(withIdentifier: "csscell") as! CSSTableViewCell
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
