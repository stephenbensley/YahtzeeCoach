//
// Copyright 2024 Stephen E. Bensley
//
// This file is licensed under the MIT License. You may obtain a copy of the
// license at https://github.com/stephenbensley/YahtzeeCoach/blob/main/LICENSE.
//

import SwiftUI

func hexColor(_ hex: UInt) -> Color {
    let r = Double((hex & 0xff0000) >> 16) / 255
    let g = Double((hex & 0x00ff00) >>  8) / 255
    let b = Double((hex & 0x0000ff)      ) / 255
    return Color(red: r, green: g, blue: b)
}

struct Palette {
    static let scoreCard = Color.black
    static let scoreCardBackground = Color.white
    static let score = hexColor(0x5c6274)
    static let selected = Color.orange
    static let dicePips = Color.white
    static let diceFill = hexColor(0x00ced1)
    static let background = hexColor(0xc50935)
    static let toolbar = Color.white
    static let buttonEnabled = hexColor(0xe1b351)
    static let buttonDisabled = hexColor(0x57400f)

}

struct Fonts {
    static let yahtzeeBrand = "MarkerFelt-wide"
    static let scoreCard = "Futura-Medium"
    static let score =  "ChalkboardSE-Regular"
}

struct Lengths {
    static let selectionWidth = 4.0
    static let diceSpacing = 15.0
}

struct YahtzeeShadow: ViewModifier {
    func body(content: Content) -> some View {
        content
            .shadow(color: .black, radius: 3, x: 3, y: 3)
    }
}

extension View {
    func yahtzeeShadow() -> some View {
        modifier(YahtzeeShadow())
    }
}