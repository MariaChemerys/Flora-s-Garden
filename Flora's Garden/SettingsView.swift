//
//  SettingsView.swift
//  Flora's Garden
//
//  Created by Mariia Chemerys on 20.10.2023.
//

import SwiftUI
import AVFoundation

struct SettingsView: View {
    
    // Language selection button state variables
    @State var isLanguageOneTapped: Bool = true
    @State var isLanguageTwoTapped: Bool = false
    
    // Volume slider variables
    @State private var volume: Float = 20
    @State private var isEditing = false
    
    let volumeRange: ClosedRange<Float> = 0...100
    let volumeStep: Float = 10
        
    var body: some View {
        NavigationStack {
            ZStack {
                HStack {
                    // Background image
                    Image("back1")
                        .resizable()
                        .frame(width: 920, height: 460)
                }
                
                // Volume slider
                Slider(
                    value: $volume,
                    in: volumeRange,
                    step: volumeStep
                ) {
                } onEditingChanged: { editing in
                    isEditing = editing
                }   .frame(width: 170)
                    .zIndex(4)
                    .rotationEffect(.degrees(-90))
                    .position(CGPoint(x: 249, y: 515))
                
                // Language selection buttons
                VStack {
                    Button(action: {
                        self.isLanguageOneTapped = true
                        self.isLanguageTwoTapped = false
                    }) {
                        Image(systemName: "globe")
                            .resizable()
                            .frame(width: 30, height: 30)
                            .padding(5)
                            .foregroundColor(.white)
                        
                        Text("Italiano")
                            .foregroundColor(.white)
                            .font(.system(size: 32))
                            .padding(3)
                    }
                    .background((isLanguageOneTapped && (isLanguageTwoTapped == false)) ? Color("LightBrownLowOpacity") : Color("LightBrownLowOpacity"))
                    .cornerRadius(70)
                    .frame(width: 600, height: 70)
                    .position(CGPoint(x: 530, y: 376))
                    
                    Button(action: {
                        self.isLanguageTwoTapped = true
                        self.isLanguageOneTapped = false
                    }) {
                        Image(systemName: "globe")
                            .resizable()
                            .frame(width: 30, height: 30)
                            .padding(5)
                            .foregroundColor(.white)
                        
                        Text("English")
                            .foregroundColor(.white)
                            .font(.system(size: 32))
                            .padding(3)
                    }
                    .background((isLanguageTwoTapped && (isLanguageOneTapped == false)) ? Color("LightBrownHighOpacity") : Color("LightBrownLowOpacity"))
                    .cornerRadius(70)
                    .frame(width: 600, height: 70)
                    .position(CGPoint(x: 530, y: 3))
                }.zIndex(4)
                    
                // Decoration images
                ZStack {
                    Image("toolbar settings on")
                        .resizable()
                        .zIndex(2)
                        .padding(10)
                        .position(CGPoint(x: 400, y: 380))
                        .frame(width: 800, height: 840)
                    
                    Image("logs")
                        .resizable()
                        .frame(width: 1000, height: 910)
                        .aspectRatio(contentMode: .fit)
                        .padding(10)
                        .position(CGPoint(x: 478, y: 620))
                    
                    Image("language decor")
                        .resizable()
                        .frame(width: 250, height: 190)
                         .aspectRatio(contentMode: .fit)
                        .padding(10)
                        .position(CGPoint(x: 600, y: 580))
                    
                    Image("volume bg")
                        .resizable()
                        .frame(width: 160, height: 240)
                        .aspectRatio(contentMode: .fit)
                        .padding(10)
                        .position(CGPoint(x: 275, y: 510))
                    
                    // Navigation Links to other views
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
                        
                        NavigationLink(destination: GardenView(), label:{
                            Text("")
                                .position(CGPoint(x: 60,y: 0))
                                .frame(width: 100, height: 47)
                        })
                        .background(
                            RoundedRectangle(cornerRadius: 10)
                                .frame(width: 90, height: 42)
                                .foregroundColor(Color.clear))
                                .position(CGPoint(x: 100, y: 287))
                        
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
                }
               
            }.navigationBarBackButtonHidden(true)
            
        }.navigationBarBackButtonHidden(true)
    }
}

#Preview {
    SettingsView()
}
