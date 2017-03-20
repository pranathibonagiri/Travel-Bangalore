//
//  ContactBannerghatta.swift
//  TravelBangalore
//
//  Created by iOScsebatch on 09/02/17.
//  Copyright © 2017 Sjbit. All rights reserved.
//

import UIKit

class ContactBannerghatta: UIViewController, UITableViewDelegate, UITableViewDataSource {

    let array1 = ["Address:","Phone:","Entry Fee in Zoo:","Visiting Hours:","Photography:","Videography:","Official Website:"]
    let array2 = ["Bannerghatta Biological Park, Bannerghatta", "080 - 27828300, 27828540","80 Rs. Per person for adults"," 9:30 AM - 5:00 PM","Rs 25","Rs.200", "bannerghattabiologicalpark.org"]
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell1 = tableView.dequeueReusableCell(withIdentifier: "bnpcell") as! BNPTableViewCell
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
