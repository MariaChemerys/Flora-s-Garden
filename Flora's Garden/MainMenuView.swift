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
                        .position(CGPoint(x: 410, y: 287))
                        
                        NavigationLink(destination: SettingsView(), label:{
                            Text("")
                                .position(CGPoint(x: 60,y: 0))
                                .frame(width: 100, height: 47)
                        })
                        .background(
                            RoundedRectangle(cornerRadius: 10)
                                .frame(width: 90, height: 42)
                                .foregroundColor(Color.clear))
                        .position(CGPoint(x: 200, y: 287))
                        
                        NavigationLink(destination: CreditsView(), label:{
                            Text("")
                                .position(CGPoint(x: 60,y: 0))
                                .frame(width: 100, height: 47)
                        })
                        .background(
                            RoundedRectangle(cornerRadius: 10)
                                .frame(width: 90, height: 42)
                                .foregroundColor(Color.clear))
                        .position(CGPoint(x: -9, y: 287))
                        
                    }.zIndex(3)
                        .contentShape(Rectangle())
                    
                }
                
//                ZStack{
//                    Image("home button")
//                        .resizable()
//                        .frame(width: 200, height: 130)
//                        .position(CGPoint(x: 460, y: 410))
//                    VStack {
//                        Button(action: {
//                            self.isLanguageOneTapped = true
//                            self.isLanguageTwoTapped = false
//                        }) {
//                            Image(systemName: "globe")
//                                .resizable()
//                                .frame(width: 30, height: 30)
//                                .padding(5)
//                                .foregroundColor(.white)
//                            
//                            Text("English")
//                                .foregroundColor(.white)
//                                .font(.system(size: 32))
//                                .padding(3)
//                        }
//                        .background((isLanguageOneTapped && (isLanguageTwoTapped == false)) ? Color("LightBrownHighOpacity") : Color("LightBrownLowOpacity"))
//                        .cornerRadius(70)
//                        .frame(width: 600, height: 70)
//                        .position(CGPoint(x: 459, y: 385))
//                        
//                        Button(action: {
//                            self.isLanguageTwoTapped = true
//                            self.isLanguageOneTapped = false
//                        }) {
//                            Image(systemName: "globe")
//                                .resizable()
//                                .frame(width: 30, height: 30)
//                                .padding(5)
//                                .foregroundColor(.white)
//                            
//                            Text("Italiano")
//                                .foregroundColor(.white)
//                                .font(.system(size: 32))
//                                .padding(3)
//                        }
//                        .background((isLanguageTwoTapped && (isLanguageOneTapped == false)) ? Color("LightBrownHighOpacity") : Color("LightBrownLowOpacity"))
//                        .cornerRadius(70)
//                        .frame(width: 600, height: 70)
//                        .position(CGPoint(x: 459, y: 10))
//                    }.zIndex(4)
//                }
                // Main play button
                
                ZStack {
                    Image("main play button")
                        .resizable()
                        .frame(width: 188, height: 121)
                        .zIndex(1)
                        .position(CGPoint(x: 465, y: 450))
                    
                    
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
                        .position(CGPoint(x: 465, y: 450))
                    
                    
                }
            }.navigationBarBackButtonHidden(true)
        }.navigationBarBackButtonHidden(true)
    }
}

#Preview {
    MainMenuView()
}
