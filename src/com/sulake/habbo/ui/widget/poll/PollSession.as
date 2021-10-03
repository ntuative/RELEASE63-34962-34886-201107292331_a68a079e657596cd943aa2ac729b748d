package com.sulake.habbo.ui.widget.poll
{
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.habbo.window.utils.IAlertDialog;
   
   public class PollSession implements IDisposable
   {
       
      
      private var _id:int = -1;
      
      private var var_1233:PollWidget;
      
      private var var_542:IPollDialog;
      
      private var var_543:IPollDialog;
      
      private var var_2003:String = "";
      
      private var _disposed:Boolean = false;
      
      public function PollSession(param1:int, param2:PollWidget)
      {
         super();
         this._id = param1;
         this.var_1233 = param2;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
         if(this.var_542 != null)
         {
            this.var_542.dispose();
            this.var_542 = null;
         }
         if(this.var_543 != null)
         {
            this.var_543.dispose();
            this.var_543 = null;
         }
         this.var_1233 = null;
         this._disposed = true;
      }
      
      public function showOffer(param1:String) : void
      {
         this.hideOffer();
         this.var_542 = new PollOfferDialog(this._id,param1,this.var_1233);
         this.var_542.start();
      }
      
      public function hideOffer() : void
      {
         if(this.var_542 is PollOfferDialog)
         {
            if(!this.var_542.disposed)
            {
               this.var_542.dispose();
            }
            this.var_542 = null;
         }
      }
      
      public function showContent(param1:String, param2:String, param3:Array) : void
      {
         this.hideOffer();
         this.hideContent();
         this.var_2003 = param2;
         this.var_543 = new PollContentDialog(this._id,param1,param3,this.var_1233);
         this.var_543.start();
      }
      
      public function hideContent() : void
      {
         if(this.var_543 is PollContentDialog)
         {
            if(!this.var_543.disposed)
            {
               this.var_543.dispose();
            }
            this.var_543 = null;
         }
      }
      
      public function showThanks() : void
      {
         this.var_1233.windowManager.alert("${poll_thanks_title}",this.var_2003,0,function(param1:IAlertDialog, param2:WindowEvent):void
         {
            param1.dispose();
         });
      }
   }
}
