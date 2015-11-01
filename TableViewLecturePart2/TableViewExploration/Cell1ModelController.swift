//
//  Cell1ModelController.swift
//  TableViewExploration
//
//  Created by Heather Connery on 2015-11-01.
//  Copyright © 2015 HConnery. All rights reserved.
//

import UIKit

class Cell1ModelController: NSObject {
    
    //store models once created - cache
    var modelCache: [Cell1DataModel] = []
    
    
    //will need to have an instance of this model controller in order to access the funcs below
    func createModelWithTitle(title:String, andSubtitle: String) -> Cell1DataModel {
        
        let cellDataModel = Cell1DataModel()
        cellDataModel.title = title
        cellDataModel.subTitle = andSubtitle
        return cellDataModel
    }
    
    func storeModel(model:Cell1DataModel) {
        modelCache.append(model)
    }
    
    func createAndStoreModelWithTitle(title:String, andSubtitle:String) {
        let model = createModelWithTitle(title, andSubtitle: andSubtitle)
        storeModel(model)
    }
    

}
