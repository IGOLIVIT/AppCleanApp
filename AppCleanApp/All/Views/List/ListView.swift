//
//  ListView.swift
//  AppCleanApp
//
//  Created by IGOR on 08/01/2025.
//

import SwiftUI

struct ListView: View {
    var body: some View {

        ZStack {
            
            Color("bg")
                .ignoresSafeArea()
            
            VStack {
                
                HStack {
                    
                    Spacer()
                    
                    NavigationLink(destination: {
                        
                        SettingsView()
                            .navigationBarBackButtonHidden()
                        
                    }, label: {
                        
                        Image("Settings")
                        
                    })
                }
                .padding(.bottom, 30)
                
                ScrollView(.vertical, showsIndicators: false) {
                    
                    HStack {
                        
                        NavigationLink(destination: {
                            
                            CPView()
                                .navigationBarBackButtonHidden()
                            
                        }, label: {
                            
                            VStack(alignment: .leading) {
                                
                                Spacer()
                                
                                Image("cp")
                                
                                Text("Сleaning products")
                                    .foregroundColor(.black)
                                    .font(.system(size: 14, weight: .semibold))
                            }
                            .padding()
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .frame(height: 120)
                            .background(RoundedRectangle(cornerRadius: 10).fill(Color("prim")))
                            
                        })
                        
                        NavigationLink(destination: {
                            
                            EquipView()
                                .navigationBarBackButtonHidden()
                            
                        }, label: {
                            
                            VStack(alignment: .leading) {
                                
                                Spacer()
                                
                                Image("eq")
                                
                                Text("Equipment")
                                    .foregroundColor(.black)
                                    .font(.system(size: 14, weight: .semibold))
                            }
                            .padding()
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .frame(height: 120)
                            .background(RoundedRectangle(cornerRadius: 10).fill(Color("prim2")))
                            
                        })
                    }
                }
            }
            .padding()
        }
    }
}

#Preview {
    ListView()
}
