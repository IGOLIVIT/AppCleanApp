//
//  MCCView.swift
//  AppCleanApp
//
//  Created by IGOR on 08/01/2025.
//

import SwiftUI

struct MCCView: View {

    @Environment(\.presentationMode) var router
    
    var body: some View {
        
        ZStack {
            
            Color("bg")
                .ignoresSafeArea()
            
            VStack {
                
                ZStack {
                    
                    Text("Microfiber Cleaning Cloth")
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
                        
                        Image("t7")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                        
                        Text("Microfiber Cleaning Cloth")
                            .foregroundColor(.black)
                            .font(.system(size: 20, weight: .semibold))
                        
                        Text("""

Microfiber cleaning cloths are versatile and effective tools for cleaning various surfaces, including glass, metal, and wood. These cloths are soft, lint-free, and highly absorbent, ensuring a streak-free finish.

""")
                        .foregroundColor(.gray)
                        .font(.system(size: 14, weight: .regular))
                        
                        Text("How to use")
                            .foregroundColor(.black)
                            .font(.system(size: 16, weight: .semibold))
                        
                        Text("""

Use dry for dusting or damp for wiping surfaces. Wash the cloth after each use to maintain effectiveness.

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
    MCCView()
}
