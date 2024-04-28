//
//  GardenView.swift
//  Flora's Garden
//
//  Created by Mariia Chemerys on 19.10.2023.
//

import SwiftUI

struct GardenView: View {
    
    var body: some View {
        NavigationView {
            ZStack {
                HStack {
                    // Background image
                    Image("back2")
                        .resizable()
                        .frame(width: 920, height: 460)
                        }
                // Toolbar image
                ZStack {
                    Image("toolbar garden on")
                        .resizable()
                        .zIndex(2)
                        .padding(10)
                        .position(CGPoint(x: 400, y: 380))
                        .frame(width: 800, height: 840)
                    
                    // Navigation links to other views
                    HStack {
                        NavigationLink(destination: MainMenuView(), label:{
                            Text("")
                                .position(CGPoint(x: 60,y: 0))
                                .frame(width: 100, height: 47)
                        })
                        .background(
                            RoundedRectangle(cornerRadius: 10)
                                .frame(width: 90, height: 42)
                                .foregroundColor(Color.clear))
                        .position(CGPoint(x: 310, y: 287))
                        
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
            }
        }.navigationBarBackButtonHidden(true)
        .navigationBarBackButtonHidden(true)
    }
}

#Preview {
    GardenView()
}
