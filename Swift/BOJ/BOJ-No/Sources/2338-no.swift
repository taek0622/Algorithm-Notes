//
//  2338.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/03/20.
//

// 문제: https://www.acmicpc.net/problem/2338

import Shared

public struct BOJ2338: Solvable {
    public init() {}

    public func run() {
        let originA = readLine()!
        let originB = readLine()!
        var A = Array(originA.split(separator: "-")[0]).map { Int(String($0))! }
        var B = Array(originB.split(separator: "-")[0]).map { Int(String($0))! }

        if A.count > B.count {
            B = Array(repeating: 0, count: A.count - B.count) + B
        } else {
            A = Array(repeating: 0, count: B.count - A.count) + A
        }

        if originA.first == "-" && originB.first == "-" {
            print("-\(addition(A, B))")
            print("-\(subtract(A, B))")
            print(multiply(A, B))
        } else if originA.first == "-" {
            print(subtract(A, B))
            print("-\(addition(A, B))")
            print("-\(multiply(A, B))")
        } else if originB.first == "-" {
            print(subtract(A, B))
            print(addition(A, B))
            print("-\(multiply(A, B))")
        } else {
            print(addition(A, B))
            print(subtract(A, B))
            print(multiply(A, B))
        }

        func addition(_ A: [Int], _ B: [Int]) -> String {
            var result = A

            for idx in stride(from: result.count - 1, through: 0, by: -1) {
                result[idx] += B[idx]

                if idx != 0 {
                    result[idx - 1] += (result[idx] / 10)
                    result[idx] %= 10
                }
            }

            return result.map { String($0) }.joined()
        }

        func subtract(_ A: [Int], _ B: [Int]) -> String {
            var result = A
            var base = B
            var minus = (originA.first == "-" ? true : false)

            if originA.count < originB.count {
                result = B
                base = A
                minus.toggle()
            } else if originA.count == originB.count {
                for idx in A.indices {
                    if A[idx] < B[idx] {
                        result = B
                        base = A
                        minus.toggle()
                        break
                    }
                }
            }

            for idx in stride(from: result.count - 1, through: 0, by: -1) {
                if result[idx] < base[idx] {
                    result[idx] = 10 - base[idx] + result[idx]
                    result[idx - 1] -= 1
                } else {
                    result[idx] -= base[idx]
                }

                if result[idx] > 9 && idx != 0 {
                    result[idx - 1] += (result[idx] / 10)
                    result[idx] %= 10
                }
            }

            return (minus ? "-" : "") + result.map { String($0) }.joined()
        }

        func multiply(_ A: [Int], _ B: [Int]) -> String {
            var result = Array(repeating: 0, count: A.count + B.count)
            var (copyA, copyB) = (A, B)

            copyA.reverse()
            copyB.reverse()

            for idx in copyB.indices {
                for number in copyA.indices {
                    result[idx + number] += (copyB[idx] * copyA[number])
                    result[idx + number + 1] += (result[idx + number] / 10)
                    result[idx + number] %= 10
                }
            }

            result.reverse()

            while result.first == 0 {
                result.removeFirst()
            }

            return result.map { String($0) }.joined()
        }
    }
}
