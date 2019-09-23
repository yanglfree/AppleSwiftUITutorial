//
//  ProfileHost.swift
//  AppleSwiftUITutorials
//
//  Created by yl on 2019/9/23.
//  Copyright © 2019 yl. All rights reserved.
//

import SwiftUI

struct ProfileHost: View {
    
//    @Enviroment(\.editMode) var mode
    @EnviromentObject var userData: UserData
    
    @State var draftProfile = Profile.default
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20){
            
            HStack {
                Spacer()
                EditButton()
            }
            
            ProfileSummary(profile:draftProfile)
        }
        .padding()
    }
}

struct ProfileHost_Previews: PreviewProvider {
    static var previews: some View {
        ProfileHost()
    }
}
