//
//  InfoViewController.swift
//  SkyTestIlkay
//
//  Created by TAE experts on 10/02/2017.
//  Copyright © 2017 IlkayHamit. All rights reserved.
//

import UIKit

class InfoViewController: UIViewController {
    
    var city:City!

    @IBOutlet var nameLbl: UILabel!
    @IBOutlet var humidityLbl: UILabel!
    @IBOutlet var pressureLbl: UILabel!
    @IBOutlet var tempLbl: UILabel!
    @IBOutlet var tempMaxLbl: UILabel!
    @IBOutlet var tempMinLvl: UILabel!
    @IBOutlet var windLbl: UILabel!
    @IBOutlet var windDegreeLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        nameLbl.text = city.cName
        humidityLbl.text = ("\(city.cHumidity)")
        pressureLbl.text = ("\(city.cPressure)")
        tempLbl.text = ("\(city.cTemp)")
        tempMaxLbl.text = ("\(city.cTempMax)")
        tempMinLvl.text = ("\(city.cTempMin)")
        windLbl.text = ("\(city.cWindSpeed)")
        windDegreeLbl.text = ("\(city.cWindDegree)")
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
