//
//  ViewController.swift
//  AnimalFortuneTelling
//
//  Created by Azusa Harada on 2015/12/04.
//  Copyright © 2015年 Azusa Harada. All rights reserved.
//

import UIKit
import SwiftyJSON
import Socket_IO_Client_Swift

struct Error : ErrorType {
  let domain: String
  let code: Int

  var _domain: String {
    return domain
  }
  var _code: Int {
    return code
  }
}

func ~=(lhs: Error, rhs: ErrorType) -> Bool {
  return lhs._domain == rhs._domain
    && rhs._code   == rhs._code
}


class ViewController: UIViewController {
  var socket: SocketIOClient!

  override func viewDidLoad() {
    super.viewDidLoad()
    // ここから
    let appDelegate: AppDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
    socket = appDelegate.socket
//    socket.on("from_server") { (data, emitter) in
//      if let message = data as? [String] {
//        let jsonData: NSData = message[0].dataUsingEncoding(NSUTF8StringEncoding)!
//        }
//    }

  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }


  @IBOutlet weak var year1: UIDatePicker!

  @IBAction func animalFortune(sender: UIDatePicker) {
    //animal.text = String(year(year1.date))

//    let year = format(year1.date)
//    let a = try! getJson(year)
//    animal.text = a.yourAnimal
//    text1.text = a.animalText
  }

  @IBOutlet weak var animal: UILabel!
  @IBOutlet weak var text1: UILabel!

  func format(dayValue:NSDate) -> String {
    var yourValue : Int

    let birthYear = year(year1.date)
    let birthDay = day(year1.date)

    let referenceValue = monthReferenceValue(month(year1.date))
    print(referenceValue)
   switch month(year1.date) {
    case 1,2:
        yourValue = (birthYear-4)*5+Int((birthYear-1)/4) + referenceValue + birthDay
    case 3...12:
        yourValue = (birthYear+1)*5+Int(birthYear/4)+referenceValue+birthDay
    default :
        yourValue = -1
    }
    return String(yourValue%60)
  }

  func year(time: NSDate) -> Int {
    let calendar = NSCalendar.currentCalendar()
    let comp: NSDateComponents = calendar.components(NSCalendarUnit.Year,fromDate: time)
    return comp.year
  }

  func month(time: NSDate) -> Int {
    let calendar = NSCalendar.currentCalendar()
    let comp: NSDateComponents = calendar.components(NSCalendarUnit.Month,fromDate: time)
    return comp.month
  }

  func day(time: NSDate) -> Int {
    let calendar = NSCalendar.currentCalendar()
    let comp: NSDateComponents = calendar.components(NSCalendarUnit.Day,fromDate: time)
    return comp.day
  }

  func monthReferenceValue(month:Int) -> Int {
      var num = -1
      switch Int(month){
      case 1: num = 15
      case 2: num = 46
      case 3: num = 49
      case 4: num = 20
      case 5: num = 29
      case 6: num = 21
      case 7: num = 51
      case 8: num = 22
      case 9: num = 53
      case 10: num = 23
      case 11: num = 54
      case 12: num = 24
      default: num-1
    }
    return num
  }

  @IBAction func tupButton(sender: AnyObject) {
    socket.emit("from_client", "button pushed!!")
    let year = format(year1.date)
    let a = try! getJson(year)
    animal.text = a.yourAnimal
    text1.text = a.animalText

  }

  func getJson(num:String?) throws -> (yourAnimal:String,animalText:String) {
    var yourAnimal = ""
    var animalText = ""
    //var animalArray : Array = [yourAnimal,animalText]

// if let filePath = NSBundle.mainBundle().pathForResource("animalType", ofType: "json")  {

//          let data = try NSData(contentsOfURL: NSURL(fileURLWithPath: filePath), options: NSDataReadingOptions.DataReadingMappedIfSafe)

//socket.on("from_server"){ (data, emitter) in
        self.socket.on("from_server") { (data, emitter) in
          if let message = data as? [String] {
            print(message[0].dataUsingEncoding(NSUTF8StringEncoding)!)
          //  let jsonData: NSData = message[0].dataUsingEncoding(NSUTF8StringEncoding)!
            animalText = message[0]
//            let jsonObj = JSON(data: jsonData)
//            if jsonObj != JSON.null {
//                  for (key, subJson) in jsonObj["result"] {
//                      if let title = subJson["number"].string {
//                          if num == title {
//                                yourAnimal = subJson["title"].string!
//                                animalText = subJson["text"].string!
//                          }
//                      }
//                  }
//
//            }
        }

//    if let message = data as? [String] {
//      var jsonData: NSData = message[0].dataUsingEncoding(NSUTF8StringEncoding)!
//            //let jsonObj = JSON(data: data)
//       let jsonObj = JSON(data: jsonData)
//            if jsonObj != JSON.null {
//              for (key, subJson) in jsonObj["result"] {
//                if let title = subJson["number"].string {
//                  if num == title {
//                    yourAnimal = subJson["title"].string!
//                    animalText = subJson["text"].string!
//                  }
//                }
//            }
//           }
//
//
//    }


    }
    return (yourAnimal,animalText)
  }
//    if let filePath = NSBundle.mainBundle().pathForResource("animalType", ofType: "json") {
//      do {
//        let data = try NSData(contentsOfURL: NSURL(fileURLWithPath: filePath), options: NSDataReadingOptions.DataReadingMappedIfSafe)
//        let jsonObj = JSON(data: data)
//        if jsonObj != JSON.null {
//          for (key, subJson) in jsonObj["result"] {
//            if let title = subJson["number"].string {
//              if num == title {
//                yourAnimal = subJson["title"].string!
//                animalText = subJson["text"].string!
//              }
//            }
//          }
//
//        } else {
//          print("ファイルが開けません。")
//        }
//      } catch let error as NSError {
//        throw error
//        print(error.localizedDescription)
//      }
//    } else {
//      print("パスがみつかりません")
//    }
//    return (yourAnimal,animalText)
//  }

}