package com.sulake.habbo.room.messages
{
   public class RoomObjectAvatarCarryObjectUpdateMessage extends RoomObjectUpdateStateMessage
   {
       
      
      private var var_1653:int;
      
      private var var_2135:String;
      
      public function RoomObjectAvatarCarryObjectUpdateMessage(param1:int, param2:String)
      {
         super();
         this.var_1653 = param1;
         this.var_2135 = param2;
      }
      
      public function get itemType() : int
      {
         return this.var_1653;
      }
      
      public function get itemName() : String
      {
         return this.var_2135;
      }
   }
}
