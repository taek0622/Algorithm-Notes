//
//  25206.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/03/04.
//

// 문제: https://www.acmicpc.net/problem/25206

import Foundation

class BOJ25206: Solvable {
    func run() {
        solution4()
    }

    // 메모리: 79512KB, 시간: 12ms, 코드 길이: 481B
    private func solution1() {
        let scores = ["A+": 4.5, "A0": 4.0,
                      "B+": 3.5, "B0": 3.0,
                      "C+": 2.5, "C0": 2.0,
                      "D+": 1.5, "D0": 1.0,
                      "F": 0.0]
        var count = 0.0
        var score = 0.0

        for _ in 0..<20 {
            let input = readLine()!.split(separator: " ").map { String($0) }

            if input[2] != "P" {
                count += Double(input[1])!
                score += (Double(input[1])! * scores[input[2]]!)
            }
        }

        print(round(score / count * 1000000) / 1000000)
    }

    // 메모리: 79508KB, 시간: 12ms, 코드 길이: 766B
    private func solution2() {
        var count = 0.0
        var score = 0.0

        for _ in 0..<20 {
            let input = readLine()!.split(separator: " ").map { String($0) }

            if input[2] != "P" {
                count += Double(input[1])!
                score += (Double(input[1])! * matchScore(input[2]))
            }
        }

        print(round(score / count * 1000000) / 1000000)

        func matchScore(_ score: String) -> Double {
            switch score {
            case "A+":
                return 4.5
            case "A0":
                return 4.0
            case "B+":
                return 3.5
            case "B0":
                return 3.0
            case "C+":
                return 2.5
            case "C0":
                return 2.0
            case "D+":
                return 1.5
            case "D0":
                return 1.0
            case "F":
                return 0.0
            default:
                return 0.0
            }
        }
    }

    // 메모리: 79512KB, 시간: 12ms, 코드 길이: 922B
    private func solution3() {
        var count = 0.0
        var score = 0.0

        for _ in 0..<20 {
            let input = readLine()!.split(separator: " ").map { String($0) }

            if input[2] != "P" {
                count += Double(input[1])!

                switch input[2] {
                case "A+":
                    score += Double(input[1])! * 4.5
                case "A0":
                    score += Double(input[1])! * 4.0
                case "B+":
                    score += Double(input[1])! * 3.5
                case "B0":
                    score += Double(input[1])! * 3.0
                case "C+":
                    score += Double(input[1])! * 2.5
                case "C0":
                    score += Double(input[1])! * 2.0
                case "D+":
                    score += Double(input[1])! * 1.5
                case "D0":
                    score += Double(input[1])! * 1.0
                case "F":
                    fallthrough
                default:
                    break
                }
            }
        }

        print(round(score / count * 1000000) / 1000000)
    }

    // 메모리: 69104KB, 시간: 8ms, 코드 길이: 528B
    private func solution4() {
        let scores: [String: Float] = ["A+": 4.5, "A0": 4.0,
                                       "B+": 3.5, "B0": 3.0,
                                       "C+": 2.5, "C0": 2.0,
                                       "D+": 1.5, "D0": 1.0,
                                       "F": 0.0]
        var count: Float = 0
        var score: Float = 0

        for _ in 0..<20 {
            let input = readLine()!.split(separator: " ").map { String($0) }

            if input[2] != "P" {
                count += Float(input[1])!
                score += (Float(input[1])! * scores[input[2]]!)
            }
        }

        print(score / count)
    }

    // 메모리: 69104KB, 시간: 8ms, 코드 길이: 435B
    private func solution5() {
        let scores = ["A+": 4.5, "A0": 4.0,
                                       "B+": 3.5, "B0": 3.0,
                                       "C+": 2.5, "C0": 2.0,
                                       "D+": 1.5, "D0": 1.0,
                                       "F": 0.0]
        var count = 0.0
        var score = 0.0

        for _ in 0..<20 {
            let input = readLine()!.split(separator: " ").map { String($0) }

            if input[2] != "P" {
                count += Double(input[1])!
                score += (Double(input[1])! * scores[input[2]]!)
            }
        }

        print(score / count)
    }
}
