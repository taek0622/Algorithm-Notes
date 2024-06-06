//
//  1076.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 6/6/24.
//

//  문제 링크: https://www.acmicpc.net/problem/1076
//  알고리즘 분류: 구현

class BOJ1076: Solvable {
    func run() {
        // 메모리: 69096KB, 시간: 12ms, 코드 길이: 338B
        let resistanceDict = ["black": 0, "brown": 1, "red": 2, "orange": 3, "yellow": 4, "green": 5, "blue": 6, "violet": 7, "grey": 8, "white": 9]
        var resistance = 0

        resistance += resistanceDict[readLine()!]! * 10
        resistance += resistanceDict[readLine()!]!

        for _ in 0..<resistanceDict[readLine()!]! {
            resistance *= 10
        }

        print(resistance)
    }
}
