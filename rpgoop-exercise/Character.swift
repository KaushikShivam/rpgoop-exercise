//
//  Character.swift
//  rpgoop-exercise
//
//  Created by shivam kaushik on 07/10/15.
//  Copyright © 2015 shivam kaushik. All rights reserved.
//

import Foundation

class Character {
  
  private var _name: String
  private var _attackPower: Int
  private var _hp: Int
  
  
  init(name: String, attackPower: Int, hp: Int) {
    self._name = name
    self._attackPower = attackPower
    self._hp = hp
  }
  
  //Getters
  var name: String {
    return _name
  }
  
  var attackPower: Int {
    return _attackPower
  }
  
  var hp: Int {
    get {
      return _hp
    }
    set {
      _hp = newValue
    }
  }
  
  func isAlive() -> Bool {
    if hp <= 0  {
      return false
    } else {
      return true
    }
  }
  
  
  
  
}