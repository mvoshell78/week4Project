//
//  ViewController.swift
//  week4Project
//
//  Created by Michael Voshell on 6/20/15.
//  Copyright (c) 2015 Michael Voshell. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var url : NSURL? = NSURL(string: "http://www.youtube.com");
    var urlRequest : NSURLRequest? = nil;
    
    @IBOutlet weak var myWebView: UIWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        urlRequest = NSURLRequest(URL: url!);
        
        myWebView.loadRequest(urlRequest!);
        
        myWebView.scalesPageToFit = true;
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }




    @IBAction func onBackClick(sender: UIBarButtonItem)
    {
        if (myWebView.canGoBack)
        {
            myWebView.goBack();
            
        }
    }
    

    
    @IBAction func onStopClick(sender: UIBarButtonItem)
    {
        if (myWebView.loading)
        {
            myWebView.stopLoading();
            
        }
    }
    
    
  
    @IBAction func onRefreshClick(sender: UIBarButtonItem) {
         myWebView.reload();
        }
    
    
    
    

}

