//
//  CardView.swift
//  Food delivery
//
//  Created by Abinaya Dinesh on 2/11/21.
//

import SwiftUI

struct CardView: View {

    var disorder: Disorder
    var body: some View {

        ZStack(alignment: Alignment(horizontal: .trailing, vertical: .bottom)){
            VStack {
                    NavigationLink(destination: DisorderView(disorder: disorder)){
                        Image("\(disorder.image)")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(height: 150)
                    }
                HStack {
                    VStack (alignment: .leading){
                        Text(disorder.title)
                            .font(.title3)
                            .fontWeight(.bold)
                            .foregroundColor(Color("mainfont"))
                    }
                    
                    Spacer()
                    
                }
            }
        }
        .padding(.horizontal, 20)
        .padding(.vertical, 20)
        .background(Color("Color1"))
        .clipShape(RoundedRectangle(cornerRadius: 15))
        .shadow(color: Color("Color1").opacity(0.5), radius: 10, x:0, y: 10)
    }
}

