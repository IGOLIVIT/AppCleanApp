//
//  SV6.swift
//  AppCleanApp
//
//  Created by IGOR on 08/01/2025.
//

import SwiftUI

struct SV6: View {
    
    @AppStorage("status") var status: Bool = false
    
    var body: some View {

        ZStack {
            
            Color("bg")
                .ignoresSafeArea()
            
            VStack {
                
                Text("Ready to get to work?")
                    .foregroundColor(.black)
                    .font(.system(size: 30, weight: .bold))
                    .multilineTextAlignment(.center)
                    .frame(width: 300)
                
                Spacer()
                
                Image("s6")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding(.horizontal, 50)
                
                Spacer()
                
                Text("Launch the app, plan your tasks, and impress clients with perfect cleanliness!")
                    .foregroundColor(.black)
                    .font(.system(size: 22, weight: .semibold))
                    .multilineTextAlignment(.center)
                    .padding(.bottom)
                
                Button(action: {
                    
                    status = true
                    
                }, label: {
                    
                    Text("Start Using")
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
    SV6()
}
