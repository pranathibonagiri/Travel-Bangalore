//
//  FeedbackViewController.swift
//  TravelBangalore
//
//  Created by iOScsebatch on 09/02/17.
//  Copyright © 2017 Sjbit. All rights reserved.
//

import UIKit
import CoreData

class FeedbackViewController: UIViewController,UITextFieldDelegate{

    @IBOutlet weak var nameText: UITextField!
    
    
    @IBOutlet weak var msgText: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameText.delegate = self
        msgText.delegate = self
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func submitButton(_ sender: AnyObject) {
        
        let alert = UIAlertController(title: "Thank you!", message: "Your feedback is submitted", preferredStyle: .alert)
        
        let ok = UIAlertAction(title: "OK", style: .default, handler: nil)
        
        alert.addAction(ok)
        self.present(alert, animated: true, completion: nil)
        
        self.view.endEditing(true)
        
        // create aan instance of app delegate
        let appdelegate = UIApplication.shared.delegate as? AppDelegate
        //call the context
        
        let context = appdelegate?.managedObjectContext
        
        let feedback = NSEntityDescription.insertNewObject(forEntityName: "Feedback", into: context!) as? Feedback
        feedback?.name = self.nameText.text
        feedback?.message = self.msgText.text
        appdelegate?.saveContext()

        
                    
        
    }
    
    // Text field delegate
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        nameText.resignFirstResponder()
        msgText.resignFirstResponder()
        return true
    }

    // Helper methods
    
    func closeKeyboard(){
        self.view.endEditing(true)
    }
    
    
    // Touch events
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        closeKeyboard()
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
