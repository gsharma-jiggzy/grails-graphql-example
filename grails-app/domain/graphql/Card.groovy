package graphql

import grails.rest.Resource
import org.grails.gorm.graphql.entity.dsl.GraphQLMapping
import org.grails.gorm.graphql.entity.dsl.GraphQLPropertyMapping
import graphql.schema.DataFetcher
import graphql.schema.DataFetchingEnvironment
import org.grails.gorm.graphql.fetcher.impl.SingleEntityDataFetcher
import org.grails.gorm.graphql.fetcher.impl.EntityDataFetcher

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
    static graphql = GraphQLMapping.lazy {
        property('name', description: 'Name of the card')
        property('attack', description: 'Attack Points')
        property('defense', description: 'Defense Points')
        property('type', description: 'Type of card')
        query('cardByCode', Card) {
            argument('code', String)
            dataFetcher(new SingleEntityDataFetcher(Card.gormPersistentEntity) {
                @Override
                Object get(DataFetchingEnvironment environment) {
                    Card.findByCode(environment.getArgument('code'))
                }
            })
        }
        query('cardListByType', [Card]) {
            defaultListArguments()
            argument('type', String)
            dataFetcher(new EntityDataFetcher(Card.gormPersistentEntity) {
                @Override
                Object get(DataFetchingEnvironment environment) {
                    Card.findAllByType(environment.getArgument('type'), [
                        max: environment.getArgument('max'), 
                        sort: environment.getArgument('sort'), 
                        order: environment.getArgument('order'), 
                        offset: environment.getArgument('offset')])
                }
            })
        }
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
