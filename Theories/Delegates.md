Delegates
===

There are several ways tasks can communicate with one another. One of those ways is to use a delegate. A delegate is an object that agrees to undertake certain decisions or tasks for another object, or would like to be notified when certain events occur.

Classes have a delegate outlet. You connect this outlet to the object that’s going to be its delegate. So that the outlet can send messages to the delegate to perform tasks. Delegates are a popular programming pattern in iOS.

Becoming a delegate is a three-step process:

1. In your custom class, adopt the delegate’s protocol.
2. Implement the appropriate protocol methods.
3. Connect the delegate outlet of the object to your delegate object.

A protocol is a contract, or promise, that your class will implement specific methods. This lets other objects know that your object has agreed to accept certain responsibilities. A protocol can declare two kinds of methods: required and optional. All required methods must be included in your class’s implementation. If you leave any out, you’ve broken the contract, and your project won’t compile.
It’s up to you to decide which optional methods you implement. If you implement an optional method, your object will receive that message. If you don't, it won’t. It’s that simple. Most delegate methods are optional.

Lets take an example of `UIWebView` to explain it properly : 

**Step 1 :** Adopt the delegate's protocol. In case of `UIWebView`, its `UIWebViewDelegate`

	@interface ViewController : UIViewController<UIWebViewDelegate>

Adding this to your class definition means that your class agrees to handle messages listed in the `UIWebViewDelegate` protocol, and is prepared to be connected to a `UIWebView’s` delegate outlet.

Looking up the `UIWebViewDelegate` protocol, you find that it lists four methods, all of which are optional:

	- (BOOL)webView:(UIWebView *)webView􏰁 shouldStartLoadWithRequest:(NSURLRequest *)request􏰁 navigationType:(UIWebViewNavigationType)navigationType;
	- (void)webViewDidStartLoad:(UIWebView *)webView;
	- (void)webViewDidFinishLoad:(UIWebView *)webView;
	- (void)webView:(UIWebView *)webView didFailLoadWithError:(NSError *)error;	

**Step 2 :** Implement methods(any) in the ViewController

	- (void)webViewDidStartLoad:(UIWebView *)webView
	{
    	self.shortenButton.enabled = NO;
	} 

**Step 3 :** Connect the delegate outlet of the object to your delegate object. For this example the delegate is the ViewController object.

	webViewObj.delegate = self;

Now your `ViewController` object is the `delegate` for the web view. As the web view does its thing, your `delegate` receives messages on its progress. 	
