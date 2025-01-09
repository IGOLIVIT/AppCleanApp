//
//  MMPView.swift
//  AppCleanApp
//
//  Created by IGOR on 08/01/2025.
//

import SwiftUI

struct MMPView: View {

    @Environment(\.presentationMode) var router
    
    var body: some View {
        
        ZStack {
            
            Color("bg")
                .ignoresSafeArea()
            
            VStack {
                
                ZStack {
                    
                    Text("Mop with Microfiber Pads")
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
                        
                        Image("t1")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                        
                        Text("Mop with Microfiber Pads")
                            .foregroundColor(.black)
                            .font(.system(size: 20, weight: .semibold))
                        
                        Text("""

The microfiber mop is an essential cleaning tool for all types of hard floors. The microfiber pads efficiently trap dirt, dust, and hair while providing a streak-free shine. Available in standard and steam models, these mops make cleaning faster and easier.

""")
                        .foregroundColor(.gray)
                        .font(.system(size: 14, weight: .regular))
                        
                        Text("How to use")
                            .foregroundColor(.black)
                            .font(.system(size: 16, weight: .semibold))
                        
                        Text("""

Attach the microfiber pad, wet it if necessary, and glide it over the floor. For steam mops, fill the water reservoir and turn it on to produce steam.

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
    MMPView()
}
