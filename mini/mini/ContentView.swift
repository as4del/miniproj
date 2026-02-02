//
//  ContentView.swift
//  mini
//
//  Created by Георгий Мельников  on 02.02.2026.
//

import SwiftUI

struct ContentView: View {
    @State var type = 0;
    var body: some View {
        VStack (spacing : 200){
            VStack (spacing : 20) {
                HStack (spacing : 30){
                    Button("HStack") {
                        type = 1
                    }
                    Button("VStack") {
                        type = 2
                    }
                    Button("ZStack") {
                        type = 3
                    }
                }
                Button("Combine") {
                    type = 4
                }
                Button("GeometryReader") {
                    type = 5
                }
            }
            if (type == 0) {
                Text("Выбери тип")
            }
            else if (type == 1) {
                    HStack (spacing : 0){
                        Rectangle().fill(Color.red)
                            .frame(width: 100, height: 100)
                        Rectangle().fill(Color.blue)
                            .frame(width: 100, height: 100)
                        Rectangle().fill(Color.black)
                            .frame(width: 100, height: 100)
                    }
            }
            else if (type == 2) {
                VStack (spacing : 0){
                    Rectangle().fill(Color.red)
                        .frame(width: 100, height: 100)
                    Rectangle().fill(Color.blue)
                        .frame(width: 100, height: 100)
                    Rectangle().fill(Color.black)
                        .frame(width: 100, height: 100)
                }
            }
            else if (type == 3) {
                ZStack {
                    Rectangle().fill(Color.red)
                        .frame(width: 200, height: 200)
                    Rectangle().fill(Color.blue)
                        .frame(width: 150, height: 150)
                    Rectangle().fill(Color.black)
                        .frame(width: 100, height: 100)
                }
            }
            else if (type == 4) {
                VStack (spacing : 0) {
                    Rectangle().fill(Color.red)
                        .frame(width : 350, height: 150)
                    HStack (spacing : 0) {
                        Rectangle().fill(Color.blue)
                            .frame(width: 175, height: 150)
                        ZStack {
                            Rectangle().fill(Color.black)
                                .frame(width: 175, height: 150)
                            Rectangle().fill(Color.gray)
                                .frame(width: 75, height: 75)
                        }
                    }
                }
            }
            else if (type == 5) {
                GeometryReader { geometry in
                    VStack {
                        Text("Ширина: \(Int(geometry.size.width))")
                        Text("Высота: \(Int(geometry.size.height))")
                    }
                    .frame(width: geometry.size.width * 0.8)
                }
                .border(Color.black)
            }
        }
    }
}

#Preview {
    ContentView()
}
