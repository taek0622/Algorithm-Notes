//
//  22856.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 4/13/24.
//

//  문제 링크: https://www.acmicpc.net/problem/22856
//  알고리즘 분류: 그래프 이론, 그래프 탐색, 트리

class BOJ22856: Solvable {
    func run() {
        // 메모리: 70648KB, 시간: 168ms, 코드 길이: 321B
        let N = Int(readLine()!)!
        var tree = Array(repeating: (-1, -1), count: N+1)
        var count = (N - 1) * 2

        for _ in 0..<N {
            let input = readLine()!.split(separator: " ").map { Int($0)! }
            tree[input[0]] = (input[1], input[2])
        }

        var now = 1

        while tree[now].1 != -1 {
            count -= 1
            now = tree[now].1
        }

        print(count)
    }
}
