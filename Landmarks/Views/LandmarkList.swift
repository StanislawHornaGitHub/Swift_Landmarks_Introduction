//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Stanisław Horna on 13/06/2023.
//

import SwiftUI

struct LandmarkList: View {
    @State private var showFavouriteOnly = false
    
    var body: some View {
        NavigationView{
            List(landmarks) { landmark in
                NavigationLink {
                    LandmarkDetail(landmark: landmark)
                } label: {
                    LandmarkRow(landmark: landmark)
                }
            }
            .navigationTitle("Landmarks")
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}
