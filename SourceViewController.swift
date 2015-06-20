//
//  SourceViewController.swift
//  week4Project
//
//  Created by Michael Voshell on 6/20/15.
//  Copyright (c) 2015 Michael Voshell. All rights reserved.
//

import UIKit

class SourceViewController: UIViewController, NSURLConnectionDataDelegate {
    
 
    @IBOutlet weak var scrollLabel: UITextView!
    
        var url : NSURL?  = NSURL(string: "http://www.youtube.com")
        var connection : NSURLConnection? = nil;
        var urlRequest : NSURLRequest? = nil;
    
        var requestData : NSMutableData = NSMutableData();
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        urlRequest = NSURLRequest(URL: url!);
        
        connection = NSURLConnection(request: urlRequest!, delegate: self, startImmediately: true);
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
        
    }
    
      func connection(connection: NSURLConnection, didReceiveData data: NSData)
        {
            requestData.appendData(data);
            
        }
    

    func connectionDidFinishLoading(connection: NSURLConnection)
    {
        var outString = NSString(data: requestData, encoding: NSASCIIStringEncoding);
        println(outString);
        
        scrollLabel.text = outString! as String;
        
        
        
        
    }
}
