//
//  15683.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 11/20/24.
//

//  문제 링크: https://www.acmicpc.net/problem/15683
//  알고리즘 분류: 구현, 브루트포스 알고리즘, 시뮬레이션, 백트래킹

class BOJ15683: Solvable {
    func run() {
        solution1()
    }

    // 메모리: 69120KB, 시간: 64ms, 코드 길이: 9085B
    private func solution1() {
        enum Direction {
            case up, down, left, right
        }

        let NM = readLine()!.split(separator: " ").map { Int($0)! }
        var office = Array(repeating: Array(repeating: 0, count: NM[1]), count: NM[0])
        var area = Array(repeating: Array(repeating: false, count: NM[1]), count: NM[0])
        var cctvs = [(row: Int, col: Int, type: Int)]()

        for row in 0..<NM[0] {
            office[row] = readLine()!.split(separator: " ").map { Int($0)! }

            for col in 0..<NM[1] where office[row][col] != 0 {
                area[row][col] = true

                if 1...5 ~= office[row][col] {
                    cctvs.append((row, col, office[row][col]))
                }
            }
        }

        print(monitor(area, cctvs))

        func monitor(_ area: [[Bool]], _ cctvs: [(Int, Int, Int)]) -> Int {
            var count = 0

            if cctvs.count == 0 {
                for row in 0..<NM[0] {
                    for col in 0..<NM[1] where !area[row][col] {
                        count += 1
                    }
                }

                return count
            }

            var cctvs = cctvs
            let current = cctvs.removeLast()

            switch current.2 {
                case 1:
                    count =  min(monitor1(area, cctvs, current.0, current.1, .right), monitor1(area, cctvs, current.0, current.1, .down), monitor1(area, cctvs, current.0, current.1, .left), monitor1(area, cctvs, current.0, current.1, .up))
                case 2:
                    count = min(monitor2(area, cctvs, current.0, current.1, .right), monitor2(area, cctvs, current.0, current.1, .down))
                case 3:
                    count =  min(monitor3(area, cctvs, current.0, current.1, .right), monitor3(area, cctvs, current.0, current.1, .down), monitor3(area, cctvs, current.0, current.1, .left), monitor3(area, cctvs, current.0, current.1, .up))
                case 4:
                    count =  min(monitor4(area, cctvs, current.0, current.1, .right), monitor4(area, cctvs, current.0, current.1, .down), monitor4(area, cctvs, current.0, current.1, .left), monitor4(area, cctvs, current.0, current.1, .up))
                case 5:
                    count = monitor5(area, cctvs, current.0, current.1)
                default:
                    break
            }

            return count
        }

        func monitor1(_ area: [[Bool]], _ cctvs: [(Int, Int, Int)], _ cr: Int, _ cc: Int, _ direction: Direction) -> Int {
            var area = area

            switch direction {
                case .up:
                    for row in stride(from: cr, through: 0, by: -1) {
                        if office[row][cc] == 6 {
                            break
                        }

                        area[row][cc] = true
                    }
                case .down:
                    for row in cr..<NM[0] {
                        if office[row][cc] == 6 {
                            break
                        }

                        area[row][cc] = true
                    }
                case .left:
                    for col in stride(from: cc, through: 0, by: -1) {
                        if office[cr][col] == 6 {
                            break
                        }

                        area[cr][col] = true
                    }
                case .right:
                    for col in cc..<NM[1] {
                        if office[cr][col] == 6 {
                            break
                        }

                        area[cr][col] = true
                    }
            }

            return monitor(area, cctvs)
        }

        func monitor2(_ area: [[Bool]], _ cctvs: [(Int, Int, Int)], _ cr: Int, _ cc: Int, _ direction: Direction) -> Int {
            var area = area

            switch direction {
                case .up, .down:
                    for row in cr..<NM[0] {
                        if office[row][cc] == 6 {
                            break
                        }

                        area[row][cc] = true
                    }

                    for row in stride(from: cr, through: 0, by: -1) {
                        if office[row][cc] == 6 {
                            break
                        }

                        area[row][cc] = true
                    }
                case .left, .right:
                    for col in cc..<NM[1] {
                        if office[cr][col] == 6 {
                            break
                        }

                        area[cr][col] = true
                    }

                    for col in stride(from: cc, through: 0, by: -1) {
                        if office[cr][col] == 6 {
                            break
                        }

                        area[cr][col] = true
                    }
            }

            return monitor(area, cctvs)
        }

        func monitor3(_ area: [[Bool]], _ cctvs: [(Int, Int, Int)], _ cr: Int, _ cc: Int, _ direction: Direction) -> Int {
            var area = area

            switch direction {
                case .up:
                    for col in stride(from: cc, through: 0, by: -1) {
                        if office[cr][col] == 6 {
                            break
                        }

                        area[cr][col] = true
                    }

                    for row in stride(from: cr, through: 0, by: -1) {
                        if office[row][cc] == 6 {
                            break
                        }

                        area[row][cc] = true
                    }
                case .down:
                    for col in cc..<NM[1] {
                        if office[cr][col] == 6 {
                            break
                        }

                        area[cr][col] = true
                    }

                    for row in cr..<NM[0] {
                        if office[row][cc] == 6 {
                            break
                        }

                        area[row][cc] = true
                    }
                case .left:
                    for col in stride(from: cc, through: 0, by: -1) {
                        if office[cr][col] == 6 {
                            break
                        }

                        area[cr][col] = true
                    }

                    for row in cr..<NM[0] {
                        if office[row][cc] == 6 {
                            break
                        }

                        area[row][cc] = true
                    }
                case .right:
                    for col in cc..<NM[1] {
                        if office[cr][col] == 6 {
                            break
                        }

                        area[cr][col] = true
                    }

                    for row in stride(from: cr, through: 0, by: -1) {
                        if office[row][cc] == 6 {
                            break
                        }

                        area[row][cc] = true
                    }
            }

            return monitor(area, cctvs)
        }

        func monitor4(_ area: [[Bool]], _ cctvs: [(Int, Int, Int)], _ cr: Int, _ cc: Int, _ direction: Direction) -> Int {
            var area = area

            switch direction {
                case .up:
                    for row in stride(from: cr, through: 0, by: -1) {
                        if office[row][cc] == 6 {
                            break
                        }

                        area[row][cc] = true
                    }

                    for col in stride(from: cc, through: 0, by: -1) {
                        if office[cr][col] == 6 {
                            break
                        }

                        area[cr][col] = true
                    }

                    for row in cr..<NM[0] {
                        if office[row][cc] == 6 {
                            break
                        }

                        area[row][cc] = true
                    }
                case .down:
                    for row in stride(from: cr, through: 0, by: -1) {
                        if office[row][cc] == 6 {
                            break
                        }

                        area[row][cc] = true
                    }

                    for col in cc..<NM[1] {
                        if office[cr][col] == 6 {
                            break
                        }

                        area[cr][col] = true
                    }

                    for row in cr..<NM[0] {
                        if office[row][cc] == 6 {
                            break
                        }

                        area[row][cc] = true
                    }
                case .left:
                    for col in stride(from: cc, through: 0, by: -1) {
                        if office[cr][col] == 6 {
                            break
                        }

                        area[cr][col] = true
                    }

                    for row in cr..<NM[0] {
                        if office[row][cc] == 6 {
                            break
                        }

                        area[row][cc] = true
                    }

                    for col in cc..<NM[1] {
                        if office[cr][col] == 6 {
                            break
                        }

                        area[cr][col] = true
                    }
                case .right:
                    for col in stride(from: cc, through: 0, by: -1) {
                        if office[cr][col] == 6 {
                            break
                        }

                        area[cr][col] = true
                    }

                    for row in stride(from: cr, through: 0, by: -1) {
                        if office[row][cc] == 6 {
                            break
                        }

                        area[row][cc] = true
                    }

                    for col in cc..<NM[1] {
                        if office[cr][col] == 6 {
                            break
                        }

                        area[cr][col] = true
                    }
            }

            return monitor(area, cctvs)
        }

        func monitor5(_ area: [[Bool]], _ cctvs: [(Int, Int, Int)], _ cr: Int, _ cc: Int) -> Int {
            var area = area

            for row in stride(from: cr, through: 0, by: -1) {
                if office[row][cc] == 6 {
                    break
                }

                area[row][cc] = true
            }

            for row in cr..<NM[0] {
                if office[row][cc] == 6 {
                    break
                }

                area[row][cc] = true
            }

            for col in stride(from: cc, through: 0, by: -1) {
                if office[cr][col] == 6 {
                    break
                }

                area[cr][col] = true
            }

            for col in cc..<NM[1] {
                if office[cr][col] == 6 {
                    break
                }

                area[cr][col] = true
            }

            return monitor(area, cctvs)
        }
    }

