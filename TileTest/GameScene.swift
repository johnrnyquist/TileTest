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
                                 tileDefinitions: [ uled ])
        let ud = SKTileDefinition(texture: SKTexture(imageNamed: "grass-mud-u"))
        let u = SKTileGroupRule(adjacency: .adjacencyUpEdge,
                                 tileDefinitions: [ ud ])
        let ured = SKTileDefinition(texture: SKTexture(imageNamed: "grass-mud-ur"))
        let ure = SKTileGroupRule(adjacency: .adjacencyUpperRightEdge,
                                 tileDefinitions: [ ured ])

        let led = SKTileDefinition(texture: SKTexture(imageNamed: "grass-mud-l"))
        let le = SKTileGroupRule(adjacency: .adjacencyLeftEdge,
                                tileDefinitions: [ led ])
        let cd = SKTileDefinition(texture: SKTexture(imageNamed: "grass"))
        let c = SKTileGroupRule(adjacency: .adjacencyAll,
                                tileDefinitions: [ cd ])
        let red = SKTileDefinition(texture: SKTexture(imageNamed: "grass-mud-r"))
        let re = SKTileGroupRule(adjacency: .adjacencyRightEdge,
                                tileDefinitions: [ red ])

        let lled = SKTileDefinition(texture: SKTexture(imageNamed: "grass-mud-ll"))
        let lle = SKTileGroupRule(adjacency: .adjacencyLowerLeftEdge,
                                  tileDefinitions: [ lled ])
        let dd = SKTileDefinition(texture: SKTexture(imageNamed: "grass-mud-d"))
        let d = SKTileGroupRule(adjacency: .adjacencyDownEdge,
                                 tileDefinitions: [ dd ])
        let lred = SKTileDefinition(texture: SKTexture(imageNamed: "grass-mud-lr"))
        let lre = SKTileGroupRule(adjacency: .adjacencyLowerRightEdge,
                                  tileDefinitions: [ lred ])
        
        let ulcd = SKTileDefinition(texture: SKTexture(imageNamed: "grass-mud-ulcorner"))
        let ulc = SKTileGroupRule(adjacency: .adjacencyUpperLeftCorner,
                                  tileDefinitions: [ ulcd ])
        let urcd = SKTileDefinition(texture: SKTexture(imageNamed: "grass-mud-urcorner"))
        let urc = SKTileGroupRule(adjacency: .adjacencyUpperRightCorner,
                                 tileDefinitions: [ urcd ])
        let llcd = SKTileDefinition(texture: SKTexture(imageNamed: "grass-mud-llcorner"))
        let llc = SKTileGroupRule(adjacency: .adjacencyLowerLeftCorner,
                                  tileDefinitions: [ llcd ])
        let lrcd = SKTileDefinition(texture: SKTexture(imageNamed: "grass-mud-lrcorner"))
        let lrc = SKTileGroupRule(adjacency: .adjacencyLowerRightCorner,
                                  tileDefinitions: [ lrcd ])

        let group = SKTileGroup(rules:
            [
                ule, u, ure,
                le,  c, re,
                lle, d, lre,
             
                ulc, urc,
                llc, lrc
            ])
        
        let mudDef = SKTileDefinition(texture: SKTexture(imageNamed: "mud"))
        let mud = SKTileGroupRule(adjacency: .adjacencyAll, tileDefinitions: [mudDef])
        let group2 = SKTileGroup(rules: [mud])
        let groups: [SKTileGroup] = [group, group2]
        let tileSet = SKTileSet(tileGroups: groups)
        let tileSize = tileSet.defaultTileSize // from image size
        let tileMap = SKTileMapNode(tileSet: tileSet, columns: 16, rows: 12, tileSize: tileSize)
        tileMap.anchorPoint = CGPoint(x: 0, y: 0)
        tileMap.fill(with: group2)
        tileMap.enableAutomapping = true
        tileMap.setTileGroup(group, forColumn: 0, row: 0)
        tileMap.setTileGroup(group, forColumn: 1, row: 2)
        tileMap.setTileGroup(group, forColumn: 2, row: 2)
        tileMap.setTileGroup(group, forColumn: 2, row: 3)
        tileMap.setTileGroup(group, forColumn: 3, row: 3)
        tileMap.setTileGroup(group, forColumn: 4, row: 4)
        tileMap.setTileGroup(group, forColumn: 4, row: 5)
        tileMap.setTileGroup(group, forColumn: 5, row: 5)
        tileMap.setTileGroup(group, forColumn: 6, row: 5)
        tileMap.setTileGroup(group, forColumn: 6, row: 6)
        tileMap.setTileGroup(group, forColumn: 6, row: 7)
        tileMap.setTileGroup(group, forColumn: 7, row: 6)
        tileMap.setTileGroup(group, forColumn: 8, row: 3)
        tileMap.setTileGroup(group, forColumn: 8, row: 6)
        tileMap.setTileGroup(group, forColumn: 9, row: 6)
        tileMap.setTileGroup(group, forColumn: 10, row: 6)
        tileMap.setTileGroup(group, forColumn: 11, row: 6)
        tileMap.setTileGroup(group, forColumn: 12, row: 6)
        tileMap.setTileGroup(group, forColumn: 12, row: 7)
        tileMap.setTileGroup(group, forColumn: 12, row: 8)
        tileMap.setTileGroup(group, forColumn: 12, row: 9)
        tileMap.setTileGroup(group, forColumn: 12, row: 10)
        tileMap.setTileGroup(group, forColumn: 13, row: 6)
        tileMap.setTileGroup(group, forColumn: 14, row: 6)
        tileMap.setTileGroup(group, forColumn: 14, row: 11)
        tileMap.setTileGroup(group, forColumn: 15, row: 6)
        tileMap.setTileGroup(group, forColumn: 15, row: 11)
        self.addChild(tileMap)
    }
    
    override func update(_ currentTime: TimeInterval) {
        // Called before each frame is rendered
    }
}
