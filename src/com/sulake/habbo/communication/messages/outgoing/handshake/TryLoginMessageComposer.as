package com.sulake.habbo.communication.messages.outgoing.handshake
{
   import com.sulake.core.communication.messages.IMessageComposer;
   import flash.utils.getTimer;
   
   public class TryLoginMessageComposer implements IMessageComposer
   {
       
      
      private var var_3047:String;
      
      private var _password:String;
      
      private var _userId:int;
      
      public function TryLoginMessageComposer(param1:String, param2:String, param3:int)
      {
         super();
         this.var_3047 = param1;
         this._password = param2;
         this._userId = param3;
      }
      
      public function dispose() : void
      {
      }
      
      public function getMessageArray() : Array
      {
         return [this.var_3047,this._password,this._userId,getTimer()];
      }
   }
}
