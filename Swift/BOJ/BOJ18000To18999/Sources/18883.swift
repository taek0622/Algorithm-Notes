//
//  18883.swift
//  BOJ18000To18999
//
//  Created by 김민택 on 8/1/25.
//

//  문제 링크: https://www.acmicpc.net/problem/18883
//  알고리즘 분류: 구현

import Shared

public struct BOJ18883: Solvable {
    public func run() {
        // 메모리: 69104KB, 시간: 216ms, 코드 길이: 168B
        let NM = readLine()!.split(separator: " ").map { Int($0)! }

        for num in 1...NM[0] {
            print(((num-1)*NM[1]+1...num*NM[1]).map { String($0) }.joined(separator: " "))
        }
    }
}
