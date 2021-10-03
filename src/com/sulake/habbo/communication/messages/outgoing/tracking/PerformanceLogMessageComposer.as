package com.sulake.habbo.communication.messages.outgoing.tracking
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class PerformanceLogMessageComposer implements IMessageComposer
   {
       
      
      private var var_2727:int = 0;
      
      private var var_1566:String = "";
      
      private var var_1978:String = "";
      
      private var var_2704:String = "";
      
      private var var_2731:String = "";
      
      private var var_2006:int = 0;
      
      private var var_2728:int = 0;
      
      private var var_2729:int = 0;
      
      private var var_1568:int = 0;
      
      private var var_2730:int = 0;
      
      private var var_1567:int = 0;
      
      public function PerformanceLogMessageComposer(param1:int, param2:String, param3:String, param4:String, param5:String, param6:Boolean, param7:int, param8:int, param9:int, param10:int, param11:int)
      {
         super();
         this.var_2727 = param1;
         this.var_1566 = param2;
         this.var_1978 = param3;
         this.var_2704 = param4;
         this.var_2731 = param5;
         if(param6)
         {
            this.var_2006 = 1;
         }
         else
         {
            this.var_2006 = 0;
         }
         this.var_2728 = param7;
         this.var_2729 = param8;
         this.var_1568 = param9;
         this.var_2730 = param10;
         this.var_1567 = param11;
      }
      
      public function dispose() : void
      {
      }
      
      public function getMessageArray() : Array
      {
         return [this.var_2727,this.var_1566,this.var_1978,this.var_2704,this.var_2731,this.var_2006,this.var_2728,this.var_2729,this.var_1568,this.var_2730,this.var_1567];
      }
   }
}
