//
//  HikeBadge.swift
//  AppleSwiftUITutorials
//
//  Created by yl on 2019/9/23.
//  Copyright © 2019 yl. All rights reserved.
//

import SwiftUI

struct HikeBadge: View {
    var name: String
    
    var body: some View {

//        VStack {
//            Badge()
//                .frame(width: 300, height:300)
//                .scaleEffect(1.0 / 3.0)
//                .frame(width: 100, height: 100)
//
//            Text(name)
//                .font(.caption)
//                .accessibility(label: "Badge for \(name)")
//
//        }
        
        
        VStack {
            
            Badge()
                .frame(width: 300, height:300)
                .scaleEffect(1.0 / 3.0)
                .frame(width: 100, height: 100)
            
            Text(name)
                .font(.caption)
                .accessibility(identifier: "Badge for \(name)")
        }
        
    }
}

struct HikeBadge_Previews: PreviewProvider {
    static var previews: some View {
        HikeBadge(name: "Preview Testing")
    }
}
