//
//  CategoryRow.swift
//  Landmarks
//
//  Created by Changhao Li on 2021/12/7.
//

import SwiftUI

struct CategoryRow: View {

    var categoryName: String
    var items: [Landmark]

    var body: some View {
        VStack(alignment: .leading) {
            Text(categoryName)
                .font(.headline)
                .padding(.leading, 15)
                .padding(.top, 5)

            HStack {
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(alignment: .top, spacing: 0) {
                        ForEach(items) { landmark in
                            NavigationLink(destination: LandmarkDetail(landmark: landmark)) {
                                CategoryItem(landmark: landmark)
                            }
                        }
                    }
                }
                .frame(height: 185)
            }
            .padding(.trailing, 15)
        }
    }
}

struct CategoryRow_Previews: PreviewProvider {
    static var landmarks = ModelData().landmarks
    static var previews: some View {
        CategoryRow(
            categoryName: landmarks[0].category.rawValue,
            items: Array(landmarks.prefix(4)))
    }
}
