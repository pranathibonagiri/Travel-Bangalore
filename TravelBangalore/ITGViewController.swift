//
//  ITGViewController.swift
//  TravelBangalore
//
//  Created by iOScsebatch on 09/02/17.
//  Copyright © 2017 Sjbit. All rights reserved.
//

import UIKit

class ITGViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    let array1 = ["1. Sightseeing Services","2. Kids Pool","3. Sheraton Fitness","4. Sheraton Club Lounge","5. Shine Spa for Sheraton","6. Infinity Pool","7. Wheelchair Available","8. Limousine Services","9. Parking Garage","10. Foreign Currency Exchange","11.Laundry & Dry Cleaning"]
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell1 = tableView.dequeueReusableCell(withIdentifier: "gatewaycell") as! gatewayTableViewCell
        cell1.title.text    = array1[indexPath.row]
        return cell1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array1.count
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
    }

}
