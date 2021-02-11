//
//  ContentView.swift
//  MVVMtest
//
//  Created by Yudi Edri Alviska on 11/02/21.
//

import Foundation
import SwiftUI
import Combine

struct ContentView: View {
    @ObservableObject var model = ArticleListViewModel()
    
//    var model = ArticleListViewModel()
    
    var body: some View {
        List(model.articles) { article in
            
            VStack(alignment: .leading) {
                
                Text(article.title)
                    .lineLimit(nil)
                
                Text(article.description)
                    .foregroundColor(.secondary)
                    .lineLimit(nil)
                
            }
            
        }
    }
}

//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}
