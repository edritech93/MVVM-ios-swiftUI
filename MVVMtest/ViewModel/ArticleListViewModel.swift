//
//  ArticleListViewModel.swift
//  MVVMtest
//
//  Created by Yudi Edri Alviska on 11/02/21.
//

import Foundation
import Combine

class ArticleListViewModel: ObservableObject {
    
    let didChange = PassthroughSubject<ArticleListViewModel,Never>()
    
    init() {
        fetchTopHeadlines()
    }
    
    var articles = [ArticleViewModel]() {
        didSet {
            didChange.send(self)
        }
    }
    
    private func fetchTopHeadlines() {
        
        guard let url = URL(string: "https://newsapi.org/v2/top-headlines?country=us&apiKey=InsertYourAPIKeyHere") else {
            fatalError("URL is not correct!")
        }
        
        Webservice().loadTopHeadlines(url: url) { articles in
            
            if let articles = articles {
                self.articles = articles.map(ArticleViewModel.init)
            }
            
        }
        
    }
    
}
