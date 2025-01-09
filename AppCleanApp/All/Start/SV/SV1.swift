//
//  SV1.swift
//  AppCleanApp
//
//  Created by IGOR on 08/01/2025.
//

import SwiftUI

struct SV1: View {
    var body: some View {

        ZStack {
            
            Color("bg")
                .ignoresSafeArea()
            
            VStack {
                
                Text("Your assistant for professional cleaning and task management")
                    .foregroundColor(.black)
                    .font(.system(size: 30, weight: .bold))
                    .multilineTextAlignment(.center)
                    .frame(width: 300)
                
                Spacer()
                
                Image("sq")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding(.horizontal, 50)
                
                Spacer()
                
                NavigationLink(destination: {
                    
                    SV2()
                        .navigationBarBackButtonHidden()
                    
                }, label: {
                    
                    Text("Start")
                        .foregroundColor(.white)
                        .font(.system(size: 16, weight: .semibold))
                        .frame(maxWidth: .infinity)
                        .frame(height: 50)
                        .background(RoundedRectangle(cornerRadius: 30).fill(Color("prim")))
                })
                .padding(.bottom)
            }
            .padding()
        }
    }
}

#Preview {
    SV1()
}
