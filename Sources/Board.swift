//
//  Board.swift
//  Chess
//
//  The MIT License (MIT)
//
//  Copyright (c) 2016 Nikolai Vazquez
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in
//  all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//  THE SOFTWARE.
//

/// A chess board.
public struct Board {

    /// A chess board space.
    public struct Space {

        /// The occupying chess piece.
        public var piece: Piece?

        /// The space's file.
        public var file: File

        /// The space's rank.
        public var rank: Rank

        /// The space's name.
        public var name: String {
            return "\(file.rawValue)\(rank.rawValue)"
        }

        /// Create a chess board space.
        public init(piece: Piece? = nil, file: File, rank: Rank) {
            self.piece = piece
            self.file = file
            self.rank = rank
        }

        /// Clears the piece from the space and returns it.
        public mutating func clear() -> Piece? {
            let piece = self.piece
            self.piece = nil
            return piece
        }

    }

    /// The board's spaces.
    private var _spaces: [[Space]]

}
