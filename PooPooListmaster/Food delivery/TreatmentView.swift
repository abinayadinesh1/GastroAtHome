//
//  KegelView.swift
//  Food delivery
//
//  Created by Abinaya Dinesh on 4/6/21.
//

import SwiftUI

struct TreatmentView: View {
    var disorder: Disorder
    
    var body: some View {
        VStack (alignment: .center){
            Text(disorder.title)
                .font(.title2)
                .fontWeight(.bold)
                .foregroundColor(Color(.black))
                .frame(alignment: .center)
            Image("\(disorder.image)")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: 150, alignment: .center)
            Text("Description")
                .font(.system(size: 20))
                .fontWeight(.bold)
                .foregroundColor(Color("Color4"))
                .frame(alignment: .leading)
            Text(disorder.description)
                .font(.system(size: 12))
                .fontWeight(.bold)
                .foregroundColor(Color(.black))
                .frame(alignment: .center)
            Text("Treats")
                .font(.system(size: 20))
                .fontWeight(.bold)
                .foregroundColor(Color("Color4"))
                .frame(alignment: .leading)
            Text(disorder.treats)
                .font(.system(size: 12))
                .fontWeight(.regular)
                .foregroundColor(Color(.black))
                .frame(alignment: .leading)

            
        }
        Spacer()
    }
}
