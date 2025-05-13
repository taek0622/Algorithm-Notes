//
//  17293.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 11/21/24.
//

//  문제 링크: https://www.acmicpc.net/problem/17293
//  알고리즘 분류: 구현

import Shared

public struct BOJ17293: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69100KB, 시간: 8ms, 코드 길이: 515B
        let N = Int(readLine()!)!

        for num in stride(from: N, through: 0, by: -1) {
            print("\(countBottle(num)) of beer on the wall, \(countBottle(num).lowercased()) of beer.")
            print(num > 0 ? "Take one down and pass it around, \(countBottle(num - 1).lowercased()) of beer on the wall.\n" : "Go to the store and buy some more, \(countBottle(N)) of beer on the wall.")
        }

        func countBottle(_ k: Int) -> String {
            if k == 1 { return "1 bottle" }
            if k == 0 { return "No more bottles" }
            return "\(k) bottles"
        }
    }
}
