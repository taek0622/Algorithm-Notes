//
//  16466.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 10/26/24.
//

//  문제 링크: https://www.acmicpc.net/problem/16466
//  알고리즘 분류: 구현, 정렬

import Shared

public struct BOJ16466: Solvable {
    public init() {}

    public func run() {
        // 메모리: 133212KB, 시간: 372ms, 코드 길이: 243B
        let _ = Int(readLine()!)!
        var tickets = readLine()!.split(separator: " ").map { Int($0)! }.sorted()
        var myTicket = 1

        for ticket in tickets {
            if ticket == myTicket {
                myTicket += 1
            } else {
                break
            }
        }

        print(myTicket)
    }
}
