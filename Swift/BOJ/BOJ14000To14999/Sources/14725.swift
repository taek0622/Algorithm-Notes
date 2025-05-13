//
//  14725.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 1/18/24.
//

//  문제 링크: https://www.acmicpc.net/problem/14725
//  알고리즘 분류: 자료 구조, 문자열, 트리, 트라이

import Shared

public struct BOJ14725: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69248KB, 시간: 12ms, 코드 길이: 823ㅠ
        let N = Int(readLine()!)!
        var tunnel = Tunnel()

        for _ in 0..<N {
            tunnel.addNextTunnel(1, readLine()!.split(separator: " ").map { String($0)})
        }

        print(tunnel)

        struct Tunnel: CustomStringConvertible {
            private var tunnel = [String: Tunnel]()
            var floor = 0
            var description: String {
                var result = ""

                tunnel.sorted(by: { $0.key < $1.key }).forEach {
                    for _ in 1..<floor {
                        result += "--"
                    }

                    result += "\($0.key)\n"
                    result += "\($0.value)"
                }

                return result
            }

            mutating func addNextTunnel(_ count: Int, _ tunnels: [String]) {
                if count == Int(tunnels[0])!+1 {
                    return
                }

                floor = count

                tunnel[tunnels[count], default: Tunnel()].addNextTunnel(count+1, tunnels)
            }
        }
    }
}
