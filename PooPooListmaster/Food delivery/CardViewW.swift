////
////  CardViewW.swift
////  Food delivery
////
////  Created by Abinaya Dinesh on 2/12/21.
////
//import SwiftUI
//
//struct CardViewW: View {
//    
////    var workout: Workout
//    var disorder: Disorder
//
//    var body: some View {
//        ZStack(alignment: Alignment(horizontal: .trailing, vertical: .bottom)){
//            VStack {
//                Image("\(workout.image)")
//                    .resizable()
//                    .aspectRatio(contentMode: .fit)
//                    .frame(height: 150)
//                
//                HStack {
//                    VStack (alignment: .leading){
//                        Text(workout.title)
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
//        .background(Color(workout.cardColor))
//        .clipShape(RoundedRectangle(cornerRadius: 15))
//        .shadow(color: Color(workout.cardColor).opacity(0.5), radius: 10, x:0, y: 10)
//    }
//}
