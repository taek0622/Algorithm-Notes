//
//  6040.swift
//  BOJ06000To06999
//
//  Created by 김민택 on 2/25/26.
//

//  문제 링크: https://www.acmicpc.net/problem/6040
//  알고리즘 분류: 수학, 구현, 임의 정밀도 / 큰 수 연산

import Shared

public struct BOJ6040: Solvable {
    public init() {}

    public func run() {
        // 메모리: 81812KB, 시간: 160ms, 코드 길이: 792B
        let hexaDict = [
            "0": "0000", "1": "0001", "2": "0010", "3": "0011", "4": "0100", "5": "0101", "6": "0110", "7": "0111",
            "8": "1000", "9": "1001", "A": "1010", "B": "1011", "C": "1100", "D": "1101", "E": "1110", "F": "1111"
        ]
        let octaDict = [
            "000": "0", "001": "1", "010": "2", "011": "3", "100": "4", "101": "5", "110": "6", "111": "7"
        ]
        var bin = readLine()!.map { hexaDict[String($0)]! }.joined().map { String($0) }
        var temp = ""
        var octa = ""

        while bin.count % 3 != 0 {
            bin = ["0"] + bin
        }

        var idx = bin.count - 1

        while idx >= 0 {
            temp += bin[idx]
            idx -= 1

            if temp.count == 3 {
                octa += octaDict[String(temp.reversed())]!
                temp = ""
            }
        }

        while octa.count > 1 && octa.last! == "0" {
            octa.removeLast()
        }

        print(String(octa.reversed()))
    }
}
