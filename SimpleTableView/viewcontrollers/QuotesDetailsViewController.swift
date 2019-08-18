//
//  QuotesDetailsViewController.swift
//  SimpleTableView
//
//  Created by Phyo Thiha on 18/08/2019.
//  Copyright © 2019 padc. All rights reserved.
//

import UIKit

class QuotesDetailsViewController: UIViewController {

    @IBOutlet weak var labelAuthor: UILabel!
    @IBOutlet weak var labelQuote: UILabel!
    var mData:QuotesVO!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        labelAuthor.text = mData.authorName
        labelQuote.text = mData.quoteText
    }
}
