//
//  ListViewCompatible.swift
//  SmartFarm
//
//  Created by Yani Buchkov on 11.01.19.
//  Copyright © 2019 Yani Buchkov. All rights reserved.
//

import Foundation

protocol ListViewCompatible {
    
    var reuseIdentifier: String { get }
    
}

protocol TableViewCompatible: ListViewCompatible {
    
    // Add something
}

protocol CollectionViewCompatible: ListViewCompatible {
    
    // Add something
}
