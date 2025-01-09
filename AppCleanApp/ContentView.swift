//
//  ContentView.swift
//  AppCleanApp
//
//  Created by IGOR on 08/01/2025.
//

import SwiftUI

struct ContentView: View {
    
    @State var current_tab: Tab = Tab.List

    @AppStorage("status") var status: Bool = false
    
    init() {
        
        UITabBar.appearance().isHidden = true
    }
    
    var body: some View {
        
        ZStack {
            
            Color.white
                .ignoresSafeArea()
            
            if status {
            
            VStack(spacing: 0, content: {
            
                    TabView(selection: $current_tab, content: {

                        ListView()
                            .tag(Tab.List)
                        
                        ScheduleView()
                            .tag(Tab.Schedule)

                        ClientsView()
                            .tag(Tab.Clients)
                        
                    })
                    
                    TabBar(selectedTab: $current_tab)
                })
                    .ignoresSafeArea(.all, edges: .bottom)
                    .onAppear {
                        
                    }
                
            } else {
                
                SV1()
            }
        }
    }
}

#Preview {
    ContentView()
}
