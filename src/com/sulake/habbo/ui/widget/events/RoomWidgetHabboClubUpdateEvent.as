package com.sulake.habbo.ui.widget.events
{
   public class RoomWidgetHabboClubUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_263:String = "RWBIUE_HABBO_CLUB";
       
      
      private var var_3021:int = 0;
      
      private var var_3022:int = 0;
      
      private var var_3023:int = 0;
      
      private var var_3020:Boolean = false;
      
      private var var_1925:int;
      
      public function RoomWidgetHabboClubUpdateEvent(param1:int, param2:int, param3:int, param4:Boolean, param5:int, param6:Boolean = false, param7:Boolean = false)
      {
         super(const_263,param6,param7);
         this.var_3021 = param1;
         this.var_3022 = param2;
         this.var_3023 = param3;
         this.var_3020 = param4;
         this.var_1925 = param5;
      }
      
      public function get daysLeft() : int
      {
         return this.var_3021;
      }
      
      public function get periodsLeft() : int
      {
         return this.var_3022;
      }
      
      public function get pastPeriods() : int
      {
         return this.var_3023;
      }
      
      public function get allowClubDances() : Boolean
      {
         return this.var_3020;
      }
      
      public function get clubLevel() : int
      {
         return this.var_1925;
      }
   }
}
