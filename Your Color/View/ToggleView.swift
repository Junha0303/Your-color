//
//  ToggleView.swift
//  RGB
//
//  Created by 박준하 on 2021/07/05.
//

import SwiftUI

struct ToggleView: View {
    @EnvironmentObject var modelData: ModelData

    var body: some View {
        HStack {
            Toggle(isOn: $modelData.compColor, label: {
                Image(systemName: "arrow.left.arrow.right")
                    .foregroundColor(colorSelector(modelData))
                Text("View complementary color ")
                    .font(.system(size: 12))
                    .italic()
                    .foregroundColor(colorSelector(modelData))
            })
        }
    }
}

struct ToggleView_Previews: PreviewProvider {
    static var previews: some View {
        ToggleView().environmentObject(ModelData())
    }
}
