//
//  1592.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 7/14/24.
//

//  문제 링크: https://www.acmicpc.net/problem/1592
//  알고리즘 분류: 구현, 시뮬레이션

class BOJ1592: Solvable {
    func run() {
        // 메모리: 69104KB, 시간: 8ms, 코드 길이: 317B
        let NML = readLine()!.split(separator: " ").map { Int($0)! }
        var recieve = Array(repeating: 0, count: NML[0])
        var now = 1
        recieve[1] = 1

        while recieve[now] < NML[1] {
            now = recieve[now] % 2 == 1 ? (now + NML[2]) % NML[0] : (now + NML[0] - NML[2]) % NML[0]
            recieve[now] += 1
        }

        print(recieve.reduce(0, +) - 1)
    }
}
