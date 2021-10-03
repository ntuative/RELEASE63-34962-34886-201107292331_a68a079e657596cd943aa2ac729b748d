package com.sulake.habbo.tracking
{
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   
   public class ToolbarClickTracker
   {
       
      
      private var var_1441:IHabboTracking;
      
      private var var_1753:Boolean = false;
      
      private var var_3055:int = 0;
      
      private var var_2219:int = 0;
      
      public function ToolbarClickTracker(param1:IHabboTracking)
      {
         super();
         this.var_1441 = param1;
      }
      
      public function dispose() : void
      {
         this.var_1441 = null;
      }
      
      public function configure(param1:IHabboConfigurationManager) : void
      {
         this.var_1753 = Boolean(parseInt(param1.getKey("toolbar.tracking.enabled","1")));
         this.var_3055 = parseInt(param1.getKey("toolbar.tracking.max.events","100"));
      }
      
      public function track(param1:String) : void
      {
         if(!this.var_1753)
         {
            return;
         }
         ++this.var_2219;
         if(this.var_2219 <= this.var_3055)
         {
            this.var_1441.trackGoogle("toolbar",param1);
         }
      }
   }
}
