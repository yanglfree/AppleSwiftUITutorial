//
//  ProfileHost.swift
//  AppleSwiftUITutorials
//
//  Created by yl on 2019/9/23.
//  Copyright © 2019 yl. All rights reserved.
//

import SwiftUI

struct ProfileHost: View {

    @EnvironmentObject var userData: UserData
    @Environment(\.editMode) var mode
    @State var draftProfile = Profile.default
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20){
            
            HStack {
                Spacer()
                EditButton()
            }
            
            if self.mode?.wrappedValue == .inactive{ ProfileSummary(profile:userData.profile)
            }else{
                ProfileEditor(profile: $draftProfile)
            }
        }
        .padding()
    }
}

struct ProfileHost_Previews: PreviewProvider {
    static var previews: some View {
        ProfileHost().environmentObject(UserData())
    }
}
