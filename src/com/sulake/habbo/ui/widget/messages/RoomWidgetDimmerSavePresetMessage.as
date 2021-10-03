package com.sulake.habbo.ui.widget.messages
{
   public class RoomWidgetDimmerSavePresetMessage extends RoomWidgetMessage
   {
      
      public static const const_935:String = "RWSDPM_SAVE_PRESET";
       
      
      private var var_2587:int;
      
      private var var_2586:int;
      
      private var _color:uint;
      
      private var var_1213:int;
      
      private var var_3054:Boolean;
      
      public function RoomWidgetDimmerSavePresetMessage(param1:int, param2:int, param3:uint, param4:int, param5:Boolean)
      {
         super(const_935);
         this.var_2587 = param1;
         this.var_2586 = param2;
         this._color = param3;
         this.var_1213 = param4;
         this.var_3054 = param5;
      }
      
      public function get presetNumber() : int
      {
         return this.var_2587;
      }
      
      public function get effectTypeId() : int
      {
         return this.var_2586;
      }
      
      public function get color() : uint
      {
         return this._color;
      }
      
      public function get brightness() : int
      {
         return this.var_1213;
      }
      
      public function get apply() : Boolean
      {
         return this.var_3054;
      }
   }
}
