//
//  18310.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/06/28.
//

// 문제: https://www.acmicpc.net/problem/18310

class BOJ18310: Solvable {
    func run() {
        // 메모리: 84584KB, 시간: 100ms, 코드 길이: 131B
        let N = Int(readLine()!)!
        let house = readLine()!.split(separator: " ").map { Int(String($0))! }.sorted()
        print(house[(N - 1) / 2])
    }
}
