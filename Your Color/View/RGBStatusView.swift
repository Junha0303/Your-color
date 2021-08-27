//
//  RGBStatusView.swift
//  RGB
//
//  Created by 박준하 on 2021/07/05.
//

import SwiftUI

struct RGBStatusView: View {
    @EnvironmentObject var modelData: ModelData
    
    var body: some View {
        ZStack
        {
            VStack
            {
                Spacer()
                
                if !modelData.compColor
                {
                    HStack
                    {
                        Text("R: \(modelData.RValue * 255, specifier: "%.2f")")
                            .font(.system(size: 10 + CGFloat(modelData.RValue) * 12))
                            .italic()
                        Text("G: \(modelData.GValue * 255, specifier: "%.2f")")
                            .font(.system(size: 10 + CGFloat(modelData.GValue) * 12))
                            .italic()
                        Text("B: \(modelData.BValue * 255, specifier: "%.2f")")
                            .font(.system(size: 10 + CGFloat(modelData.BValue) * 12))
                            .italic()
                    }
                    Text("Opacity: \(1 - modelData.Opacity, specifier: "%.2f")")
                        .font(.system(size: 10 + CGFloat(1 - modelData.Opacity) * 12))
                        .italic()
                    
                    Text("#\(convertToHex(red: modelData.RValue, green: modelData.GValue, blue: modelData.BValue))")
                        .font(.system(size: 14))
                        .italic()
                }
                else
                {
                    HStack
                    {
                        Text("R: \((1 - modelData.RValue) * 255, specifier: "%.2f")")
                            .font(.system(size: 10 + CGFloat(1 - modelData.RValue) * 10))
                            .italic()
                        Text("G: \((1 - modelData.GValue) * 255, specifier: "%.2f")")
                            .font(.system(size: 10 + CGFloat(1 - modelData.GValue) * 10))
                            .italic()
                        Text("B: \((1 - modelData.BValue) * 255, specifier: "%.2f")")
                            .font(.system(size: 10 + CGFloat(1 - modelData.BValue) * 10))
                            .italic()
                    }
                    Text("Opacity: \(1 - modelData.Opacity, specifier: "%.2f")")
                        .font(.system(size: 10 + CGFloat(1 - modelData.Opacity) * 10))
                        .italic()
                    
                    Text("#\(convertToHex(red: 1 - modelData.RValue, green: 1 - modelData.GValue, blue: 1 - modelData.BValue))")
                        .font(.system(size: 13))
                        .italic()
                }

                Text("* Color in the top-half of your screen is the exact color.")
                    .font(.system(size: 10))
                    .italic()
                    .padding(.top, 2)
                    .foregroundColor(Color(red: modelData.RValue, green: modelData.GValue, blue: modelData.BValue, opacity: 1.0 - modelData.Opacity))
            }.padding(.bottom)
        }
    }
}

struct RGBStatusView_Previews: PreviewProvider {
    static var previews: some View {
        RGBStatusView().environmentObject(ModelData())
    }
}
