//
//  3107.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 3/22/25.
//

//  문제 링크: https://www.acmicpc.net/problem/3107
//  알고리즘 분류: 구현, 문자열

class BOJ3107: Solvable {
    func run() {
        // 메모리: 69108KB, 시간: 8ms, 코드 길이: 583B
        var contract = readLine()!.map { String($0) }
        var idx = 0
        var count = 0

        while idx < contract.count {
            if contract[idx] == ":" {
                count += 1
            }

            if idx > 0 && contract[idx-1] == ":" && contract[idx] == ":" {
                contract.insert("0", at: idx)
                break
            }

            idx += 1
        }

        var ipv6 = contract.joined().split(separator: ":")

        for idx in ipv6.indices where ipv6[idx].count < 4 {
            ipv6[idx] = String(repeating: "0", count: 4 - ipv6[idx].count) + ipv6[idx]
        }

        while ipv6.count < 8 {
            ipv6.insert("0000", at: count-1)
        }

        print(ipv6.joined(separator: ":"))
    }
}
