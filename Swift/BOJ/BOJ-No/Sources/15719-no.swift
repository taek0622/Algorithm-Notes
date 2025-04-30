//
//  15719.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/08/08.
//

// 문제: https://www.acmicpc.net/problem/15719

import Foundation

class BOJ15719: Solvable {
    func run() {
        let N = Int(readLine()!)!
        let file = SumFileIO()
        let input = file.readInt()

        print(input - N * (N - 1) / 2)
    }
}

final class SumFileIO {
    private let buffer: [UInt8]
    private var index: Int = 0

    init(fileHandle: FileHandle = FileHandle.standardInput) {
        buffer = Array(try! fileHandle.readToEnd()!) + [UInt8(0)] // 인덱스 범위 넘어가는 것 방지
    }

    @inline(__always) private func read() -> UInt8 {
        defer { index += 1 }

        return buffer[index]
    }

    @inline(__always) func readInt() -> Int {
        var sum = 0
        var now = read()

        while 48...57 ~= now || now == 10 || now == 32 {
            if now == 10 || now == 32 {
                now = read()
                continue
            }

            sum += Int(now-48)
            now = read()
        }

        return sum
    }
}
