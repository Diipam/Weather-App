//
//  NabBar.swift
//  WeatherApp
//
//  Created by Smart Solar Nepal on 01/09/2023.
//

import SwiftUI

struct TabBar: View {
    var action : () -> Void
    var body: some View {
        ZStack{
            //            Mark the tabvar
            Arc()
                .fill(Color.tabBarBackground)
                .frame(height: 90)
                .overlay {
                    Arc()
                        .stroke(Color.tabBarBorder, lineWidth: 0.5)
                }
//            MyIcon()
//                .fill(Color.tabBarBackground)
//                .frame(height: 46)
//                .ignoresSafeArea()
//                .overlay {
//                    MyIcon()
//                        .stroke(Color.tabBarBorder, lineWidth: 0.5)
//                }

//            Mark Tab Items
            HStack{
                Button {
                    action()
                } label: {
                    Image(systemName: "mappin.and.ellipse")
                        .frame(width: 44, height: 44)

                }
                Spacer()

//For Navigating Buttons

                NavigationLink {
                    WeatherView()

                } label: {
                    Image(systemName: "list.star")
                        .frame(width: 44, height: 44)
                }
            }
            .foregroundColor(Color.white)
            .font(.title2)
            .padding(EdgeInsets(top: 20, leading: 32, bottom: 24, trailing: 32)) 
        }
        .frame(maxHeight: .infinity, alignment: .bottom)
        .ignoresSafeArea(.all)
    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar(action: {})
            .preferredColorScheme(.dark
            )
    }
}
