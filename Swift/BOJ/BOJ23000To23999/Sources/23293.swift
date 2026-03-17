//
//  23293.swift
//  BOJ23000To23999
//
//  Created by 김이안 on 3/17/26.
//

//  문제 링크: https://www.acmicpc.net/problem/23293
//  알고리즘 분류: 구현, 자료 구조, 시뮬레이션

import Shared

public struct BOJ23293: Solvable {
    public init() {}

    public func run() {
        // 메모리: 95504KB, 시간: 412ms, 코드 길이: 1711B
        struct Player {
            var location: Int
            var item: [Int]
        }

        let TN = readLine()!.split(separator: " ").map { Int($0)! }
        var players = Array(repeating: Player(location: 1, item: Array(repeating: 0, count: 54)), count: TN[1]+1)
        var badLogs = [Int]()
        var bannedPlayer = Set<Int>()

        for _ in 0..<TN[0] {
            let log = readLine()!.split(separator: " ").map { String($0) }
            let (logNum, player) = (Int(log[0])!, Int(log[1])!)

            switch log[2] {
                case "M":
                    if players[player].location == Int(log[3])! {
                        badLogs.append(logNum)
                    }

                    players[player].location = Int(log[3])!
                case "F":
                    if Int(log[3])! != players[player].location {
                        badLogs.append(logNum)
                    }

                    players[player].item[Int(log[3])!] += 1
                case "C":
                    var useCount = 0

                    if players[player].item[Int(log[3])!] > 0 {
                        players[player].item[Int(log[3])!] -= 1
                        useCount += 1
                    }

                    if players[player].item[Int(log[4])!] > 0 {
                        players[player].item[Int(log[4])!] -= 1
                        useCount += 1
                    }

                    if useCount != 2 || log[3] == log[4] {
                        badLogs.append(logNum)
                    }
                case "A":
                    if players[player].location != players[Int(log[3])!].location {
                        badLogs.append(logNum)
                        bannedPlayer.insert(player)
                    }
                default:
                    break
            }
        }

        print("\(badLogs.count)\n\(badLogs.count != 0 ? "\(badLogs.map { String($0) }.joined(separator: " "))\n" : "")\(bannedPlayer.count)\n\(bannedPlayer.sorted().map { String($0) }.joined(separator: " "))")
    }
}
