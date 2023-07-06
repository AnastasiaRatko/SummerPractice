//
//  CategoryItem.swift
//  Landmarks
//
//  Created by Анастасия Ратниченко on 05.07.2023.
//

import SwiftUI


struct CategoryItem: View {
    var landmark: Landmark


    var body: some View {
        VStack(alignment: .leading) {
            landmark.image
                .renderingMode(.original)
                .resizable()
                .frame(width: 155, height: 155)
                .cornerRadius(5)
            Text(landmark.name)
                .fontWeight(.bold)
                .foregroundColor(Color(hue: 0.582, saturation: 0.47, brightness: 0.942))
                .font(.footnote)
        }
        .padding(.leading, 15)
    }
}


struct CategoryItem_Previews: PreviewProvider {
    static var previews: some View {
        CategoryItem(landmark: ModelData().landmarks[0])
    }
}
