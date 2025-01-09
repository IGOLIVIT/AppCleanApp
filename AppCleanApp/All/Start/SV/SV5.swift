//
//  SV5.swift
//  AppCleanApp
//
//  Created by IGOR on 08/01/2025.
//

import SwiftUI

struct SV5: View {
    var body: some View {

        ZStack {
            
            Color("bg")
                .ignoresSafeArea()
            
            VStack {
                
                Text("Discover Essential Cleaning Supplies and Tools")
                    .foregroundColor(.black)
                    .font(.system(size: 30, weight: .bold))
                    .multilineTextAlignment(.center)
                    .frame(width: 300)
                
                Spacer()
                
                Image("s5")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding(.horizontal, 70)
                
                Spacer()
                
                Text("Access a comprehensive catalog of cleaning products and equipment directly in the app")
                    .foregroundColor(.black)
                    .font(.system(size: 22, weight: .semibold))
                    .multilineTextAlignment(.center)
                    .padding(.bottom)
                
                NavigationLink(destination: {
                    
                    SV6()
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
    SV5()
}
