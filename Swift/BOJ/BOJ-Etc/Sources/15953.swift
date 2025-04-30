//
//  15953.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/04/25.
//

// 문제: https://www.acmicpc.net/problem/15953

class BOJ15953: Solvable {
    func run() {
        // 메모리: 69104KB, 시간: 12ms, 코드 길이: 780B
        let T = Int(readLine()!)!

        for _ in  0..<T {
            let input = readLine()!.split(separator: " ").map { Int(String($0))! }
            var reward = 0

            switch input[0] {
            case 1:
                reward += 5000000
            case 2...3:
                reward += 3000000
            case 4...6:
                reward += 2000000
            case 7...10:
                reward += 500000
            case 11...15:
                reward += 300000
            case 16...21:
                reward += 100000
            default:
                break
            }

            switch input[1] {
            case 1:
                reward += 5120000
            case 2...3:
                reward += 2560000
            case 4...7:
                reward += 1280000
            case 8...15:
                reward += 640000
            case 16...31:
                reward += 320000
            default:
                break
            }

            print(reward)
        }
    }
}
