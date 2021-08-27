//
//  ColorSelector.swift
//  Your Color
//
//  Created by 박준하 on 2021/07/07.
//

import Foundation
import SwiftUI

func colorSelector(_ modelData: ModelData)->Color {
    if modelData.Opacity > 0.7
    {
        return .black
    }
    
    if (((modelData.RValue > 160/255) && (modelData.GValue > 160/255) && (modelData.BValue > 160/255)))
    {
        if modelData.compColor
        {
            return .white
        }
        else
        {
            return .black
        }
    }
    else
    {
        if modelData.compColor
        {
            return .black
        }
        else
        {
            return .white
        }
    }
}
