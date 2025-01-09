//
//  EquipView.swift
//  AppCleanApp
//
//  Created by IGOR on 08/01/2025.
//

import SwiftUI

struct EquipView: View {

    @Environment(\.presentationMode) var router
    
    var body: some View {
        
        ZStack {
            
            Color("bg")
                .ignoresSafeArea()
            
            VStack {
                
                ZStack {
                    
                    Text("Equipment")
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
                            
                            VacCleanerView()
                                .navigationBarBackButtonHidden()
                            
                        }, label: {
                            
                            VStack(alignment: .leading) {
                                
                                Spacer()
                                
                                Image("vc")
                                
                                Text("Vacuum Cleaner")
                                    .foregroundColor(.black)
                                    .font(.system(size: 14, weight: .semibold))
                            }
                            .padding()
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .frame(height: 120)
                            .background(RoundedRectangle(cornerRadius: 10).fill(Color("prim")))
                            
                        })
                        
                        NavigationLink(destination: {
                            
                            ToolsView()
                                .navigationBarBackButtonHidden()
                            
                        }, label: {
                            
                            VStack(alignment: .leading) {
                                
                                Spacer()
                                
                                Image("to")
                                
                                Text("Tools")
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
    EquipView()
}
