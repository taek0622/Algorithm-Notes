//
//  16120.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 1/20/24.
//

//  문제 링크: https://www.acmicpc.net/problem/16120
//  알고리즘 분류: 자료 구조, 문자열, 스택

class BOJ16120: Solvable {
    func run() {
        // 메모리: 85704KB, 시간: 56ms, 코드 길이: 349B
        let input = Array(readLine()!)
        var idx = 0
        var pCount = 0

        while idx < input.count {
            if input[idx] == "P" {
                pCount += 1
                idx += 1
            } else if pCount >= 2 && idx+1 < input.count && input[idx+1] == "P" {
                pCount -= 1
                idx += 2
            } else {
                pCount = 0
                break
            }
        }

        print(pCount == 1 ? "PPAP" : "NP")
    }
}
