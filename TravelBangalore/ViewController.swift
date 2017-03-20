//
//  ViewController.swift
//  TravelBangalore
//
//  Created by iOSbatch1 on 08/02/17.
//  Copyright © 2017 Sjbit. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    var titles = ["Attractions","Hotels","Restaurants","Shopping","Nightlife","Before you go","Emergency","Feedback"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return titles.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        cell?.textLabel?.text = titles[indexPath.row]
        cell?.accessoryType = .disclosureIndicator
        return cell!
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        switch indexPath.row {
        case 0:
            self.performSegue(withIdentifier: "toAttractions", sender: self)
        case 1:
            self.performSegue(withIdentifier: "toHotels", sender: self)
        case 2:
            self.performSegue(withIdentifier: "toRestaurants", sender: self)
        case 3:
            self.performSegue(withIdentifier: "toShopping", sender: self)
        case 4:
            self.performSegue(withIdentifier: "toNightlife", sender: self)
        case 5:
            self.performSegue(withIdentifier: "toBeforeYouGo", sender: self)
        case 6:
            self.performSegue(withIdentifier: "toEmergency", sender: self)
        case 7:
            self.performSegue(withIdentifier: "toFeedback", sender: self)
        default: "invalid"
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


        
    

    
    
}

