//
//  33572.swift
//  BOJ33000To33999
//
//  Created by 김민택 on 11/12/25.
//

//  문제 링크: https://www.acmicpc.net/problem/33572
//  알고리즘 분류: 구현, 그리디 알고리즘, 비둘기집 원리

import Shared

public struct BOJ33572: Solvable {
    public func run() {
        // 메모리: 78588KB, 시간: 68ms, 코드 길이: 147B
        print(readLine()!.split(separator: " ").map { Int($0)! }[1] > readLine()!.split(separator: " ").map { Int($0)! - 1 }.reduce(0, +) ? "OUT" : "DIMI")
    }
}
