//
//  1212.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/02/19.
//

// 문제: https://www.acmicpc.net/problem/1212

import Foundation

class BOJ1212: Solvable {
    func run() {
        // 메모리: 87560KB, 시간: 792ms, 코드 길이: 279B
        let octa = readLine()!.map { String($0) }
        var binary = ""

        for idx in octa.indices {
            let bit = String(Int(octa[idx])!, radix: 2)
            if idx == 0 {
                binary += bit
            } else {
                binary += String(format: "%03d", Int(bit)!)
            }
        }

        print(binary)
    }
}
