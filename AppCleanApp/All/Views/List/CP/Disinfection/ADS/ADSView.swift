//
//  ADSView.swift
//  AppCleanApp
//
//  Created by IGOR on 08/01/2025.
//

import SwiftUI

struct ADSView: View {

    @Environment(\.presentationMode) var router
    
    var body: some View {
        
        ZStack {
            
            Color("bg")
                .ignoresSafeArea()
            
            VStack {
                
                ZStack {
                    
                    Text("Antibacterial Disinfectant Spray")
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
                        
                        Image("d4")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                        
                        Text("Antibacterial Disinfectant Spray")
                            .foregroundColor(.black)
                            .font(.system(size: 20, weight: .semibold))
                        
                        Text("""

Antibacterial Disinfectant Spray is a fast-acting solution designed to eliminate 99.9% of germs and bacteria from various surfaces. This product is ideal for high-touch areas such as countertops, doorknobs, light switches, and bathroom fixtures. It leaves surfaces clean, sanitized, and safe for everyday use.
The spray is easy to apply and does not require rinsing, making it convenient for both residential and professional cleaning tasks. It also has a refreshing scent that neutralizes odors, leaving the space feeling fresh.

""")
                        .foregroundColor(.gray)
                        .font(.system(size: 14, weight: .regular))
                        
                        Text("How to use")
                            .foregroundColor(.black)
                            .font(.system(size: 16, weight: .semibold))
                        
                        Text("""

Spray directly onto the surface, ensuring full coverage. Let it sit for a few seconds to a minute, then wipe clean with a dry or damp cloth. For disinfection, allow the surface to air dry without wiping.

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
    ADSView()
}
