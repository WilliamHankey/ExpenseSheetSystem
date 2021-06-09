package expensesheetsystem

import grails.gorm.transactions.Transactional
import groovy.json.JsonSlurper 

@Transactional
class CurrencyConverterService {

    def convertRandToUSD(def rand) {
        String JSON_URL = "http://data.fixer.io/api/latest?access_key=502243b690391d740778677f165b7c9c&symbols=USD,ZAR"
        URL url = new URL(JSON_URL)
        InputStream urlStream = null
        urlStream = url.openStream()
        BufferedReader reader = new BufferedReader(new InputStreamReader(urlStream))
        JsonSlurper jsonSlurper = new JsonSlurper()
        Object result = jsonSlurper.parse(reader)
      
      
      return (rand / result.rates.ZAR) * result.rates.USD
    }

    
}
