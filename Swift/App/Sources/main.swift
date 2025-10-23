//
//  main.swift
//  Swift
//
//  Created by 김민택 on 2022/12/25.
//

// Swift Version Info
// 백준: Swift 5.5.2
// 프로그래머스: Swift 5.2.5
// Samsung SW Expert Academy: 미지원
// Codility: Swift 4
// CODEFORCES: 미지원
// LeetCode: Swift 5.5.2
// CodeUp: 미지원

import Foundation

import BOJ33000To33999
import Shared

let main = BOJ33990()
main.run()

public struct BOJ10253: Solvable {
    public init() {}

    public func run() {
        let T = Int(readLine()!)!

        for _ in 0..<T {
            let ab = readLine()!.split(separator: " ").map { Double($0)! }
            var (a, b) = (ab[0], ab[1])
            var divisor = 2.0

            while a > 0 {
                if a / b >= 1 / divisor {
                    let gcdValue = Double(gcd(Int(a), Int(b)))
                    a /= gcdValue
                    b /= gcdValue

                    let divGCD = Double(gcd(Int(b), Int(divisor)))
                    let prevB = b
                    a *= (divisor / divGCD)
                    b *= (divisor / divGCD)
                    a -= (prevB / divGCD)
                }

                divisor += 1
            }

            print(Int(divisor)-1)
        }

        func gcd(_ num1: Int, _ num2: Int) -> Int {
            if num2 % num1 == 0 { return num1 }
            return gcd(num2, num1 % num2)
        }
    }
}

public struct BOJ16235: Solvable {
    public init() {}

    public func run() {
        let NMK = readLine()!.split(separator: " ").map { Int($0)! }
        var land = Array(repeating: Array(repeating: 5, count: NMK[0]), count: NMK[0])
        var A = Array(repeating: Array(repeating: 0, count: NMK[0]), count: NMK[0])
        var trees = [(x: Int, y: Int, z: Int)]()
        var year = 0

        for row in 0..<NMK[0] {
            A[row] = readLine()!.split(separator: " ").map { Int($0)! }
        }

        for _ in 0..<NMK[1] {
            let input = readLine()!.split(separator: " ").map { Int($0)! }
            trees.append((input[0] - 1, input[1] - 1, input[2]))
        }

        while year < NMK[2] {
            year += 1
            trees = trees.filter { $0.z != -1 }.sorted { $0.z < $1.z }
            var nutrient = Array(repeating: Array(repeating: 0, count: NMK[0]), count: NMK[0])

            // 봄
            for idx in trees.indices {
                if land[trees[idx].x][trees[idx].y] >= trees[idx].z {
                    land[trees[idx].x][trees[idx].y] -= trees[idx].z
                    trees[idx].z += 1
                } else {
                    nutrient[trees[idx].x][trees[idx].y] += trees[idx].z / 2
                    trees[idx].z = -1
                }
            }

            // 가을
            for tree in trees.filter { $0.z % 5 == 0 } {
                for (nr, nc) in [(tree.x-1, tree.y-1), (tree.x-1, tree.y), (tree.x-1, tree.y+1), (tree.x, tree.y-1), (tree.x, tree.y+1), (tree.x+1, tree.y-1), (tree.x+1, tree.y), (tree.x+1, tree.y+1)] where 0..<NMK[0] ~= nr && 0..<NMK[0] ~= nc {
                    trees.append((nr, nc, 1))
                }
            }

            // 겨울
            for row in 0..<NMK[0] {
                for col in 0..<NMK[0] {
                    land[row][col] += A[row][col] + nutrient[row][col]
                }
            }
        }

        print(trees.count)
    }
}

public struct BOJ31416: Solvable {
    public init() {}

    public func run() {
        let Q = Int(readLine()!)!

        for _ in 0..<Q {
            let ABTV = readLine()!.split(separator: " ").map { Int($0)! }
            let (TA, TB, VA, VB) = (ABTV[0], ABTV[1], ABTV[2], ABTV[3])
            var time = 0

            if TA * VA <= TB * VB {
                time = TB * VB
            } else {
                var temp = TA * VA - TB * VB

                if temp % 2 == 1 {
                    temp = temp / 2 + 1
                } else {
                    temp = temp / 2
                }

                if temp % TA != 0 {
                    if temp < TA {
                        temp = TA
                    } else {
                        temp = temp / TA * TA
                    }
                }

                time = temp + TB * VB
            }

            print(time)
        }
    }
}

