//
//  ABDView.swift
//  AppCleanApp
//
//  Created by IGOR on 08/01/2025.
//

import SwiftUI

struct ABDView: View {

    @Environment(\.presentationMode) var router
    
    var body: some View {
        
        ZStack {
            
            Color("bg")
                .ignoresSafeArea()
            
            VStack {
                
                ZStack {
                    
                    Text("Alcohol-Based Disinfectant")
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
                        
                        Image("d1")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                        
                        Text("Alcohol-Based Disinfectant")
                            .foregroundColor(.black)
                            .font(.system(size: 20, weight: .semibold))
                        
                        Text("""

Alcohol-Based Disinfectant is a quick-drying solution ideal for sanitizing electronics, glass surfaces, and areas sensitive to moisture. With its high alcohol content, it rapidly evaporates, leaving no residue behind while killing harmful bacteria and viruses.
This product is perfect for cleaning smartphones, tablets, keyboards, and other gadgets, as well as mirrors and windows. Its portable packaging also makes it convenient for on-the-go disinfection.

""")
                        .foregroundColor(.gray)
                        .font(.system(size: 14, weight: .regular))
                        
                        Text("How to use")
                            .foregroundColor(.black)
                            .font(.system(size: 16, weight: .semibold))
                        
                        Text("""

Spray directly onto the surface or onto a microfiber cloth and wipe clean. For electronics, ensure the device is turned off before application. Allow the surface to air dry for optimal results.

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
    ABDView()
}
