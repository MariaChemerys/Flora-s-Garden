//
//  MainMenuView.swift
//  Flora's Garden
//
//  Created by Mariia Chemerys on 19.10.2023.
//

import SwiftUI


struct MainMenuView: View {
    
    @State var isLanguageOneTapped: Bool = true
    @State var isLanguageTwoTapped: Bool = false
    
    var body: some View {
        NavigationView {
            ZStack {
                // Background image
                HStack {
                    Image("back1")
                        .resizable()
                        .frame(width: 920, height: 460)
                }
                
                // Toolbar image
                ZStack {
                    Image("toolbar play on")
                        .resizable()
                        .zIndex(2)
                        .padding(10)
                        .position(CGPoint(x: 350, y: -70))
                        .frame(width: 700, height: 110)
                    
                    // Navigation link to credits view
                    NavigationLink(destination: CreditsView(), label:{
                        Text("")
                            .position(CGPoint(x: 60,y: 0))
                            .frame(width: 100, height: 47)
                    })
                    .background(
                        RoundedRectangle(cornerRadius: 10)
                            .frame(width: 110, height: 50)
                            .foregroundColor(Color.clear))
                    .position(CGPoint(x: 520, y: 110))
                    .zIndex(3)
                }
                
                // Play button
                ZStack {
                    Image("main play button")
                        .resizable()
                        .frame(width: 188, height: 121)
                        .zIndex(1)
                        .position(CGPoint(x: 465, y: 250))
                    
                    
                    NavigationLink(destination: KitchenView(), label:{
                        Text("")
                            .position(CGPoint(x: 60,y: 0))
                            .frame(width: 100, height: 47)
                    })
                    .zIndex(2)
                    .background(
                        RoundedRectangle(cornerRadius: 10)
                            .frame(width: 145, height: 100)
                            .foregroundColor(Color.clear))
                    .position(CGPoint(x: 465, y: 250))
                }
            }.navigationBarBackButtonHidden(true)
        }.navigationBarBackButtonHidden(true)
    }
}

#Preview {
    MainMenuView()
}
