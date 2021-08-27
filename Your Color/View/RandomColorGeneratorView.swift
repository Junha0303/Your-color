//
//  RandomColorGeneratorView.swift
//  RGB
//
//  Created by 박준하 on 2021/07/06.
//

import SwiftUI

struct RandomColorGeneratorView: View {
    @ObservedObject var modelData: ModelData
    
    var body: some View {
        Button(action: {
            let r: Double = Double.random(in: 0.0...1.0)
            let g: Double = Double.random(in: 0.0...1.0)
            let b: Double = Double.random(in: 0.0...1.0)
            let o: Double = Double.random(in: 0.0...1.0)
            self.modelData.RValue = r
            self.modelData.GValue = g
            self.modelData.BValue = b
            self.modelData.Opacity = o
            self.modelData.objectWillChange.send()
        })
        {
            HStack {
                Text("Generate\nRandom Color")
                    .foregroundColor(colorSelector(modelData))
                    .font(.system(size: 12))
                    .italic()
                Spacer()
                Image(systemName: "questionmark.circle")
                    .resizable()
                    .foregroundColor(colorSelector(modelData))
                    .frame(width: 17, height: 17)
                    .offset(x: -5)
            }
        }
    }
}

struct RandomColorGeneratorView_Previews: PreviewProvider {
    static var previews: some View {
        RandomColorGeneratorView(modelData: ModelData())
    }
}
