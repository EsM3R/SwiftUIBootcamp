//
//  AsyncImgeView.swift
//  SwiftUIBootcamp
//
//  Created by Mehmet Vural on 5.06.2024.
//

import SwiftUI

struct AsyncImgeView: View {
    
    private let url : String = "https://picsum.photos/200/300"
    var body: some View {
        AsyncImage(url: URL(string: url)) {
            phase in
            switch phase {
            case .empty:
                Image(systemName: "photo.fill")
            case .success(let image):
                image
                    .resizable()
                    .aspectRatio(contentMode: .fit)
            case .failure(let _):
                Image(systemName: "photo.fill")
            @unknown default:
                fatalError("image not found")
            }
        }
    }
}

#Preview {
    AsyncImgeView()
}
