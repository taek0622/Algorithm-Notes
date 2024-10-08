//
//  12780.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 10/8/24.
//

//  문제 링크: https://www.acmicpc.net/problem/12780
//  알고리즘 분류: 구현, 문자열

class BOJ12780: Solvable {
    func run() {
        solution3()
    }

    // 메모리: 70660KB, 시간: 100ms, 코드 길이: 171B
    private func solution1() {
        let H = Array(readLine()!)
        let N = readLine()!
        var count = 0

        for idx in 0..<H.count - N.count + 1 where String(H[idx..<idx+N.count]) == N {
            count += 1
        }

        print(count)
    }

    // 메모리: 70660KB, 시간: 20ms, 코드 길이: 183B
    private func solution2() {
        let H = Array(readLine()!)
        let N = Array(readLine()!)
        var count = 0

        for idx in 0..<H.count - N.count + 1 where H[idx..<idx+N.count] == N[0..<N.count] {
            count += 1
        }

        print(count)
    }

    // 메모리: 70660KB, 시간: 16ms, 코드 길이: 201B
    private func solution3() {
        let H = Array(readLine()!)
        let N = Array(readLine()!)
        var count = 0

        for idx in 0..<H.count - N.count + 1 where H[idx] == N[0] && H[idx..<idx+N.count] == N[0..<N.count] {
            count += 1
        }

        print(count)
    }
}
