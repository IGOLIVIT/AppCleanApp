//
//  GCSView.swift
//  AppCleanApp
//
//  Created by IGOR on 08/01/2025.
//

import SwiftUI

struct GCSView: View {

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
                        
                        Image("gc1")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                        
                        Text("Glass Cleaner Spray")
                            .foregroundColor(.black)
                            .font(.system(size: 20, weight: .semibold))
                        
                        Text("""

Glass Cleaner Spray is a specialized product designed to deliver a crystal-clear finish to glass surfaces. Its advanced formula effectively removes smudges, fingerprints, dust, and grease, leaving no streaks behind. Perfect for windows, mirrors, glass tables, and shower screens, this cleaner ensures a spotless shine every time.
The spray contains anti-static agents that help repel dust, keeping surfaces cleaner for longer. Its quick-drying properties make it ideal for both residential and professional cleaning, saving time and effort. The formula is safe for delicate glass and leaves a fresh, subtle scent.
To use, spray directly onto the glass surface and wipe clean with a microfiber cloth or paper towel. For stubborn stains or grime, let the product sit for a few seconds before wiping.
Glass Cleaner Spray is an essential addition to your cleaning routine, ensuring sparkling clean glass surfaces with minimal effort.

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
    GCSView()
}
