//
//  CaptureView.swift
//  RGB
//
//  Created by 박준하 on 2021/07/05.
//

import SwiftUI
import UIKit

struct CaptureView: View {
    @EnvironmentObject var modelData: ModelData
    
    var body: some View {
        let binding = Binding (
            get: {self.modelData.showSuccessAlert || self.modelData.showFailureAlert},
            set: {
                self.modelData.showSuccessAlert = $0
                self.modelData.showFailureAlert = $0
            }
        )
        
        Button(action: {
            saveImg()
        })
        {
            HStack {
                Text("Like this color?\nCapture it!")
                    .foregroundColor(colorSelector(modelData))
                    .font(.system(size: 12))
                    .italic()
                Spacer()
                Image(systemName: "camera")
                    .resizable()
                    .foregroundColor(colorSelector(modelData))
                    .frame(width: 20, height: 17)
                    .offset(x: -5)
            }
        }
        .alert(isPresented: binding) {
            (self.modelData.showSuccessAlert && !self.modelData.showFailureAlert) ? Alert(title: Text("Successfully saved into camera roll"), dismissButton: .default(Text("Close"))) : Alert(title: Text("Something went wrong"), message: Text(modelData.saveImageErrorMessage), dismissButton: .default(Text("Close")))
        }
    }
    
    private func saveImg() {
        modelData.compColor ?
            saveUIImage(red: 1 - modelData.RValue, green: 1 - modelData.GValue, blue: 1 - modelData.BValue, opacity: 1 - modelData.Opacity, modelData: modelData) :
            saveUIImage(red: modelData.RValue, green: modelData.GValue, blue: modelData.BValue, opacity: 1 - modelData.Opacity, modelData: modelData)
    }
}

struct CaptureView_Previews: PreviewProvider {
    static var previews: some View {
        CaptureView().environmentObject(ModelData())
    }
}
