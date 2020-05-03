//
//  ContentView.swift
//  calculator
//
//  Created by Shaimaa on 5/3/20.
//  Copyright © 2020 Shaimaa. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Color.black
            .edgesIgnoringSafeArea(.all)
//        .resizable()
//            .opacity(0.85)
//        .edgesIgnoringSafeArea(.all)
        VStack{
            Text("1234")
                .foregroundColor(.white)
                .font(.system(size: 70))
                .offset(x: 90)
               
            HStack(alignment: .center, spacing: 10, content:{
                ZStack{
                    Circle()
                        .fill(Color.gray)
                        .frame(width: 85, height: 85)
                Text("AC").modifier(textColorBlack())
                }
                ZStack{
                    Circle()
                        .fill(Color.gray)
                        .frame(width: 85, height: 85)
                 Image(systemName:"plus.slash.minus").modifier(textColorBlack())
                }
               ZStack{
                   Circle()
                       .fill(Color.gray)
                       .frame(width: 85, height: 85)
                Text("%").modifier(textColorBlack())
               }
                ZStack{
                    Circle()
                    .fill(Color.orange)
                    .frame(width: 85, height: 85)
                    Image(systemName:"divide").modifier(textColorWhite())
                }
                
            })
            HStack(alignment: .center, spacing: 10, content:{
             ZStack{
                 Circle()
                     .fill(Color.gray)
                     .opacity(0.4)
                     .frame(width: 85, height: 85)
             Text("7").modifier(textColorWhite())
             }
             ZStack{
                 Circle()
                     .fill(Color.gray)
                     .opacity(0.4)
                     .frame(width: 85, height: 85)
               Text("8").modifier(textColorWhite())
             }
            ZStack{
                Circle()
                    .fill(Color.gray)
                     .opacity(0.4)
                    .frame(width: 85, height: 85)
              Text("9").modifier(textColorWhite())
            }
             ZStack{
                 Circle()
                 .fill(Color.orange)
                 .frame(width: 85, height: 85)
                 Image(systemName:"multiply").modifier(textColorWhite())
             }
             
         })
            HStack(alignment: .center, spacing: 10, content:{
                ZStack{
                    Circle()
                        .fill(Color.gray)
                         .opacity(0.4)
                        .frame(width: 85, height: 85)
                 Text("4").modifier(textColorWhite())
                }
                ZStack{
                    Circle()
                        .fill(Color.gray)
                         .opacity(0.4)
                        .frame(width: 85, height: 85)
                  Text("5").modifier(textColorWhite())
                }
               ZStack{
                   Circle()
                       .fill(Color.gray)
                     .opacity(0.4)
                       .frame(width: 85, height: 85)
                 Text("6").modifier(textColorWhite())
               }
                ZStack{
                    Circle()
                    .fill(Color.orange)
                    .frame(width: 85, height: 85)
                    Image(systemName:"minus").modifier(textColorWhite())
                }
                
            })
            HStack(alignment: .center, spacing: 10, content:{
                ZStack{
                    Circle()
                        .fill(Color.gray)
                         .opacity(0.4)
                        .frame(width: 85, height: 85)
                Text("1").modifier(textColorWhite())
                }
                ZStack{
                    Circle()
                        .fill(Color.gray)
                         .opacity(0.4)
                        .frame(width: 85, height: 85)
                  Text("2").modifier(textColorWhite())
                }
               ZStack{
                   Circle()
                       .fill(Color.gray)
                     .opacity(0.4)
                       .frame(width: 85, height: 85)
                  Text("3").modifier(textColorWhite())
               }
                ZStack{
                    Circle()
                    .fill(Color.orange)
                    .frame(width: 85, height: 85)
                    Image(systemName:"plus").modifier(textColorWhite())
                }
                
            })
            HStack(alignment: .center, spacing: 10, content:{
                ZStack{
                    RoundedRectangle(cornerRadius: 100)
                        .fill(Color.gray)
                        .opacity(0.4)
                        .frame(width: 180, height: 85)
                Text("0").modifier(textColorWhite())
                }
               ZStack{
                   Circle()
                       .fill(Color.gray)
                     .opacity(0.4)
                       .frame(width: 85, height: 85)
                  Text(".").modifier(textColorWhite())
               }
                ZStack{
                    Circle()
                    .fill(Color.orange)
                    .frame(width: 85, height: 85)
                    Image(systemName:"equal").modifier(textColorWhite())
                }
                
            })
            }
        }
    }
}

struct textColorBlack: ViewModifier {
    func body(content: Content) -> some View {
        content
        .foregroundColor(.black)
        .font(.custom("Arial", size: 40))
        .multilineTextAlignment(.center)
        .padding(.all)
        //  .offset(x: 20)
//        .background(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)).opacity(1))
//        .fixedSize()
//        .padding(.horizontal, 5)
//        .padding(.vertical, 5)
//        .clipShape(Capsule())
    }
}

struct textColorWhite: ViewModifier {
    func body(content: Content) -> some View {
        content
        .foregroundColor(.white)
        .font(.custom("Arial", size: 40))
        .multilineTextAlignment(.center)
        .padding(.all)
    }
}




struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
