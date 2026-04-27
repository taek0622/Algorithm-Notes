//
//  24060.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/01/06.
//

// 문제: https://www.acmicpc.net/problem/24060

import Shared

public struct BOJ24060: Solvable {
    public init() {}

    public func run() {
        solution2()
    }

    // 메모리: 106776KB, 시간: 488ms, 코드 길이: 1050B
    private func solution1() {
        let input = readLine()!.split(separator: " ").map { Int(String($0))! }
        var numbers = readLine()!.split(separator: " ").map { Int(String($0))! }
        var count = 0

        merge_sort(&numbers, 0, input[0] - 1)

        if count < input[1] {
            print(-1)
        }

        func merge_sort(_ A: inout [Int], _ p: Int, _ r: Int) {
            if p < r {
                let q = (p + r) / 2

                merge_sort(&A, p, q)
                merge_sort(&A, q + 1, r)
                merge(&A, p, q, r)
            }
        }

        func merge(_ A: inout [Int], _ p: Int, _ q: Int, _ r: Int) {
            var i = p, j = q + 1
            var tmp = [Int]()

            while i <= q && j <= r {
                if A[i] <= A[j] {
                    tmp.append(A[i])
                    i += 1
                } else {
                    tmp.append(A[j])
                    j += 1
                }
            }

            while i <= q {
                tmp.append(A[i])
                i += 1
            }

            while j <= r {
                tmp.append(A[j])
                j += 1
            }

            i = p
            var t = 0

            while i <= r {
                count += 1
                if count == input[1] {
                    print(tmp[t])
                }
                A[i] = tmp[t]
                i += 1
                t += 1
            }
        }
    }

    // 메모리: 106776KB, 시간: 396ms, 코드 길이: 1082B
    private func solution2() {
        let input = readLine()!.split(separator: " ").map { Int(String($0))! }
        var numbers = readLine()!.split(separator: " ").map { Int(String($0))! }
        var count = 0
        var result = -1

        merge_sort(&numbers, 0, input[0] - 1)

        print(result)

        func merge_sort(_ A: inout [Int], _ p: Int, _ r: Int) {
            if p < r && count < input[1] {
                let q = (p + r) / 2

                merge_sort(&A, p, q)
                merge_sort(&A, q + 1, r)
                merge(&A, p, q, r)
            }
        }

        func merge(_ A: inout [Int], _ p: Int, _ q: Int, _ r: Int) {
            var i = p, j = q + 1
            var tmp = [Int]()

            while i <= q && j <= r {
                if A[i] <= A[j] {
                    tmp.append(A[i])
                    i += 1
                } else {
                    tmp.append(A[j])
                    j += 1
                }
            }

            while i <= q {
                tmp.append(A[i])
                i += 1
            }

            while j <= r {
                tmp.append(A[j])
                j += 1
            }

            i = p
            var t = 0

            while i <= r {
                count += 1
                if count == input[1] {
                    result = tmp[t]
                    break
                }
                A[i] = tmp[t]
                i += 1
                t += 1
            }
        }
    }
}
