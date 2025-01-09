//
//  CBDView.swift
//  AppCleanApp
//
//  Created by IGOR on 08/01/2025.
//

import SwiftUI

struct CBDView: View {

    @Environment(\.presentationMode) var router
    
    var body: some View {
        
        ZStack {
            
            Color("bg")
                .ignoresSafeArea()
            
            VStack {
                
                ZStack {
                    
                    Text("Chlorine-Based Disinfectant")
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
                        
                        Image("d7")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                        
                        Text("Chlorine-Based Disinfectant")
                            .foregroundColor(.black)
                            .font(.system(size: 20, weight: .semibold))
                        
                        Text("""

Chlorine-Based Disinfectant is a powerful cleaning agent that provides thorough disinfection for hard surfaces. This product is highly effective against bacteria, viruses, and fungi, making it suitable for bathrooms, kitchens, and industrial areas. It is especially useful for cleaning tiles, sinks, and other water-resistant surfaces.
The formula is strong yet versatile, ensuring proper sanitation in areas requiring the highest levels of cleanliness. However, it should be used with caution on delicate surfaces or in poorly ventilated spaces.

""")
                        .foregroundColor(.gray)
                        .font(.system(size: 14, weight: .regular))
                        
                        Text("How to use")
                            .foregroundColor(.black)
                            .font(.system(size: 16, weight: .semibold))
                        
                        Text("""

Dilute the disinfectant according to the instructions on the label. Apply to the surface using a sponge or mop, and leave it for a few minutes before rinsing thoroughly with water.

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
    CBDView()
}
