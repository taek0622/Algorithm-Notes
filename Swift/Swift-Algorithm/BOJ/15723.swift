//
//  15723.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 5/19/24.
//

//  문제 링크: https://www.acmicpc.net/problem/15723
//  알고리즘 분류: 그래프 이론, 그래프 탐색, 너비 우선 탐색, 깊이 우선 탐색, 최단 경로, 플로이드-워셜

class BOJ15723: Solvable {
    func run() {
        // 메모리: 69108KB, 시간: 8ms, 코드 길이: 704B
        let n = Int(readLine()!)!
        var graph = Array(repeating: Array(repeating: false, count: 26), count: 26)

        for _ in 0..<n {
            let input = readLine()!.split(separator: " ")
            graph[Int(Character(String(input[0])).asciiValue!) - 97][Int(Character(String(input[2])).asciiValue!) - 97] = true
        }

        for mid in 0..<26 {
            for row in 0..<26 {
                for col in 0..<26 where graph[row][mid] && graph[mid][col] {
                    graph[row][col] = true
                }
            }
        }

        let m = Int(readLine()!)!

        for _ in 0..<m {
            let input = readLine()!.split(separator: " ").map { String($0) }
            print(graph[Int(Character(String(input[0])).asciiValue!) - 97][Int(Character(String(input[2])).asciiValue!) - 97] ? "T" : "F")
        }
    }
}
