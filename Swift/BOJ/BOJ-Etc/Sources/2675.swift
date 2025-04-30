//
//  2675.swift
//  Swift
//
//  Created by 김민택 on 2022/06/08.
//

// 문제: https://www.acmicpc.net/problem/2675

class BOJ2675: Solvable {
    func run() {
        // 메모리: 69104KB, 시간: 8ms, 코드 길이: 292B
        let T = Int(readLine()!)!

        for _ in 0..<T {
            let input = readLine()!.split(separator: " ").map { String($0) }
            let R = Int(input[0])!
            let S = Array(input[1])
            
            var P = ""
            
            for i in S {
                for _ in 0..<R {
                    P += String(i)
                }
            }
            print(P)
        }
    }
}
