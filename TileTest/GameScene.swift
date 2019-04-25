//
//  GameScene.swift
//  TileTest
//
//  Created by John Nyquist on 4/23/19.
//  Copyright © 2019 Nyquist Art + Logic LLC. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    override func didMove(to view: SKView) {

        let uled = SKTileDefinition(texture: SKTexture(imageNamed: "grass-mud-ul"))
        let ule = SKTileGroupRule(adjacency: .adjacencyUpperLeftEdge,
                                  tileDefinitions: [uled])
        let ud = SKTileDefinition(texture: SKTexture(imageNamed: "grass-mud-u"))
        let u = SKTileGroupRule(adjacency: .adjacencyUpEdge,
                                tileDefinitions: [ud])
        let ured = SKTileDefinition(texture: SKTexture(imageNamed: "grass-mud-ur"))
        let ure = SKTileGroupRule(adjacency: .adjacencyUpperRightEdge,
                                  tileDefinitions: [ured])

        let led = SKTileDefinition(texture: SKTexture(imageNamed: "grass-mud-l"))
        let le = SKTileGroupRule(adjacency: .adjacencyLeftEdge,
                                 tileDefinitions: [led])
        let cd = SKTileDefinition(texture: SKTexture(imageNamed: "grass"))
        let c = SKTileGroupRule(adjacency: .adjacencyAll,
                                tileDefinitions: [cd])
        let red = SKTileDefinition(texture: SKTexture(imageNamed: "grass-mud-r"))
        let re = SKTileGroupRule(adjacency: .adjacencyRightEdge,
                                 tileDefinitions: [red])

        let lled = SKTileDefinition(texture: SKTexture(imageNamed: "grass-mud-ll"))
        let lle = SKTileGroupRule(adjacency: .adjacencyLowerLeftEdge,
                                  tileDefinitions: [lled])
        let dd = SKTileDefinition(texture: SKTexture(imageNamed: "grass-mud-d"))
        let d = SKTileGroupRule(adjacency: .adjacencyDownEdge,
                                tileDefinitions: [dd])
        let lred = SKTileDefinition(texture: SKTexture(imageNamed: "grass-mud-lr"))
        let lre = SKTileGroupRule(adjacency: .adjacencyLowerRightEdge,
                                  tileDefinitions: [lred])

        let ulcd = SKTileDefinition(texture: SKTexture(imageNamed: "grass-mud-ulcorner"))
        let ulc = SKTileGroupRule(adjacency: .adjacencyUpperLeftCorner,
                                  tileDefinitions: [ulcd])
        let urcd = SKTileDefinition(texture: SKTexture(imageNamed: "grass-mud-urcorner"))
        let urc = SKTileGroupRule(adjacency: .adjacencyUpperRightCorner,
                                  tileDefinitions: [urcd])
        let llcd = SKTileDefinition(texture: SKTexture(imageNamed: "grass-mud-llcorner"))
        let llc = SKTileGroupRule(adjacency: .adjacencyLowerLeftCorner,
                                  tileDefinitions: [llcd])
        let lrcd = SKTileDefinition(texture: SKTexture(imageNamed: "grass-mud-lrcorner"))
        let lrc = SKTileGroupRule(adjacency: .adjacencyLowerRightCorner,
                                  tileDefinitions: [lrcd])

        let grassGroup = SKTileGroup(rules: [ule, u, ure, le, c, re, lle, d, lre,

            ulc, urc, llc, lrc])

        let mudTile = SKTileDefinition(texture: SKTexture(imageNamed: "mud"))
        let mudRule = SKTileGroupRule(adjacency: .adjacencyAll,
                                      tileDefinitions: [mudTile])
        let mudGroup = SKTileGroup(rules: [mudRule])

        let groups: [SKTileGroup] = [grassGroup, mudGroup]

        let tileSet = SKTileSet(tileGroups: groups)
        let tileSize = tileSet.defaultTileSize

        let tileMap = SKTileMapNode(tileSet: tileSet,
                                    columns: 16,
                                    rows: 12,
                                    tileSize: tileSize)
        tileMap.anchorPoint = CGPoint(x: 0,
                                      y: 0)
        tileMap.enableAutomapping = true

        let mudMap = SKTileMapNode(tileSet: tileSet,
                                   columns: 16,
                                   rows: 12,
                                   tileSize: tileSize)
        mudMap.anchorPoint = CGPoint(x: 0,
                                     y: 0)
        mudMap.enableAutomapping = true
        mudMap.fill(with: mudGroup)

