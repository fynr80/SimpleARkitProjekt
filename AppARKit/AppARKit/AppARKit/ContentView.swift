//
//  ContentView.swift
//  AppARKit
//
//  Created by ii on 15.05.23.
//

import SwiftUI
struct ContentView: View {
    @State var arView = CustomARView()

    var body: some View {
        CustomARViewRepresentable(arView: $arView)
            .ignoresSafeArea()
            .overlay(alignment: .bottom){
                HStack(spacing: 20){
                        Button{
                            arView.placeElement()
                        } label: {
                            Image(systemName: "cube.fill")
                                .font(.system(size: 72))
                                .foregroundColor(.blue)
                                .padding(10)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 20)
                                        .stroke(.blue, lineWidth: 4)
                                )
                            
                        }
                        Button{
                            arView.placeElement2()
                        }  label: {
                            Image(systemName: "circle.fill")
                                .font(.system(size: 72))
                                .foregroundColor(.red)
                                .padding(10)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 20)
                                        .stroke(.red, lineWidth: 4)
                                )
                            
                        }
                        Button{
                            arView.placeElement3()
                        } label: {
                            Image(systemName: "minus")
                                .font(.system(size: 72))
                                .foregroundColor(.yellow)
                                .padding(12)
                                .padding([.bottom, .top], 30)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 20)
                                        .stroke(.yellow, lineWidth: 4)
                                )
                        }
                }
            }
        }
    }
