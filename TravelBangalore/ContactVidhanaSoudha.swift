//
//  ContactVidhanaSoudha.swift
//  TravelBangalore
//
//  Created by iOScsebatch on 09/02/17.
//  Copyright © 2017 Sjbit. All rights reserved.
//

import UIKit

class ContactVidhanaSoudha: UIViewController {

    let array1 = ["Address:","Opened:","Height:","Architectural:","Cost:","Owner:","Architect:"]
    let array2 = [" Dr Ambedkar Veedhi, Sampangi Rama Nagar", "1956","46 m","Dravidian architecture style","14.8 million INR (US$230,000)","Government of Karnataka","B.R. Manickam"]
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, cellForRowAtIndexPath indexPath: IndexPath) -> UITableViewCell {
        let cell1 = tableView.dequeueReusableCell(withIdentifier: "vsicell") as! VSInfoTableViewCell
        cell1.title.text = array1[indexPath.row]
        cell1.des.text = array2[indexPath.row]
        return cell1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array1.count
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
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
