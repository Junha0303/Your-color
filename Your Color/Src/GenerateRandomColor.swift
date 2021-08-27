//
//  GenerateRandomColor.swift
//  RGB
//
//  Created by 박준하 on 2021/07/06.
//

import Foundation

func generateRandomRGB() -> [Double] {
    let res: [Double] = [
        Double.random(in: 0.0...1.0),
        Double.random(in: 0.0...1.0),
        Double.random(in: 0.0...1.0)
    ]
    return res
}
