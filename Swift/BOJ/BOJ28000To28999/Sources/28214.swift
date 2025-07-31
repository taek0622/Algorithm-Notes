//
//  28214.swift
//  BOJ28000To28999
//
//  Created by 김민택 on 7/31/25.
//

//  문제 링크: https://www.acmicpc.net/problem/28214
//  알고리즘 분류: 구현

import Shared

public struct BOJ28214: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69244KB, 시간: 8ms, 코드 길이: 265B
        let NKP = readLine()!.split(separator: " ").map { Int($0)! }
        let bread = readLine()!.split(separator: " ").map { $0 == "1" }
        var count = 0

        for idx in 0..<NKP[0] where bread[idx*NKP[1]..<(idx+1)*NKP[1]].filter { !$0 }.count < NKP[2] {
            count += 1
        }

        print(count)
    }
}
