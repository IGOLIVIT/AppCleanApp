//
//  UCFView.swift
//  AppCleanApp
//
//  Created by IGOR on 08/01/2025.
//

import SwiftUI

struct UCFView: View {

    @Environment(\.presentationMode) var router
    
    var body: some View {
        
        ZStack {
            
            Color("bg")
                .ignoresSafeArea()
            
            VStack {
                
                ZStack {
                    
                    Text("Upholstery Cleaning Foam")
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
                        
                        Image("fuc4")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                        
                        Text("Upholstery Cleaning Foam")
                            .foregroundColor(.black)
                            .font(.system(size: 20, weight: .semibold))
                        
                        Text("""

Stain Remover for Upholstery is specifically designed to combat tough stains on fabric furniture. Its concentrated formula targets and breaks down the most stubborn marks, such as ink, food spills, and oil. This product is safe for use on most fabric types and protects the material while restoring its original appearance.
The non-toxic composition ensures it’s safe for use in homes with children and pets. It works quickly and effectively, making it an essential tool for professional cleaners and households alike.
To use, apply a small amount of the solution directly to the stain. Let it sit for a few minutes, then gently blot with a clean cloth or sponge. Rinse if necessary, and let it air dry.

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
    UCFView()
}
