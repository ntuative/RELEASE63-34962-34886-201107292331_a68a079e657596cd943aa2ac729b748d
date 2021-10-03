package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class FriendRequestData
   {
       
      
      private var var_1203:int;
      
      private var var_2420:String;
      
      private var var_2421:int;
      
      private var var_2605:String;
      
      public function FriendRequestData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1203 = param1.readInteger();
         this.var_2420 = param1.readString();
         this.var_2605 = param1.readString();
         this.var_2421 = this.var_1203;
      }
      
      public function get requestId() : int
      {
         return this.var_1203;
      }
      
      public function get requesterName() : String
      {
         return this.var_2420;
      }
      
      public function get requesterUserId() : int
      {
         return this.var_2421;
      }
      
      public function get figureString() : String
      {
         return this.var_2605;
      }
   }
}
