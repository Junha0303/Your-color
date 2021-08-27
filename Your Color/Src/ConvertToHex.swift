//
//  ConvertToHex.swift
//  RGB
//
//  Created by 박준하 on 2021/07/06.
//

import Foundation

func convertToHex(red: Double, green: Double, blue: Double) -> String {
    let r: UInt8 = UInt8(round(red * 255))
    let g: UInt8 = UInt8(round(green * 255))
    let b: UInt8 = UInt8(round(blue * 255))
    
    return String(format: "%02x", r) + String(format: "%02x", g) + String(format: "%02x", b)
}
