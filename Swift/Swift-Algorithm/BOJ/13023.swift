//
//  13023.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 12/25/23.
//

//  문제 링크: https://www.acmicpc.net/problem/13023
//  알고리즘 분류: 그래프 이론, 그래프 탐색, 깊이 우선 탐색, 백트래킹

class BOJ13023: Solvable {
    func run() {
        solution3()
    }

    // 메모리: 69300KB, 시간: 1284ms, 코드 길이: 605B
    private func solution1() {
        let NM = readLine()!.split(separator: " ").map { Int($0)! }
        var graph = [Int: [Int]]()
        var result = 0

        for _ in 0..<NM[1] {
            let input = readLine()!.split(separator: " ").map { Int($0)! }
            graph[input[0], default: []].append(input[1])
            graph[input[1], default: []].append(input[0])
        }

        for num in 0..<NM[0] where result != 1 {
            dfs([num], 1)
        }

        print(result)

        func dfs(_ visited: [Int], _ depth: Int) {
            if depth >= 5 {
                result = 1
                return
            }

            for next in graph[visited.last!, default: []] where !visited.contains(next) {
                dfs(visited + [next], depth + 1)
            }
        }
    }

    // 메모리: 69300KB, 시간: 1244ms, 코드 길이: 750B
    private func solution2() {
        let NM = readLine()!.split(separator: " ").map { Int($0)! }
        var graph = [Int: [Int]]()
        var result = 0

        for _ in 0..<NM[1] {
            let input = readLine()!.split(separator: " ").map { Int($0)! }
            graph[input[0], default: []].append(input[1])
            graph[input[1], default: []].append(input[0])
        }

        for num in 0..<NM[0] where result != 1 {
            var visited = Array(repeating: false, count: NM[0])
            visited[num] = true
            dfs(num, visited, 1)
        }

        print(result)

        func dfs(_ current: Int, _ visited: [Bool], _ depth: Int) {
            if depth >= 5 {
                result = 1
                return
            }

            for next in graph[current, default: []] where !visited[next] {
                var visited = visited
                visited[next] = true
                dfs(next, visited, depth + 1)
            }
        }
    }

    // 메모리: 69304KB, 시간: 344ms, 코드 길이: 685B
    private func solution3() {
        let NM = readLine()!.split(separator: " ").map { Int($0)! }
        var graph = [Int: [Int]]()
        var visited = Array(repeating: false, count: NM[0])
        var result = 0

        for _ in 0..<NM[1] {
            let input = readLine()!.split(separator: " ").map { Int($0)! }
            graph[input[0], default: []].append(input[1])
            graph[input[1], default: []].append(input[0])
        }

        for num in 0..<NM[0] where result != 1 {
            dfs(num, 1)
        }

        print(result)

        func dfs(_ current: Int, _ depth: Int) {
            if depth >= 5 {
                result = 1
                return
            }

            visited[current] = true

            for next in graph[current, default: []] where !visited[next] {
                dfs(next, depth + 1)
            }

            visited[current] = false
        }
    }
}
