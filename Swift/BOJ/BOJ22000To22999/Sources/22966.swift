//
//  22966.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 10/1/24.
//

//  문제 링크: https://www.acmicpc.net/problem/22966
//  알고리즘 분류: 구현

class BOJ22966: Solvable {
    func run() {
        // 메모리: 69104KB, 시간: 8ms, 코드 길이: 255B
        let N = Int(readLine()!)!
        var problem = ("", 5)

        for _ in 0..<N {
            let input = readLine()!.split(separator: " ").map { String($0) }
            let level = Int(input[1])!

            if level < problem.1 {
                problem = (input[0], level)
            }
        }

        print(problem.0)
    }
}
