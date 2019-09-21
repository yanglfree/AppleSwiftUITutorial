//
//  RotatedBadgeSymbol.swift
//  AppleSwiftUITutorials
//
//  Created by yl on 2019/9/20.
//  Copyright © 2019 yl. All rights reserved.
//

import SwiftUI

struct RotatedBadgeSymbol: View {
    
    var angle: Angle
    
    var body: some View {
        BadgeSymbol()
            .padding(-60)
            .rotationEffect(angle,anchor: .bottom)
    }
}

struct RotatedBadgeSymbol_Previews: PreviewProvider {
    static var previews: some View {
        RotatedBadgeSymbol(angle: .init(degrees: 5))
    }
}
