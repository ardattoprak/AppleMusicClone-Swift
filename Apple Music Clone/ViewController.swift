//
//  ViewController.swift
//  Apple Music Clone
//
//  Created by Arda Toprak on 23.01.2023.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: - UI Elements
    
    @IBOutlet var albumImageView: UIImageView!
    @IBOutlet var reverseBackGroundView: UIView!
    @IBOutlet var playBackGroundView: UIView!
    @IBOutlet var forwardBackGroundView: UIView!
    
    @IBOutlet var reverseButton: UIButton!
    @IBOutlet var playPauseButton: UIButton!
    @IBOutlet var forwardButton: UIButton!
    
    // MARK: - Properties
    
    var isPlaying: Bool = true {
        didSet {
            if isPlaying {
                playPauseButton.setImage(UIImage(named: "pause"), for: .normal)
            } else {
                playPauseButton.setImage(UIImage(named: "play"), for: .normal)
            }
        }
    }

    // MARK: - Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        reverseBackGroundView.layer.cornerRadius = 35
        reverseBackGroundView.clipsToBounds = true
        reverseBackGroundView.alpha = 0
        
        playBackGroundView.layer.cornerRadius = 35
        playBackGroundView.clipsToBounds = true
        playBackGroundView.alpha = 0
        
        forwardBackGroundView.layer.cornerRadius = 35
        forwardBackGroundView.clipsToBounds = true
        forwardBackGroundView.alpha = 0
    }
    
    // MARK: - Actions
    @IBAction func playPauseButtonTapped(_ button: UIButton) {
        if isPlaying {
            UIView.animate(withDuration: 0.5) {
                self.albumImageView.transform = CGAffineTransform(scaleX: 0.8, y: 0.8)
            }
        } else {
            UIView.animate(withDuration: 0.5) {
                self.albumImageView.transform = .identity
            }
        }
        
        isPlaying.toggle()
        // Trueysa false falsesa true yapar
    }

}

