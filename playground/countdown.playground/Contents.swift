//: Playground - noun: a place where people can play

import UIKit


let dateFormatter = NSDateFormatter()

dateFormatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
let dateAsString = "2016-10-27 09:00:00"
let datePGW = dateFormatter.dateFromString(dateAsString)!

let currentDate = NSDate()
//var currentDate = dateFormatter.dateFromString(dateAsString2)!

let dateComponentsFormatter = NSDateComponentsFormatter()
dateComponentsFormatter.unitsStyle = NSDateComponentsFormatterUnitsStyle.Full

let interval = datePGW.timeIntervalSinceDate(currentDate)
dateComponentsFormatter.stringFromTimeInterval(interval)


print("Ouverture de la billetterie dans :")



