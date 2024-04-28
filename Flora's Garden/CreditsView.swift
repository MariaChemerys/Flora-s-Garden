//
//  CreditsView.swift
//  Flora's Garden
//
//  Created by Mariia Chemerys on 20.10.2023.
//

import SwiftUI

struct CreditsView: View {
    var body: some View {
        NavigationView {
            ZStack {
                
                // Background image
                HStack {
                    Image("back_3")
                        .resizable()
                        .frame(width: 920, height: 460)
                }
                
                // Toolbar image
                ZStack {
                    Image("toolbar credits on")
                        .resizable()
                        .zIndex(2)
                        .padding(10)
                        .position(CGPoint(x: 350, y: -70))
                        .frame(width: 700, height: 110)
                    
                    // Navigation link to credits view
                    NavigationLink(destination: MainMenuView(), label:{
                        Text("")
                            .position(CGPoint(x: 60,y: 0))
                            .frame(width: 100, height: 47)
                    })
                    .background(
                        RoundedRectangle(cornerRadius: 10)
                            .frame(width: 110, height: 50)
                            .foregroundColor(Color.clear))
                    .position(CGPoint(x: 402, y: 110))
                    .zIndex(3)
                }
            }
        }.navigationBarBackButtonHidden(true)
    }
}

#Preview {
    CreditsView()
}
