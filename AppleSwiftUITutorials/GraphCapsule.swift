//
//  GraphCapsule.swift
//  AppleSwiftUITutorials
//
//  Created by yl on 2019/9/20.
//  Copyright © 2019 yl. All rights reserved.
//

import SwiftUI
import CoreGraphics

struct GraphCapsule: View {
    
    var index: Int
    var height: CGFloat
    var range: Range<Double>
    var overallRange: Range<Double>
    
//    var heigthRatio: CGFloat{
//        max(CGFloat(magnitude(of: range) / magnitude(of: overallRange)), 0.15)
//    }
//
    var heightRatio: CGFloat
    
    
    var offsetRatio: CGFloat{
        CGFloat((range.lowerBound - overallRange.lowerBound))
    }
    
    var animation: Animation{
        Animation.spring(dampingFraction: 0.5).speed(2)
            .delay(0.03 * Double(index))
    }
    
    var body: some View {
        Capsule()
            .fill(Color.gray)
            .frame(height: height * heightRatio, alignment: .bottom)
            .offset(x: 0, y: height * -offsetRatio)
            .animation(animation)
    }
}

