//
//  DataController.swift
//  Mooskine
//
//  Created by Abdallah Eid on 7/7/19.
//  Copyright © 2019 Udacity. All rights reserved.
//

import Foundation
import CoreData

class DataController {
    
    let persistentContainer:NSPersistentContainer
    
    init(modelName: String) {
        persistentContainer = NSPersistentContainer(name: modelName)
    }
    
    // load store
    func load(completion: @escaping () -> Void ) {
        persistentContainer.loadPersistentStores { (pesistentStoreDescription, error) in
            guard error == nil else {
                print(error!.localizedDescription)
                return
            }
            completion()
        }
    }
    
    // access context
    var viewContext:NSManagedObjectContext {
        return persistentContainer.viewContext
    }
    
}
