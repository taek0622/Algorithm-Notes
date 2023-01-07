//
//  10815.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/01/07.
//

// 문제: https://www.acmicpc.net/problem/10815

class BOJ10815: Solvable {
    func run() {
        // 메모리: 118248KB, 시간: 660ms, 코드 길이: 369B
        let N = Int(readLine()!)!
        var cards = Set<Int>()
        let myCard = readLine()!.split(separator: " ").map { Int(String($0))! }
        var result = ""

        myCard.forEach {
            cards.insert($0)
        }

        let M = Int(readLine()!)!
        let needCard = readLine()!.split(separator: " ").map { Int(String($0))! }

        needCard.forEach {
            result += "\(cards.insert($0).inserted ? 0 : 1) "
        }

        print(result)
    }
}
