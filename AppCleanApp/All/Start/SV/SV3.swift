//
//  SV3.swift
//  AppCleanApp
//
//  Created by IGOR on 08/01/2025.
//

import SwiftUI

struct SV3: View {
    var body: some View {

        ZStack {
            
            Color("bg")
                .ignoresSafeArea()
            
            VStack {
                
                Text("Keep all your clients organized")
                    .foregroundColor(.black)
                    .font(.system(size: 30, weight: .bold))
                    .multilineTextAlignment(.center)
                    .frame(width: 300)
                
                Spacer()
                
                Image("s3")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding(.horizontal, 100)
                
                Spacer()
                
                Text("Store client information, their preferences, and order history")
                    .foregroundColor(.black)
                    .font(.system(size: 22, weight: .semibold))
                    .multilineTextAlignment(.center)
                    .padding(.bottom)
                
                NavigationLink(destination: {
                    
                    SV4()
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
    SV3()
}
