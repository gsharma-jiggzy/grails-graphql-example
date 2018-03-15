package graphql

import grails.rest.Resource
import org.grails.gorm.graphql.entity.dsl.GraphQLMapping
import org.grails.gorm.graphql.entity.dsl.GraphQLPropertyMapping


@Resource(uri='/card')
class Card {
    String code
    String name
    String element
    Integer attack
    Integer defense
    String mainType
    String cardType
    String type
    String script 

    // static graphql = true
    static graphql = GraphQLMapping.build {
        property('name', description: 'Name of the card')
        property('attack', description: 'Attack Points')
        property('defense', description: 'Defense Points')
        property('type', description: 'Type of card')
    }

    static constraints = {
        code(blank: false, nullable: false)
        name(blank: false, nullable: false)
        element(blank: true, nullable: true)
        attack(blank: true, nullable: true)
        defense(blank: true, nullable: true)
        mainType(blank: true, nullable: true)
        cardType(blank: true, nullable: true)
        type(blank: true, nullable: true)
        script(blank: true, nullable: true)
    }
}
