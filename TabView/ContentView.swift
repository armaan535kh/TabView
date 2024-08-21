//
//  ContentView.swift
//  TabView
//
//  Created by Armaan Khan  on 20/08/24.
//

import SwiftUI

struct ContentView: View {
    @State var selectedTab = 0
    let icons = ["house", "magnifyingglass", "plus.circle.fill", "heart", "person"]
    var body: some View {
        Spacer()
        // Created by Armaan Khan
        Text("View \(selectedTab + 1) 🔥")
            .font(.system(size: 80))
            .fontDesign(.rounded)
        Spacer()
        HStack {
            ForEach(0..<5 ) { num in
                Spacer()
                Button(action: { withAnimation { selectedTab = num}}) {
                    Image(systemName: icons[num])
                        .font(.system( size: num == 2 ? 44 : 24, weight: .bold))
                        .foregroundStyle(selectedTab == num ? .blue :.gray)
                        .scaleEffect(selectedTab == num ? 1.2 : 1.0)
                    
                }
                Spacer()
            }
        }
            .frame(height: 60)
            .background(.white.opacity(0.2))
            .cornerRadius(30)
            .padding()
            .shadow(color: .black.opacity(0.2), radius: 10, x:0, y:5)
        }
    }


#Preview {
    ContentView()
}
