package com.sulake.habbo.tracking
{
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   
   public class FramerateTracker
   {
       
      
      private var var_1779:int;
      
      private var var_2373:int;
      
      private var var_912:int;
      
      private var var_568:Number;
      
      private var var_2375:Boolean;
      
      private var var_2374:int;
      
      private var var_1778:int;
      
      public function FramerateTracker()
      {
         super();
      }
      
      public function get frameRate() : int
      {
         return Math.round(1000 / this.var_568);
      }
      
      public function configure(param1:IHabboConfigurationManager) : void
      {
         this.var_2373 = int(param1.getKey("tracking.framerate.reportInterval.seconds","300")) * 1000;
         this.var_2374 = int(param1.getKey("tracking.framerate.maximumEvents","5"));
         this.var_2375 = true;
      }
      
      public function trackUpdate(param1:uint, param2:IHabboTracking, param3:int) : void
      {
         var _loc4_:Number = NaN;
         ++this.var_912;
         if(this.var_912 == 1)
         {
            this.var_568 = param1;
            this.var_1779 = param3;
         }
         else
         {
            _loc4_ = Number(this.var_912);
            this.var_568 = this.var_568 * (_loc4_ - 1) / _loc4_ + Number(param1) / _loc4_;
         }
         if(this.var_2375 && param3 - this.var_1779 >= this.var_2373)
         {
            this.var_912 = 0;
            if(this.var_1778 < this.var_2374)
            {
               param2.trackGoogle("performance","averageFramerate",this.frameRate);
               ++this.var_1778;
               this.var_1779 = param3;
            }
         }
      }
      
      public function dispose() : void
      {
      }
   }
}
