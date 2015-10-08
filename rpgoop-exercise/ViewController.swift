//
//  ViewController.swift
//  rpgoop-exercise
//
//  Created by shivam kaushik on 07/10/15.
//  Copyright © 2015 shivam kaushik. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  var game = Game()
  
  @IBOutlet var playerOneAttackLabel: UILabel!
  @IBOutlet var playerOneAttackButton: UIButton!
  
  @IBOutlet var playerTwoAttackLabel: UILabel!
  @IBOutlet var playerTwoAttackButton: UIButton!
  
  @IBOutlet var gameProgressLabel: UILabel!
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    playerOneAttackLabel.text = "Attack"
    playerTwoAttackLabel.text = "Attack"
    gameProgressLabel.text = "Press Attack to begin"
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }

  @IBAction func playerOneAttackButtonPressed(sender: UIButton) {
    let gameResult = game.attack(game.playerOne, anotherPlayer: game.playerTwo)
    gameProgressLabel.text = gameResult.0
    resetGame(gameResult.1)
    hideButton(game.playerTwo)
    displayPlayerButton()
  }
  
  @IBAction func playerTwoAttackButtonPressed(sender: UIButton) {
    let gameResult = game.attack(game.playerTwo, anotherPlayer: game.playerOne)
    gameProgressLabel.text = gameResult.0
    resetGame(gameResult.1)
    hideButton(game.playerOne)
    displayPlayerButton()
  }
  
  func resetGame(isGameOver: Bool) {
    if isGameOver {
      let alert = UIAlertController(title: "Game Over", message: "", preferredStyle: UIAlertControllerStyle.Alert)
      let action = UIAlertAction(title: "Restart", style: UIAlertActionStyle.Default, handler: {  Void in
        self.game = Game()
        self.gameProgressLabel.text = "Press Attack to begin"
      })
      alert.addAction(action)
      presentViewController(alert, animated: true, completion: nil)
    }
  }
  
  func displayPlayerButton() {
   _ = NSTimer.scheduledTimerWithTimeInterval(2.0, target: self, selector: "displayButtons", userInfo: nil, repeats: false)
  }
  
  func displayButtons() {
    playerTwoAttackLabel.hidden = false
    playerTwoAttackButton.hidden = false
    playerOneAttackLabel.hidden = false
    playerOneAttackButton.hidden = false
  }
  
  func hideButton(player: Character) {
    if player === game.playerTwo {
      playerTwoAttackLabel.hidden = true
      playerTwoAttackButton.hidden = true
    } else if player === game.playerOne {
      playerOneAttackLabel.hidden = true
      playerOneAttackButton.hidden = true
    }
  }

  
  
}

