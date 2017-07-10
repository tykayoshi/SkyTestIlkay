//
//  City.swift
//  SkyTestIlkay
//
//  Created by TAE experts on 09/02/2017.
//  Copyright © 2017 IlkayHamit. All rights reserved.
//

import Foundation

class City {
    
    //Data Encapsulation
    private var _cTemp:Int
    private var _cPressure:Int
    private var _cHumidity:Int
    private var _cTempMin:Int
    private var _cTempMax:Int
    private var _cWindSpeed:Float
    private var _cWindDegree:Int
    private var _cName:String

    
    
    //Getters and setters
    var cTemp:Int {
        return _cTemp
    }
    
    var cPressure:Int {
        return _cPressure
    }
    
    var cHumidity:Int {
        return _cHumidity
    }
    
    var cTempMin:Int {
        return _cTempMin
    }
    
    var cTempMax:Int {
        return _cTempMax
    }
    
    var cWindSpeed:Float {
        return _cWindSpeed
    }
    
    var cWindDegree:Int {
        return _cWindDegree
    }
    
    var cName:String {
        return _cName
    }
    
    
    
    //Parse all the data in the correct format to the variables
    init(data: JSONDictionary) {
        
        //Initialise all properties to avoid error messages
        
        //City Temp
        if let temp = data["main"] as? JSONDictionary,
            cTemp = temp["temp"] as? Int {
                _cTemp = cTemp
        } else {
            _cTemp = 0
        }
        
        //City Pressure
        if let pressure = data["main"] as? JSONDictionary,
            cPressure = pressure["pressure"] as? Int {
                _cPressure = cPressure
        } else {
            _cPressure = 0
        }
        
        //City Humidity
        if let humidity = data["main"] as? JSONDictionary,
            cHumidity = humidity["humidity"] as? Int {
                _cHumidity = cHumidity
        } else {
            _cHumidity = 0
        }
        
        //City TempMin
        if let tempMin = data["main"] as? JSONDictionary,
            cTempMin = tempMin["temp_min"] as? Int {
                _cTempMin = cTempMin
        } else {
            _cTempMin = 0
        }
        
        //City TempMax
        if let tempMax = data["main"] as? JSONDictionary,
            cTempMax = tempMax["temp_max"] as? Int {
                _cTempMax = cTempMax
        } else {
            _cTempMax = 0
        }
        
        //City Wind Speed
        if let windSpeed = data["wind"] as? JSONDictionary,
            cWindSpeed = windSpeed["speed"] as? Float {
                _cWindSpeed = cWindSpeed
        } else {
            _cWindSpeed = 0
        }
        
        //City Wind Degree
        if let windDegree = data["wind"] as? JSONDictionary,
            cWindDegree = windDegree["deg"] as? Int {
                _cWindDegree = cWindDegree
        } else {
            _cWindDegree = 0
        }
        
        //City Name
        if let cName = data["name"] as? String {
            _cName = cName
        } else {
            _cName = ""
        }
    }
    
}
