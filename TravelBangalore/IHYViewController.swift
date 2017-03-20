//
//  IHYViewController.swift
//  TravelBangalore
//
//  Created by iOScsebatch on 09/02/17.
//  Copyright © 2017 Sjbit. All rights reserved.
//

import UIKit

class IHYViewController: UIViewController, UITableViewDelegate,UITableViewDataSource {

    let array1 = ["1. 143 contemporary guestrooms, including four suites","2. Spa featuring body treatments and scrubs","3. Fitness Centre open 24 hours","4. Outdoor swimming pool","5. Concierge service with local city tips/multilingual staff","6. Business centre with work stations and private meeting room","7. Limousine, car rentals and excursions on request","8. 217.61 square metres (2,342.2 square feet) of flexible meeting space","9. 24-hour Room Service","10. Airport limousine service on request; charges apply","11. Currency exchange","12. Doctor on call","13. Sightseeing tours","14. Major credit cards accepted","15. Multilingual hotel staff","16. Valet car parking","17. 24-hour laundry and dry-cleaning services","18. Babysitter on request","19. Secretarial services","20. Courier services"]
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell1 = tableView.dequeueReusableCell(withIdentifier: "hyattcell") as! HITableViewCell
        cell1.title.text = array1[indexPath.row]
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
