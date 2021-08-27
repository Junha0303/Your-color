//
//  RGBSelectorView.swift
//  RGB
//
//  Created by 박준하 on 2021/07/05.
//

import SwiftUI

struct RGBSelectorView: View {
    @EnvironmentObject var modelData: ModelData
    
    var body: some View {
        ZStack {
            ColorView().environmentObject(modelData)
            RGBStatusView().environmentObject(modelData)
            TopView().environmentObject(modelData)
            
            VStack
            {
                VStack
                {
                    Text("RED")
                        .foregroundColor(.red)
                        .italic()
                    HStack
                    {
                        Image(systemName: modelData.compColor ? "plus" : "minus")
                            .foregroundColor(.red)
                        Slider(
                            value: $modelData.RValue,
                            in: 0...1
                        ).accentColor(.red)
                        Image(systemName: modelData.compColor ? "minus" : "plus")
                            .foregroundColor(.red)
                    }
                }
                .padding(.top)
                
                VStack
                {
                    Text("GREEN")
                        .foregroundColor(.green)
                        .italic()
                    
                    HStack
                    {
                        Image(systemName: modelData.compColor ? "plus" : "minus")
                            .foregroundColor(.green)
                        Slider(
                            value: $modelData.GValue,
                            in: 0...1
                        ).accentColor(.green)
                        Image(systemName: modelData.compColor ? "minus" : "plus")
                            .foregroundColor(.green)
                    }
                    .offset(y: -8)
                }
                .padding(.top)
                
                VStack
                {
                    Text("BLUE")
                        .foregroundColor(.blue)
                        .italic()
                    
                    HStack
                    {
                        Image(systemName: modelData.compColor ? "plus" : "minus")
                            .foregroundColor(.blue)
                        Slider(
                            value: $modelData.BValue,
                            in: 0...1
                        ).accentColor(.blue)
                        Image(systemName: modelData.compColor ? "minus" : "plus")
                            .foregroundColor(.blue)
                    }
                    .offset(y: -8)
                }
                .padding(.top)
                
                VStack
                {
                    Text("OPACITY")
                        .foregroundColor(.black.opacity(0.3))
                        .italic()
                    HStack
                    {
                        Image(systemName: "plus")
                            .foregroundColor(.black.opacity(0.3))
                        Slider(
                            value: $modelData.Opacity,
                            in: 0...1
                            
                        ).accentColor(.black.opacity(0.3))
                        Image(systemName: "minus")
                            .foregroundColor(.black.opacity(0.3))
                    }
                    .offset(y: -8)
                }
                .padding(.top)
            }
            .frame(width: UIScreen.main.bounds.width * 0.9)
        }
    }
}

struct RGBSelectorView_Previews: PreviewProvider {
    static var previews: some View {
        RGBSelectorView().environmentObject(ModelData())
    }
}
