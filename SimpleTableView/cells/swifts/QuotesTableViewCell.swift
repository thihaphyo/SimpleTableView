//
//  QuotesTableViewCell.swift
//  SimpleTableView
//
//  Created by Phyo Thiha on 18/08/2019.
//  Copyright © 2019 padc. All rights reserved.
//

import UIKit

class QuotesTableViewCell: UITableViewCell {

    @IBOutlet weak var labelAuthorName: UILabel!
    @IBOutlet weak var labelQuoteText: UILabel!
    var mQuote:QuotesVO! {
        didSet {
            labelQuoteText.text = mQuote.quoteText
            labelAuthorName.text = mQuote.authorName
        }
    }
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
}
