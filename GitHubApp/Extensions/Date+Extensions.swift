import Foundation

extension Date {
    
    static func format(dateString: String) -> String? {
        
        // TODO
        let formatter = DateFormatter()
       
        formatter.dateFormat = "dd/MM/yyyy"
        if let date = formatter.date(from: dateString) {
            
            return formatter.string(from: date)
        }
        return nil
    }
    
    func travelToFuture(years: Int) -> String? {

        // TODO
        let date = Date()
    
        let formatter = DateFormatter()
        formatter.dateFormat = "dd/MM/yyyy"
       
        if let date = formatter.calendar.date(byAdding: .year, value: years, to: date){
            return formatter.string(from: date)
        }
        
        
        return nil
    }
}
