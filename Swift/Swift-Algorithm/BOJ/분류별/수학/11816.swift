//
//  11816.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/07/09.
//

// 문제: https://www.acmicpc.net/problem/11816

class BOJ11816: Solvable {
    func run() {
        solution2()
    }

    // 메모리: 69104KB, 시간: 8ms, 코드 길이: 1045B
    private func solution1() {
        var X = readLine()!.map { String($0) }

        if X[0...1] == ["0", "x"] {
            X.removeSubrange(0...1)
            X.reverse()
            var sum = 0

            for idx in X.indices {
                var temp = 0

                if Int(X[idx]) != nil {
                    temp = Int(X[idx])!
                } else {
                    switch X[idx] {
                    case "a":
                        temp = 10
                    case "b":
                        temp = 11
                    case "c":
                        temp = 12
                    case "d":
                        temp = 13
                    case "e":
                        temp = 14
                    case "f":
                        temp = 15
                    default:
                        break
                    }
                }

                for _ in 0..<idx {
                    temp *= 16
                }

                sum += temp
            }

            print(sum)
        } else if X[0] == "0" {
            X.removeFirst()
            X.reverse()
            var sum = 0

            for idx in X.indices {
                var temp = Int(X[idx])!

                for _ in 0..<idx {
                    temp *= 8
                }

                sum += temp
            }

            print(sum)
        } else {
            print(X.joined())
        }
    }

    // 메모리: 69100KB, 시간: 8ms, 코드 길이: 176B
    private func solution2() {
        var X = readLine()!

        if X.hasPrefix("0x") {
            X.removeFirst(2)
            print(Int(X, radix: 16)!)
        } else if X.hasPrefix("0") {
            print(Int(X, radix: 8)!)
        } else {
            print(X)
        }
    }
}