public struct BOJ25966: Solvable {
    public init() {}

    public func run() {
        // 시간초과
        let NMq = readLine()!.split(separator: " ").map { Int($0)! }
        var array = Array(repeating: Array(repeating: 0, count: NMq[1]), count: NMq[0])

        for row in 0..<NMq[0] {
            array[row] = readLine()!.split(separator: " ").map { Int($0)! }
        }

        for _ in 0..<NMq[2] {
            let query = readLine()!.split(separator: " ").map { Int($0)! }

            if query[0] == 0 {
                array[query[1]][query[2]] = query[3]
            } else {
                array.swapAt(query[1], query[2])
            }
        }

        array.forEach {
            print($0.map { String($0) }.joined(separator: " "))
        }
    }
}

public struct BOJ14584: Solvable {
    public init() {}

    public func run() {
        let crypt = readLine()!.map { Int($0.asciiValue!) - 97 }
        let N = Int(readLine()!)!
        var result = ""

        for _ in 0..<N {
            let word = readLine()!.map { Int($0.asciiValue!) - 97 }

            if result != "" {
                continue
            }

            for add in 0..<26 where result == "" {
                for idx in 0..<crypt.count - word.count {
                    if word == Array(crypt[idx..<idx+word.count].map { ($0 + add) % 26 }) {
                        result = crypt.map { String(UnicodeScalar(($0 + add) % 26 + 97)!) }.joined()
                        break
                    }
                }
            }
        }

        print(result)
    }
}

public struct BOJ22351: Solvable {
    public init() {}

    public func run() {
        // 메모리: KB, 시간: ms, 코드 길이: B
        let S = readLine()!
        let target = S.map { Int(String($0))! }
        var (countA, countB) = (0, S.count - 1)
        var (A, B) = (target.first!, target.last!)

        while true {
            while A > B {
                countB -= 1
                var mul = 1

                for _ in countB..<S.count-1 {
                    mul *= 10
                }

                mul *= target[countB]
                B += mul
            }

            var number = ""

            for num in A...B {
                number += "\(num)"
            }

            if S == number {
                print(A, B)
                break
            }

            countA += 1
            A *= 10
            A += target[countA]
        }
    }
}

public struct BOJ19238: Solvable {
    public init() {}

    public func run() {
        let NMF = readLine()!.split(separator: " ").map { Int($0)! }
        var map = Array(repeating: Array(repeating: (0, 0, 0), count: NMF[0]), count: NMF[0])

        for row in 0..<NMF[0] {
            map[row] = readLine()!.split(separator: " ").map { Int($0)! == 1 ? (1, 0, 0) : (0, 0, 0) }
        }

        let start = readLine()!.split(separator: " ").map { Int($0)! - 1 }

        for idx in 0..<NMF[1] {
            let customer = readLine()!.split(separator: " ").map { Int($0)! - 1 }
            map[customer[0]][customer[1]] = (2, idx + 1, 0)
            map[customer[2]][customer[3]] = (3, idx + 1, 0)
        }

        var remain = NMF[1]
        var fuel = NMF[2]
        var idx = 0
        var queue = [(start[0], start[1])]
        var tempMap = map
        var rideWithCustomer = false
        var isFail = false
        var dest = 0

        while fuel > 0 && remain > 0 && idx < queue.count && !isFail {
            let (cr, cc) = queue[idx]
            idx += 1

            for (nr, nc) in [(cr-1, cc), (cr, cc-1), (cr, cc+1), (cr+1, cc)] where 0..<NMF[0] ~= nr && 0..<NMF[0] ~= nc && tempMap[nr][nc].0 != 1 && tempMap[nr][nc].2 == 0 {
                if !rideWithCustomer && tempMap[nr][nc].0 == 2 {
                    rideWithCustomer = true
                    fuel -= (tempMap[cr][cc].2 + 1)
                    map[nr][nc].0 = 0
                    queue = [(nr, nc)]
                    idx = 0
                    dest = map[nr][nc].1
                    tempMap = map
                    break
                } else if rideWithCustomer && tempMap[nr][nc].0 == 3 && tempMap[nr][nc].1 == dest {
                    rideWithCustomer = false
                    fuel += (tempMap[cr][cc].2 + 1)
                    map[nr][nc].0 = 0
                    queue = [(nr, nc)]
                    idx = 0
                    remain -= 1
                    tempMap = map
                    break
                } else {
                    tempMap[nr][nc].2 = tempMap[cr][cc].2 + 1
                    queue.append((nr, nc))

                    if fuel - tempMap[nr][nc].2 <= 0 {
                        isFail = true
                    }
                }
            }
        }

        if idx == queue.count {
            isFail = true
        }

        print(isFail ? -1 : fuel)
    }
}

