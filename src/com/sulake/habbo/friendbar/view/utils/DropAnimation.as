package com.sulake.habbo.friendbar.view.utils
{
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.window.IWindow;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   import flash.utils.getTimer;
   
   public class DropAnimation implements IDisposable
   {
       
      
      private var var_223:Timer;
      
      private var _window:IWindow;
      
      private var var_1730:int;
      
      private var _height:int;
      
      private var _offset:int;
      
      private var var_1509:int;
      
      private var var_2519:int;
      
      public function DropAnimation(param1:IWindow, param2:int, param3:int)
      {
         super();
         this._window = param1;
         this.var_1730 = param2;
         this._height = param3;
         this._offset = this._window.y;
         this._window.y = this._offset - param3;
         this.var_1509 = getTimer();
         this.var_2519 = this.var_1509;
         this.var_223 = new Timer(41.666666666666664,0);
         this.var_223.addEventListener(TimerEvent.TIMER,this.onTimerEvent);
         this.var_223.start();
      }
      
      public function get disposed() : Boolean
      {
         return this.var_223 == null;
      }
      
      public function dispose() : void
      {
         if(this.var_223)
         {
            this.var_223.stop();
            this.var_223.removeEventListener(TimerEvent.TIMER,this.onTimerEvent);
            this.var_223 = null;
         }
         if(this._window && !this._window.disposed)
         {
            this._window.y = this._offset;
            this._window = null;
         }
      }
      
      private function onTimerEvent(param1:TimerEvent) : void
      {
         if(!this._window || this._window.disposed)
         {
            this.dispose();
            return;
         }
         this.var_1509 = getTimer();
         var _loc2_:Number = Number(this.var_1509 - this.var_2519) / Number(this.var_1730);
         this._window.y = this._offset - this._height + this.getBounceOffset(_loc2_) * this._height;
         if(_loc2_ >= 1)
         {
            this.dispose();
         }
      }
      
      protected function getBounceOffset(param1:Number) : Number
      {
         if(param1 < 0.36363636363636365)
         {
            return 7.5625 * param1 * param1;
         }
         if(param1 < 0.7272727272727273)
         {
            param1 -= 0.5454545454545454;
            return 7.5625 * param1 * param1 + 0.75;
         }
         if(param1 < 0.9090909090909091)
         {
            param1 -= 0.8181818181818182;
            return 7.5625 * param1 * param1 + 0.9375;
         }
         param1 -= 0.9545454545454546;
         return 7.5625 * param1 * param1 + 0.984375;
      }
   }
}
