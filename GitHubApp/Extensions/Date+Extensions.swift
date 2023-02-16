import Foundation

extension Date {
    
    static func format(dateString: String) -> String? {
//
//        - Esse método recebe uma String como parâmetro no formato "yyyy-MM-dd'T'HH:mm:ssZ" (Exemplo: "2012-01-24T23:19:49Z")
//        - Ele deve retornar uma outra String formatada como "dd/MM/yyyy" (Exemplo: "24/01/2012")
        
        // TODO
        let formatter = DateFormatter()
        
        formatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ssZ"
        
        if let date = formatter.date(from: dateString) {
            
            formatter.dateFormat = "dd/MM/yyyy"
            
            return formatter.string(from: date)
        }
        return nil
    }
    
    func travelToFuture(years: Int) -> String? {
//        O segundo método, travelToFuture(years: Int) -> String?,  vai resolver nossos problemas temporais. Te explico melhor:
//
//        - Ele recebe um parâmetro chamado years do tipo Int
//        - O método deve adicionar years no valor da instância Date a partir de onde é chamado (representada como self dentro do método)
        
//        - Ele retornará um valor do tipo String que representa a data no futuro, no formato "dd/MM/yyyy"
        
//        Este tipo possui um método chamado date(byAdding:, value:, to:) que deve ser utilizado para gerar uma nova instância de Date com a nova data, resultado da soma de um valor Int com um de seus componentes
        // TODO
        
       
        
        let formatter = DateFormatter()
        
        if let date = Calendar.current.date(byAdding: .year, value: years, to: self){
            
            formatter.dateFormat = "dd/MM/yyyy"
            
            return formatter.string(from: date)
        }
        
        
        return nil
    }
}
