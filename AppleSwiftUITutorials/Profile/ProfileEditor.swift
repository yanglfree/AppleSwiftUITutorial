//
//  ProfileEditor.swift
//  AppleSwiftUITutorials
//
//  Created by yl on 2019/9/23.
//  Copyright © 2019 yl. All rights reserved.
//

import SwiftUI

struct ProfileEditor: View {
    @Binding var profile: Profile
    
    var body: some View {
        List{
            HStack{
                Text("Username").bold()
                Divider()
                TextField("Username",text: $profile.username)
            }
        }
    }
}

struct ProfileEditor_Previews: PreviewProvider {
    static var previews: some View {
        ProfileEditor(profile: .constant(.default))
    }
}
