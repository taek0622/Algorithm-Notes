//
//  PGM43164.swift
//  Programmers
//
//  Created by 김이안 on 5/10/26.
//

//  문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/43164
//  문제 분류: 깊이/너비 우선 탐색(DFS/BFS)

import Foundation

import Shared

public struct PGM43164: Solvable {
    public init() {}

    public func run() {
        print(solution([["ICN", "JFK"], ["HND", "IAD"], ["JFK", "HND"]]) == ["ICN", "JFK", "HND", "IAD"])
        print(solution([["ICN", "SFO"], ["ICN", "ATL"], ["SFO", "ATL"], ["ATL", "ICN"], ["ATL","SFO"]]) == ["ICN", "ATL", "ICN", "SFO", "ATL", "SFO"])
        print(solution([["ICN", "SFO"], ["SFO", "ICN"], ["ICN", "ALT"]]) == ["ICN", "SFO", "ICN", "ALT"])
    }

    func solution(_ tickets: [[String]]) -> [String] {
        var graph = [String: [(String, Int)]]()
        var visited = Array(repeating: false, count: tickets.count)
        var path = ["ICN"]

        for idx in tickets.indices {
            graph[tickets[idx][0], default: []].append((tickets[idx][1], idx))
        }

        for key in graph.keys {
            graph[key]!.sort { $0.0 < $1.0 }
        }

        dfs("ICN", graph, &visited, &path, tickets.count + 1)
        return path
    }

    func dfs(_ now: String, _ graph: [String: [(String, Int)]], _ visited: inout [Bool], _ path: inout [String], _ targetCount: Int) {
        if path.count == targetCount { return }

        for next in graph[now, default: []] where !visited[next.1] {
            visited[next.1] = true
            path.append(next.0)

            dfs(next.0, graph, &visited, &path, targetCount)
            if path.count == targetCount { break }

            visited[next.1] = false
            path.removeLast()
        }
    }
}
