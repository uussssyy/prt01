//
//  ContentView.swift
//  prt01
//
//  Created by 牛田啓介 on 2025/05/24.
//

import SwiftUI

struct ContentView: View {
    @State var isShowBView = false
    
    @State private var test1: String = ""
    @State private var test2: String = ""
    @State private var test3: String = ""
    @State private var test4: String = ""
    
    @State private var result1: String = "　"
    @State private var result2: String = "　"
    @State private var result3: String = "　"
    @State private var result4: String = "　"
    
    @State var randArray1 = [Int.random(in: 1...10),Int.random(in: 1...10)]
    @State var randArray2 = [Int.random(in: 1...10),Int.random(in: 1...10)]
    
    var body: some View {
        ScrollView {
            let ansArray = [randArray1[0] * randArray2[0],randArray1[1] * randArray2[0],randArray1[0] * randArray2[1],randArray1[1] * randArray2[1]]
            Text("keisanApp ver1")
            VStack {
                HStack {
                    Rectangle().frame(width: 70, height: 30)
                    //Spacer()
                    ZStack {
                        Rectangle()
                            .frame(width: 70, height: 30)
                        Text(String(randArray1[0]))
                            .foregroundColor(.white)
                    }
//                    VStack {
//                        Text(String(randArray1[0]))
//                            .foregroundColor(.white)
//                            .padding()
//                            .background(
//                                Rectangle()
//                                    .fill(.blue)
//                            )
//                    }
                    //Text(String(randArray1[0]))
                    //Spacer()
                    ZStack {
                        Rectangle()
                            .frame(width: 70, height: 30)
                        Text(String(randArray1[1]))
                            .foregroundColor(.white)
                    }
                    //Text(String(randArray1[1]))
                    Spacer()
                }
                Spacer()
                HStack {
                    ZStack {
                        Rectangle()
                            .frame(width: 70, height: 30)
                        Text(String(randArray2[0]))
                            .foregroundColor(.white)
                    }
                    //Text(String(randArray2[0]))
                    TextField(
                        "test1",
                        text: $test1
                    ).keyboardType(.numberPad).frame(width: 45, height: 30)
                    Text(result1)
                    TextField(
                        "test2",
                        text: $test2
                    ).keyboardType(.numberPad).frame(width: 45, height: 30)
                    Text(result2)
                    Spacer()
                }
                Spacer()
                HStack {
                    ZStack {
                        Rectangle()
                            .frame(width: 70, height: 30)
                        Text(String(randArray2[1]))
                            .foregroundColor(.white)
                    }
                    //Text(String(randArray2[1]))
                    TextField(
                        "test3",
                        text: $test3
                    ).keyboardType(.numberPad).frame(width: 45, height: 30)
                    Text(result3)
                    TextField(
                        "test4",
                        text: $test4
                    ).keyboardType(.numberPad).frame(width: 45, height: 30)
                    Text(result4)
                    Spacer()
                }
                Button(action: {
                    if ansArray[0] == Int(test1){
                        result1 = "⭕️"
                    }else{
                        result1 = "✖️"
                    }
                    if ansArray[1] == Int(test2){
                        result2 = "⭕️"
                    }else{
                        result2 = "✖️"
                    }
                    if ansArray[2] == Int(test3){
                        result3 = "⭕️"
                    }else{
                        result3 = "✖️"
                    }
                    if ansArray[3] == Int(test4){
                        result4 = "⭕️"
                    }else{
                        result4 = "✖️"
                    }
                    print("Checking Button tapped!")
                }) {
                    Text("Checking answers")
                }.buttonStyle(BorderedButtonStyle())
            }
            VStack {
                Button {
                    isShowBView = true
                } label: {
                    Text("Sub01Viewへ")
                }.buttonStyle(BorderedButtonStyle())
                .sheet(isPresented: $isShowBView) {
                    Sub01View(isShowBView: $isShowBView)
                }
            }
        }
    }
}

