//
//  SV2.swift
//  AppCleanApp
//
//  Created by IGOR on 08/01/2025.
//

import SwiftUI

struct SV2: View {
    var body: some View {

        ZStack {
            
            Color("bg")
                .ignoresSafeArea()
            
            VStack {
                
                Text("Organize tasks with ease")
                    .foregroundColor(.black)
                    .font(.system(size: 30, weight: .bold))
                    .multilineTextAlignment(.center)
                    .frame(width: 300)
                
                Spacer()
                
                Image("s2")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding(.horizontal, 100)
                
                Spacer()
                
                Text("Create cleaning task lists, mark completed items, and track your progress")
                    .foregroundColor(.black)
                    .font(.system(size: 22, weight: .semibold))
                    .multilineTextAlignment(.center)
                    .padding(.bottom)
                
                NavigationLink(destination: {
                    
                    SV3()
                        .navigationBarBackButtonHidden()
                    
                }, label: {
                    
                    Text("Next")
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
    SV2()
}
