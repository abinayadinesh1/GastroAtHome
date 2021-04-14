////
////  CardViewT.swift
////  Food delivery
////
////  Created by Abinaya Dinesh on 2/12/21.
////
//
//import SwiftUI
//
//struct CardViewT: View {
//    
//    var treatment: Treatment
//    var body: some View {
//        ZStack(alignment: Alignment(horizontal: .trailing, vertical: .bottom)){
//            VStack {
//                Image("\(treatment.image)")
//                    .resizable()
//                    .aspectRatio(contentMode: .fit)
//                    .frame(height: 150)
//                
//                HStack {
//                    VStack (alignment: .leading){
//                        Text(treatment.title)
//                            .font(.title3)
//                            .fontWeight(.bold)
//                            .foregroundColor(Color("mainfont"))
//                    }
//                    
//                    Spacer()
//                }
//            }
//        }
//        .padding(.horizontal, 20)
//        .padding(.vertical, 20)
//        .background(Color(treatment.cardColor))
//        .clipShape(RoundedRectangle(cornerRadius: 15))
//        .shadow(color: Color(treatment.cardColor).opacity(0.5), radius: 10, x:0, y: 10)
//    }
//}
