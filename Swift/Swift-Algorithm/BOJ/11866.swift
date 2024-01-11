//
//  11866.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 1/11/24.
//

//  문제 링크: https://www.acmicpc.net/problem/11866
//  알고리즘 분류: 구현, 자료 구조, 큐

class BOJ11866: Solvable {
    func run() {
        // 메모리: 69104KB, 시간: 8ms, 코드 길이: 273B
        let NK = readLine()!.split(separator: " ").map { Int($0)! }
        var queue = Array(1...NK[0])
        var idx = 0
        var result = "<"

        while queue.count > 1 {
            idx = (idx + NK[1] - 1) % queue.count
            result += "\(queue.remove(at: idx)), "
        }

        result += "\(queue.last!)>"

        print(result)
    }
}
