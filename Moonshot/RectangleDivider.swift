//
//  RectangleDividerView.swift
//  Moonshot
//
//  Created by Yuri Gerasimchuk on 29.05.2022.
//

import SwiftUI

struct RectangleDivider: View {
    var body: some View {
        Rectangle()
            .frame(height: 2)
            .foregroundColor(.lightBackground)
            .padding(.vertical)
    }
}

struct RectangleDividerView_Previews: PreviewProvider {
    static var previews: some View {
        RectangleDivider()
    }
}
