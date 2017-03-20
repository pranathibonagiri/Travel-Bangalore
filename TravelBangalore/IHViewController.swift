//
//  IHViewController.swift
//  TravelBangalore
//
//  Created by iOScsebatch on 09/02/17.
//  Copyright © 2017 Sjbit. All rights reserved.
//

import UIKit

class IHViewController: UIViewController,UITableViewDataSource,UITableViewDelegate{

    let array1 = ["1. Set in the Embassy Golf Links Business Park, 6 km from the city center","2.Near Indiranagar, Koramangala and M.G. Road","3.Some of the largest extended-stay studios and suites in the city, with a washer/dryer and dishwasher","4.Six naturally-lit meeting spaces and 24-hour business services","5.Temperature-controlled courtyard pool and a 24-hour fitness center"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell1 = tableView.dequeueReusableCell(withIdentifier: "hiltoncell") as! HiltonTableViewCell
        cell1.title.text = array1[indexPath.row]
        return cell1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array1.count
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
    }

}
