//
//  ViewController.swift
//  Sample
//
//  Created by Pavani on 6/16/16.
//  Copyright © 2016 Pavani. All rights reserved.
//

import UIKit
import CoreData



class ViewController: UIViewController {

    @IBOutlet var namestr: UITextField!
    
   
    @IBOutlet var emailstr: UITextField!
    
    @IBOutlet var phonestr: UITextField!
    @IBOutlet var pwdstr: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

   
    @IBAction func btnSave(sender: AnyObject) {
        
        let appDel : AppDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
        let context: NSManagedObjectContext = appDel.managedObjectContext
        
        let entityDesc =  NSEntityDescription.entityForName("Employee", inManagedObjectContext: context)!
        
        let newUser = Employee(entity: entityDesc, insertIntoManagedObjectContext : context)
        
        //let entityDesc1 =  NSEntityDescription.entityForName("CinOut", inManagedObjectContext: context)!
        
      //  let newUser1 = CinOut(entity: entityDesc1, insertIntoManagedObjectContext : context)
        

        
    let newUser1 = NSEntityDescription.insertNewObjectForEntityForName("CinOut", inManagedObjectContext:context) as! CinOut
        
        
        
        newUser.setValue("" + namestr.text!, forKey: "name")
        newUser.setValue("" + emailstr.text!, forKey: "email")
        newUser.setValue("" + phonestr.text!, forKey: "phone")
        newUser.setValue("" + pwdstr.text!, forKey: "password")
        newUser1.setValue(NSDate(), forKey:"inTime");
        newUser1.setValue(NSDate(), forKey:"outTime");
        newUser.setValue(NSSet(object:newUser1), forKey: "time")
        
 
        
      /*var timing = self.mutableSetValueForKey("time")
        timing.addObject(newUser1)
        //addresses.addObject(newUser1)
     */
        
        
        
        do{
            try context.save()
            
        }
        catch{
            
        }
        
        print("Object saved")
        
        
        
        let request = NSFetchRequest(entityName : "Employee")
        request.returnsObjectsAsFaults = false
       // request.predicate = NSPredicate(format : "email = %@", emailstr.text!)
        
        
        do{
            var results : NSArray
            try  results = context.executeFetchRequest(request)
            print(results.count)
            
           if results.count > 0
            {
                let aUsers = results[0] as! Employee
                print(aUsers.time!);
               //print(aUsers.time!.inTime)
                
            }
        }
        catch{
            print("error")
        }
    }

}

