//
//  CustomARViewRepresentable.swift
//  playgroundARKit
//
//  Created by ii on 15.05.23.
//

import SwiftUI

struct CustomARViewRepresentable: UIViewRepresentable {
    
    @Binding var arView: CustomARView
    
    func makeUIView(context: Context) -> CustomARView {
        return arView
    }
    
    //Unused but required
    func updateUIView(_ uiView: UIViewType, context: Context) {
    }
    
}
