//
//  ScheduleView.swift
//  AppCleanApp
//
//  Created by IGOR on 08/01/2025.
//

import SwiftUI

struct ScheduleView: View {
    
    @StateObject var viewModel = ScheduleViewModel()
    
    var body: some View {
        
        ZStack {
            
            Color("bg")
                .ignoresSafeArea()
            
            VStack {
                
                Text("Schedule")
                    .foregroundColor(.black)
                    .font(.system(size: 18, weight: .semibold))
                    .padding(.bottom, 30)
                
                if viewModel.clients.isEmpty {
                    
                    VStack {
                        
                        Text("There is nothing here, add new schedule")
                            .foregroundColor(.black)
                            .font(.system(size: 18, weight: .semibold))
                            .multilineTextAlignment(.center)
                    }
                    .padding()
                    .frame(maxHeight: .infinity)
                    
                    Button(action: {
                        
                        withAnimation(.spring()) {
                            
                            viewModel.isAdd = true
                        }
                        
                    }, label: {
                        
                        Text("+ Add")
                            .foregroundColor(.white)
                            .font(.system(size: 16, weight: .semibold))
                            .frame(maxWidth: .infinity)
                            .frame(height: 60)
                            .background(RoundedRectangle(cornerRadius: 30).fill(Color("prim")))
                    })
                    
                } else {
                    
                    ScrollView(.vertical, showsIndicators: false) {
                        
                        LazyVStack {
                            
                            ForEach(viewModel.clients, id: \.self) { index in
                            
                                VStack(alignment: .leading, spacing: 12) {
                                    
                                    Text(index.clName ?? "")
                                        .foregroundColor(.black)
                                        .font(.system(size: 24, weight: .semibold))
                                    
                                    Text(index.clTag ?? "")
                                        .foregroundColor(.white)
                                        .font(.system(size: 16, weight: .semibold))
                                        .padding(5)
                                        .padding(.horizontal, 5)
                                        .background(RoundedRectangle(cornerRadius: 10).fill(Color("prim2")))
                                    
                                    Text(index.clAddress ?? "")
                                        .foregroundColor(.black)
                                        .font(.system(size: 14, weight: .medium))
                                    
                                    Text(index.clPhone ?? "")
                                        .foregroundColor(.gray.opacity(0.8))
                                        .font(.system(size: 14, weight: .medium))
                                    
                                    Text(index.clMail ?? "")
                                        .foregroundColor(.gray.opacity(0.8))
                                        .font(.system(size: 14, weight: .medium))
                                    
                                    Text(index.clDate ?? "")
                                        .foregroundColor(.gray.opacity(0.8))
                                        .font(.system(size: 14, weight: .medium))
                                    
                                    HStack {
                                        
                                        Text("Cost")
                                            .foregroundColor(.black)
                                            .font(.system(size: 16, weight: .semibold))
                                        
                                        Spacer()
                                        
                                        Text("$\(index.clPrice ?? "")")
                                            .foregroundColor(.black)
                                            .font(.system(size: 16, weight: .semibold))
                                    }
                                }
                                .padding()
                                .background(RoundedRectangle(cornerRadius: 15).fill(Color("bg2")))
                            }
                        }
                    }
                }
            }
            .padding()
        }
        .onAppear {
            
            viewModel.fetchClients()
        }
        .sheet(isPresented: $viewModel.isAdd, content: {
            
            AddSchedule(viewModel: viewModel)
        })
    }
}

#Preview {
    ScheduleView()
}
