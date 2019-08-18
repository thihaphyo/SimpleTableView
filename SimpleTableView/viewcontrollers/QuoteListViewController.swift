//
//  QuoteListViewController.swift
//  SimpleTableView
//
//  Created by Phyo Thiha on 18/08/2019.
//  Copyright © 2019 padc. All rights reserved.
//

import UIKit

class QuoteListViewController: UIViewController {

    @IBOutlet weak var tableViewQuotes: UITableView!
    var mData:[QuotesVO] = QuotesVO.getQuotes()
//    var mData:[String:[QuotesVO]] = QuotesVO.getQuoteGrouped()
//    var authors: [String] {
//        return mData.keys.sorted()
//    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableViewQuotes.estimatedRowHeight = 380
        tableViewQuotes.rowHeight = UITableView.automaticDimension
        
        tableViewQuotes.delegate = self
        tableViewQuotes.dataSource = self
        tableViewQuotes.register(UINib(nibName: String(describing: QuotesTableViewCell.self), bundle: nil), forCellReuseIdentifier: String(describing: QuotesTableViewCell.self))
        
    }

}

extension QuoteListViewController : UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return mData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: QuotesTableViewCell.self), for: indexPath) as! QuotesTableViewCell
        cell.mQuote = mData[indexPath.row]
        return cell
    }
    
  
    
}

extension QuoteListViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        navigateToQuotesDetails(quoteData: mData[indexPath.row])
    }
    
    
}
