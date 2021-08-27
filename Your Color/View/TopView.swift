//
//  TopView.swift
//  RGB
//
//  Created by 박준하 on 2021/07/05.
//

import SwiftUI

struct TopView: View {
    @EnvironmentObject var modelData: ModelData
    
    var body: some View {
        ZStack(alignment: .bottomLeading)
        {
            VStack
            {
                VStack
                {
                    ToggleView().environmentObject(modelData)
                        .padding(3)
                        .overlay(RoundedRectangle(cornerRadius: 10)
                                    .stroke(colorSelector(modelData)))
                    HStack{
                        CaptureView().environmentObject(modelData)
                            .padding(5)
                            .overlay(RoundedRectangle(cornerRadius: 10)
                                        .stroke(colorSelector(modelData)))
                        RandomColorGeneratorView(modelData: modelData)
                            .padding(5)
                            .overlay(RoundedRectangle(cornerRadius: 10)
                                        .stroke(colorSelector(modelData)))
                    }
                }
                
                Spacer()
            }
            .padding(25)
        }
    }
}

struct TopView_Previews: PreviewProvider {
    static var previews: some View {
        TopView().environmentObject(ModelData())
    }
}
