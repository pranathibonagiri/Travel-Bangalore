//
//  ILMViewController.swift
//  TravelBangalore
//
//  Created by iOScsebatch on 09/02/17.
//  Copyright © 2017 Sjbit. All rights reserved.
//

import UIKit

class ILMViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    let array1 = ["1.30-minute drive from Airport.","2. North Indian fine dining complimented by live instrumental music at the rooftop","3. Well-equipped health club which features a gym and sauna.","4. Flat-screen cable TV, minibar and a work desk"]
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell1 = tableView.dequeueReusableCell(withIdentifier: "marvellacell") as! marvellaTableViewCell
        cell1.title.text    = array1[indexPath.row]
        return cell1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array1.count
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
    }
    

}
