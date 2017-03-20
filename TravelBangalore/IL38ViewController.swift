//
//  IL38ViewController.swift
//  TravelBangalore
//
//  Created by iOScsebatch on 10/02/17.
//  Copyright © 2017 Sjbit. All rights reserved.
//

import UIKit

class IL38ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    let array1 = ["Address:","Phone number:","Opening hours:","Cuisines:","Cost:","Reservations:",]
    let array2 = ["763, 100 Feet Road, HAL 2nd Stage, Indiranagar", "080 49653423","12:30 PM to 11 PM, Everyday","Continental, American, Italian, North Indian, Asian","₹2,200 for two people (approx.) with alcohol","bytplus.com, dineout.co.in"]
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell1 = tableView.dequeueReusableCell(withIdentifier: "loft38cell") as! loft38TableViewCell
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
