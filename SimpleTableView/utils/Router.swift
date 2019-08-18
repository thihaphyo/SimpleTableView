//
//  Router.swift
//  SimpleTableView
//
//  Created by Phyo Thiha on 18/08/2019.
//  Copyright © 2019 padc. All rights reserved.
//

import Foundation
import UIKit

extension UIViewController {
    func navigateToQuotesDetails(quoteData:QuotesVO) {
        
        let storyBoard = UIStoryboard.init(name: "Main", bundle: Bundle.main)
        let vc = storyBoard.instantiateViewController(withIdentifier: STORY_ID_QUOTES_DETAILS) as? QuotesDetailsViewController
        vc?.mData = quoteData
        if let viewController = vc {
             self.navigationController?.pushViewController(viewController, animated: true)
        }
    
    }
}
