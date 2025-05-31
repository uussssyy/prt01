//
//  Sub01View.swift
//  prt01
//
//  Created by 牛田啓介 on 2025/05/25.
//

import SwiftUI

struct Sub01View: View {
    @Binding var isShowBView: Bool
    var body: some View {
        ZStack {
            Color(.orange)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Text("BView")
                    .font(.largeTitle)
                Button {
                    isShowBView = false
                } label: {
                    Text("閉じる")
                        .font(.largeTitle)
                        .padding()
                        .background(.green)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
            }
        }
    }
}