    // 메모리: 69116KB, 시간: 72ms, 코드 길이: 2982B
    private func solution2() {
        enum Direction {
            case up, down, left, right
        }

        let NM = readLine()!.split(separator: " ").map { Int($0)! }
        var office = Array(repeating: Array(repeating: 0, count: NM[1]), count: NM[0])
        var area = Array(repeating: Array(repeating: false, count: NM[1]), count: NM[0])
        var cctvs = [(row: Int, col: Int, type: Int)]()

        for row in 0..<NM[0] {
            office[row] = readLine()!.split(separator: " ").map { Int($0)! }

            for col in 0..<NM[1] where office[row][col] != 0 {
                area[row][col] = true

                if 1...5 ~= office[row][col] {
                    cctvs.append((row, col, office[row][col]))
                }
            }
        }

        print(monitor(area, cctvs, []))

        func monitor(_ area: [[Bool]], _ cctvs: [(Int, Int, Int)], _ direction: [Direction]) -> Int {
            var count = 0
            var area = area
            var cctvs = cctvs

            if cctvs.count == 0 {
                for row in 0..<NM[0] {
                    for col in 0..<NM[1] where !area[row][col] {
                        count += 1
                    }
                }

                return count
            }

            let (cr, cc, type) = cctvs.removeLast()

            if direction == [] {
                cctvs.append((cr, cc, type))
            }

            if direction.contains(.right) {
                for col in cc..<NM[1] {
                    if office[cr][col] == 6 {
                        break
                    }

                    area[cr][col] = true
                }
            }

            if direction.contains(.down) {
                for row in cr..<NM[0] {
                    if office[row][cc] == 6 {
                        break
                    }

                    area[row][cc] = true
                }
            }

            if direction.contains(.left) {
                for col in stride(from: cc, through: 0, by: -1) {
                    if office[cr][col] == 6 {
                        break
                    }

                    area[cr][col] = true
                }
            }

            if direction.contains(.up) {
                for row in stride(from: cr, through: 0, by: -1) {
                    if office[row][cc] == 6 {
                        break
                    }

                    area[row][cc] = true
                }
            }

            if cctvs.count == 0 {
                for row in 0..<NM[0] {
                    for col in 0..<NM[1] where !area[row][col] {
                        count += 1
                    }
                }

                return count
            }

            switch cctvs.last!.2 {
                case 1:
                    count =  min(monitor(area, cctvs, [.right]), monitor(area, cctvs, [.down]), monitor(area, cctvs, [.left]), monitor(area, cctvs, [.up]))
                case 2:
                    count = min(monitor(area, cctvs, [.left, .right]), monitor(area, cctvs, [.up, .down]))
                case 3:
                    count =  min(monitor(area, cctvs, [.up, .right]), monitor(area, cctvs, [.right, .down]), monitor(area, cctvs, [.down, .left]), monitor(area, cctvs, [.left, .up]))
                case 4:
                    count =  min(monitor(area, cctvs, [.left, .up, .right]), monitor(area, cctvs, [.up, .right, .down]), monitor(area, cctvs, [.right, .down, .left]), monitor(area, cctvs, [.down, .left, .up]))
                case 5:
                    count = monitor(area, cctvs, [.right, .down, .left, .up])
                default:
                    break
            }

            return count
        }
    }