public struct BOJ17143: Solvable {
    public init() {}

    public func run() {
        enum Direction: Int {
            case up = 1
            case down = 2
            case right = 3
            case left = 4
        }

        let RCM = readLine()!.split(separator: " ").map { Int($0)! }
        var sharks = [(Int, Int, Int, Direction, Int)]()
        var count = 0

        for _ in 0..<RCM[2] {
            let rcsdz = readLine()!.split(separator: " ").map { Int($0)! }
            sharks.append((rcsdz[0] - 1, rcsdz[1] - 1, rcsdz[2], Direction.init(rawValue: rcsdz[3])!, rcsdz[4]))
        }

        sharks.sort(by: { $0.0 < $1.0 })

        for col in 0..<RCM[1] {
            if let removeShark = sharks.firstIndex(where: { $0.1 == col }) {
                count += sharks.remove(at: removeShark).4
            }

            for idx in sharks.indices {
                var newShark = sharks[idx]

                while newShark.2 > 0 {
                    newShark.2 -= 1

                    switch newShark.3 {
                        case .up:
                            if 0..<RCM[0] ~= newShark.0 - 1 {
                                newShark.0 -= 1
                            } else {
                                newShark.0 += 1
                                newShark.3 = .down
                            }
                        case .down:
                            if 0..<RCM[0] ~= newShark.0 + 1 {
                                newShark.0 += 1
                            } else {
                                newShark.0 -= 1
                                newShark.3 = .up
                            }
                        case .right:
                            if 0..<RCM[1] ~= newShark.1 + 1 {
                                newShark.1 += 1
                            } else {
                                newShark.1 -= 1
                                newShark.3 = .left
                            }
                        case .left:
                            if 0..<RCM[1] ~= newShark.1 - 1 {
                                newShark.1 -= 1
                            } else {
                                newShark.1 += 1
                                newShark.3 = .right
                            }
                    }
                }

                sharks[idx] = (newShark.0, newShark.1, sharks[idx].2, newShark.3, newShark.4)
            }

            sharks.sort(by: { $0.0 < $1.0 })

            var idx = 0

            while idx < sharks.count - 1 {
                var compare = idx + 1

                while compare < sharks.count {
                    if sharks[idx].0 == sharks[compare].0 && sharks[idx].1 == sharks[compare].1 {
                        _ = sharks.remove(at: sharks[idx].4 > sharks[compare].4 ? compare : idx)
                    } else {
                        compare += 1
                    }
                }

                idx += 1
            }
        }

        print(count)
    }
}

public struct BOJ19538: Solvable {
    public init() {}

    public func run() {
        let N = Int(readLine()!)!
        var t = Array(repeating: -1, count: N)
        var graph = [Int: [Int]]()

        for idx in 0..<N {
            var input = readLine()!.split(separator: " ").map { Int($0)! - 1 }
            input.removeLast()

            if input.isEmpty {
                continue
            }

            for next in input {
                graph[idx, default: []].append(next)
            }
        }

        _ = Int(readLine()!)!
        let liars = readLine()!.split(separator: " ").map { Int($0)! - 1 }
        var queue = [Int]()
        var idx = 0

        for liar in liars {
            queue.append(liar)
            t[liar] = 0
        }

        while idx < queue.count {
            let now = queue[idx]
            idx += 1

            var updates = [Int]()

            for next in graph[now, default: []] where t[next] < 0 && graph[next, default: []].filter { t[$0] > -1 }.count * 2 >= graph[next, default: []].count {
                updates.append(next)
            }

            for update in updates {
                t[update] = t[now] + 1
                queue.append(update)
            }
        }

        print(t.map { String($0) }.joined(separator: " "))
    }
}

public struct BOJ2650: Solvable {
    public init() {}

