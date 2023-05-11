//
//  main.m
//  日历与日期组件
//
//  Created by 夏楠 on 2023/4/27.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSCalendar *gregorian=[[NSCalendar alloc]
                               
                               initWithCalendarIdentifier:NSGregorianCalendar];
        
        //定义一个时间字段的旗标
        
        unsigned unitFlags=NSYearCalendarUnit|
        
        NSMonthCalendarUnit |NSDayCalendarUnit|
        
        NSHourCalendarUnit|NSMinuteCalendarUnit|
        
        NSSecondCalendarUnit |NSWeekdayCalendarUnit;
        
        //获取不同时间字段的信息
        
        NSDate* dt=[[NSDate date];
                    
                    NSDateComponents* comp=[gregorian components:unitFlags fromDate:dt];
                    
                    //获取各时间字段的数值
                    
                    comp.year;//年
                    
                    comp.weekday;//星期
                    
                    NSDateComponents* comp2=[[NSDateComponents alloc]init];//设置
                    
                    comp2.year=2014;
                    
                    comp2.day=12;
                    
                    comp2.month=3;
                    
                    NSDate* date=[gregorian dateFromComponents:comp2];//利用components来重置NSDate
                    
                    NSLog(@"%@",date);
    }
    return 0;
}
