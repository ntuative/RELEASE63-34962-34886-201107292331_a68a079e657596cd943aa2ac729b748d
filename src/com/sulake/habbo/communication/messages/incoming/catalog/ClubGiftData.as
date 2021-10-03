package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ClubGiftData
   {
       
      
      private var var_1329:int;
      
      private var var_2666:Boolean;
      
      private var var_2524:Boolean;
      
      private var var_2667:int;
      
      public function ClubGiftData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1329 = param1.readInteger();
         this.var_2666 = param1.readBoolean();
         this.var_2667 = param1.readInteger();
         this.var_2524 = param1.readBoolean();
      }
      
      public function get offerId() : int
      {
         return this.var_1329;
      }
      
      public function get isVip() : Boolean
      {
         return this.var_2666;
      }
      
      public function get isSelectable() : Boolean
      {
         return this.var_2524;
      }
      
      public function get daysRequired() : int
      {
         return this.var_2667;
      }
   }
}
