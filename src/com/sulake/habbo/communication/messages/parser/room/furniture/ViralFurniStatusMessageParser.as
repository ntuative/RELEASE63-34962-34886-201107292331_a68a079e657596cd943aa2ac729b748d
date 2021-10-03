package com.sulake.habbo.communication.messages.parser.room.furniture
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class ViralFurniStatusMessageParser implements IMessageParser
   {
       
      
      private var var_210:String;
      
      private var var_238:int;
      
      private var _roomId:int = 0;
      
      private var _roomCategory:int = 0;
      
      private var var_1684:int = 0;
      
      private var var_439:int;
      
      private var _shareId:String;
      
      private var var_2432:String;
      
      public function ViralFurniStatusMessageParser()
      {
         super();
      }
      
      public function get campaignID() : String
      {
         return this.var_210;
      }
      
      public function get objectId() : int
      {
         return this.var_238;
      }
      
      public function get roomId() : int
      {
         return this._roomId;
      }
      
      public function get roomCategory() : int
      {
         return this._roomCategory;
      }
      
      public function get itemCategory() : int
      {
         return this.var_1684;
      }
      
      public function get shareId() : String
      {
         return this._shareId;
      }
      
      public function get status() : int
      {
         return this.var_439;
      }
      
      public function get firstClickUserName() : String
      {
         return this.var_2432;
      }
      
      public function flush() : Boolean
      {
         this._roomId = 0;
         this._roomCategory = 0;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_210 = param1.readString();
         this.var_238 = param1.readInteger();
         this.var_439 = param1.readInteger();
         this._shareId = param1.readString();
         this.var_2432 = param1.readString();
         this.var_1684 = param1.readInteger();
         return true;
      }
   }
}
