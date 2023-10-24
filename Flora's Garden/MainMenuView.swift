//
//  MainMenuView.swift
//  Flora's Garden
//
//  Created by Mariia Chemerys on 19.10.2023.
//

import SwiftUI


struct MainMenuView: View {
    var body: some View {
        NavigationView {
            ZStack {
                // Background image
                HStack {
                    Image("back1")
                        .resizable()
                        .frame(width: 1100, height: 460)
                        }
                // Toolbar image
                ZStack {
                    Image("toolbar play on")
                        .resizable()
                        .zIndex(2)
                        .padding(10)
                        .position(CGPoint(x: 400, y: 380))
                        .frame(width: 800, height: 840)
                    
                    // Navigation links to other views
                    HStack {
                        NavigationLink(destination: GardenView(), label:{
                            Text("")
                                .position(CGPoint(x: 60,y: 0))
                                .frame(width: 100, height: 47)
                        })
                        .background(
                            RoundedRectangle(cornerRadius: 10)
                                .frame(width: 90, height: 42)
                                .foregroundColor(Color.clear))
                                .position(CGPoint(x: 501, y: 287))
                                
                        NavigationLink(destination: SettingsView(), label:{
                            Text("")
                                .position(CGPoint(x: 60,y: 0))
                                .frame(width: 100, height: 47)
                        })
                        .background(
                            RoundedRectangle(cornerRadius: 10)
                                .frame(width: 90, height: 42)
                                .foregroundColor(Color.clear))
                                .position(CGPoint(x: 230, y: 287))
                        
                        NavigationLink(destination: CreditsView(), label:{
                            Text("")
                                .position(CGPoint(x: 60,y: 0))
                                .frame(width: 100, height: 47)
                        })
                        .background(
                            RoundedRectangle(cornerRadius: 10)
                                .frame(width: 90, height: 42)
                                .foregroundColor(Color.clear))
                                .position(CGPoint(x: -39, y: 287))
                        
                    }.zIndex(3)
                        .contentShape(Rectangle())
                    
                }
                // Main play button
                
                ZStack {
                    Image("main play button")
                        .resizable()
                        .frame(width: 188, height: 121)
                        .zIndex(1)
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
                            .position(CGPoint(x: 545, y: 420))
                }
                
            }
        }.navigationBarBackButtonHidden(true)
        .navigationBarBackButtonHidden(true)
    }
}

#Preview {
    MainMenuView()
}
