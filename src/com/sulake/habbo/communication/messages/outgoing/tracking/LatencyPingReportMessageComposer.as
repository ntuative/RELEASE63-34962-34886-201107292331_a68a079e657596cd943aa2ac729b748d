package com.sulake.habbo.communication.messages.outgoing.tracking
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class LatencyPingReportMessageComposer implements IMessageComposer
   {
       
      
      private var var_2989:int;
      
      private var var_2988:int;
      
      private var var_2987:int;
      
      public function LatencyPingReportMessageComposer(param1:int, param2:int, param3:int)
      {
         super();
         this.var_2989 = param1;
         this.var_2988 = param2;
         this.var_2987 = param3;
      }
      
      public function getMessageArray() : Array
      {
         return [this.var_2989,this.var_2988,this.var_2987];
      }
      
      public function dispose() : void
      {
      }
   }
}
