//
//  Utillity.swift
//  RockPaperScissors
//
//  Created by 김경록 on 2023/09/07.
//

import Foundation


func getRandomNum() -> String {
    return String(Int.random(in: 1...3))
}

func getRPSResult(userSelcet: String, computerSelect: String) {
    if userSelcet == computerSelect {
        print("비겼습니다")
    } else if userSelcet == scissors && computerSelect == paper ||
                userSelcet == rock && computerSelect == scissors ||
                userSelcet == paper && computerSelect == rock {
        print("이겼습니다")
        isRunning = false
    } else {
        print("졌습니다")
        isRunning = false
    }
}
