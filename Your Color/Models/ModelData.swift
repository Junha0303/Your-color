//
//  ModelData.swift
//  RGB
//
//  Created by 박준하 on 2021/07/05.
//

import Foundation

final class ModelData: ObservableObject {
    @Published var compColor: Bool = false
    @Published var RValue: Double = 0.0
    @Published var BValue: Double = 0.0
    @Published var GValue: Double = 0.0
    @Published var Opacity: Double = 0.0
    
    @Published var showSuccessAlert: Bool = false
    @Published var showFailureAlert: Bool = false
    @Published var saveImageErrorMessage: String = ""
}
