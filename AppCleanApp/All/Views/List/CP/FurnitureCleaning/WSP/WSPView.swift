//
//  WSPView.swift
//  AppCleanApp
//
//  Created by IGOR on 08/01/2025.
//

import SwiftUI

struct WSPView: View {

    @Environment(\.presentationMode) var router
    
    var body: some View {
        
        ZStack {
            
            Color("bg")
                .ignoresSafeArea()
            
            VStack {
                
                ZStack {
                    
                    Text("Wood Surface Polish")
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
                        
                        Image("fuc7")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                        
                        Text("Wood Surface Polish")
                            .foregroundColor(.black)
                            .font(.system(size: 20, weight: .semibold))
                        
                        Text("""

Wood Surface Polish is a premium product designed to protect and restore the natural beauty of wooden furniture. Its nourishing formula enhances the wood’s finish, leaving it with a smooth, polished look while protecting it from dust, water, and scratches.
This polish is suitable for a variety of wooden surfaces, including tables, chairs, cabinets, and decorative items. It also helps to reduce the appearance of minor scratches and dull spots, ensuring your furniture looks as good as new.
To use, apply a small amount of polish to a clean, soft cloth and rub gently into the surface in a circular motion. Buff with a dry cloth to achieve a brilliant shine.

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
    WSPView()
}