    // 메모리: 69112KB, 시간: 120ms, 코드 길이: 3035B
    private func solution3() {
        let NM = readLine()!.split(separator: " ").map { Int($0)! }
        var office = Array(repeating: Array(repeating: 0, count: NM[1]), count: NM[0])
        var area = Array(repeating: Array(repeating: false, count: NM[1]), count: NM[0])
        var cctvs = [(Int, Int, Int)]()

        for row in 0..<NM[0] {
            office[row] = readLine()!.split(separator: " ").map { Int($0)! }

            for col in 0..<NM[1] where office[row][col] != 0 {
                area[row][col] = true

                if 1...5 ~= office[row][col] {
                    cctvs.append((row, col, office[row][col]))
                }
            }
        }

        print(monitor(area, cctvs))

        func monitor(_ area: [[Bool]], _ cctvs: [(Int, Int, Int)]) -> Int {
            var count = 0

            if cctvs.count == 0 {
                for row in 0..<NM[0] {
                    for col in 0..<NM[1] where !area[row][col] {
                        count += 1
                    }
                }

                return count
            }

            var cctvs = cctvs
            let (cr, cc, type) = cctvs.removeLast()
            var (rightMonitor, downMonitor, leftMonitor, upMonitor) = (area, area, area, area)

            for col in cc..<NM[1] {
                if office[cr][col] == 6 {
                    break
                }

                rightMonitor[cr][col] = true
            }

            for row in cr..<NM[0] {
                if office[row][cc] == 6 {
                    break
                }

                downMonitor[row][cc] = true
            }

            for col in stride(from: cc, through: 0, by: -1) {
                if office[cr][col] == 6 {
                    break
                }

                leftMonitor[cr][col] = true
            }

            for row in stride(from: cr, through: 0, by: -1) {
                if office[row][cc] == 6 {
                    break
                }

                upMonitor[row][cc] = true
            }

            switch type {
                case 1:
                    count = min(monitor(rightMonitor, cctvs), monitor(downMonitor, cctvs), monitor(leftMonitor, cctvs), monitor(upMonitor, cctvs))
                case 2:
                    count = min(monitor(combineMonitor(leftMonitor, rightMonitor), cctvs), monitor(combineMonitor(upMonitor, downMonitor), cctvs))
                case 3:
                    count = min(monitor(combineMonitor(upMonitor, rightMonitor), cctvs), monitor(combineMonitor(rightMonitor, downMonitor), cctvs), monitor(combineMonitor(downMonitor, leftMonitor), cctvs), monitor(combineMonitor(leftMonitor, upMonitor), cctvs))
                case 4:
                    count = min(monitor(combineMonitor(combineMonitor(leftMonitor, upMonitor), rightMonitor), cctvs), monitor(combineMonitor(combineMonitor(upMonitor, rightMonitor), downMonitor), cctvs), monitor(combineMonitor(combineMonitor(rightMonitor, downMonitor), leftMonitor), cctvs), monitor(combineMonitor(combineMonitor(downMonitor, leftMonitor), upMonitor), cctvs))
                case 5:
                    count = monitor(combineMonitor(combineMonitor(leftMonitor, rightMonitor), combineMonitor(upMonitor, downMonitor)), cctvs)
                default:
                    break
            }

            return count
        }

        func combineMonitor(_ base: [[Bool]], _ compare: [[Bool]]) -> [[Bool]] {
            var base = base

            for row in 0..<NM[0] {
                for col in 0..<NM[1] where compare[row][col] {
                    base[row][col] = true
                }
            }

            return base
        }
    }

