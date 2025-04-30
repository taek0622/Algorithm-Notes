//
//  5586.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 7/15/24.
//

//  문제 링크: https://www.acmicpc.net/problem/5586
//  알고리즘 분류: 구현, 문자열

class BOJ5586: Solvable {
    func run() {
        // 메모리: 69228KB, 시간: 8ms, 코드 길이: 290B
        let string = Array(readLine()!)
        var count = (JOI: 0, IOI: 0)

        for idx in 0..<string.count-2 {
            let compare = String(string[idx...idx+2])

            if compare == "JOI" {
                count.JOI += 1
            } else if compare == "IOI" {
                count.IOI += 1
            }
        }

        print("\(count.JOI)\n\(count.IOI)")
    }
}
