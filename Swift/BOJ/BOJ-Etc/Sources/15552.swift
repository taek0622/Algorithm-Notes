//
//  15552.swift
//  Swift
//
//  Created by 김민택 on 2022/05/13.
//

// 문제: https://www.acmicpc.net/problem/15552

import Foundation

class BOJ15552: Solvable {
    func run() {
        solution1()
    }

    // 메모리: 97360KB, 시간: 296ms, 코드 길이: 1050B
    private func solution1() {
        let fileIO = RhynoFileIO()
        let T = fileIO.readInt()
        var result = ""

        for _ in 0..<T {
            result += "\(fileIO.readInt() + fileIO.readInt())\n"
        }

        print(result)
    }

    // 메모리: 97352KB, 시간: 300ms, 코드 길이: 601B
    private func solution2() {
        let buffer: [UInt8] = Array(try! FileHandle.standardInput.readToEnd()!)
        var (result, num1, num2, withSpace) = ("", 0, 0, 0)

        for byte in buffer {
            switch byte {
            case 0x04: continue
            case 0x0A:
                if withSpace != 0 {
                    result += "\(num1 + num2)\n"
                }

                (num1, num2, withSpace) = (0, 0, 0)
            case 0x20: withSpace = 1
            default:
                if withSpace == 0 {
                    num1 = num1 << 3 + num1 << 1 + Int(byte - 0x30)
                } else {
                    num2 = num2 << 3 + num2 << 1 + Int(byte - 0x30)
                }
            }
        }

        print(result)
    }
}
