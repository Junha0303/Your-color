//
//  ContentView.swift
//  RGB
//
//  Created by 박준하 on 2021/07/04.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        RGBSelectorView().environmentObject(ModelData())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
