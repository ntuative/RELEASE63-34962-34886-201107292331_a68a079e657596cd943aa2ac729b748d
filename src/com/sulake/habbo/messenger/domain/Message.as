package com.sulake.habbo.messenger.domain
{
   public class Message
   {
      
      public static const const_802:int = 1;
      
      public static const const_749:int = 2;
      
      public static const const_751:int = 3;
      
      public static const const_1203:int = 4;
      
      public static const const_923:int = 5;
      
      public static const const_1328:int = 6;
       
      
      private var _type:int;
      
      private var var_1357:int;
      
      private var var_2488:String;
      
      private var var_2487:String;
      
      public function Message(param1:int, param2:int, param3:String, param4:String)
      {
         super();
         this._type = param1;
         this.var_1357 = param2;
         this.var_2488 = param3;
         this.var_2487 = param4;
      }
      
      public function get messageText() : String
      {
         return this.var_2488;
      }
      
      public function get time() : String
      {
         return this.var_2487;
      }
      
      public function get senderId() : int
      {
         return this.var_1357;
      }
      
      public function get type() : int
      {
         return this._type;
      }
   }
}
