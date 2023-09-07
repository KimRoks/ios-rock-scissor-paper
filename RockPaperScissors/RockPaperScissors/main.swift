//
//  RockPaperScissors - main.swift
//  Created by tacocat.
//  Copyright © tastycode. All rights reserved.
var isRunning: Bool = true
var turn: String

while isRunning {
    print("가위(1), 바위(2), 보(3)! <종료 : 0 > : ", terminator: "")
    guard let userSelcet = readLine() else { break }
    let computerSelect = getRandomNum()
    
    switch userSelcet {
    case exit:
        isRunning = false
    case scissors, rock, paper:
        getRPSResult(userSelcet: userSelcet, computerSelect: computerSelect)
    default:
        print("잘못된 입력입니다. 다시 시도해주세요.")
    }
}

print("게임 종료")
