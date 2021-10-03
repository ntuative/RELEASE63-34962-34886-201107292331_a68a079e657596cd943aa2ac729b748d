package com.sulake.habbo.communication.messages.parser.handshake
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class UserObjectMessageParser implements IMessageParser
   {
       
      
      private var _id:int;
      
      private var _name:String;
      
      private var var_666:String;
      
      private var var_1140:String;
      
      private var var_2970:String;
      
      private var var_1859:String;
      
      private var var_2972:int;
      
      private var var_2620:int;
      
      private var var_1254:int;
      
      private var _petRespectLeft:int;
      
      private var var_2971:Boolean;
      
      public function UserObjectMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this._id = int(param1.readString());
         this._name = param1.readString();
         this.var_666 = param1.readString();
         this.var_1140 = param1.readString();
         this.var_2970 = param1.readString();
         this.var_1859 = param1.readString();
         this.var_2972 = param1.readInteger();
         this.var_2620 = param1.readInteger();
         this.var_1254 = param1.readInteger();
         this._petRespectLeft = param1.readInteger();
         this.var_2971 = param1.readBoolean();
         return true;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get figure() : String
      {
         return this.var_666;
      }
      
      public function get sex() : String
      {
         return this.var_1140;
      }
      
      public function get customData() : String
      {
         return this.var_2970;
      }
      
      public function get realName() : String
      {
         return this.var_1859;
      }
      
      public function get directMail() : int
      {
         return this.var_2972;
      }
      
      public function get respectTotal() : int
      {
         return this.var_2620;
      }
      
      public function get respectLeft() : int
      {
         return this.var_1254;
      }
      
      public function get petRespectLeft() : int
      {
         return this._petRespectLeft;
      }
      
      public function get streamPublishingAllowed() : Boolean
      {
         return this.var_2971;
      }
   }
}
