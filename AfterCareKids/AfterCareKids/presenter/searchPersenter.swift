//
//  File.swift
//  AfterCareKids
//
//  Created by elz on 26/09/23.
//

import Foundation

class QueryPresenter {
   
    
    private weak var view: QueryView?
    private var model: QueryModel
 
    init(view: QueryView, model: QueryModel) {
        self.view = view
        self.model = model
    }
   
    func performQuery(text: String) {

        let result = model.performQuery(text: text)
        view?.displayResult(results: result.resultText)
        }
    

    }