//        tileMap.setTileGroup(grassGroup, forColumn: 0, row: 0)
//        tileMap.setTileGroup(grassGroup, forColumn: 1, row: 2)
//        tileMap.setTileGroup(grassGroup, forColumn: 2, row: 2)
//        tileMap.setTileGroup(grassGroup, forColumn: 2, row: 3)
//        tileMap.setTileGroup(grassGroup, forColumn: 3, row: 3)
//        tileMap.setTileGroup(grassGroup, forColumn: 4, row: 4)
//        tileMap.setTileGroup(grassGroup, forColumn: 4, row: 5)
//        tileMap.setTileGroup(grassGroup, forColumn: 5, row: 5)
//        tileMap.setTileGroup(grassGroup, forColumn: 6, row: 5)
//        tileMap.setTileGroup(grassGroup, forColumn: 6, row: 6)
//        tileMap.setTileGroup(grassGroup, forColumn: 6, row: 7)
//        tileMap.setTileGroup(grassGroup, forColumn: 7, row: 6)
//        tileMap.setTileGroup(grassGroup, forColumn: 8, row: 3)
//        tileMap.setTileGroup(grassGroup, forColumn: 8, row: 6)
//        tileMap.setTileGroup(grassGroup, forColumn: 9, row: 6)
//        tileMap.setTileGroup(grassGroup, forColumn: 10, row: 6)
//        tileMap.setTileGroup(grassGroup, forColumn: 11, row: 6)
//        tileMap.setTileGroup(grassGroup, forColumn: 12, row: 6)
//        tileMap.setTileGroup(grassGroup, forColumn: 12, row: 7)
//        tileMap.setTileGroup(grassGroup, forColumn: 12, row: 8)
//        tileMap.setTileGroup(grassGroup, forColumn: 12, row: 9)
//        tileMap.setTileGroup(grassGroup, forColumn: 12, row: 10)
//        tileMap.setTileGroup(grassGroup, forColumn: 13, row: 6)
//        tileMap.setTileGroup(grassGroup, forColumn: 14, row: 6)
//        tileMap.setTileGroup(grassGroup, forColumn: 14, row: 11)
//        tileMap.setTileGroup(grassGroup, forColumn: 15, row: 6)
//        tileMap.setTileGroup(grassGroup, forColumn: 15, row: 11)

        for _ in 1...20 {
            tileMap.setTileGroup(grassGroup,
                                 forColumn: Int.random(in: 0...15),
                                 row: Int.random(in: 0...11))
        }

        self.addChild(mudMap)
        self.addChild(tileMap)

        for row in 0..<12 {
            for col in 0..<16 {
                let w = 64
                let shape = SKShapeNode(rectOf: CGSize(width: w,
                                                       height: w))
                shape.lineWidth = 1

                shape.position = CGPoint(x: 0 + col * w + 32,
                                         y: 0 + row * w + 32)
                addChild(shape)

                let label = SKLabelNode(text: "\(col), \(row)")
                label.position = shape.position
                label.fontSize = 12
                label.fontName = "Helvetica"
                label.fontColor = .white
                addChild(label)
            }
        }

        let waitAction = SKAction.wait(forDuration: 5);
        let runAction = SKAction.run {
            tileMap.fill(with: mudGroup)
            for _ in 1...20 {
                tileMap.setTileGroup(grassGroup,
                                     forColumn: Int.random(in: 0...15),
                                     row: Int.random(in: 0...11))
            }
        }
        let fadeOutAction = SKAction.fadeOut(withDuration: 0.25)
        let fadeInAction = SKAction.fadeIn(withDuration: 0.25)
        let sequenceAction = SKAction.sequence([waitAction, fadeOutAction, runAction, fadeInAction])
        let repeatAction = SKAction.repeatForever(sequenceAction)
        tileMap.run(repeatAction)


    }

}
