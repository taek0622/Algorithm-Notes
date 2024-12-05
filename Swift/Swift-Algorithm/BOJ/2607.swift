//
//  2607.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 12/5/24.
//

//  문제 링크: https://www.acmicpc.net/problem/2607
//  알고리즘 분류: 구현, 문자열

class BOJ2607: Solvable {
    func run() {
        // 메모리: 69104KB, 시간: 8ms, 코드 길이: 927B
        let N = Int(readLine()!)!
        var base = Array(repeating: 0, count: 26)
        var count = 0

        outer: for idx in 0..<N {
            let input = readLine()!.map { Int($0.asciiValue!) - 65 }
            var compare = Array(repeating: 0, count: 26)

            for char in input {
                compare[char] += 1
            }

            if idx == 0 {
                base = compare
                continue
            }

            if base == compare {
                count += 1
                continue
            }

            var (plus, minus) = (0, 0)

            for num in 0..<26 {
                if base[num] - compare[num] > 1 || base[num] - compare[num] < -1 {
                    continue outer
                }

                if base[num] - compare[num] == 1 {
                    plus += 1
                } else if base[num] - compare[num] == -1 {
                    minus += 1
                }
            }

            if plus == 1 && minus == 0 {
                count += 1
            } else if plus == 0 && minus == 1 {
                count += 1
            } else if plus == 1 && minus == 1 {
                count += 1
            }
        }

        print(count)
    }
}
