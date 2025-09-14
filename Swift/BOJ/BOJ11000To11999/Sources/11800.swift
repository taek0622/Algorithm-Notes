//
//  11800.swift
//  BOJ11000To11999
//
//  Created by 김민택 on 9/14/25.
//

//  문제 링크: https://www.acmicpc.net/problem/11800
//  알고리즘 분류: 구현, 많은 조건 분기

import Shared

public struct BOJ11800: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69108KB, 시간: 8ms, 코드 길이: 813B
        let T = Int(readLine()!)!
        let nickname = ["Yakk", "Doh", "Seh", "Ghar", "Bang", "Sheesh"]

        for idx in 1...T {
            let ab = readLine()!.split(separator: " ").map { Int($0)! }.sorted()
            var sentence = "Case \(idx): "

            if ab[0] == ab[1] {
                switch ab[0] {
                    case 1:
                        sentence += "Habb Yakk"
                    case 2:
                        sentence += "Dobara"
                    case 3:
                        sentence += "Dousa"
                    case 4:
                        sentence += "Dorgy"
                    case 5:
                        sentence += "Dabash"
                    case 6:
                        sentence += "Dosh"
                    default:
                        break
                }
            } else if ab[0] == 5 && ab[1] == 6 {
                sentence += "Sheesh Beesh"
            } else {
                sentence += "\(nickname[ab[1]-1]) \(nickname[ab[0]-1])"
            }

            print(sentence)
        }
    }
}
