//
//  DisinfectionView.swift
//  AppCleanApp
//
//  Created by IGOR on 08/01/2025.
//

import SwiftUI

struct DisinfectionView: View {

    @Environment(\.presentationMode) var router
    
    var body: some View {

        ZStack {
            
            Color("bg")
                .ignoresSafeArea()
            
            VStack {
                
                ZStack {
                    
                    Text("Disinfection")
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
                
                NavigationLink(destination: {
                    
                    ABDView()
                        .navigationBarBackButtonHidden()
                    
                }, label: {
                    
                    HStack {
                        
                        Image("d1")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .cornerRadius(10)
                        
                        Text("Alcohol-Based Disinfectant")
                            .foregroundColor(.black)
                            .font(.system(size: 16, weight: .semibold))
                            .multilineTextAlignment(.leading)
                        
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
                
                NavigationLink(destination: {
                    
                    ADSView()
                        .navigationBarBackButtonHidden()
                    
                }, label: {
                    
                    HStack {
                        
                        Image("d4")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .cornerRadius(10)
                        
                        Text("Antibacterial Disinfectant Spray")
                            .foregroundColor(.black)
                            .font(.system(size: 16, weight: .semibold))
                            .multilineTextAlignment(.leading)
                        
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
                
                NavigationLink(destination: {
                    
                    CBDView()
                        .navigationBarBackButtonHidden()
                    
                }, label: {
                    
                    HStack {
                        
                        Image("d7")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .cornerRadius(10)
                        
                        Text("Chlorine-Based Disinfectant")
                            .foregroundColor(.black)
                            .font(.system(size: 16, weight: .semibold))
                            .multilineTextAlignment(.leading)
                        
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
    DisinfectionView()
}
