//
//  11724.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 10/2/23.
//

//  문제 링크: https://www.acmicpc.net/problem/11724
//  알고리즘 분류: 그래프 이론, 그래프 탐색, 너비 우선 탐색, 깊이 우선 탐색

class BOJ11724: Solvable {
    func run() {
        solution4()
    }

    // 메모리: 90016KB, 시간: 980ms, 코드 길이: 679B
    private func solution1() {
        let NM = readLine()!.split(separator: " ").map { Int(String($0))! }
        var graph = [Int: [Int]]()
        var visited = [Int]()
        var count = 0

        for _ in 0..<NM[1] {
            let node = readLine()!.split(separator: " ").map { Int(String($0))! }
            graph[node[0], default: []].append(node[1])
            graph[node[1], default: []].append(node[0])
        }

        for element in 1...NM[0] where !visited.contains(element) {
            var queue = [element]
            var idx = 0

            while idx < queue.count {
                let number = queue[idx]
                idx += 1

                if !visited.contains(number) {
                    queue.append(contentsOf: graph[number, default: []])
                    visited.append(number)
                }
            }

            count += 1
        }

        print(count)
    }

    // 메모리: 90028KB, 시간: 660ms, 코드 길이: 693B
    private func solution2() {
        let NM = readLine()!.split(separator: " ").map { Int(String($0))! }
        var graph = [Int: [Int]]()
        var visited = Array(repeating: false, count: NM[0]+1)
        var count = 0

        for _ in 0..<NM[1] {
            let node = readLine()!.split(separator: " ").map { Int(String($0))! }
            graph[node[0], default: []].append(node[1])
            graph[node[1], default: []].append(node[0])
        }

        for element in 1...NM[0] where !visited[element] {
            var queue = [element]
            var idx = 0

            while idx < queue.count {
                let number = queue[idx]
                idx += 1

                if !visited[number] {
                    queue.append(contentsOf: graph[number, default: []])
                    visited[number] = true
                }
            }

            count += 1
        }

        print(count)
    }

    // 메모리: 124428KB, 시간: 1156ms, 코드 길이: 680B
    private func solution3() {
        let NM = readLine()!.split(separator: " ").map { Int($0)! }
        var graph = Array(repeating: Array(repeating: false, count: NM[0]), count: NM[0])
        var count = 0

        for _ in 0..<NM[1] {
            let node = readLine()!.split(separator: " ").map { Int($0)! }
            graph[node[0]-1][node[1]-1] = true
            graph[node[1]-1][node[0]-1] = true
        }

        for idx in 0..<NM[0] where !graph[idx].contains(true) {
            graph[idx][idx] = true
        }


        for row in 0..<NM[0] where graph[row].contains(true) {
            dfs(row: row)
            count += 1
        }

        print(count)

        func dfs(row: Int) {
            for col in 0..<NM[0] where graph[row][col] {
                graph[row][col] = false
                graph[col][row] = false
                dfs(row: col)
            }
        }
    }

    // 메모리: 70032KB, 시간: 580ms, 코드 길이: 611B
    private func solution4() {
        let NM = readLine()!.split(separator: " ").map { Int($0)! }
        var graph = Array(repeating: Array(repeating: false, count: NM[0]), count: NM[0])
        var visited = Array(repeating: false, count: NM[0])
        var count = 0

        for _ in 0..<NM[1] {
            let node = readLine()!.split(separator: " ").map { Int($0)! }
            graph[node[0]-1][node[1]-1] = true
            graph[node[1]-1][node[0]-1] = true
        }

        for idx in 0..<NM[0] where !visited[idx] {
            dfs(row: idx)
            count += 1
        }

        print(count)

        func dfs(row: Int) {
            visited[row] = true

            for col in 0..<NM[0] where !visited[col] && graph[row][col] {
                dfs(row: col)
            }
        }
    }
}
