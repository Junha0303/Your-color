//
//  ColorView.swift
//  RGB
//
//  Created by 박준하 on 2021/07/05.
//

import SwiftUI

struct ColorView: View {
    @EnvironmentObject var modelData: ModelData
    
    var body: some View {
        ZStack {
            if !modelData.compColor
            {
                LinearGradient(
                    gradient: Gradient(
                        colors: [Color(red: modelData.RValue, green: modelData.GValue, blue: modelData.BValue, opacity: 1.0 - modelData.Opacity),
                                 Color(red: modelData.RValue, green: modelData.GValue, blue: modelData.BValue, opacity: 1.0 - modelData.Opacity),
                                 .white.opacity(1.0 - modelData.Opacity)]),
                    startPoint: .top, endPoint: .bottom
                )
                    .edgesIgnoringSafeArea(.all)
            }
            else
            {
                LinearGradient(
                    gradient: Gradient(
                        colors: [Color(red: 1 - modelData.RValue, green: 1 - modelData.GValue, blue: 1 - modelData.BValue, opacity: 1.0 - modelData.Opacity),
                                 Color(red: 1 - modelData.RValue, green: 1 - modelData.GValue, blue: 1 - modelData.BValue, opacity: 1.0 - modelData.Opacity),
                                 .white.opacity(1.0 - modelData.Opacity)]),
                    startPoint: .top, endPoint: .bottom
                )
                    .edgesIgnoringSafeArea(.all)
            }
            
        }
    }
}

struct ColorView_Previews: PreviewProvider {
    static var previews: some View {
        ColorView().environmentObject(ModelData())
    }
}
