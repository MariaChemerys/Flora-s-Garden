//
//  SwiftUIView.swift
//  Flora's Garden
//
//  Created by Mariia Chemerys on 23.10.2023.
//

import SwiftUI

struct KitchenView: View {
    
// VIEWMODEL
    
    var viewModel = kitchenItemViewModel()
    
// FURNITURE OPENING VARIABLES
    
    // Fridge opening variables
    @State var isFridgeTapped: Bool = false
    @State var fridgeTapCounter = 0
    
    // Left higher drawer opening variables
    @State var isLeftHigherDrawerTapped: Bool = false
    @State var leftHigherDrawerTapCounter = 0
    
    // Right higher drawer opening variables
    @State var isRightHigherDrawerTapped: Bool = false
    @State var rightHigherDrawerTapCounter = 0
    
    // Table opening variable
    @State var isTableTapped: Bool = false
    
    // Lower drawer opening variables
    @State var isLowerDrawerTapped: Bool = false
    @State var lowerDrawerTapCounter = 0
    
// KITCHEN ITEMS VARIABLES
    
    // Stage 0
    @State var fishTapCounter = 0
    @State var isFishCompleted = false
    
    @State var eggsTapCounter = 0
    @State var isEggsCompleted = false
    
    @State var chickenLegTapCounter = 0
    @State var isChickenLegCompleted = false
    
    @State var meatTapCounter = 0
    @State var isMeatCompleted = false
    
    // Stage 1
    @State var bananaTapCounter = 0
    @State var isBananaCompleted = false
    
    @State var appleTapCounter = 0
    @State var isAppleCompleted = false
    
    // Stage 2
    @State var breadTapCounter = 0
    @State var isBreadCompleted = false
    
    @State var cookiesTapCounter = 0
    @State var isCookiesCompleted = false
    
    // Stage 3
    @State var towelTapCounter = 0
    @State var isTowelCompleted = false
    
    @State var spoonsTapCounter = 0
    @State var isSpoonsCompleted = false
    
    @State var whiskTapCounter = 0
    @State var isWhiskCompleted = false
    
    @State var booksTapCounter = 0
    @State var isBooksCompleted = false
    
    // Stage 4
    @State var wineTapCounter = 0
    @State var isWineCompleted = false
    
    @State var glassTapCounter = 0
    @State var isGlassCompleted = false
    
    @State var pepperTapCounter = 0
    @State var isPepperCompleted = false
    
    @State var carrotTapCounter = 0
    @State var isCarrotCompleted = false
    
// KITCHEN ITEMS NAMES - USER INPUT VARIABLES
    @State var kitchenItemNameEnglish: String = ""
    @State var kitchenItemNameItalian: String = ""
    
// STAGE VARIABLE
    
    @State var stageCounter = 0
    
// FIELDS COMPLETION VARIABLES
    
    @State var isFieldOneCompleted: Bool = false
    @State var isFieldTwoCompleted: Bool = false
    
// NAME SCREEN BUTTONS VARIABLES
    @State var closeTapCounter = 0
    
    @State var currentItemId = 0
    
