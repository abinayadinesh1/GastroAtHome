//
//  GridView.swift
//  Food delivery
//
//  Created by Abinaya Dinesh on 4/7/21.
//

import SwiftUI

struct GridView: View {
    var columns = Array(repeating: GridItem(.flexible()), count: 2)
    var categoryIndex: Int
    var text: String
    
    var body: some View {
        LazyVGrid(columns: columns, spacing: 20){
            ForEach(self.getData(category: categoryIndex).filter({ "\($0)".contains(text) || text.isEmpty})){ dis in
                CardView(disorder: dis)
            }
        }
    }
    
    func getData(category: Int)-> [Disorder]{
        if category == 0{
            return dData
        } else if category == 1{
            return wData
        }else{
            return tData
        }

    }
}
