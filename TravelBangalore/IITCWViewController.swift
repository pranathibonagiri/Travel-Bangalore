//
//  IITCWViewController.swift
//  TravelBangalore
//
//  Created by iOScsebatch on 09/02/17.
//  Copyright © 2017 Sjbit. All rights reserved.
//

import UIKit

class IITCWViewController: UIViewController,UITableViewDataSource,UITableViewDelegate   {
    let array1 = ["1. Conveniently placed 33 km away from Bengaluru International Airport","2. Air-conditioned rooms are equipped with a sofa seating area, a cable TV and a minibar","3. Offers a spacious outdoor pool","4. Gym with 24-hour room service","5. A range of spa treatments"]
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell1 = tableView.dequeueReusableCell(withIdentifier: "itccell") as! itcTableViewCell
        cell1.title.text    = array1[indexPath.row]
        return cell1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array1.count
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
    }

}
