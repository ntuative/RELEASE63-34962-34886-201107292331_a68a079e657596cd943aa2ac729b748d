package com.sulake.habbo.communication.messages.incoming.handshake
{
   import com.sulake.core.communication.messages.IMessageEvent;
   import com.sulake.core.communication.messages.MessageEvent;
   import com.sulake.habbo.communication.messages.parser.handshake.DisconnectReasonParser;
   
   public class DisconnectReasonEvent extends MessageEvent implements IMessageEvent
   {
      
      public static const const_2304:int = 0;
      
      public static const const_1835:int = 1;
      
      public static const const_1759:int = 2;
      
      public static const const_2302:int = 3;
      
      public static const const_2166:int = 4;
      
      public static const const_2340:int = 5;
      
      public static const const_1913:int = 10;
      
      public static const const_2139:int = 11;
      
      public static const const_2242:int = 12;
      
      public static const const_2144:int = 13;
      
      public static const const_2343:int = 16;
      
      public static const const_2228:int = 17;
      
      public static const const_2308:int = 18;
      
      public static const const_2258:int = 19;
      
      public static const const_2169:int = 20;
      
      public static const const_2211:int = 22;
      
      public static const const_2303:int = 23;
      
      public static const const_2181:int = 24;
      
      public static const const_2260:int = 25;
      
      public static const const_2292:int = 26;
      
      public static const const_2213:int = 27;
      
      public static const const_2328:int = 28;
      
      public static const const_2223:int = 29;
      
      public static const const_2158:int = 100;
      
      public static const const_2285:int = 101;
      
      public static const const_2349:int = 102;
      
      public static const const_2286:int = 103;
      
      public static const const_2313:int = 104;
      
      public static const const_2310:int = 105;
      
      public static const const_2227:int = 106;
      
      public static const const_2156:int = 107;
      
      public static const const_2170:int = 108;
      
      public static const const_2353:int = 109;
      
      public static const const_2287:int = 110;
      
      public static const const_2146:int = 111;
      
      public static const const_2314:int = 112;
      
      public static const const_2203:int = 113;
      
      public static const const_2273:int = 114;
      
      public static const const_2140:int = 115;
      
      public static const const_2247:int = 116;
      
      public static const const_2186:int = 117;
      
      public static const const_2299:int = 118;
      
      public static const const_2136:int = 119;
       
      
      public function DisconnectReasonEvent(param1:Function)
      {
         super(param1,DisconnectReasonParser);
      }
      
      public function get reason() : int
      {
         return (this.var_9 as DisconnectReasonParser).reason;
      }
      
      public function get reasonString() : String
      {
         switch(this.reason)
         {
            case const_1835:
            case const_1913:
               return "banned";
            case const_1759:
               return "concurrentlogin";
            default:
               return "logout";
         }
      }
   }
}
