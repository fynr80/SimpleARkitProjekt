//
//  CustomARView.swift
//  playgroundARKit
//
//  Created by ii on 15.05.23.
//

import SwiftUI
import RealityKit
import ARKit


class CustomARView: ARView {

    required init(frame frameRect: CGRect) {
        super.init(frame: frameRect)
    }
    
    dynamic required init?(coder decoder: NSCoder) {
        fatalError("init(coder) has not been implemented")
    }
    
    convenience init() {
        self.init(frame: UIScreen.main.bounds)
    }
    
    func placeElement(){
        scene.anchors.removeAll()
        let object = MeshResource.generateBox(size: 0.5)
        let material = SimpleMaterial(color: .blue, isMetallic: false)
        let entity = ModelEntity(mesh: object, materials: [material])

        let anchor = AnchorEntity(plane: .horizontal)
        anchor.addChild(entity)
        scene.addAnchor(anchor)
    }
    
    func placeElement2(){
        scene.anchors.removeAll()

        let object = MeshResource.generateSphere(radius: 0.5)
        let material = SimpleMaterial(color: .red, isMetallic: false)
        let entity = ModelEntity(mesh: object, materials: [material])
        
        let anchor = AnchorEntity(plane: .horizontal)
        anchor.addChild(entity)
        
        scene.addAnchor(anchor)
    }
    
    func placeElement3(){
        scene.anchors.removeAll()
        
        let object = MeshResource.generatePlane(width: 1, depth: 1)
        let material = SimpleMaterial(color: .yellow, isMetallic: false)
        let entity = ModelEntity(mesh: object, materials: [material])
        
        let anchor = AnchorEntity(.plane(
            [.horizontal], classification: .any, minimumBounds: [1, 1])
        )
        anchor.position.y = 0.5
        anchor.addChild(entity)
        
        scene.addAnchor(anchor)
    }

}

