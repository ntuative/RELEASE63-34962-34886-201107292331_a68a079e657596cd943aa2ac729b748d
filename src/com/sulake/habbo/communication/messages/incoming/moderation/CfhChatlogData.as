package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CfhChatlogData
   {
       
      
      private var var_2115:int;
      
      private var var_2899:int;
      
      private var var_1561:int;
      
      private var var_2840:int;
      
      private var var_140:RoomChatlogData;
      
      public function CfhChatlogData(param1:IMessageDataWrapper)
      {
         super();
         this.var_2115 = param1.readInteger();
         this.var_2899 = param1.readInteger();
         this.var_1561 = param1.readInteger();
         this.var_2840 = param1.readInteger();
         this.var_140 = new RoomChatlogData(param1);
         Logger.log("READ CFHCHATLOGDATA: callId: " + this.var_2115);
      }
      
      public function get callId() : int
      {
         return this.var_2115;
      }
      
      public function get callerUserId() : int
      {
         return this.var_2899;
      }
      
      public function get reportedUserId() : int
      {
         return this.var_1561;
      }
      
      public function get chatRecordId() : int
      {
         return this.var_2840;
      }
      
      public function get room() : RoomChatlogData
      {
         return this.var_140;
      }
   }
}
