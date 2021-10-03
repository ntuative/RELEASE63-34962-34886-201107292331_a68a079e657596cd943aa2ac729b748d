package com.sulake.core.window.services
{
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.window.IWindowContext;
   import flash.display.DisplayObject;
   
   public class ServiceManager implements IInternalWindowServices, IDisposable
   {
       
      
      private var var_3113:uint;
      
      private var _root:DisplayObject;
      
      private var _disposed:Boolean = false;
      
      private var var_654:IWindowContext;
      
      private var var_1386:IMouseDraggingService;
      
      private var var_1383:IMouseScalingService;
      
      private var var_1384:IMouseListenerService;
      
      private var var_1382:IFocusManagerService;
      
      private var var_1381:IToolTipAgentService;
      
      private var var_1385:IGestureAgentService;
      
      public function ServiceManager(param1:IWindowContext, param2:DisplayObject)
      {
         super();
         this.var_3113 = 0;
         this._root = param2;
         this.var_654 = param1;
         this.var_1386 = new WindowMouseDragger(param2);
         this.var_1383 = new WindowMouseScaler(param2);
         this.var_1384 = new WindowMouseListener(param2);
         this.var_1382 = new FocusManager(param2);
         this.var_1381 = new WindowToolTipAgent(param2);
         this.var_1385 = new GestureAgentService();
      }
      
      public function dispose() : void
      {
         if(this.var_1386 != null)
         {
            this.var_1386.dispose();
            this.var_1386 = null;
         }
         if(this.var_1383 != null)
         {
            this.var_1383.dispose();
            this.var_1383 = null;
         }
         if(this.var_1384 != null)
         {
            this.var_1384.dispose();
            this.var_1384 = null;
         }
         if(this.var_1382 != null)
         {
            this.var_1382.dispose();
            this.var_1382 = null;
         }
         if(this.var_1381 != null)
         {
            this.var_1381.dispose();
            this.var_1381 = null;
         }
         if(this.var_1385 != null)
         {
            this.var_1385.dispose();
            this.var_1385 = null;
         }
         this._root = null;
         this.var_654 = null;
         this._disposed = true;
      }
      
      public function getMouseDraggingService() : IMouseDraggingService
      {
         return this.var_1386;
      }
      
      public function getMouseScalingService() : IMouseScalingService
      {
         return this.var_1383;
      }
      
      public function getMouseListenerService() : IMouseListenerService
      {
         return this.var_1384;
      }
      
      public function getFocusManagerService() : IFocusManagerService
      {
         return this.var_1382;
      }
      
      public function getToolTipAgentService() : IToolTipAgentService
      {
         return this.var_1381;
      }
      
      public function getGestureAgentService() : IGestureAgentService
      {
         return this.var_1385;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
   }
}
