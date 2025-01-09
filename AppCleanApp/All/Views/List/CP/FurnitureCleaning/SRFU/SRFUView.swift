//
//  SRFUView.swift
//  AppCleanApp
//
//  Created by IGOR on 08/01/2025.
//

import SwiftUI

struct SRFUView: View {

    @Environment(\.presentationMode) var router
    
    var body: some View {
        
        ZStack {
            
            Color("bg")
                .ignoresSafeArea()
            
            VStack {
                
                ZStack {
                    
                    Text("Glass Cleaner Spray")
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
                        
                        Image("fuc1")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                        
                        Text("Stain Remover for Upholstery")
                            .foregroundColor(.black)
                            .font(.system(size: 20, weight: .semibold))
                        
                        Text("""

Upholstery Cleaning Foam is a powerful yet gentle solution designed to clean and refresh fabric surfaces, such as sofas, chairs, and car interiors. The foam penetrates deep into the fibers, effectively removing dirt, stains, and unpleasant odors without damaging the material. It is suitable for a wide range of fabrics, including synthetic and natural textiles.
This product is ideal for tackling tough spots like coffee, wine, and grease stains. The fast-drying formula ensures that your furniture is ready for use in no time. Additionally, the foam leaves a fresh, clean scent that enhances the overall cleaning experience.
To use, shake the can well and spray directly onto the affected area. Gently scrub with a soft brush or sponge and wipe away any residue with a clean, damp cloth. Allow the surface to air dry for the best results.


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
    SRFUView()
}
