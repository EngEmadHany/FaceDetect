//
//  ViewController.swift
//  FaceDetection
//
//  Created by Emad Isaac on 21/05/2022.
//

import UIKit
import RealityKit
import ARKit

class ViewController: UIViewController, ARSessionObserver{
    
    @IBOutlet var arViewRendering: ARView!
    
    var experienceScene: Experience.Scene?
    var faceTrackingConfigurations: ARFaceTrackingConfiguration?

    
    override func viewDidLoad() {
        super.viewDidLoad()
        startDetecting()
        setAR()
    }
    
    func startDetecting() {
        
        faceTrackingConfigurations = ARFaceTrackingConfiguration()
        arViewRendering.session.run(faceTrackingConfigurations!)
        
    }
    
    func setAR() {
        
        // get experience scene and append it on the view anchors
        experienceScene = try! Experience.loadScene()
        arViewRendering.scene.anchors.append(experienceScene!)
    }
    
   
}
