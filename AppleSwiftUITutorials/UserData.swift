//
//  UserData.swift
//  AppleSwiftUITutorials
//
//  Created by yl on 2019/9/20.
//  Copyright © 2019 yl. All rights reserved.
//

import SwiftUI
import Combine

final class UserData: ObservableObject{
    
    @Published var showFavoritesOnly = false
    @Published var landmarks = landmarkData
    @Published var profile = Profile.default
}
