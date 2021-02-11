//
//  ArticleViewModel.swift
//  MVVMtest
//
//  Created by Yudi Edri Alviska on 11/02/21.
//

import Foundation

class ArticleViewModel: Identifiable {
    
    let id = UUID()
    
    let article: Article
    
    init(article: Article) {
        self.article = article
    }
    
    var title: String {
        return self.article.title
    }
    
    var description: String {
        return self.article.description ?? ""
    }
}
