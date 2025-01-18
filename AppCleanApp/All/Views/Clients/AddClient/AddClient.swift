//
//  AddClient.swift
//  AppCleanApp
//
//  Created by IGOR on 09/01/2025.
//

import SwiftUI

struct AddClient: View {

    @StateObject var viewModel: ClientsViewModel
    @Environment(\.presentationMode) var router
    
    var body: some View {
        
        ZStack {
            
            Color("bg")
                .ignoresSafeArea()
            
            VStack {
                
                ZStack {
                    
                    Text("Add Schedule")
                        .foregroundColor(.black)
                        .font(.system(size: 22, weight: .semibold))
                    
                    HStack {
                        
                        Button(action: {
                            
                            
                            
                            withAnimation(.spring()) {
                                
                                viewModel.isAdd = false
                            }
                            
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
                    
                    VStack(alignment: .leading, spacing: 13) {
                        
                        ZStack(content: {
                            
                            Text("Enter Client Name")
                                .foregroundColor(.gray)
                                .font(.system(size: 15, weight: .regular))
                                .opacity(viewModel.plName.isEmpty ? 1 : 0)
                                .frame(maxWidth: .infinity, alignment: .leading)
                            
                            TextField("", text: $viewModel.plName)
                                .foregroundColor(Color.black)
                                .font(.system(size: 16, weight: .regular))
                            
                        })
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(RoundedRectangle(cornerRadius: 10).fill(.gray.opacity(0.1)))
                        
                        ZStack(content: {
                            
                            Text("Enter Address")
                                .foregroundColor(.gray)
                                .font(.system(size: 15, weight: .regular))
                                .opacity(viewModel.plAddress.isEmpty ? 1 : 0)
                                .frame(maxWidth: .infinity, alignment: .leading)
                            
                            TextField("", text: $viewModel.plAddress)
                                .foregroundColor(Color.black)
                                .font(.system(size: 16, weight: .regular))
                            
                        })
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(RoundedRectangle(cornerRadius: 10).fill(.gray.opacity(0.1)))
                        
                        ZStack(content: {
                            
                            Text("Enter Phone Number")
                                .foregroundColor(.gray)
                                .font(.system(size: 15, weight: .regular))
                                .opacity(viewModel.plPhone.isEmpty ? 1 : 0)
                                .frame(maxWidth: .infinity, alignment: .leading)
                            
                            TextField("", text: $viewModel.plPhone)
                                .foregroundColor(Color.black)
                                .font(.system(size: 16, weight: .regular))
                            
                        })
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(RoundedRectangle(cornerRadius: 10).fill(.gray.opacity(0.1)))
                        
                        ZStack(content: {
                            
                            Text("Enter E-mail")
                                .foregroundColor(.gray)
                                .font(.system(size: 15, weight: .regular))
                                .opacity(viewModel.plMail.isEmpty ? 1 : 0)
                                .frame(maxWidth: .infinity, alignment: .leading)
                            
                            TextField("", text: $viewModel.plMail)
                                .foregroundColor(Color.black)
                                .font(.system(size: 16, weight: .regular))
                            
                        })
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(RoundedRectangle(cornerRadius: 10).fill(.gray.opacity(0.1)))
                        
                        HStack {
                            
                            ZStack(content: {
                                
                                Text("Enter Date")
                                    .foregroundColor(.gray)
                                    .font(.system(size: 15, weight: .regular))
                                    .opacity(viewModel.plDate.isEmpty ? 1 : 0)
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                
                                TextField("", text: $viewModel.plDate)
                                    .foregroundColor(Color.black)
                                    .font(.system(size: 16, weight: .regular))
                                
                            })
                            
                            Spacer()
                            
                            Image(systemName: "calendar")
                                .foregroundColor(Color.gray)
                                .font(.system(size: 16, weight: .regular))
                        }
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(RoundedRectangle(cornerRadius: 10).fill(.gray.opacity(0.1)))
                        
                        ZStack(content: {
                            
                            Text("Additional inf")
                                .foregroundColor(.gray)
                                .font(.system(size: 15, weight: .regular))
                                .opacity(viewModel.plInf.isEmpty ? 1 : 0)
                                .frame(maxWidth: .infinity, alignment: .leading)
                            
                            TextField("", text: $viewModel.plInf)
                                .foregroundColor(Color.black)
                                .font(.system(size: 16, weight: .regular))
                            
                        })
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(RoundedRectangle(cornerRadius: 10).fill(.gray.opacity(0.1)))
                        
                        Text("Select Tag")
                            .foregroundColor(.black)
                            .font(.system(size: 18, weight: .semibold))
                            .padding(.top)
                        
                        ForEach(viewModel.tags, id: \.self) { index in
                            
                            Button(action: {
                                
                                viewModel.currTag = index
                                
                            }, label: {
                                
                                HStack {
                                    
                                    ZStack {
                                        
                                        RoundedRectangle(cornerRadius: 5)
                                            .fill(.white)
                                            .frame(width: 30, height: 30)
                                        
                                        Circle()
                                            .fill(Color("prim"))
                                            .frame(width: 17)
                                            .opacity(viewModel.currTag == index ? 1 : 0)
                                    }
                                    
                                    Text(index)
                                        .foregroundColor(.black)
                                        .font(.system(size: 18, weight: .regular))
                                }
                                
                            })
                        }
                        
                        Text("Check-List")
                            .foregroundColor(.black)
                            .font(.system(size: 18, weight: .semibold))
                            .padding(.top)
                        
                        ForEach(viewModel.tags, id: \.self) { index in
                            
                            Button(action: {
                                
                                viewModel.currCheck = index
                                
                            }, label: {
                                
                                HStack {
                                    
                                    ZStack {
                                        
                                        RoundedRectangle(cornerRadius: 5)
                                            .fill(.white)
                                            .frame(width: 30, height: 30)
                                        
                                        Circle()
                                            .fill(Color("prim"))
                                            .frame(width: 17)
                                            .opacity(viewModel.currCheck == index ? 1 : 0)
                                    }
                                    
                                    Text(index)
                                        .foregroundColor(.black)
                                        .font(.system(size: 18, weight: .regular))
                                }
                                
                            })
                        }
                        
                        Text("Total Price")
                            .foregroundColor(.black)
                            .font(.system(size: 18, weight: .semibold))
                            .padding(.top)
                        
                        VStack(alignment: .leading, spacing: 13) {
                            
                            ZStack(content: {
                                
                                Text("0")
                                    .foregroundColor(.gray)
                                    .font(.system(size: 15, weight: .regular))
                                    .opacity(viewModel.plPrice.isEmpty ? 1 : 0)
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                
                                TextField("", text: $viewModel.plPrice)
                                    .foregroundColor(Color.black)
                                    .font(.system(size: 16, weight: .regular))
                                
                            })
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(RoundedRectangle(cornerRadius: 10).fill(.gray.opacity(0.1)))
                            
                        }
                    }
                    .padding(.bottom)
                    
                    Button(action: {
                        
                        if !viewModel.currTag.isEmpty {
                            
                            viewModel.addingProgress += 1
                            
                        }
                        
                        if !viewModel.plCheck.isEmpty {
                            
                            viewModel.addingProgress += 1
                            
                        }
                        
                        viewModel.plProgress = String("\(viewModel.addingProgress)")
                        
                        viewModel.plTag = viewModel.currTag
                        viewModel.plCheck = viewModel.currCheck
                        
                        viewModel.addPeople()
                        
                        viewModel.plName = ""
                        viewModel.plAddress = ""
                        viewModel.plPhone = ""
                        viewModel.plMail = ""
                        viewModel.plDate = ""
                        viewModel.plPrice = ""
                        
                        viewModel.fetchPeoples()
                        
                        viewModel.addingProgress = 0
                        
                        withAnimation(.spring()) {
                            
                            viewModel.isAdd = false
                        }
                        
                    }, label: {
                        
                        Text("Done")
                            .foregroundColor(.white)
                            .font(.system(size: 16, weight: .semibold))
                            .frame(maxWidth: .infinity)
                            .frame(height: 50)
                            .background(RoundedRectangle(cornerRadius: 30).fill(Color("prim")))
                    })

                }
                .padding()
                .background(RoundedRectangle(cornerRadius: 20).fill(.black.opacity(0.05)))
            }
            .padding()
        }
    }
}

#Preview {
    AddClient(viewModel: ClientsViewModel())
}
