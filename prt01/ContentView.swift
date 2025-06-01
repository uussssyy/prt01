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
    
    @State var randArray1 = [Int.random(in: 1...9),Int.random(in: 1...9)]
    @State var randArray2 = [Int.random(in: 1...9),Int.random(in: 1...9)]
    
    var body: some View {
        ScrollView {
            let ansArray = [randArray1[0] * randArray2[0],randArray1[1] * randArray2[0],randArray1[0] * randArray2[1],randArray1[1] * randArray2[1]]
            Text("keisanApp ver1")
            VStack {
                HStack {
                    Spacer().frame(width: 10)
                    Rectangle().frame(width: 70, height: 30)
                    ZStack {
                        Rectangle()
                            .frame(width: 70, height: 30)
                        Text(String(randArray1[0]))
                            .foregroundColor(.white)
                    }
                    ZStack {
                        Rectangle()
                            .frame(width: 70, height: 30)
                        Text(String(randArray1[1]))
                            .foregroundColor(.white)
                    }
                    Spacer()
                }
                Spacer()
                HStack {
                    Spacer().frame(width: 10)
                    ZStack {
                        Rectangle()
                            .frame(width: 70, height: 30)
                        Text(String(randArray2[0]))
                            .foregroundColor(.white)
                    }
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
                    Spacer().frame(width: 10)
                    ZStack {
                        Rectangle()
                            .frame(width: 70, height: 30)
                        Text(String(randArray2[1]))
                            .foregroundColor(.white)
                    }
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
                HStack {
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
                        print("Checking Button tapped.")
                    }) {
                        Text("Check!")
                    }.buttonStyle(BorderedButtonStyle())
                        .background(.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                    Button {
                        isShowBView = true
                    } label: {
                        Text("Sub01Viewへ")
                    }.buttonStyle(BorderedButtonStyle())
                        .background(.green)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                        .sheet(isPresented: $isShowBView) {
                            Sub01View(isShowBView: $isShowBView)
                        }
                    Button {
                        print("Changing Button tapped.")
                    } label: {
                        Text("Change!")
                    }.buttonStyle(BorderedButtonStyle())
                        .background(.orange)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
            }
        }
    }
}

