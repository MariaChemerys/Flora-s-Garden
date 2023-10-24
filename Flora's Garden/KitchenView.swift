//
//  SwiftUIView.swift
//  Flora's Garden
//
//  Created by Mariia Chemerys on 23.10.2023.
//

import SwiftUI

struct KitchenView: View {
    
    @State var isFridgeTapped: Bool = false
    @State var fridgeTapCounter = 0
    
    var body: some View {
        NavigationView {
            ZStack {
                // Background image
                HStack {
                    Image("room 1 background")
                        .resizable()
                        .frame(width: 1100, height: 460)
                }.zIndex(0)
                
                ZStack {
                    // Home button sends the user to the main menu
                    Image("home button")
                        .resizable()
                        .frame(width: 60, height: 50)
                        .zIndex(1)
                        .position(x: 192, y: 150)
                    Text("<<")
                        .foregroundColor(.white)
                        .font(.system(size: 32))
                        .padding(4)
                        .cornerRadius(10)
                        .frame(width: 600, height: 70)
                        .position(CGPoint(x: 192, y: 150))
                        .zIndex(1)
                    NavigationLink(destination: MainMenuView(), label:{
                        Text("")
                            .position(CGPoint(x: 60,y: 0))
                            .frame(width: 100, height: 47)
                    })
                    .zIndex(3)
                    .background(
                        RoundedRectangle(cornerRadius: 10)
                            .frame(width: 60, height: 50)
                            .foregroundColor(Color.clear))
                    .position(CGPoint(x: 192, y: 150))
                    
                    Image("room 1 pensile base")
                        .resizable()
                        .position(CGPoint(x: 100, y: 260))
                        .frame(width: 700, height: 500)
                        .zIndex(1)
                    
                    Image("room 1 pensile door closed")
                        .resizable()
                        .position(CGPoint(x: 100, y: 260))
                        .frame(width: 700, height: 500)
                        .zIndex(1)
                    
                    Image("room 1 mobile door closed")
                        .resizable()
                        .position(CGPoint(x: 100, y: 235))
                        .frame(width: 700, height: 580)
                        .zIndex(1)
                    
                    Image("room 1 mobile base")
                        .resizable()
                        .position(CGPoint(x: 100, y: 235))
                        .frame(width: 700, height: 580)
                        .zIndex(0)
                    
                    Image("flower guy 1 flower")
                        .resizable()
                        .position(CGPoint(x: 420, y: 210))
                        .frame(width: 200, height: 330)
                        .zIndex(1)
                    
                    if fridgeTapCounter == 0 {
                        ZStack{
                            Image("speech bubble")
                                .resizable()
                                .position(CGPoint(x: 435, y: -15))
                                .frame(width: 400, height: 175)
                                .zIndex(2)
                            Text("Hello, my name is Flora. I need you to help me name the ingredients for spezzatino, an Italian dish. To start, open the fridge and tap on one ingredient.")
                                .position(CGPoint(x: 395,y: -35))
                                .frame(width: 310, height: 150)
                                .zIndex(2)
                            
                        }.zIndex(2)
                    }
                    
                    
                    Button(action: {
                        self.isFridgeTapped = true
                        fridgeTapCounter = fridgeTapCounter + 1
                    }) {
                        RoundedRectangle(cornerRadius: 20)
                            .position(CGPoint(x: 80, y: 187))
                            .frame(width: 162, height: 340)
                            .foregroundColor(.clear)
                    }.zIndex(1)
                        .position(CGPoint(x: 200, y: 185))
                        .frame(width: 162, height: 340)
                    
                    if fridgeTapCounter%2 == 0 {
                        Image("room 1 fridge door closed")
                            .resizable()
                            .position(CGPoint(x: 950, y: 235))
                            .frame(width: 1130, height: 560)
                    }else{
                        Image("room 1 fridge base")
                            .resizable()
                            .position(CGPoint(x: 950, y: 235))
                            .frame(width: 1130, height: 560)
                        Image("room 1 fridge door opened")
                            .resizable()
                            .position(CGPoint(x: 730, y: 235))
                            .frame(width: 800, height: 560)
                        Image("meat")
                            .resizable()
                            .position(CGPoint(x: 140, y: 63))
                            .frame(width: 80, height: 40)
                    }
                }
            }
        }.navigationBarBackButtonHidden(true)
    }
}

#Preview {
    KitchenView()
}
