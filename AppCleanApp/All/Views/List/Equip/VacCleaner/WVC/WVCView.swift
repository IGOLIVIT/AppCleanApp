//
//  WVCView.swift
//  AppCleanApp
//
//  Created by IGOR on 08/01/2025.
//

import SwiftUI

struct WVCView: View {

    @Environment(\.presentationMode) var router
    
    var body: some View {
        
        ZStack {
            
            Color("bg")
                .ignoresSafeArea()
            
            VStack {
                
                ZStack {
                    
                    Text("Wet Vacuum Cleaner")
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
                        
                        Image("vc1")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                        
                        Text("Wet Vacuum Cleaner")
                            .foregroundColor(.black)
                            .font(.system(size: 20, weight: .semibold))
                        
                        Text("""

The Wet Vacuum Cleaner is a versatile tool designed for deep cleaning tasks. It can handle both dry debris and liquid spills, making it ideal for cleaning carpets, hard floors, and upholstery. Its powerful suction removes dirt and grime, while the integrated water spray function ensures thorough cleaning of stubborn stains.

""")
                        .foregroundColor(.gray)
                        .font(.system(size: 14, weight: .regular))
                        
                        Text("How to use")
                            .foregroundColor(.black)
                            .font(.system(size: 16, weight: .semibold))
                        
                        Text("""

Fill the water tank with cleaning solution, turn on the vacuum, and move it slowly over the surface to clean. Empty the tank and rinse after use.

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
    WVCView()
}
