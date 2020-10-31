//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

final class ViewController: UIViewController {
    
    // MARK: - Property
    
    var storyBrain = StoryBrain()
    
    // MARK: - Outlets

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    // MARK: - Load view
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    // MARK: - Functions
    
    private func updateUI() {
        storyLabel.text = storyBrain.getTitleStory()
        choice1Button.setTitle(storyBrain.getTitleButton1(), for: .normal)
        choice2Button.setTitle(storyBrain.getTitleButton2(), for: .normal)
    }
    
    // MARK: - Actions
    
    @IBAction func choiceMade(_ sender: UIButton) {
        guard let userAnswer = sender.currentTitle else {return}
        storyBrain.nextStory(userChoice: userAnswer)
        updateUI()

    }
}

