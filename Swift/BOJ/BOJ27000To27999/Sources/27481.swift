//
//  27481.swift
//  BOJ27000To27999
//
//  Created by 김민택 on 1/17/26.
//

//  문제 링크: https://www.acmicpc.net/problem/27481
//  알고리즘 분류: 구현, 시뮬레이션

import Shared

public struct BOJ27481: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69304KB, 시간: 12ms, 코드 길이: 364B
        _ = readLine()
        var room = Array(repeating: false, count: 10)
        let events = readLine()!

        for event in events {
            if event == "L" {
                room[room.firstIndex(of: false)!] = true
            } else if event == "R" {
                room[room.lastIndex(of: false)!] = true
            } else {
                room[Int(String(event))!] = false
            }
        }

        print(room.map { $0 ? "1" : "0" }.joined())
    }
}
