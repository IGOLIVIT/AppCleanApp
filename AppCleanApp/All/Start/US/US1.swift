//
//  US1.swift
//  AppCleanApp
//
//  Created by IGOR on 27/01/2025.
//

import SwiftUI

struct US1: View {
    var body: some View {

        ZStack {
            
            Color("nbg")
                .ignoresSafeArea()
            
            VStack {
                
                Image("konf")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                
                Spacer()
            }
            .padding()
            
            VStack(alignment: .leading) {
                
                Spacer()
                
                Text("Welcome to")
                    .foregroundColor(.white)
                    .font(.system(size: 34, weight: .bold))
                
                Text("Sweet Bonanza! 🍭")
                    .foregroundColor(.yellow)
                    .font(.system(size: 34, weight: .bold))
                    .padding(.bottom)
                
                Text("Get ready for an exciting journey into the world of sweets! In this game you are waiting for brightly colored fruits, tasty candies and generous bonuses.")
                    .foregroundColor(.white)
                    .font(.system(size: 18, weight: .regular))
                    .padding(.bottom, 100)
                
                HStack {
                    
                    Spacer()
                    
                    NavigationLink(destination: {
                        
                        US2()
                            .navigationBarBackButtonHidden()
                        
                    }, label: {
                        
                        Text("Next")
                            .foregroundColor(.white)
                            .font(.system(size: 20, weight: .medium))
                    })
                }
            }
            .padding()
        }
    }
}

#Preview {
    US1()
}
