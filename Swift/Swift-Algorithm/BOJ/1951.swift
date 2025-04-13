//
//  1951.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 4/13/25.
//

//  문제 링크: https://www.acmicpc.net/problem/1951
//  알고리즘 분류: 수학, 구현

class BOJ1951: Solvable {
    func run() {
        // 메모리: 69100KB, 시간: 8ms, 코드 길이: 324B
        let N = Int(readLine()!)!
        var count = 0
        var (start, end, digit) = (1, 9, 1)

        while true {
            if start...end ~= N {
                count = (count + (N - start + 1) * digit) % 1234567
                break
            }

            count = (count + (end - start + 1) * digit) % 1234567
            start *= 10
            end = end * 10 + 9
            digit += 1
        }

        print(count)
    }
}
