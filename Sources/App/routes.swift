import Vapor

func routes(_ app: Application) throws {

  app.webSocket("echo") { req, ws in
    print("req is \(req)")
    ws.onText { ws, text in
      print("text is \(text)")
    }
    print("================================")
  }
}
