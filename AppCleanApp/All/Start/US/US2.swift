//
//  US2.swift
//  AppCleanApp
//
//  Created by IGOR on 27/01/2025.
//

import SwiftUI

struct US2: View {
    
    @AppStorage("status") var status = true
    
    var body: some View {

        ZStack {
            
            Color("nbg")
                .ignoresSafeArea()
            
            VStack {
                
                Image("bab")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding(.top, 100)
                
                Spacer()
            }
            .padding()
            
            VStack(alignment: .leading) {
                
                Spacer()
                
                Text("Play and win with")
                    .foregroundColor(.white)
                    .font(.system(size: 34, weight: .bold))
                
                Text("Sweet Bonanza! 🍭")
                    .foregroundColor(.yellow)
                    .font(.system(size: 34, weight: .bold))
                    .padding(.bottom)
                
                Text("Don't miss the opportunity to activate free spins and multiply your winnings! Ready for sweet victories? Start playing and enjoy!")
                    .foregroundColor(.white)
                    .font(.system(size: 18, weight: .regular))
                    .padding(.bottom, 100)
                
                HStack {
                    
                    Spacer()
                    
                    Button(action: {
                        
                        status = true
                        
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
    US2()
}
