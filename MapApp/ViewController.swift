//
//  ViewController.swift
//  MapApp
//
//  Created by Ryo on 2019/10/19.
//  Copyright © 2019 Ryo. All rights reserved.
//

import UIKit
import GoogleMaps
import CoreLocation
import PopupDialog


class ViewController: UIViewController {
    
    @IBOutlet weak var mapView: GMSMapView!
    @IBOutlet weak var gameScoreView: UIView!
    @IBOutlet weak var diamondScoreView: UIView!
    @IBOutlet weak var butterflyScoreView: UIView!
    @IBOutlet weak var featherScoreView: UIView!
    @IBOutlet weak var diamondScoreLabel: UILabel!
    @IBOutlet weak var butterflyScoreLabel: UILabel!
    @IBOutlet weak var featherScoreLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        setUpScoreView()
    }
    


    //MARK: ScoreView
    func setUpScoreView() {
            self.view.bringSubviewToFront(gameScoreView)
            gameScoreView.layer.cornerRadius = 10
            gameScoreView.layer.maskedCorners = [.layerMaxXMinYCorner, .layerMaxXMaxYCorner]
            
            diamondScoreView.layer.cornerRadius = 25
            butterflyScoreView.layer.cornerRadius = 25
            featherScoreView.layer.cornerRadius = 25
            
            diamondScoreView.layer.masksToBounds = true
            butterflyScoreView.layer.masksToBounds = true
            featherScoreView.layer.masksToBounds = true
        }
    

}

