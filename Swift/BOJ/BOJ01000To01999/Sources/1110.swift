//
//  1110.swift
//  Swift
//
//  Created by 김민택 on 2022/05/22.
//

// 문제: https://www.acmicpc.net/problem/1110

import Shared

public struct BOJ1110: Solvable {
    public init() {}

    public func run() {
        solution2()
    }

    // 메모리: 69100KB, 시간: 8ms, 코드 길이: 280B
    private func solution1() {
        let input = Int(readLine()!)!
        var tempTen = 0
        var tempOne = 0
        var temp = input
        var cnt = 0

        while true {
            tempTen = temp / 10
            tempOne = temp % 10
            temp = tempOne * 10 + (tempTen + tempOne) % 10
            cnt += 1
            if input == temp {
                print(cnt)
                break
            }
        }
    }

    // 메모리: 69100KB, 시간: 8ms, 코드 길이: 220B
    private func solution2() {
        let input = Int(readLine()!)!
        var temp = input
        var cnt = 0
        repeat {
            let tempTen = temp / 10
            let tempOne = temp % 10
            temp = tempOne * 10 + (tempTen + tempOne) % 10
            cnt += 1
        } while input != temp
        print(cnt)
    }
}
