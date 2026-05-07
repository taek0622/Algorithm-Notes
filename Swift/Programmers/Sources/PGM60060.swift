//
//  PGM60060.swift
//  Programmers
//
//  Created by 김이안 on 5/7/26.
//

//  문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/60060
//  문제 분류: 2020 KAKAO BLIND RECRUITMENT

import Foundation

import Shared

public struct PGM60060: Solvable {
    public init() {}

    public func run() {
        print(solution(["frodo", "front", "frost", "frozen", "frame", "kakao"], ["fro??", "????o", "fr???", "fro???", "pro?"]) == [3, 2, 4, 1, 0])
    }

    func solution(_ words: [String], _ queries: [String]) -> [Int] {
        var preDict = [Int: [String]]()
        var sufDict = [Int: [String]]()
        var countDict = [String: Int]()
        var count = Array(repeating: 0, count: queries.count)

        for word in words {
            preDict[word.count, default: []].append(word)
            sufDict[word.count, default: []].append(String(word.reversed()))
        }

        for key in preDict.keys {
            preDict[key]?.sort()
            sufDict[key]?.sort()
        }

        for idx in queries.indices {
            var query = queries[idx]

            if countDict[query] != nil {
                count[idx] = countDict[query]!
                continue
            }

            var dict = preDict

            if query.first == "?" {
                query = String(query.reversed())
                dict = sufDict
            }

            let search = dict[query.count, default: []]

            if search.isEmpty {
                countDict[queries[idx]] = 0
                count[idx] = 0
            }

            let frontQuery = query.map { $0 == "?" ? "a" : String($0) }.joined()
            let backQuery = query.map { $0 == "?" ? "z" : String($0) }.joined()
            var start = 0
            var end = search.count
            var left = 0
            var right = search.count

            while left < right {
                let mid = (left + right) / 2

                if search[mid] >= frontQuery {
                    right = mid
                } else {
                    left = mid + 1
                }
            }

            start = left
            left = 0
            right = search.count

            while left < right {
                let mid = (left + right) / 2

                if search[mid] > backQuery {
                    right = mid
                } else {
                    left = mid + 1
                }
            }

            end = left
            count[idx] = max(0, end - start)
            countDict[queries[idx]] = count[idx]
        }

        return count
    }
}
