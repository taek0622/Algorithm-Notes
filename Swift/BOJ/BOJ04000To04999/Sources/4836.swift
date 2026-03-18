//
//  4836.swift
//  BOJ04000To04999
//
//  Created by 김이안 on 3/18/26.
//

//  문제 링크: https://www.acmicpc.net/problem/4836
//  알고리즘 분류: 구현, 문자열, 파싱

import Shared

public struct BOJ4836: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69116KB, 시간: 8ms, 코드 길이: 1275B
        while let input = readLine() {
            var dances = input.split(separator: " ").map { String($0) }
            var errorRule = Set<Int>()

            for idx in dances.indices where dances[idx] == "dip" && !((dances.count > idx+1 && dances[idx+1] == "twirl") || (idx-1 >= 0 && dances[idx-1] == "jiggle") || (idx-2 >= 0 && dances[idx-2] == "jiggle")) {
                errorRule.insert(1)
                dances[idx] = "DIP"
            }

            if dances.count < 3 || dances[(dances.count-3)..<dances.count] != ["clap", "stomp", "clap"] {
                errorRule.insert(2)
            }

            if Set(dances).contains("twirl") && !Set(dances).contains("hop") {
                errorRule.insert(3)
            }

            if dances[0] == "jiggle" {
                errorRule.insert(4)
            }

            if !Set(dances).contains("dip") && !Set(dances).contains("DIP") {
                errorRule.insert(5)
            }

            if errorRule.count == 0 {
                print("form ok: \(input)")
            } else if errorRule.count == 1 {
                let error = errorRule.removeFirst()
                print("form error \(error): \(dances.joined(separator: " "))")
            } else {
                let errors = errorRule.sorted()
                let errorArray = errors[0..<errors.count-1].map { String($0) }.joined(separator: ", ")
                print("form errors \(errorArray) and \(errors.last!): \(dances.joined(separator: " "))")
            }
        }
    }
}