    public func run() {
        let N = Int(readLine()!)! / 2
        var lines = Array(repeating: ((0, 0), (0, 0)), count: N)

        for idx in 0..<N {
            let input = readLine()!.split(separator: " ").map { Int($0)! }
            lines[idx] = (pointToCoordinate(input[0], input[1]), pointToCoordinate(input[2], input[3]))
        }

        let result = countCrossPoint()
        print("\(result.0)\n\(result.1)")

        func pointToCoordinate(_ x: Int, _ y: Int) -> (Int, Int) {
            switch x {
            case 1:
                return (y, 0)
            case 2:
                return (y, 51)
            case 3:
                return (0, y)
            case 4:
                return (51, y)
            default:
                return (0, 0)
            }
        }

        func CCW(_ point1: (Int, Int), _ point2: (Int, Int), _ point3: (Int, Int)) -> Int {
            let v1 = (point1.0 - point2.0, point1.1 - point2.1)
            let v2 = (point2.0 - point3.0, point2.1 - point3.1)
            let result = v1.0 * v2.1 - v1.1 * v2.0

            return result.signum()
        }

        func countCrossPoint() -> (Int, Int) {
            var (totalCount, maxCount) = (0, 0)

            for idx1 in 0..<N {
                var count = 0

                for idx2 in 0..<N where idx1 != idx2 {
                    if checkCrossPoint(lines[idx1], lines[idx2]) {
                        count += 1
                    }
                }

                maxCount = max(maxCount, count)
                totalCount += count
            }

            return (totalCount/2, maxCount)
        }

        func checkCrossPoint(_ line1: ((Int, Int), (Int, Int)), _ line2: ((Int, Int), (Int, Int))) -> Bool {
            var (point1, point2, point3, point4) = (line1.0, line1.1, line2.0, line2.1)
            let CCW1 = CCW(point1, point2, point3)
            let CCW2 = CCW(point1, point2, point4)
            let CCW3 = CCW(point3, point4, point1)
            let CCW4 = CCW(point3, point4, point2)

            let result1 = CCW1 * CCW2
            let result2 = CCW3 * CCW4

            if result1 > 0 || result2 > 0 {
                return false
            }

            if result1 != 0 || result2 != 0 {
                return true
            }

            if point3 <= point1 {
                swap(&point1, &point3)
                swap(&point2, &point4)
            }

            if point1 <= point4 && point3 <= point2 {
                if point4 <= point2 {
                    return false
                }

                return true
            }

            return false
        }
    }
}

public struct BOJ1325: Solvable {
    public init() {}

    public func run() {
        let NM = readLine()!.split(separator: " ").map { Int($0)! }
        var trusts = Array(repeating: [Int](), count: NM[0]+1)
        var maxCount = 0
        var maxComputer = [Int]()

        for _ in 0..<NM[1] {
            let input = readLine()!.split(separator: " ").map { Int($0)! }
            trusts[input[1]].append(input[0])
        }

        for num in 1...NM[0] {
            var queue = Queue<Int>()
            var visited = Array(repeating: false, count: NM[0]+1)
            visited[num] = true
            var count = 0

            for next in trusts[num] where !visited[next] {
                queue.push(next)
                count += 1
                visited[next] = true
            }

            while let dequeued = queue.pop() {
                for next in trusts[dequeued] where !visited[next] {
                    queue.push(next)
                    count += 1
                    visited[next] = true
                }
            }

            if maxCount < count {
                maxCount = count
                maxComputer = [num]
            } else if maxCount == count {
                maxComputer.append(num)
            }
        }

        print(maxComputer.map { String($0) }.joined(separator: " "))

        struct Queue<T> {
            private var enqueue = [T]()
            private var dequeue = [T]()
            var isEmpty: Bool {
                enqueue.isEmpty && dequeue.isEmpty
            }

            mutating func push(_ data: T) {
                enqueue.append(data)
            }

            mutating func pop() -> T? {
                if dequeue.isEmpty {
                    dequeue = enqueue.reversed()
                    enqueue.removeAll()
                }

                return dequeue.popLast()
            }
        }
    }
}

class LinkedList {
    public init() {}

    public func run() {
        var list = LinkedList<Int>()
        print(list)
        list.push(1)
        list.push(2)
        print(list)
        list.insert(3, at: 0)
        print(list)
        list.insert(4, at: 1)
        list.insert(5, at: 1)
        print(list)
        print(list.remove(at: 2)!.value)
        print(list)
        print(list.pop()!.value)
        print(list)
    }

    class Node<T> {
        var value: T
        var next: Node?

        init(value: T, next: Node? = nil) {
            self.value = value
            self.next = next
        }
    }

    struct LinkedList<T>: CustomStringConvertible {
        var head: Node<T>?
        var tail: Node<T>?

