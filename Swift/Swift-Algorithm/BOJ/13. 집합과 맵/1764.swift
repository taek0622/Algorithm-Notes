//
//  1764.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/01/09.
//

// 문제: https://www.acmicpc.net/problem/1764

class BOJ1764: Solvable {
    func run() {
        // 메모리: 76048KB, 시간: 84ms, 코드 길이: 475B
        let input = readLine()!.split(separator: " ").map { Int(String($0))! }
        var noListen = Set<String>()
        var noListenAndSee = Set<String>()
        var count = 0
        var result = ""

        for _ in 0..<input[0] {
            noListen.insert(readLine()!)
        }

        for _ in 0..<input[1] {
            let noSee = readLine()!
            if noListen.contains(noSee) {
                noListenAndSee.insert(noSee)
                count += 1
            }
        }

        result += "\(count)\n"

        noListenAndSee.sorted().forEach {
            result += "\($0)\n"
        }

        print(result)
    }
}
