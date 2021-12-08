//
//  FavoriteButton.swift
//  Landmarks
//
//  Created by Changhao Li on 2021/12/6.
//

import SwiftUI

struct FavoriteButton: View {

    // Because you use a binding, changes made inside this view propagate back to the data source.
    @Binding var isSet: Bool

    var body: some View {
        Button {
            isSet.toggle()
        } label: {
            Image(systemName: isSet ? "star.fill" : "star")
                .foregroundColor(isSet ? .yellow : .gray)
        }

    }
}

struct FavoriteButton_Previews: PreviewProvider {
    static var previews: some View {
        FavoriteButton(isSet: .constant(true))
    }
}