        var isEmpty: Bool {
            head == nil
        }

        var count: Int {
            var (idx, current) = (0, head)

            while current != nil {
                current = current!.next
                idx += 1
            }

            return idx
        }

        var description: String {
            if isEmpty {
                return "Empty List"
            }

            var current = head
            var list = ""

            while current != nil {
                list += "\(current!.value) -> "
                current = current!.next
            }

            list.removeLast(4)

            return list
        }

        mutating func push(_ data: T) {
            if isEmpty {
                head = Node(value: data)
                tail = head
                return
            }

            tail!.next = Node(value: data)
            tail = tail!.next
        }

        mutating func insert(_ data: T, at idx: Int) {
            if isEmpty {
                push(data)
                return
            }

            if idx == 0 {
                let node = Node(value: data, next: head)
                head = node
                return
            }

            let prev = find(at: idx-1)
            prev!.next = Node(value: data, next: prev!.next)
        }

        mutating func find(at idx: Int) -> Node<T>? {
            var current = (idx: 0, node: head)

            while current.node != nil && current.idx < idx {
                current.node = current.node!.next
                current.idx += 1
            }

            return current.node
        }

        mutating func pop() -> Node<T>? {
            if count == 1 {
                let node = head
                head = nil

                return node
            }

            let node = find(at: count-1)
            let prev = find(at: count-2)
            tail = prev
            tail!.next = nil

            return node
        }

        mutating func remove(at idx: Int) -> Node<T>? {
            if idx == 0 {
                let node = find(at: 0)
                head = find(at: 1)
                return node
            }

            let node = find(at: idx)
            find(at: idx-1)!.next = node!.next

            return node
        }
    }
}

func getAddress(address o: UnsafeRawPointer) -> String {
    String(format: "%p", Int(bitPattern: o))
}

class Ex3_4 {
    public init() {}

    public func run() {
        let A = Polynomial(degree: 3, coef: [4, 3, 5, 0])
        let B = Polynomial(degree: 4, coef: [3, 1, 0, 2, 1])
        let C = addPoly(A, B)

        print("A(x) = \(printPoly(A))")
        print("B(x) = \(printPoly(B))")
        print("C(x) = \(printPoly(C))")
    }

    private func addPoly(_ A: Polynomial, _ B: Polynomial) -> Polynomial {
        var (A_index, B_index, C_index) = (0, 0, 0)
        var (A_degree, B_degree) = (A.degree, B.degree)
        var C = Polynomial(degree: max(A.degree, B.degree))

        while A_index <= A.degree && B_index <= B.degree {
            if A_degree > B_degree {
                C.coef[C_index] = A.coef[A_index]
                C_index += 1
                A_index += 1
                A_degree -= 1
            } else if A_degree == B_degree {
                C.coef[C_index] = A.coef[A_index] + B.coef[B_index]
                C_index += 1
                A_index += 1
                B_index += 1
                A_degree -= 1
                B_degree -= 1
            } else {
                C.coef[C_index] = B.coef[B_index]
                C_index += 1
                B_index += 1
                B_degree -= 1
            }
        }

        return C
    }

    private func printPoly(_ P: Polynomial) -> String {
        var expression = ""
        var degree = P.degree

        for i in 0...P.degree {
            expression += "\(P.coef[i])x^\(degree)\(i < P.degree ? " + " : "")"
            degree -= 1
        }

        return expression
    }

    struct Polynomial {
        var degree: Int
        var coef: [Int]

        init(degree: Int) {
            self.degree = degree
            self.coef = Array(repeating: 0, count: degree+1)
        }

        init(degree: Int, coef: [Int]) {
            self.degree = degree
            self.coef = coef
        }
    }
}

class SequenceList {
    public init() {}

    public func run() {
        var array = [[[1, 2, 3, 4], [5, 6, 7, 8]], [[9, 10, 11, 12], [13, 14, 15, 16]]]
        for i in array.indices {
            for j in array[i].indices {
                for k in array[i][j].indices {
                    withUnsafePointer(to: &array[i][j][k]) {
                        print("&array[\(i)][\(j)][\(k)]: \($0)")
                    }
                }
            }
        }
//        for row in array.indices {
//            for col in array[row].indices {
//                withUnsafePointer(to: &array[row][col]) {
//                    print("&array[\(row)][\(col)]: \($0)")
//                }
//            }
//        }
    }
}
