package com.sulake.habbo.communication.messages.outgoing.room.avatar
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class LookToMessageComposer implements IMessageComposer
   {
       
      
      private var var_2811:int;
      
      private var var_2810:int;
      
      public function LookToMessageComposer(param1:int, param2:int)
      {
         super();
         this.var_2811 = param1;
         this.var_2810 = param2;
      }
      
      public function getMessageArray() : Array
      {
         return [this.var_2811,this.var_2810];
      }
      
      public function dispose() : void
      {
      }
   }
}
