//
//  CircleImage.swift
//  Landmarks
//
//  Created by Changhao Li on 2021/12/6.
//

import SwiftUI

// CircleImage
struct CircleImage: View {

    var image: Image

    var body: some View {
        image
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
            .shadow(radius: 7)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage(image: Image("turtlerock"))
    }
}
