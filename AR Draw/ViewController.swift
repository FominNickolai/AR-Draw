//
//  ViewController.swift
//  AR Draw
//
//  Created by Fomin Nickolai on 22.09.17.
//  Copyright © 2017 Fomin Nickolai. All rights reserved.
//

import UIKit
import ARKit

class ViewController: UIViewController {
    
    //MARK: - @IBOutlets

    @IBOutlet weak var sceneView: ARSCNView!
    
    //MARK: - Properties
    
    let configuration = ARWorldTrackingConfiguration()
    
    //MARK: - Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.sceneView.debugOptions = [ARSCNDebugOptions.showFeaturePoints, ARSCNDebugOptions.showWorldOrigin]
        self.sceneView.showsStatistics = true
        self.sceneView.session.run(configuration, options: [])
        
        self.sceneView.delegate = self
    }

    //MARK: @IBActions
    
    @IBAction func drawBtnPressed(_ sender: UIButton) {
    }
    
}

extension ViewController: ARSCNViewDelegate {
    
    func renderer(_ renderer: SCNSceneRenderer, willRenderScene scene: SCNScene, atTime time: TimeInterval) {
        print("rendering")
    }
    
}















