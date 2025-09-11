//
//  17201.swift
//  BOJ17000To17999
//
//  Created by 김민택 on 9/11/25.
//

//  문제 링크: https://www.acmicpc.net/problem/17201
//  알고리즘 분류: 구현, 문자열

import Shared

public struct BOJ17201: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69100KB, 시간: 8ms, 코드 길이: 187B
        let N = Int(readLine()!)!
        let mag = readLine()!.map { $0 }
        var isConnect = true

        for idx in 1..<N*2 where mag[idx] == mag[idx-1] {
            isConnect = false
        }

        print(isConnect ? "Yes" : "No")
    }
}
