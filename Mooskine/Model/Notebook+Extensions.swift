//
//  Notebook+Extensions.swift
//  Mooskine
//
//  Created by Abdallah Eid on 7/8/19.
//  Copyright © 2019 Udacity. All rights reserved.
//

import Foundation
import CoreData

extension Notebook{
    public override func awakeFromInsert() {
        super.awakeFromInsert()
        creationDate = Date()
    }
}
