//
//  ContentView.swift
//  WatchLandmarks WatchKit Extension
//
//  Created by Changhao Li on 2021/12/7.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandmarkList()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ModelData())
    }
}
