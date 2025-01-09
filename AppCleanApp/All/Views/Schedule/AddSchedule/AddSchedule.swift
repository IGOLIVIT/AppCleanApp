//
//  AddSchedule.swift
//  AppCleanApp
//
//  Created by IGOR on 09/01/2025.
//

import SwiftUI

struct AddSchedule: View {
    
    @StateObject var viewModel: ScheduleViewModel
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
                                .opacity(viewModel.clName.isEmpty ? 1 : 0)
                                .frame(maxWidth: .infinity, alignment: .leading)
                            
                            TextField("", text: $viewModel.clName)
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
                                .opacity(viewModel.clAddress.isEmpty ? 1 : 0)
                                .frame(maxWidth: .infinity, alignment: .leading)
                            
                            TextField("", text: $viewModel.clAddress)
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
                                .opacity(viewModel.clPhone.isEmpty ? 1 : 0)
                                .frame(maxWidth: .infinity, alignment: .leading)
                            
                            TextField("", text: $viewModel.clPhone)
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
                                .opacity(viewModel.clMail.isEmpty ? 1 : 0)
                                .frame(maxWidth: .infinity, alignment: .leading)
                            
                            TextField("", text: $viewModel.clMail)
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
                                    .opacity(viewModel.clDate.isEmpty ? 1 : 0)
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                
                                TextField("", text: $viewModel.clDate)
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
                                    .opacity(viewModel.clPrice.isEmpty ? 1 : 0)
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                
                                TextField("", text: $viewModel.clPrice)
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
                        
                        viewModel.clTag = viewModel.currTag
                        viewModel.clCheck = viewModel.currCheck
                        
                        viewModel.addClient()
                        
                        viewModel.clName = ""
                        viewModel.clAddress = ""
                        viewModel.clPhone = ""
                        viewModel.clMail = ""
                        viewModel.clDate = ""
                        viewModel.clPrice = ""
                        
                        viewModel.fetchClients()
                        
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
                    .opacity(viewModel.clName.isEmpty || viewModel.clAddress.isEmpty || viewModel.clMail.isEmpty || viewModel.clDate.isEmpty ? 0.5 : 1)
                    .disabled(viewModel.clName.isEmpty || viewModel.clAddress.isEmpty || viewModel.clMail.isEmpty || viewModel.clDate.isEmpty ? true : false)
                }
                .padding()
                .background(RoundedRectangle(cornerRadius: 20).fill(.black.opacity(0.05)))
            }
            .padding()
        }
    }
}

#Preview {
    AddSchedule(viewModel: ScheduleViewModel())
}
