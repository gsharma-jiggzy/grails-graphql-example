package graphql


import grails.rest.*
import grails.converters.*

class CardController {
	static responseFormats = ['json', 'xml']
	
    def index() { 
        def cards = Card.findAll();
        render cards as JSON
    }
}
