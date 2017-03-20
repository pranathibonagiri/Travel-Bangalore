//
//  NightlifeViewController.swift
//  TravelBangalore
//
//  Created by iOScsebatch on 08/02/17.
//  Copyright © 2017 Sjbit. All rights reserved.
//

import UIKit

class NightlifeViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    var titles = ["Hard Rock Cafe","Brewsky","Fenny’s Lounge  Kitchen","Ice","Church Street Socials","Loft 38","Pebble"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return titles.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Ncell")
        cell?.textLabel?.text = titles[indexPath.row]
        cell?.accessoryType = .disclosureIndicator
        return cell!
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        switch indexPath.row {
        case 0:
            self.performSegue(withIdentifier: "toHRC", sender: self)
        case 1:
            self.performSegue(withIdentifier: "toB", sender: self)
        case 2:
            self.performSegue(withIdentifier: "toFL", sender: self)
        case 3:
            self.performSegue(withIdentifier: "toIce", sender: self)
        case 4:
            self.performSegue(withIdentifier: "toCSS", sender: self)
        case 5:
            self.performSegue(withIdentifier: "toL38", sender: self)
        case 6:
            self.performSegue(withIdentifier: "toP", sender: self)
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
