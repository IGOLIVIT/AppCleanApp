//
//  ClientsView.swift
//  AppCleanApp
//
//  Created by IGOR on 08/01/2025.
//

import SwiftUI

struct ClientsView: View {
    
    @StateObject var viewModel = ClientsViewModel()
    
    var body: some View {
        
        ZStack {
            
            Color("bg")
                .ignoresSafeArea()
            
            VStack {
                
                Text("Clients")
                    .foregroundColor(.black)
                    .font(.system(size: 18, weight: .semibold))
                    .padding(.bottom, 30)
                
                if viewModel.peoples.isEmpty {
                    
                    VStack {
                        
                        Text("There is nothing here, add new client")
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
                            
                            ForEach(viewModel.peoples, id: \.self) { index in
                            
                                VStack(alignment: .leading, spacing: 12) {
                                    
                                    Text(index.plName ?? "")
                                        .foregroundColor(.black)
                                        .font(.system(size: 24, weight: .semibold))
                                    
                                    Text(index.plTag ?? "")
                                        .foregroundColor(.white)
                                        .font(.system(size: 16, weight: .semibold))
                                        .padding(5)
                                        .padding(.horizontal, 5)
                                        .background(RoundedRectangle(cornerRadius: 10).fill(Color("prim2")))
                                    
                                    Text(index.plAddress ?? "")
                                        .foregroundColor(.black)
                                        .font(.system(size: 14, weight: .medium))
                                    
                                    Text(index.plPhone ?? "")
                                        .foregroundColor(.gray.opacity(0.8))
                                        .font(.system(size: 14, weight: .medium))
                                    
                                    Text(index.plMail ?? "")
                                        .foregroundColor(.gray.opacity(0.8))
                                        .font(.system(size: 14, weight: .medium))
                                    
                                    Text(index.plDate ?? "")
                                        .foregroundColor(.gray.opacity(0.8))
                                        .font(.system(size: 14, weight: .medium))
                                    
                                    HStack {
                                        
                                        Text("Cost")
                                            .foregroundColor(.black)
                                            .font(.system(size: 16, weight: .semibold))
                                        
                                        Spacer()
                                        
                                        Text("$\(index.plPrice ?? "")")
                                            .foregroundColor(.black)
                                            .font(.system(size: 16, weight: .semibold))
                                    }
                                    
                                    Text("\(index.plProgress ?? "")/2")
                                        .frame(maxWidth: .infinity)
                                        .font(.system(size: 16, weight: .semibold))
                                    
                                    GeometryReader { reader in
                                        
                                        let result = CGFloat((CGFloat(Int(index.plProgress ?? "") ?? 0) * reader.size.width)) / CGFloat(Int(2))
                                        
                                        ZStack(alignment: .leading, content: {
                                            
                                            RoundedRectangle(cornerRadius: 10)
                                                .fill(.gray.opacity(0.2))
                                                .frame(width: reader.size.width, height: 2)
                                            
                                            RoundedRectangle(cornerRadius: 10)
                                                .fill(Color.green)
                                                .frame(width: result, height: 2)
                                        })
                                    }
                                    .frame(height: 10)
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
            
            viewModel.fetchPeoples()
        }
        .sheet(isPresented: $viewModel.isAdd, content: {
            
            AddClient(viewModel: viewModel)
        })
    }
}

#Preview {
    ClientsView()
}