    var body: some View {
        NavigationView {
            ZStack {
                // Background image
                HStack {
                    Image("back_4")
                        .resizable()
                        .frame(width: 920, height: 460)
                }.zIndex(0)
                
                ZStack {
                    // Back button sends the user to the main menu
                    if stageCounter < 5{
                        Image("back button")
                            .resizable()
                            .frame(width: 70, height: 50)
                            .zIndex(3)
                            .position(x: 130, y: 100)
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
                        .position(x: 130, y: 100)
                    }
                    else{
                        Image("back button")
                            .resizable()
                            .frame(width: 70, height: 50)
                            .zIndex(3)
                            .position(x: 455, y: 364)
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
                        .position(x: 455, y: 364)
                    }
                    
// FLORA EVOLUTION
                    if stageCounter == 0{
                        Image("flora stage 0")
                            .resizable()
                            .position(CGPoint(x: 350, y: 210))
                            .frame(width: 160, height: 270)
                            .zIndex(1)
                    }
                    
                    if stageCounter == 1{
                        Image("flora stage 1")
                            .resizable()
                            .position(CGPoint(x: 350, y: 210))
                            .frame(width: 160, height: 270)
                            .zIndex(1)
                    }
                    
                    if stageCounter == 2{
                        Image("flora stage 2")
                            .resizable()
                            .position(CGPoint(x: 350, y: 210))
                            .frame(width: 230, height: 280)
                            .zIndex(1)
                    }
                    
                    if stageCounter == 3{
                        Image("flora stage 3")
                            .resizable()
                            .position(CGPoint(x: 350, y: 210))
                            .frame(width: 200, height: 280)
                            .zIndex(1)
                    }
                    
                    if stageCounter == 4 {
                        Image("flora stage 4")
                            .resizable()
                            .position(CGPoint(x: 350, y: 210))
                            .frame(width: 210, height: 280)
                            .zIndex(1)

                    }
                    
// FURNITURE OPENING BUTTONS
                    
                    // Fridge opening button
                    Button(action: {
                        self.isFridgeTapped = true
                        fridgeTapCounter = fridgeTapCounter + 1
                    }) {
                        RoundedRectangle(cornerRadius: 20)
                            .foregroundColor(.clear)
                    }.zIndex(2)
                        .position(CGPoint(x: -85, y: 180))
                        .frame(width: 135, height: 270)
                    
                    if fridgeTapCounter%2 == 0 {
                        Image("room 1 fridge base")
                            .resizable()
                            .position(CGPoint(x: 523, y: 220))
                            .frame(width: 920, height: 455)
                        Image("room 1 fridge door closed")
                            .resizable()
                            .position(CGPoint(x: 501, y: 220))
                            .frame(width: 890, height: 450)
                            .zIndex(1)
                        
                    }
                    else{
                        Image("room 1 fridge base")
                            .resizable()
                            .position(CGPoint(x: 523, y: 220))
                            .frame(width: 920, height: 455)
                        if stageCounter != 0{
                            Image("room 1 fridge door closed")
                                .resizable()
                                .position(CGPoint(x: 501, y: 220))
                                .frame(width: 890, height: 450)
                                .zIndex(1)
                        }
                        if stageCounter == 0{
                            Image("room 1 fridge door opened")
                                .resizable()
                                .position(CGPoint(x: 34, y: 220))
                                .frame(width: 740, height: 455)
                                .zIndex(1)
                            Image("meat")
                                .resizable()
                                .position(CGPoint(x: -140, y: 80))
                                .frame(width: 50, height: 30)
                            Image("eggs")
                                .resizable()
                                .position(CGPoint(x: -88, y: 10))
                                .frame(width: 35, height: 25)
                            Image("chicken_leg")
                                .resizable()
                                .position(CGPoint(x: -90, y: 77))
                                .frame(width: 30, height: 40)
                            Image("weird_fish")
                                .resizable()
                                .position(CGPoint(x: -135, y: 12))
                                .frame(width: 65, height: 35)
                        }
                    }
                    
                    // Left higher drawer opening button
                    Button(action: {
                        self.isLeftHigherDrawerTapped = true
                        leftHigherDrawerTapCounter = leftHigherDrawerTapCounter + 1
                    }) {
                        RoundedRectangle(cornerRadius: 20)
                            .foregroundColor(.clear)
                    }.zIndex(1)
                        .position(CGPoint(x: 42, y: -25))
                        .frame(width: 100, height: 110)
                    
                    if leftHigherDrawerTapCounter%2 == 0 {
                        Image("room 1 pensile base")
                            .resizable()
                            .position(CGPoint(x: 400, y: 235))
                            .frame(width: 750, height: 450)
                        Image("higher drawer left door closed")
                            .resizable()
                            .position(CGPoint(x: 46, y: -10))
                            .frame(width: 118, height: 146)

                    }
                    else{
                        Image("room 1 pensile base")
                            .resizable()
                            .position(CGPoint(x: 400, y: 235))
                            .frame(width: 750, height: 450)
                        Image("higher drawer left door closed")
                            .resizable()
                            .position(CGPoint(x: 46, y: -10))
                            .frame(width: 118, height: 146)
                        if stageCounter == 1{
                            Image("room 1 pensile base")
                                .resizable()
                                .position(CGPoint(x: 400, y: 235))
                                .frame(width: 750, height: 450)
                            Image("higher drawer left door opened")
                                .resizable()
                                .position(CGPoint(x: -25, y: 20))
                                .frame(width: 100, height: 200)
                            Image("banana")
                                .resizable()
                                .position(CGPoint(x: -15, y: -34))
                                .frame(width: 30, height: 55)
                            Image("apple")
                                .resizable()
                                .position(CGPoint(x: 32.2, y: -36))
                                .frame(width: 30, height: 40)
                        }
                    }
                    
                    // Right higher drawer opening button
                    Button(action: {
                        self.isRightHigherDrawerTapped = true
                        rightHigherDrawerTapCounter = rightHigherDrawerTapCounter + 1
                    }) {
                        RoundedRectangle(cornerRadius: 20)
                            .foregroundColor(.clear)
                    }.zIndex(1)
                        .position(CGPoint(x: 142, y: -25))
                        .frame(width: 100, height: 110)
                    
                    if rightHigherDrawerTapCounter%2 == 0 {
                        Image("higher drawer right door closed")
                            .resizable()
                            .position(CGPoint(x: 156, y: -10))
                            .frame(width: 118, height: 146)
                    }
                    else{
                        Image("higher drawer right base")
                            .resizable()
                            .position(CGPoint(x: -400, y: 235))
                            .frame(width: 750, height: 450)
                        if stageCounter != 2{
                            Image("higher drawer right door closed")
                                .resizable()
                                .position(CGPoint(x: 156, y: -10))
                                .frame(width: 118, height: 146)
                        }
                        if stageCounter == 2{
                            Image("higher drawer right door opened")
                                .resizable()
                                .position(CGPoint(x: 206, y: 20))
                                .frame(width: 100, height: 200)
                            Image("bisquits_2")
                                .resizable()
                                .position(CGPoint(x: 135, y: -36))
                                .frame(width: 40, height: 35)
                            Image("bread")
                                .resizable()
                                .position(CGPoint(x: 105, y: -33))
                                .frame(width: 55, height: 30)
                        }
                    }
                    
                    // Table opening button
                    Button(action: {
                        self.isTableTapped = true
                    }) {
                        RoundedRectangle(cornerRadius: 20)
                            .foregroundColor(.clear)
                    }.zIndex(1)
                        .position(CGPoint(x: 130, y: 79))
                        .frame(width: 175, height: 100)
                    
                    // Lower drawer opening button
                    Button(action: {
                        self.isLowerDrawerTapped = true
                        lowerDrawerTapCounter = lowerDrawerTapCounter + 1
                    }) {
                        RoundedRectangle(cornerRadius: 20)
                            .foregroundColor(.clear)
                    }.zIndex(1)
                        .position(CGPoint(x: 170, y: 190))
                        .frame(width: 155, height: 110)
                    
                    if lowerDrawerTapCounter%2 == 0 {
                        Image("room 1 mobile base")
                            .resizable()
                            .position(CGPoint(x: 425, y: 220))
                            .frame(width: 770, height: 460)
                            .zIndex(0)
                        Image("room 1 mobile door closed")
                            .resizable()
                            .position(CGPoint(x: 425, y: 220))
                            .frame(width: 770, height: 460)
                    }
                    else{
                        Image("room 1 mobile base")
                            .resizable()
                            .position(CGPoint(x: 425, y: 220))
                            .frame(width: 770, height: 460)
                        if stageCounter != 4{
                            Image("room 1 mobile door closed")
                                .resizable()
                                .position(CGPoint(x: 425, y: 220))
                                .frame(width: 770, height: 460)
                        }
                        if stageCounter == 4{
                            Image("room 1 mobile door opened")
                                .resizable()
                                .position(CGPoint(x: 425, y: 220))
                                .frame(width: 770, height: 460)
                            Image("carota")
                                .resizable()
                                .position(CGPoint(x: 158, y: 178))
                                .frame(width: 53, height: 55)
                            Image("pepper")
                                .resizable()
                                .position(CGPoint(x: 117, y: 175))
                                .frame(width: 27, height: 30)
                            Image("wine")
                                .resizable()
                                .position(CGPoint(x: 46, y: 175))
                                .frame(width: 26, height: 60)
                            Image("glass")
                                .resizable()
                                .position(CGPoint(x: 75, y: 175))
                                .frame(width: 20, height: 30)
                        }
                    }
                    
// DECORATIONS
                    Image("box")
                        .resizable()
                        .position(CGPoint(x: -100, y: -85))
                        .frame(width: 90, height: 70)
                    Image("stick")
                        .resizable()
                        .position(CGPoint(x: 125, y: 6))
                        .frame(width: 150, height: 15)
                    Image("picture_1")
                        .resizable()
                        .position(CGPoint(x: 195, y: 35))
                        .frame(width: 70, height: 50)
                    Image("picture_2")
                        .resizable()
                        .position(CGPoint(x: 215, y: -20))
                        .frame(width: 50, height: 60)
                    Image("table assets")
                        .resizable()
                        .position(CGPoint(x: 125, y: 65))
                        .frame(width: 150, height: 90)
                    Image("books")
                        .resizable()
                        .position(CGPoint(x: 155, y: 83))
                        .frame(width: 70, height: 55)
                    
// LOCKS
                    // Fridge lock
                    if (stageCounter == 0)&&(isFridgeTapped == false) {
                        Image("open_lock")
                            .resizable()
                            .position(CGPoint(x: -135, y: 50))
                            .frame(width: 40, height: 60)
                            .zIndex(1)
                    }
                    
                    // Left higher drawer lock
                    if stageCounter < 1{
                        Image("closed_lock")
                            .resizable()
                            .position(CGPoint(x: 5, y: -50))
                            .frame(width: 35, height: 60)
                            .zIndex(1)
                    }
                    if (!isLeftHigherDrawerTapped)&&(stageCounter == 1){
                        Image("open_lock")
                            .resizable()
                            .position(CGPoint(x: 10, y: -50))
                            .frame(width: 40, height: 60)
                            .zIndex(1)
                    }
                    
                    // Right higher drawer lock
                    if stageCounter < 2{
                        Image("closed_lock")
                            .resizable()
                            .position(CGPoint(x: 110, y: -50))
                            .frame(width: 35, height: 60)
                            .zIndex(1)
                    }
                    if (!isRightHigherDrawerTapped)&&(stageCounter == 2){
                        Image("open_lock")
                            .resizable()
                            .position(CGPoint(x: 113, y: -50))
                            .frame(width: 40, height: 60)
                            .zIndex(1)
                    }
                    
                    // Table lock
                    if stageCounter < 3{
                        Image("closed_lock")
                            .resizable()
                            .position(CGPoint(x: 60, y: 50))
                            .frame(width: 35, height: 60)
                            .zIndex(1)
                    }
                    if (!isTableTapped)&&(stageCounter == 3){
                        Image("open_lock")
                            .resizable()
                            .position(CGPoint(x: 62, y: 50))
                            .frame(width: 40, height: 60)
                            .zIndex(1)
                    }
                    
                    // Lower drawer lock
                    if stageCounter < 4{
                        Image("closed_lock")
                            .resizable()
                            .position(CGPoint(x: 103, y: 160))
                            .frame(width: 35, height: 60)
                            .zIndex(1)
                    }
                    if (!isLowerDrawerTapped)&&(stageCounter == 4){
                        Image("open_lock")
                            .resizable()
                            .position(CGPoint(x: 105.5, y: 160))
                            .frame(width: 40, height: 60)
                            .zIndex(1)
                    }
                    
// KITCHEN ITEMS FRIDGE BUTTONS
                    
                    
                    if (stageCounter == 0)&&(fridgeTapCounter%2 != 0){
                        
                        // Fish button
                        Button(action: {
                            //self.isFishTapped = true
                            fishTapCounter += 1
                            currentItemId = 0
                        }) {
                            RoundedRectangle(cornerRadius: 20)
                                .foregroundColor(.clear)
                        }.zIndex(2)
                            .position(CGPoint(x: -135, y: 10))
                            .frame(width: 65, height: 30)
                        
                        // Eggs button
                        Button(action: {
                            eggsTapCounter += 1
                            currentItemId = 1
                        }) {
                            RoundedRectangle(cornerRadius: 20)
                                .foregroundColor(.clear)
                        }.zIndex(2)
                            .position(CGPoint(x: -94, y: 10))
                            .frame(width: 35, height: 30)
                        
                        // Chicken leg button
                        Button(action: {
                            chickenLegTapCounter += 1
                            currentItemId = 2
                        }) {
                            RoundedRectangle(cornerRadius: 20)
                                .foregroundColor(.clear)
                        }.zIndex(2)
                            .position(CGPoint(x: -94, y: 80))
                            .frame(width: 35, height: 50)
                        
                        // Meat button
                        Button(action: {
                            meatTapCounter += 1
                            currentItemId = 3
                        }) {
                            RoundedRectangle(cornerRadius: 20)
                                .foregroundColor(.clear)
                        }.zIndex(2)
                            .position(CGPoint(x: -144, y: 80))
                            .frame(width: 65, height: 30)
                        
                     
                        
                        if (fishTapCounter%2 != 0) && (!isFishCompleted) || (eggsTapCounter%2 != 0) && (!isEggsCompleted) || (chickenLegTapCounter%2 != 0) && (!isChickenLegCompleted) || (meatTapCounter%2 != 0) && (!isMeatCompleted)
                        {
                            if closeTapCounter % 2 == 0 {
                                
                                
                                Image("item name screen resized")
                                    .zIndex(1)
                                    
                                
                                if currentItemId == 0 {
                                    Image(viewModel.kitchenItems[currentItemId].imageName)
                                        .resizable()
                                        .zIndex(2)
                                    // different frame and position for each item
                                        .frame(width: 160, height: 90)
                                        .position(CGPoint(x: 290, y: 230))
                                }
                                else if currentItemId == 1{
                                    Image(viewModel.kitchenItems[currentItemId].imageName)
                                        .resizable()
                                        .zIndex(2)
                                    // different frame and position for each item
                                        .frame(width: 160, height: 110)
                                        .position(CGPoint(x: 280, y: 240))
                                }
                                else if currentItemId == 2{
                                    Image(viewModel.kitchenItems[currentItemId].imageName)
                                        .resizable()
                                        .zIndex(2)
                                    // different frame and position for each item
                                        .frame(width: 140, height: 150)
                                        .position(CGPoint(x: 290, y: 230))
                                }
                                else if currentItemId == 3{
                                    Image(viewModel.kitchenItems[currentItemId].imageName)
                                        .resizable()
                                        .zIndex(2)
                                    // different frame and position for each item
                                        .frame(width: 160, height: 110)
                                        .position(CGPoint(x: 290, y: 230))
                                }
                                
                                TextField("", text: $kitchenItemNameEnglish)
                                    .frame(width: 245, height: 30)
                                    .position(CGPoint(x: 510, y: 191))
                                    .foregroundColor(.white)
                                    .font(.system(size: 30))
                                    .zIndex(2)
                                
                                TextField("", text: $kitchenItemNameItalian)
                                    .frame(width: 245, height: 30)
                                    .position(CGPoint(x: 510, y: 271))
                                    .foregroundColor(.white)
                                    .font(.system(size: 30))
                                    .zIndex(2)
                                     
                                if kitchenItemNameEnglish != viewModel.kitchenItems[currentItemId].nameEnglish{
                                    Text("EN")
                                        .position(CGPoint(x: 285, y: 5))
                                        .foregroundColor(Color("Bug Red"))
                                        .font(.system(size: 36))
                                        .frame(width: 100, height: 100)
                                        .zIndex(2)
                                        .bold()
                                    
                                }else{
                                    Text("EN")
                                        .position(CGPoint(x: 285, y: 5))
                                        .foregroundColor(Color("Flora Green"))
                                        .font(.system(size: 36))
                                        .frame(width: 100, height: 100)
                                        .zIndex(2)
                                        .bold()
                                        .onAppear {
                                            isFieldOneCompleted = true
                                        }
                                }
                                
                                if kitchenItemNameItalian != viewModel.kitchenItems[currentItemId].nameItalian{
                                    Text("IT")
                                        .position(CGPoint(x: 285, y: 92))
                                        .foregroundColor(Color("Bug Red"))
                                        .font(.system(size: 36))
                                        .frame(width: 100, height: 100)
                                        .zIndex(2)
                                        .bold()
                                }else{
                                    Text("IT")
                                        .position(CGPoint(x: 285, y: 92))
                                        .foregroundColor(Color("Flora Green"))
                                        .font(.system(size: 36))
                                        .frame(width: 100, height: 100)
                                        .zIndex(2)
                                        .bold()
                                        .onAppear {
                                            isFieldTwoCompleted = true
                                        }
                                }
                                
                                if !isFieldOneCompleted || !isFieldTwoCompleted
                                {
                                    Button(action: {
                                        //self.isCloseTapped = true
                                        kitchenItemNameEnglish = ""
                                        kitchenItemNameItalian = ""
                                        isFieldOneCompleted = false
                                        isFieldTwoCompleted = false
                                        
                                        closeTapCounter += 2
                                        
                                        if fishTapCounter%2 != 0{
                                            fishTapCounter += 1
                                        }
                                        if eggsTapCounter%2 != 0{
                                            eggsTapCounter += 1
                                        }
                                        if chickenLegTapCounter%2 != 0{
                                            chickenLegTapCounter += 1
                                        }
                                        if meatTapCounter%2 != 0{
                                            meatTapCounter += 1
                                        }
                                        
                                    }) {
                                        Image(systemName: "xmark")
                                            .foregroundColor(.white)
                                            .font(.system(size: 32))
                                            .padding(5)
                                    }
                                    .background(Color("Bug Red"))
                                    .cornerRadius(20)
                                    .frame(width: 300, height: 70)
                                    .position(CGPoint(x: 205, y: 150))
                                    .zIndex(2)
                                }
                                else{
                                    Button(action: {
                                        //self.isCloseTapped = true
                                        kitchenItemNameEnglish = ""
                                        kitchenItemNameItalian = ""
                                        isFieldOneCompleted = false
                                        isFieldTwoCompleted = false
                                        
                                        closeTapCounter += 2
                                        if fishTapCounter%2 != 0{
                                            fishTapCounter += 1
                                            isFishCompleted = true
                                        }
                                        if eggsTapCounter%2 != 0{
                                            eggsTapCounter += 1
                                            isEggsCompleted = true
                                        }
                                        if chickenLegTapCounter%2 != 0{
                                            chickenLegTapCounter += 1
                                            isChickenLegCompleted = true
                                        }
                                        if meatTapCounter%2 != 0{
                                            meatTapCounter += 1
                                            isMeatCompleted = true
                                        }
                                        
// STAGE 0 COMPLETION
                                        if isFishCompleted&&isEggsCompleted&&isChickenLegCompleted&&isMeatCompleted
                                        {
                                            stageCounter += 1
                                        }
                                    }) {
                                        Image(systemName: "checkmark")
                                            .foregroundColor(.white)
                                            .font(.system(size: 32))
                                            .padding(5)
                                    }
                                    .background(Color("Flora Green"))
                                    .cornerRadius(20)
                                    .frame(width: 300, height: 70)
                                    .position(CGPoint(x: 205, y: 150))
                                    .zIndex(2)
                                }
                            }
                        }
                    }
                    
// KITCHEN ITEMS LEFT HIGHER DRAWER BUTTONS
                    
                    if (stageCounter == 1)&&(leftHigherDrawerTapCounter%2 != 0){
                        
                        // Banana button
                        Button(action: {
                            bananaTapCounter += 1
                            currentItemId = 4
                        }) {
                            RoundedRectangle(cornerRadius: 20)
                                .foregroundColor(.clear)
                        }.zIndex(2)
                            .position(CGPoint(x: -20, y: -40))
                            .frame(width: 25, height: 40)
                        
                        // Apple button
                        Button(action: {
                            appleTapCounter += 1
                            currentItemId = 5
                        }) {
                            RoundedRectangle(cornerRadius: 20)
                                .foregroundColor(.clear)
                        }.zIndex(2)
                            .position(CGPoint(x: 30, y: -40))
                            .frame(width: 25, height: 30)
                        
                        if (bananaTapCounter%2 != 0) && (!isBananaCompleted) || (appleTapCounter%2 != 0) && (!isAppleCompleted)
                        {
                            if closeTapCounter % 2 == 0 {

                                Image("item name screen resized")
                                    .zIndex(1)
     
                                if currentItemId == 4 {
                                    Image(viewModel.kitchenItems[currentItemId].imageName)
                                        .resizable()
                                        .zIndex(2)
                                    // different frame and position for each item
                                        .frame(width: 100, height: 150)
                                        .position(CGPoint(x: 290, y: 220))
                                }
                                else if currentItemId == 5{
                                    Image(viewModel.kitchenItems[currentItemId].imageName)
                                        .resizable()
                                        .zIndex(2)
                                    // different frame and position for each item
                                        .frame(width: 120, height: 150)
                                        .position(CGPoint(x: 290, y: 230))
                                }
                                
                                TextField("", text: $kitchenItemNameEnglish)
                                    .frame(width: 245, height: 30)
                                    .position(CGPoint(x: 510, y: 191))
                                    .foregroundColor(.white)
                                    .font(.system(size: 30))
                                    .zIndex(2)
                                
                                TextField("", text: $kitchenItemNameItalian)
                                    .frame(width: 245, height: 30)
                                    .position(CGPoint(x: 510, y: 271))
                                    .foregroundColor(.white)
                                    .font(.system(size: 30))
                                    .zIndex(2)
                                
                                if kitchenItemNameEnglish != viewModel.kitchenItems[currentItemId].nameEnglish{
                                    Text("EN")
                                        .position(CGPoint(x: 285, y: 5))
                                        .foregroundColor(Color("Bug Red"))
                                        .font(.system(size: 36))
                                        .frame(width: 100, height: 100)
                                        .zIndex(2)
                                        .bold()
                                    
                                }else{
                                    Text("EN")
                                        .position(CGPoint(x: 285, y: 5))
                                        .foregroundColor(Color("Flora Green"))
                                        .font(.system(size: 36))
                                        .frame(width: 100, height: 100)
                                        .zIndex(2)
                                        .bold()
                                        .onAppear {
                                            isFieldOneCompleted = true
                                        }
                                }
                                
                                if kitchenItemNameItalian != viewModel.kitchenItems[currentItemId].nameItalian{
                                    Text("IT")
                                        .position(CGPoint(x: 285, y: 92))
                                        .foregroundColor(Color("Bug Red"))
                                        .font(.system(size: 36))
                                        .frame(width: 100, height: 100)
                                        .zIndex(2)
                                        .bold()
                                }else{
                                    Text("IT")
                                        .position(CGPoint(x: 285, y: 92))
                                        .foregroundColor(Color("Flora Green"))
                                        .font(.system(size: 36))
                                        .frame(width: 100, height: 100)
                                        .zIndex(2)
                                        .bold()
                                        .onAppear {
                                            isFieldTwoCompleted = true
                                        }
                                }
                                
                                if !isFieldOneCompleted || !isFieldTwoCompleted
                                {
                                    Button(action: {
                                        //self.isCloseTapped = true
                                        kitchenItemNameEnglish = ""
                                        kitchenItemNameItalian = ""
                                        isFieldOneCompleted = false
                                        isFieldTwoCompleted = false
                                        
                                        closeTapCounter += 2
                                        
                                        if bananaTapCounter%2 != 0{
                                            bananaTapCounter += 1
                                        }
                                        if appleTapCounter%2 != 0{
                                            appleTapCounter += 1
                                        }
                                        
                                    }) {
                                        Image(systemName: "xmark")
                                            .foregroundColor(.white)
                                            .font(.system(size: 32))
                                            .padding(5)
                                    }
                                    .background(Color("Bug Red"))
                                    .cornerRadius(20)
                                    .frame(width: 300, height: 70)
                                    .position(CGPoint(x: 205, y: 150))
                                    .zIndex(2)
                                }
                                else{
                                    Button(action: {
                                        //self.isCloseTapped = true
                                        kitchenItemNameEnglish = ""
                                        kitchenItemNameItalian = ""
                                        isFieldOneCompleted = false
                                        isFieldTwoCompleted = false
                                        
                                        closeTapCounter += 2
                                        
                                        if bananaTapCounter%2 != 0{
                                            bananaTapCounter += 1
                                            isBananaCompleted = true
                                        }
                                        if appleTapCounter%2 != 0{
                                            appleTapCounter += 1
                                            isAppleCompleted = true
                                        }
                                        
// STAGE 1 COMPLETION
                                        if isBananaCompleted&&isAppleCompleted
                                        {
                                            stageCounter += 1
                                        }
                                    }) {
                                        Image(systemName: "checkmark")
                                            .foregroundColor(.white)
                                            .font(.system(size: 32))
                                            .padding(5)
                                    }
                                    .background(Color("Flora Green"))
                                    .cornerRadius(20)
                                    .frame(width: 300, height: 70)
                                    .position(CGPoint(x: 205, y: 150))
                                    .zIndex(2)
                                }
                            }
                        }
                    }
                    
// KITCHEN ITEMS RIGHT HIGHER DRAWER BUTTONS
                    
                    if (stageCounter == 2)&&(rightHigherDrawerTapCounter%2 != 0){
                        
                        // Bread button
                        Button(action: {
                            breadTapCounter += 1
                            currentItemId = 6
                        }) {
                            RoundedRectangle(cornerRadius: 20)
                                .foregroundColor(.clear)
                        }.zIndex(2)
                            .position(CGPoint(x: 100, y: -37))
                            .frame(width: 45, height: 25)
                        
                        // Cookies button
                        Button(action: {
                            cookiesTapCounter += 1
                            currentItemId = 7
                        }) {
                            RoundedRectangle(cornerRadius: 20)
                                .foregroundColor(.clear)
                        }.zIndex(2)
                            .position(CGPoint(x: 130, y: -40))
                            .frame(width: 30, height: 30)
                        
                        if (breadTapCounter%2 != 0) && (!isBreadCompleted) || (cookiesTapCounter%2 != 0) && (!isCookiesCompleted)
                        {
                            if closeTapCounter % 2 == 0 {
                                
                                Image("item name screen resized")
                                    .zIndex(1)
                                
                                if currentItemId == 6{
                                    Image(viewModel.kitchenItems[currentItemId].imageName)
                                        .resizable()
                                        .zIndex(2)
                                    // different frame and position for each item
                                        .frame(width: 150, height: 90)
                                        .position(CGPoint(x: 285, y: 235))
                                }
                                else if currentItemId == 7{
                                    Image(viewModel.kitchenItems[currentItemId].imageName)
                                        .resizable()
                                        .zIndex(2)
                                    // different frame and position for each item
                                        .frame(width: 128, height: 130)
                                        .position(CGPoint(x: 290, y: 220))
                                }
                                
                                TextField("", text: $kitchenItemNameEnglish)
                                    .frame(width: 245, height: 30)
                                    .position(CGPoint(x: 510, y: 191))
                                    .foregroundColor(.white)
                                    .font(.system(size: 30))
                                    .zIndex(2)
                                
                                TextField("", text: $kitchenItemNameItalian)
                                    .frame(width: 245, height: 30)
                                    .position(CGPoint(x: 510, y: 271))
                                    .foregroundColor(.white)
                                    .font(.system(size: 30))
                                    .zIndex(2)
                                
                                if kitchenItemNameEnglish != viewModel.kitchenItems[currentItemId].nameEnglish{
                                    Text("EN")
                                        .position(CGPoint(x: 285, y: 5))
                                        .foregroundColor(Color("Bug Red"))
                                        .font(.system(size: 36))
                                        .frame(width: 100, height: 100)
                                        .zIndex(2)
                                        .bold()
                                    
                                }else{
                                    Text("EN")
                                        .position(CGPoint(x: 285, y: 5))
                                        .foregroundColor(Color("Flora Green"))
                                        .font(.system(size: 36))
                                        .frame(width: 100, height: 100)
                                        .zIndex(2)
                                        .bold()
                                        .onAppear {
                                            isFieldOneCompleted = true
                                        }
                                }
                                
                                if kitchenItemNameItalian != viewModel.kitchenItems[currentItemId].nameItalian{
                                    Text("IT")
                                        .position(CGPoint(x: 285, y: 92))
                                        .foregroundColor(Color("Bug Red"))
                                        .font(.system(size: 36))
                                        .frame(width: 100, height: 100)
                                        .zIndex(2)
                                        .bold()
                                }else{
                                    Text("IT")
                                        .position(CGPoint(x: 285, y: 92))
                                        .foregroundColor(Color("Flora Green"))
                                        .font(.system(size: 36))
                                        .frame(width: 100, height: 100)
                                        .zIndex(2)
                                        .bold()
                                        .onAppear {
                                            isFieldTwoCompleted = true
                                        }
                                }
                                
                                if !isFieldOneCompleted || !isFieldTwoCompleted
                                {
                                    Button(action: {
                                        //self.isCloseTapped = true
                                        kitchenItemNameEnglish = ""
                                        kitchenItemNameItalian = ""
                                        isFieldOneCompleted = false
                                        isFieldTwoCompleted = false
                                        
                                        closeTapCounter += 2
                                        
                                        if breadTapCounter%2 != 0{
                                            breadTapCounter += 1
                                        }
                                        if cookiesTapCounter%2 != 0{
                                            cookiesTapCounter += 1
                                        }
                                        
                                    }) {
                                        Image(systemName: "xmark")
                                            .foregroundColor(.white)
                                            .font(.system(size: 32))
                                            .padding(5)
                                    }
                                    .background(Color("Bug Red"))
                                    .cornerRadius(20)
                                    .frame(width: 300, height: 70)
                                    .position(CGPoint(x: 205, y: 150))
                                    .zIndex(2)
                                }
                                else{
                                    Button(action: {
                                        kitchenItemNameEnglish = ""
                                        kitchenItemNameItalian = ""
                                        isFieldOneCompleted = false
                                        isFieldTwoCompleted = false
                                        
                                        closeTapCounter += 2
                                        
                                        if breadTapCounter%2 != 0{
                                            breadTapCounter += 1
                                            isBreadCompleted = true
                                        }
                                        if cookiesTapCounter%2 != 0{
                                            cookiesTapCounter += 1
                                            isCookiesCompleted = true
                                        }
                                        
// STAGE 2 COMPLETION
                                        if isBreadCompleted&&isCookiesCompleted
                                        {
                                            stageCounter += 1
                                        }
                                    }) {
                                        Image(systemName: "checkmark")
                                            .foregroundColor(.white)
                                            .font(.system(size: 32))
                                            .padding(5)
                                    }
                                    .background(Color("Flora Green"))
                                    .cornerRadius(20)
                                    .frame(width: 300, height: 70)
                                    .position(CGPoint(x: 205, y: 150))
                                    .zIndex(2)
                                }
                            }
                        }
                    }
                    
// KITCHEN ITEMS TABLE BUTTONS
                    
                    if (stageCounter == 3)&&(isTableTapped) {
                        
                        // Towel button
                        Button(action: {
                            towelTapCounter += 1
                            currentItemId = 8
                        }) {
                            RoundedRectangle(cornerRadius: 20)
                                .foregroundColor(.clear)
                        }.zIndex(2)
                            .position(CGPoint(x: 15, y: 45))
                            .frame(width: 25, height: 60)
                        
                        // Spoons button
                        Button(action: {
                            spoonsTapCounter += 1
                            currentItemId = 9
                        }) {
                            RoundedRectangle(cornerRadius: 20)
                                .foregroundColor(.clear)
                        }.zIndex(2)
                            .position(CGPoint(x: 75, y: 50))
                            .frame(width: 35, height: 60)
                        
                        // Whisk button
                        Button(action: {
                            whiskTapCounter += 1
                            currentItemId = 10
                        }) {
                            RoundedRectangle(cornerRadius: 20)
                                .foregroundColor(.clear)
                        }.zIndex(2)
                            .position(CGPoint(x: 90, y: 55))
                            .frame(width: 15, height: 60)
                        
                        // Books button
                        Button(action: {
                            booksTapCounter += 1
                            currentItemId = 11
                        }) {
                            RoundedRectangle(cornerRadius: 20)
                                .foregroundColor(.clear)
                        }.zIndex(2)
                            .position(CGPoint(x: 145, y: 80))
                            .frame(width: 55, height: 50)
                        
                        if (towelTapCounter%2 != 0) && (!isTowelCompleted) || (spoonsTapCounter%2 != 0) && (!isSpoonsCompleted) || (whiskTapCounter%2 != 0) && (!isWhiskCompleted) || (booksTapCounter%2 != 0) && (!isBooksCompleted)
                        {
                            if closeTapCounter % 2 == 0 {
                                
                                Image("item name screen resized")
                                    .zIndex(1)
                                
                                if currentItemId == 8{
                                    Image(viewModel.kitchenItems[currentItemId].imageName)
                                        .resizable()
                                        .zIndex(2)
                                    // different frame and position for each item
                                        .frame(width: 140, height: 140)
                                        .position(CGPoint(x: 290, y: 230))
                                }
                                else if currentItemId == 9{
                                    Image(viewModel.kitchenItems[currentItemId].imageName)
                                        .resizable()
                                        .zIndex(2)
                                    // different frame and position for each item
                                        .frame(width: 110, height: 130)
                                        .position(CGPoint(x: 275, y: 230))
                                }
                                else if currentItemId == 10{
                                    Image(viewModel.kitchenItems[currentItemId].imageName)
                                        .resizable()
                                        .zIndex(2)
                                    // different frame and position for each item
                                        .frame(width: 75, height: 130)
                                        .position(CGPoint(x: 295, y: 230))
                                }
                                else if currentItemId == 11{
                                    Image(viewModel.kitchenItems[currentItemId].imageName)
                                        .resizable()
                                        .zIndex(2)
                                    // different frame and position for each item
                                        .frame(width: 140, height: 130)
                                        .position(CGPoint(x: 285, y: 230))
                                }
                                
                                TextField("", text: $kitchenItemNameEnglish)
                                    .frame(width: 245, height: 30)
                                    .position(CGPoint(x: 510, y: 191))
                                    .foregroundColor(.white)
                                    .font(.system(size: 30))
                                    .zIndex(2)
                                
                                TextField("", text: $kitchenItemNameItalian)
                                    .frame(width: 245, height: 30)
                                    .position(CGPoint(x: 510, y: 271))
                                    .foregroundColor(.white)
                                    .font(.system(size: 30))
                                    .zIndex(2)
                                
                                if kitchenItemNameEnglish != viewModel.kitchenItems[currentItemId].nameEnglish{
                                    Text("EN")
                                        .position(CGPoint(x: 285, y: 5))
                                        .foregroundColor(Color("Bug Red"))
                                        .font(.system(size: 36))
                                        .frame(width: 100, height: 100)
                                        .zIndex(2)
                                        .bold()
                                    
                                }else{
                                    Text("EN")
                                        .position(CGPoint(x: 285, y: 5))
                                        .foregroundColor(Color("Flora Green"))
                                        .font(.system(size: 36))
                                        .frame(width: 100, height: 100)
                                        .zIndex(2)
                                        .bold()
                                        .onAppear {
                                            isFieldOneCompleted = true
                                        }
                                }
                                
                                if kitchenItemNameItalian != viewModel.kitchenItems[currentItemId].nameItalian{
                                    Text("IT")
                                        .position(CGPoint(x: 285, y: 92))
                                        .foregroundColor(Color("Bug Red"))
                                        .font(.system(size: 36))
                                        .frame(width: 100, height: 100)
                                        .zIndex(2)
                                        .bold()
                                }else{
                                    Text("IT")
                                        .position(CGPoint(x: 285, y: 92))
                                        .foregroundColor(Color("Flora Green"))
                                        .font(.system(size: 36))
                                        .frame(width: 100, height: 100)
                                        .zIndex(2)
                                        .bold()
                                        .onAppear {
                                            isFieldTwoCompleted = true
                                        }
                                }
                                
                                if !isFieldOneCompleted || !isFieldTwoCompleted
                                {
                                    Button(action: {
                                        //self.isCloseTapped = true
                                        kitchenItemNameEnglish = ""
                                        kitchenItemNameItalian = ""
                                        isFieldOneCompleted = false
                                        isFieldTwoCompleted = false
                                        
                                        closeTapCounter += 2
                                        
                                        if towelTapCounter%2 != 0{
                                            towelTapCounter += 1
                                        }
                                        if spoonsTapCounter%2 != 0{
                                            spoonsTapCounter += 1
                                        }
                                        if whiskTapCounter%2 != 0{
                                            whiskTapCounter += 1
                                        }
                                        if booksTapCounter%2 != 0{
                                            booksTapCounter += 1
                                        }
                                        
                                    }) {
                                        Image(systemName: "xmark")
                                            .foregroundColor(.white)
                                            .font(.system(size: 32))
                                            .padding(5)
                                    }
                                    .background(Color("Bug Red"))
                                    .cornerRadius(20)
                                    .frame(width: 300, height: 70)
                                    .position(CGPoint(x: 205, y: 150))
                                    .zIndex(2)
                                }
                                else{
                                    Button(action: {
                                        kitchenItemNameEnglish = ""
                                        kitchenItemNameItalian = ""
                                        isFieldOneCompleted = false
                                        isFieldTwoCompleted = false
                                        
                                        closeTapCounter += 2
                                        
                                        if towelTapCounter%2 != 0{
                                            towelTapCounter += 1
                                            isTowelCompleted = true
                                        }
                                        if spoonsTapCounter%2 != 0{
                                            spoonsTapCounter += 1
                                            isSpoonsCompleted = true
                                        }
                                        if whiskTapCounter%2 != 0{
                                            whiskTapCounter += 1
                                            isWhiskCompleted = true
                                        }
                                        if booksTapCounter%2 != 0{
                                            booksTapCounter += 1
                                            isBooksCompleted = true
                                        }
                                        
                                        // STAGE 2 COMPLETION
                                        if isTowelCompleted&&isSpoonsCompleted&&isWhiskCompleted&&isBooksCompleted
                                        {
                                            stageCounter += 1
                                        }
                                    }) {
                                        Image(systemName: "checkmark")
                                            .foregroundColor(.white)
                                            .font(.system(size: 32))
                                            .padding(5)
                                    }
                                    .background(Color("Flora Green"))
                                    .cornerRadius(20)
                                    .frame(width: 300, height: 70)
                                    .position(CGPoint(x: 205, y: 150))
                                    .zIndex(2)
                                }
                            }
                        }
                    }
// KITCHEN ITEMS LOWER DRAWER BUTTONS
                    
                    if (stageCounter == 4)&&(lowerDrawerTapCounter%2 != 0){
                        
                        // Wine button
                        Button(action: {
                            wineTapCounter += 1
                            currentItemId = 12
                        }) {
                            RoundedRectangle(cornerRadius: 20)
                                .foregroundColor(.clear)
                        }.zIndex(2)
                            .position(CGPoint(x: 45, y: 170))
                            .frame(width: 20, height: 50)
                        
                        // Glass button
                        Button(action: {
                            glassTapCounter += 1
                            currentItemId = 13
                        }) {
                            RoundedRectangle(cornerRadius: 20)
                                .foregroundColor(.clear)
                        }.zIndex(2)
                            .position(CGPoint(x: 75, y: 170))
                            .frame(width: 20, height: 20)
                        
                        // Pepper button
                        Button(action: {
                            pepperTapCounter += 1
                            currentItemId = 14
                        }) {
                            RoundedRectangle(cornerRadius: 20)
                                .foregroundColor(.clear)
                        }.zIndex(2)
                            .position(CGPoint(x: 110, y: 175))
                            .frame(width: 25, height: 30)
                        
                        // Carrot button
                        Button(action: {
                            carrotTapCounter += 1
                            currentItemId = 15
                        }) {
                            RoundedRectangle(cornerRadius: 20)
                                .foregroundColor(.clear)
                        }.zIndex(2)
                            .position(CGPoint(x: 155, y: 180))
                            .frame(width: 40, height: 50)
                        
                        if (wineTapCounter%2 != 0) && (!isWineCompleted) || (glassTapCounter%2 != 0) && (!isGlassCompleted) || (pepperTapCounter%2 != 0) && (!isPepperCompleted) || (carrotTapCounter%2 != 0) && (!isCarrotCompleted)
                        {
                            if closeTapCounter % 2 == 0 {

                                Image("item name screen resized")
                                    .zIndex(1)
     
                                if currentItemId == 12{
                                    Image(viewModel.kitchenItems[currentItemId].imageName)
                                        .resizable()
                                        .zIndex(2)
                                    // different frame and position for each item
                                        .frame(width: 70, height: 150)
                                        .position(CGPoint(x: 290, y: 230))
                                }
                                else if currentItemId == 13{
                                    Image(viewModel.kitchenItems[currentItemId].imageName)
                                        .resizable()
                                        .zIndex(2)
                                    // different frame and position for each item
                                        .frame(width: 100, height: 150)
                                        .position(CGPoint(x: 280, y: 230))
                                }
                                else if currentItemId == 14{
                                    Image(viewModel.kitchenItems[currentItemId].imageName)
                                        .resizable()
                                        .zIndex(2)
                                    // different frame and position for each item
                                        .frame(width: 100, height: 110)
                                        .position(CGPoint(x: 290, y: 230))
                                }
                                else if currentItemId == 15{
                                    Image(viewModel.kitchenItems[currentItemId].imageName)
                                        .resizable()
                                        .zIndex(2)
                                    // different frame and position for each item
                                        .frame(width: 130, height: 150)
                                        .position(CGPoint(x: 280, y: 220))
                                }
                                
                                TextField("", text: $kitchenItemNameEnglish)
                                    .frame(width: 245, height: 30)
                                    .position(CGPoint(x: 510, y: 191))
                                    .foregroundColor(.white)
                                    .font(.system(size: 30))
                                    .zIndex(2)
                                
                                TextField("", text: $kitchenItemNameItalian)
                                    .frame(width: 245, height: 30)
                                    .position(CGPoint(x: 510, y: 271))
                                    .foregroundColor(.white)
                                    .font(.system(size: 30))
                                    .zIndex(2)
                                
                                if kitchenItemNameEnglish != viewModel.kitchenItems[currentItemId].nameEnglish{
                                    Text("EN")
                                        .position(CGPoint(x: 285, y: 5))
                                        .foregroundColor(Color("Bug Red"))
                                        .font(.system(size: 36))
                                        .frame(width: 100, height: 100)
                                        .zIndex(2)
                                        .bold()
                                    
                                }else{
                                    Text("EN")
                                        .position(CGPoint(x: 285, y: 5))
                                        .foregroundColor(Color("Flora Green"))
                                        .font(.system(size: 36))
                                        .frame(width: 100, height: 100)
                                        .zIndex(2)
                                        .bold()
                                        .onAppear {
                                            isFieldOneCompleted = true
                                        }
                                }
                                
                                if kitchenItemNameItalian != viewModel.kitchenItems[currentItemId].nameItalian{
                                    Text("IT")
                                        .position(CGPoint(x: 285, y: 92))
                                        .foregroundColor(Color("Bug Red"))
                                        .font(.system(size: 36))
                                        .frame(width: 100, height: 100)
                                        .zIndex(2)
                                        .bold()
                                }else{
                                    Text("IT")
                                        .position(CGPoint(x: 285, y: 92))
                                        .foregroundColor(Color("Flora Green"))
                                        .font(.system(size: 36))
                                        .frame(width: 100, height: 100)
                                        .zIndex(2)
                                        .bold()
                                        .onAppear {
                                            isFieldTwoCompleted = true
                                        }
                                }
                                
                                if !isFieldOneCompleted || !isFieldTwoCompleted
                                {
                                    Button(action: {
                                        //self.isCloseTapped = true
                                        kitchenItemNameEnglish = ""
                                        kitchenItemNameItalian = ""
                                        isFieldOneCompleted = false
                                        isFieldTwoCompleted = false
                                        
                                        closeTapCounter += 2
                                        
                                        if wineTapCounter%2 != 0{
                                            wineTapCounter += 1
                                        }
                                        if glassTapCounter%2 != 0{
                                            glassTapCounter += 1
                                        }
                                        if pepperTapCounter%2 != 0{
                                            pepperTapCounter += 1
                                        }
                                        if carrotTapCounter%2 != 0{
                                            carrotTapCounter += 1
                                        }
                                        
                                    }) {
                                        Image(systemName: "xmark")
                                            .foregroundColor(.white)
                                            .font(.system(size: 32))
                                            .padding(5)
                                    }
                                    .background(Color("Bug Red"))
                                    .cornerRadius(20)
                                    .frame(width: 300, height: 70)
                                    .position(CGPoint(x: 205, y: 150))
                                    .zIndex(2)
                                }
                                else{
                                    Button(action: {
                                        //self.isCloseTapped = true
                                        kitchenItemNameEnglish = ""
                                        kitchenItemNameItalian = ""
                                        isFieldOneCompleted = false
                                        isFieldTwoCompleted = false
                                        
                                        closeTapCounter += 2
                                        
                                        if wineTapCounter%2 != 0{
                                            wineTapCounter += 1
                                            isWineCompleted = true
                                        }
                                        if glassTapCounter%2 != 0{
                                            glassTapCounter += 1
                                            isGlassCompleted = true
                                        }
                                        if pepperTapCounter%2 != 0{
                                            pepperTapCounter += 1
                                            isPepperCompleted = true
                                        }
                                        if carrotTapCounter%2 != 0{
                                            carrotTapCounter += 1
                                            isCarrotCompleted = true
                                        }
                                        
// STAGE 4 COMPLETION
                                        if isWineCompleted&&isGlassCompleted&&isPepperCompleted&&isCarrotCompleted
                                        {
                                            stageCounter += 1
                                        }
                                    }) {
                                        Image(systemName: "checkmark")
                                            .foregroundColor(.white)
                                            .font(.system(size: 32))
                                            .padding(5)
                                    }
                                    .background(Color("Flora Green"))
                                    .cornerRadius(20)
                                    .frame(width: 300, height: 70)
                                    .position(CGPoint(x: 205, y: 150))
                                    .zIndex(2)
                                }
                            }
                        }
                    }
                    
// GAME OVER SCREEN
                    if stageCounter == 5{
                        Image("home button")
                            .resizable()
                            .zIndex(2)
                            .frame(width: 500, height: 300)
                            .position(CGPoint(x: 460, y: 240))
                        RoundedRectangle(cornerRadius: 40)
                            .foregroundColor(Color("LightBrownLowOpacity"))
                            .frame(width: 450, height: 250)
                            .position(CGPoint(x: 460, y: 240))
                            .zIndex(2)
                        Text("Congratulations!")
                            .position(CGPoint(x: 150, y: -42))
                            .foregroundColor(.white)
                            .font(.system(size: 32))
                            .frame(width: 300, height: 100)
                            .zIndex(2)
                            .bold()
                        Text("Congratulazioni!")
                            .position(CGPoint(x: 150, y: 0))
                            .foregroundColor(.white)
                            .font(.system(size: 32))
                            .frame(width: 300, height: 100)
                            .zIndex(2)
                            .bold()
                        Image("flower")
                            .resizable()
                            .zIndex(2)
                            .frame(width: 130, height: 140)
                            .position(CGPoint(x: 460, y: 270))
                            
                    }
                }
            }
        }.navigationBarBackButtonHidden(true)
    }
}

#Preview {
    KitchenView()
}
