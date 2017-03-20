//
//  RestaurantsViewController.swift
//  TravelBangalore
//
//  Created by iOScsebatch on 08/02/17.
//  Copyright © 2017 Sjbit. All rights reserved.
//

import UIKit

class RestaurantsViewController: UIViewController,UITableViewDelegate,UITableViewDataSource{

    
    
    var titles = ["Persian Terrace","Barbeque Nation","High Ultra Lounge","1947","VILLAGE - The Soul of India","The Ritz-Carlton","Grasshopper"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return titles.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Rcell")
        cell?.textLabel?.text = titles[indexPath.row]
        cell?.accessoryType = .disclosureIndicator
        return cell!
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        switch indexPath.row {
        case 0:
            self.performSegue(withIdentifier: "toPT", sender: self)
        case 1:
            self.performSegue(withIdentifier: "toBN", sender: self)
        case 2:
            self.performSegue(withIdentifier: "toHUL", sender: self)
        case 3:
            self.performSegue(withIdentifier: "to1947", sender: self)
        case 4:
            self.performSegue(withIdentifier: "toVTSOI", sender: self)
        case 5:
            self.performSegue(withIdentifier: "toTRC", sender: self)
        case 6:
            self.performSegue(withIdentifier: "toG", sender: self)
        default: "invalid"
        }
    }
    

    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
