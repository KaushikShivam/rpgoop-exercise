//
//  Game.swift
//  rpgoop-exercise
//
//  Created by shivam kaushik on 07/10/15.
//  Copyright © 2015 shivam kaushik. All rights reserved.
//

import Foundation
import UIKit

class Game {
  
  var playerOne = Character(name: "Orc", attackPower: 12, hp: 200)
  var playerTwo = Character(name: "Soldier", attackPower: 20, hp: 100)
  
  
//  func Attack(player: Character, anotherPlayer: Character) -> String {
//    if isGameOver {
//      let alert = UIAlertController(title: "Game Over", message: "", preferredStyle: UIAlertControllerStyle.Alert)
//      let action = UIAlertAction(title: "Restart", style: UIAlertActionStyle.Default, handler: {  Void in
//        self.playerOne = Character(name: "Orc", attackPower: 12, hp: 200)
//        self.playerTwo = Character(name: "Soldier", attackPower: 20, hp: 100)
//      })
//      alert.addAction(action)
//      UIApplication.sharedApplication().keyWindow?.rootViewController?.presentViewController(alert, animated: true, completion: nil)
//    }
//    if anotherPlayer.hp > 0 || isGameOver == false {
//      anotherPlayer.attemptAttack(player.attackPower)
//      return "\(player.name) attacked \(anotherPlayer.name). \(anotherPlayer.hp) HP left for \(anotherPlayer.name)"
//    } else if anotherPlayer.hp <= 0 {
//      isGameOver = true
//      return "\(player.name) Killed \(anotherPlayer.name). Game Over!"
//    }
//  }
  
//  func attemptAttack(attackPower: Int)  {
//    if isAlive() {
//      _hp -= attackPower
//      print(_hp)
//    } else {
//      print("game over")
//    }
//  }
  
  func attack(player: Character, anotherPlayer: Character) -> (String,Bool) {
    if anotherPlayer.isAlive() {
        anotherPlayer.hp -= player.attackPower
        print(anotherPlayer.hp)
        return ("\(player.name) attacked \(anotherPlayer.name). \(anotherPlayer.hp) HP left for \(anotherPlayer.name)", false)
      } else {
        return ("\(player.name) Killed \(anotherPlayer.name). Game Over!", true)
      }
  }

  
  
  
}