package com.sulake.habbo.communication.messages.parser.facebook
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class FaceBookAppRequestMessageParser implements IMessageParser
   {
       
      
      private var var_2075:String;
      
      private var _data:String;
      
      private var var_2074:String;
      
      private var var_2845:int;
      
      public function FaceBookAppRequestMessageParser()
      {
         super();
      }
      
      public function get authToken() : String
      {
         return this.var_2075;
      }
      
      public function get data() : String
      {
         return this._data;
      }
      
      public function get userFilter() : String
      {
         return this.var_2074;
      }
      
      public function get senderReference() : int
      {
         return this.var_2845;
      }
      
      public function flush() : Boolean
      {
         var _loc1_:* = null;
         this.var_2074 = null;
         this.var_2075 = this._data = _loc1_;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_2075 = param1.readString();
         this._data = param1.readString();
         this.var_2074 = param1.readString();
         this.var_2845 = param1.readInteger();
         return true;
      }
   }
}
