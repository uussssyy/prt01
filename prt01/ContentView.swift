//
//  ContentView.swift
//  prt01
//
//  Created by 牛田啓介 on 2025/05/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Hello, world!")
            .padding()
        Button(action: {
            // ボタンがタップされた時の処理
            print("Button tapped!")
        }) {
            Text("Tap me")
        }
        VStack {
            Text("Item 1")
            Text("Item 2")
            Text("Item 3")
        }
        HStack {
             Text("Left")
             Spacer()
             Text("Center")
             Spacer()
             Text("Right")
         }
        ZStack {
            Rectangle()
                .frame(width: 200, height: 200)
                .foregroundColor(.blue)
            
            Text("Hello, ZStack!")
                .foregroundColor(.white)
        }
        VStack {
            HStack {
                Text("Left")
                Spacer()
                Text("Center")
                Spacer()
                Text("Right")
            }
            
            ZStack {
                Rectangle()
                    .frame(width: 200, height: 200)
                    .foregroundColor(.blue)
                
                Text("Hello, ZStack!")
                    .foregroundColor(.white)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
