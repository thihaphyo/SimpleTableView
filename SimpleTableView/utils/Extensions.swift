//
//  Extensions.swift
//  SimpleTableView
//
//  Created by Phyo Thiha on 18/08/2019.
//  Copyright © 2019 padc. All rights reserved.
//

import Foundation
import UIKit
extension UITableView {
    
    func registerForCell(strID:String) {
        
        register(UINib(nibName: strID, bundle: nil), forCellReuseIdentifier: strID)
    }
}
