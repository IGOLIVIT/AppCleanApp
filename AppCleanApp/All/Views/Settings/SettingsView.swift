//
//  SettingsView.swift
//  AppCleanApp
//
//  Created by IGOR on 08/01/2025.
//

import SwiftUI
import StoreKit

struct SettingsView: View {

    @Environment(\.presentationMode) var router
    
    var body: some View {
        
        ZStack {
            
            Color("bg")
                .ignoresSafeArea()
            
            VStack {
                
                ZStack {
                    
                    Text("Settings")
                        .foregroundColor(.black)
                        .font(.system(size: 22, weight: .semibold))
                    
                    HStack {
                        
                        Button(action: {

                            router.wrappedValue.dismiss()
                            
                        }, label: {
                            
                            Image(systemName: "chevron.left")
                                .foregroundColor(.black)
                                .font(.system(size: 17, weight: .medium))
                            
                        })
                        
                        Spacer()
                    }
                }
                .padding(.bottom, 30)
                
                ScrollView(.vertical, showsIndicators: false) {
                    
                    VStack(spacing: 17) {
                        
                        Button(action: {
                            
                            SKStoreReviewController.requestReview()
                            
                        }, label: {
                            
                            HStack {
                                
                                Text("Rate Us")
                                    .foregroundColor(.black)
                                    .font(.system(size: 16, weight: .semibold))
                                
                                Spacer()
                                
                                Image(systemName: "chevron.right")
                                    .foregroundColor(.black)
                                    .font(.system(size: 17, weight: .medium))
                            }
                            .padding()
                            .padding(.vertical, 7)
                            .background(RoundedRectangle(cornerRadius: 15).fill(Color("bg2")))
                        })
                        
                        Button(action: {
                            
                            guard let url = URL(string: "https://www.termsfeed.com/live/e0e0be44-178d-441c-aedc-d95c25f1bd7d") else { return }
                            
                            UIApplication.shared.open(url)
                            
                        }, label: {
                            
                            HStack {
                                
                                Text("Privacy&Policy")
                                    .foregroundColor(.black)
                                    .font(.system(size: 16, weight: .semibold))
                                
                                Spacer()
                                
                                Image(systemName: "chevron.right")
                                    .foregroundColor(.black)
                                    .font(.system(size: 17, weight: .medium))
                            }
                            .padding()
                            .padding(.vertical, 7)
                            .background(RoundedRectangle(cornerRadius: 15).fill(Color("bg2")))
                        })
                    }
                }
            }
            .padding()
        }
    }
}

#Preview {
    SettingsView()
}
