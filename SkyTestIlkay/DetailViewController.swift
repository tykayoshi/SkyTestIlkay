//
//  DetailViewController.swift
//  SkyTestIlkay
//
//  Created by TAE experts on 10/02/2017.
//  Copyright © 2017 IlkayHamit. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet var searchTextField: UITextField!
   var city = [City]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.navigationItem.title = "Add City"
        self.searchTextField.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        
        //textField code
        performAction()
        return true
    }
    
    func performAction() {
        
        //action events
        //Call API
        //Gets the videos and passes it into the didLoadData method
        let api = APIManager()
        let urlString = "http://api.openweathermap.org/data/2.5/weather?q=\(searchTextField.text!)&appid=259d0cd5be78024e8f9a7d528d14f8a9"
        
        api.loadData(urlString, completion: didLoadData)
    }
    
    
    func didLoadData(city: [City]) {
        
        self.city = city
        
        /*
        for item in city {
            print("City Name = \(item.cHumidity)")
        }*/
        
        performSegueWithIdentifier("addFav", sender: self)
        
        
    }

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "addFav" {
            print("Add Fav")
            //Select that specific city object
            let addCity = city[0]
            AppDelegate.favouritesArray.append(addCity)

        }

    }

}
