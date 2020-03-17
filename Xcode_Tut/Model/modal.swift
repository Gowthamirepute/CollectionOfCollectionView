//
//  modal.swift
//  Xcode_Tut
//
//  Created by Hxtreme on 17/03/20.
//  Copyright © 2020 Hxtreme. All rights reserved.
//

import UIKit

class AppCategory: NSObject {
    var name:String?
    var app:[App]?


static func modelGenerator()->[AppCategory]?{
    
    var currentvalue=AppCategory()
    currentvalue.name="Gowtham"
    var currentApps=[App]()

    var currentApp=App()
    currentApp.name="One"
    currentApp.description="Des"
    currentApp.price=2
    currentApp.imagUrl="Someurl"
    currentApps.append(currentApp)
    currentvalue.app=currentApps
    
    var currentValue2=AppCategory()
    currentValue2.name="Someone"

    var currentApps2=[App]()

    var currentApp2=App()
       currentApp2.name="two"
       currentApp2.description="Destwo"
       currentApp2.price=4
       currentApp2.imagUrl="Someurltwo"
    currentApps2.append(currentApp2)

    
    return [currentvalue,currentValue2]
}
    
}
class App{
    
    var name:String?
    var price:Int?
    var description:String?
    var imagUrl:String?
}
