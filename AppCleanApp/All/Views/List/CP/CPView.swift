//
//  CPView.swift
//  AppCleanApp
//
//  Created by IGOR on 08/01/2025.
//

import SwiftUI

struct CPView: View {

    @Environment(\.presentationMode) var router
    
    var body: some View {
        
        ZStack {
            
            Color("bg")
                .ignoresSafeArea()
            
            VStack {
                
                ZStack {
                    
                    Text("Сleaning products")
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
                    
                    HStack {
                        
                        NavigationLink(destination: {
                            
                            FloorCleaningView()
                                .navigationBarBackButtonHidden()
                            
                        }, label: {
                            
                            VStack(alignment: .leading) {
                                
                                Spacer()
                                
                                Image("flc")
                                
                                Text("Floor Cleaning")
                                    .foregroundColor(.black)
                                    .font(.system(size: 14, weight: .semibold))
                            }
                            .padding()
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .frame(height: 120)
                            .background(RoundedRectangle(cornerRadius: 10).fill(Color("prim")))
                            
                        })
                        
                        NavigationLink(destination: {
                            
                            GlassCleaningView()
                                .navigationBarBackButtonHidden()
                            
                        }, label: {
                            
                            VStack(alignment: .leading) {
                                
                                Spacer()
                                
                                Image("gc")
                                
                                Text("Glass Cleaning")
                                    .foregroundColor(.black)
                                    .font(.system(size: 14, weight: .semibold))
                            }
                            .padding()
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .frame(height: 120)
                            .background(RoundedRectangle(cornerRadius: 10).fill(Color("prim2")))
                        })
                    }
                    
                    HStack {
                        
                        NavigationLink(destination: {
                            
                            FurnitureCleaning()
                                .navigationBarBackButtonHidden()
                            
                        }, label: {
                            
                            VStack(alignment: .leading) {
                                
                                Spacer()
                                
                                Image("fuc")
                                
                                Text("Furniture Cleaning")
                                    .foregroundColor(.black)
                                    .font(.system(size: 14, weight: .semibold))
                            }
                            .padding()
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .frame(height: 120)
                            .background(RoundedRectangle(cornerRadius: 10).fill(Color("prim3")))
                            
                        })
                        
                        NavigationLink(destination: {
                            
                            DisinfectionView()
                                .navigationBarBackButtonHidden()
                            
                        }, label: {
                            
                            VStack(alignment: .leading) {
                                
                                Spacer()
                                
                                Image("dis")
                                
                                Text("Disinfection")
                                    .foregroundColor(.black)
                                    .font(.system(size: 14, weight: .semibold))
                            }
                            .padding()
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .frame(height: 120)
                            .background(RoundedRectangle(cornerRadius: 10).fill(Color("prim4")))
                        })
                    }
                }
            }
            .padding()
        }
    }
}

#Preview {
    CPView()
}
