//
//  UFCView.swift
//  AppCleanApp
//
//  Created by IGOR on 08/01/2025.
//

import SwiftUI

struct UFCView: View {
    
    @Environment(\.presentationMode) var router
    
    var body: some View {
        
        ZStack {
            
            Color("bg")
                .ignoresSafeArea()
            
            VStack {
                
                ZStack {
                    
                    Text("Universal Floor Cleaner")
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
                        
                        Image("fc1")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                        
                        Text("Universal Floor Cleaner")
                            .foregroundColor(.black)
                            .font(.system(size: 20, weight: .semibold))
                        
                        Text("""

Universal Floor Cleaner is a versatile solution designed to keep all types of hard floors spotless and fresh. Its powerful formula effectively removes dirt, grease, and stains while being gentle on surfaces. Safe for use on tiles, stone, vinyl, and sealed wood, this cleaner ensures a streak-free shine without leaving any residue.
This product is eco-friendly and biodegradable, making it a sustainable choice for both homes and professional cleaning tasks. It is also safe for use around children and pets, as it contains no harsh chemicals. The fresh scent adds an inviting aroma to any space, enhancing the overall cleaning experience.
To use, simply dilute the cleaner in water according to the instructions, apply with a mop, and let it air dry. For tougher stains, the concentrated solution can be applied directly to the affected area and wiped clean with a cloth.
Universal Floor Cleaner is an essential tool for maintaining cleanliness and hygiene in both residential and commercial settings.

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
    UFCView()
}
