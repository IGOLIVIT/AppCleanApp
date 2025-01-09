//
//  FloorCleaningView.swift
//  AppCleanApp
//
//  Created by IGOR on 08/01/2025.
//

import SwiftUI

struct FloorCleaningView: View {
    
    @Environment(\.presentationMode) var router
    
    var body: some View {

        ZStack {
            
            Color("bg")
                .ignoresSafeArea()
            
            VStack {
                
                ZStack {
                    
                    Text("Floor cleaning")
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
                
                NavigationLink(destination: {
                    
                    UFCView()
                        .navigationBarBackButtonHidden()
                    
                }, label: {
                    
                    HStack {
                        
                        Image("fc1")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .cornerRadius(10)
                        
                        Text("Universal Floor Cleaner")
                            .foregroundColor(.black)
                            .font(.system(size: 16, weight: .semibold))
                        
                        Spacer()
                        
                        Image(systemName: "chevron.right")
                            .foregroundColor(.black)
                            .font(.system(size: 16, weight: .regular))
                    }
                    .padding()
                    .frame(height: 100)
                    .frame(maxWidth: .infinity)
                    .background(RoundedRectangle(cornerRadius: 10).fill(Color("bg2")))
                })
                
                Spacer()
                
            }
            .padding()
        }
    }
}

#Preview {
    FloorCleaningView()
}