    // 메모리: 69112KB, 시간: 140ms, 코드 길이: 2975B
    private func solution4() {
        let NM = readLine()!.split(separator: " ").map { Int($0)! }
        var office = Array(repeating: Array(repeating: 0, count: NM[1]), count: NM[0])
        var area = Array(repeating: Array(repeating: false, count: NM[1]), count: NM[0])
        var cctvs = [(Int, Int, Int)]()

        for row in 0..<NM[0] {
            office[row] = readLine()!.split(separator: " ").map { Int($0)! }

            for col in 0..<NM[1] where office[row][col] != 0 {
                area[row][col] = true

                if 1...5 ~= office[row][col] {
                    cctvs.append((row, col, office[row][col]))
                }
            }
        }

        print(monitor(area, cctvs))

        func monitor(_ area: [[Bool]], _ cctvs: [(Int, Int, Int)]) -> Int {
            var count = 0

            if cctvs.count == 0 {
                for row in 0..<NM[0] {
                    for col in 0..<NM[1] where !area[row][col] {
                        count += 1
                    }
                }

                return count
            }

            var cctvs = cctvs
            let (cr, cc, type) = cctvs.removeLast()
            var (rightMonitor, downMonitor, leftMonitor, upMonitor, rowMonitor, colMonitor) = (area, area, area, area, area, area)

            for col in cc..<NM[1] {
                if office[cr][col] == 6 {
                    break
                }

                rightMonitor[cr][col] = true
                rowMonitor[cr][col] = true
            }

            for row in cr..<NM[0] {
                if office[row][cc] == 6 {
                    break
                }

                downMonitor[row][cc] = true
                colMonitor[row][cc] = true
            }

            for col in stride(from: cc, through: 0, by: -1) {
                if office[cr][col] == 6 {
                    break
                }

                leftMonitor[cr][col] = true
                rowMonitor[cr][col] = true
            }

            for row in stride(from: cr, through: 0, by: -1) {
                if office[row][cc] == 6 {
                    break
                }

                upMonitor[row][cc] = true
                colMonitor[row][cc] = true
            }

            switch type {
                case 1:
                    count = min(monitor(rightMonitor, cctvs), monitor(downMonitor, cctvs), monitor(leftMonitor, cctvs), monitor(upMonitor, cctvs))
                case 2:
                    count = min(monitor(rowMonitor, cctvs), monitor(colMonitor, cctvs))
                case 3:
                    count = min(monitor(combineMonitor(upMonitor, rightMonitor), cctvs), monitor(combineMonitor(rightMonitor, downMonitor), cctvs), monitor(combineMonitor(downMonitor, leftMonitor), cctvs), monitor(combineMonitor(leftMonitor, upMonitor), cctvs))
                case 4:
                    count = min(monitor(combineMonitor(rowMonitor, upMonitor), cctvs), monitor(combineMonitor(rowMonitor, downMonitor), cctvs), monitor(combineMonitor(colMonitor, leftMonitor), cctvs), monitor(combineMonitor(colMonitor, rightMonitor), cctvs))
                case 5:
                    count = monitor(combineMonitor(rowMonitor, colMonitor), cctvs)
                default:
                    break
            }

            return count
        }

        func combineMonitor(_ base: [[Bool]], _ compare: [[Bool]]) -> [[Bool]] {
            var base = base

            for row in 0..<NM[0] {
                for col in 0..<NM[1] where compare[row][col] {
                    base[row][col] = true
                }
            }

            return base
        }
    }
}
