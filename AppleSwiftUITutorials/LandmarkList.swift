//
//  LandmarkList.swift
//  AppleSwiftUITutorials
//
//  Created by yl on 2019/9/20.
//  Copyright © 2019 yl. All rights reserved.
//

import SwiftUI

struct LandmarkList: View {
    
    @EnvironmentObject var userData: UserData
    
    var body: some View {
        NavigationView{
            List{
                Toggle(isOn: $userData.showFavoritesOnly){
                    Text("Favorite only")
                }

                ForEach(userData.landmarks) { landmark in
                    if !self.userData.showFavoritesOnly || landmark.isFavorite{
                        NavigationLink(destination: LandmarkDetail(landmark: landmark)){
                            LandmarkRow(landmark: landmark)
                        }
                    }
                }
                
            }
            .navigationBarTitle(Text("Landmarks"))
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(["iPhone XS"], id: \.self){ deviceName in
            LandmarkList().environmentObject(UserData())
        }
        
    }
}
