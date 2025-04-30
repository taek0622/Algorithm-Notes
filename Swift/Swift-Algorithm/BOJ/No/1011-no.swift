//
//  1011.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/02/01.
//

// 문제: https://www.acmicpc.net/problem/1011

class BOJ1011: Solvable {
    func run() {
        let T = Int(readLine()!)!

        for _ in 0..<T {
            let locations = readLine()!.split(separator: " ").map { Int(String($0))! }
            var distance = locations[1] - locations[0]
            var count = distance < 2 ? 1 : 2

            distance -= 2

            
        }
    }
}
