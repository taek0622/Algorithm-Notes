//
//  12353.swift
//  BOJ12000To12999
//
//  Created by 김민택 on 1/5/26.
//

//  문제 링크: https://www.acmicpc.net/problem/12353
//  알고리즘 분류: 수학, 구현, 문자열, 사칙연산, 파싱

import Foundation

import Shared

public struct BOJ12353: Solvable {
    public init() {}

    public func run() {
        // 메모리: 79516KB, 시간: 36ms, 코드 길이: 596B
        let T = Int(readLine()!)!

        for idx in 1...T {
            let input = readLine()!.split(separator: " ").map { String($0) }
            var mom = input[1].split(separator: "'").map { String($0) }
            mom[1].removeLast()
            var dad = input[2].split(separator: "'").map { String($0) }
            dad[1].removeLast()
            let inch = Double((Int(mom[0])! * 12 + Int(mom[1])! + Int(dad[0])! * 12 + Int(dad[1])! + (input[0] == "B" ? 5 : -5))) / 2.0
            let mini = Int(ceil(inch - 4))
            let maxi = Int(floor(inch + 4))
            print("Case #\(idx): \(mini / 12)'\(mini % 12)\" to \(maxi / 12)'\(maxi % 12)\"")
        }
    }
}
