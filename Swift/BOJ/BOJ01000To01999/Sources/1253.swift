//
//  1253.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 3/11/24.
//

//  문제 링크: https://www.acmicpc.net/problem/1253
//  알고리즘 분류: 자료 구조, 정렬, 이분 탐색, 두 포인터

class BOJ1253: Solvable {
    func run() {
        // 메모리: 69280KB, 시간: 28ms, 코드 길이: 602B
        let N = Int(readLine()!)!
        let A = readLine()!.split(separator: " ").map { Int($0)! }.sorted()
        var count = 0

        for idx in 0..<N {
            var start = 0
            var end = N - 1

            while start < end {
                if A[idx] == A[start] + A[end] {
                    if start != idx && end != idx {
                        count += 1
                        break
                    } else if start == idx {
                        start += 1
                    } else if end == idx {
                        end -= 1
                    }
                } else if A[idx] > A[start] + A[end] {
                    start += 1
                } else {
                    end -= 1
                }
            }
        }

        print(count)
    }
}
