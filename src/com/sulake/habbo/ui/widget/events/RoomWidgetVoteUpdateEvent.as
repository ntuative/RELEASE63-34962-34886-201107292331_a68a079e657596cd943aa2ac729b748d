package com.sulake.habbo.ui.widget.events
{
   public class RoomWidgetVoteUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_154:String = "RWPUE_VOTE_QUESTION";
      
      public static const const_167:String = "RWPUE_VOTE_RESULT";
       
      
      private var var_1278:String;
      
      private var var_1477:Array;
      
      private var var_1359:Array;
      
      private var var_1807:int;
      
      public function RoomWidgetVoteUpdateEvent(param1:String, param2:String, param3:Array, param4:Array = null, param5:int = 0, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,param6,param7);
         this.var_1278 = param2;
         this.var_1477 = param3;
         this.var_1359 = param4;
         if(this.var_1359 == null)
         {
            this.var_1359 = [];
         }
         this.var_1807 = param5;
      }
      
      public function get question() : String
      {
         return this.var_1278;
      }
      
      public function get choices() : Array
      {
         return this.var_1477.slice();
      }
      
      public function get votes() : Array
      {
         return this.var_1359.slice();
      }
      
      public function get totalVotes() : int
      {
         return this.var_1807;
      }
   }
}
