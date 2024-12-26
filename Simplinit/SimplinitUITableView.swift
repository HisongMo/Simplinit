//
//  SimplinitUITableView.swift
//  Simplinit
//
//  Created by wanglei on 12/26/24.
//

import UIKit

extension UITableView {
    
    var stTableView: UITableView {
        let thisTableView = UITableView(frame: .zero, style: .grouped)
        thisTableView.separatorStyle = .none
        thisTableView.isPagingEnabled = false
        thisTableView.showsVerticalScrollIndicator = false
        thisTableView.showsHorizontalScrollIndicator = false
        if #available(iOS 15.0, *) {
            thisTableView.sectionHeaderTopPadding = 0;
        }
        return thisTableView
    }
    
    //MARK: BackgroundColor
    var bgWhite: UITableView {
        self.backgroundColor = UIColor.white
        return self
    }
    
}
