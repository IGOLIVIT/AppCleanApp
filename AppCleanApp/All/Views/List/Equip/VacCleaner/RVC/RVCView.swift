//
//  RVCView.swift
//  AppCleanApp
//
//  Created by IGOR on 08/01/2025.
//

import SwiftUI

struct RVCView: View {

    @Environment(\.presentationMode) var router
    
    var body: some View {
        
        ZStack {
            
            Color("bg")
                .ignoresSafeArea()
            
            VStack {
                
                ZStack {
                    
                    Text("Robot Vacuum Cleaner")
                        .foregroundColor(.black)
                        .font(.system(size: 18, weight: .semibold))
                    
                    HStack {
                        
                        Button(action: {
                            
                            router.wrappedValue.dismiss()
                            
                        }, label: {
                            
                            Image(systemName: "chevron.left")
                                .foregroundColor(.black)
                                .font(.system(size: 18, weight: .medium))
                        })
                        
                        Spacer()
                    }
                }
                .padding(.bottom, 30)
                
                ScrollView(.vertical, showsIndicators: false) {
                    
                    VStack(alignment: .leading, spacing: 8) {
                        
                        Image("vc10")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                        
                        Text("Robot Vacuum Cleaner")
                            .foregroundColor(.black)
                            .font(.system(size: 20, weight: .semibold))
                        
                        Text("""

The Robot Vacuum Cleaner is a smart, hands-free device designed to simplify daily cleaning tasks. With advanced navigation systems, it can efficiently clean floors, avoiding obstacles and reaching under furniture. It works well on various surfaces, including tile, wood, and low-pile carpets.

""")
                        .foregroundColor(.gray)
                        .font(.system(size: 14, weight: .regular))
                        
                        Text("How to use")
                            .foregroundColor(.black)
                            .font(.system(size: 16, weight: .semibold))
                        
                        Text("""

Set up the vacuum using the mobile app or control buttons. Schedule cleaning times and let the robot do the work. Empty the dustbin regularly for optimal performance.

""")
                        .foregroundColor(.gray)
                        .font(.system(size: 14, weight: .regular))
                    }
                    .padding()
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .background(RoundedRectangle(cornerRadius: 15).fill(Color("bg2")))
                }
            }
            .padding()
        }
    }
}

#Preview {
    RVCView()
}
