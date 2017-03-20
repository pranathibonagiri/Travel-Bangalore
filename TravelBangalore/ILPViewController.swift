//
//  ILPViewController.swift
//  TravelBangalore
//
//  Created by iOScsebatch on 09/02/17.
//  Copyright © 2017 Sjbit. All rights reserved.
//

import UIKit

class ILPViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {

    let array1 = ["1. Starting from 534 sq ft / 50 sq mt","2. 284 Deluxe/Conservatory/Royal Premiere Rooms","3.ESPA, with varied spa options and a Salon","4. 29 Suites: includes dedicated Butler and access to Royal Club Lounge and amenities"]
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell1 = tableView.dequeueReusableCell(withIdentifier: "leelacell") as! leelaTableViewCell
        cell1.title.text = array1[indexPath.row]
        return cell1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array1.count
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
    }
    

}
