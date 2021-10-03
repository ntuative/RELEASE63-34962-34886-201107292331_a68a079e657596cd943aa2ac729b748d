package com.sulake.room.renderer.cache
{
   import com.sulake.room.object.IRoomObject;
   import com.sulake.room.utils.IRoomGeometry;
   import com.sulake.room.utils.IVector3d;
   import com.sulake.room.utils.Vector3d;
   
   public class RoomObjectLocationCacheItem
   {
       
      
      private var _roomObjectVariableAccurateZ:String = "";
      
      private var var_1823:int = -1;
      
      private var var_2470:int = -1;
      
      private var var_1215:Vector3d;
      
      private var var_383:Vector3d = null;
      
      private var var_2469:Boolean = false;
      
      public function RoomObjectLocationCacheItem(param1:String)
      {
         this.var_1215 = new Vector3d();
         super();
         this._roomObjectVariableAccurateZ = param1;
         this.var_383 = new Vector3d();
      }
      
      public function get locationChanged() : Boolean
      {
         return this.var_2469;
      }
      
      public function dispose() : void
      {
         this.var_383 = null;
      }
      
      public function getScreenLocation(param1:IRoomObject, param2:IRoomGeometry) : IVector3d
      {
         var _loc5_:* = null;
         var _loc6_:Number = NaN;
         var _loc7_:* = null;
         var _loc8_:* = null;
         if(param1 == null || param2 == null)
         {
            return null;
         }
         var _loc3_:Boolean = false;
         var _loc4_:IVector3d = param1.getLocation();
         if(param2.updateId != this.var_1823 || param1.getUpdateID() != this.var_2470)
         {
            this.var_2470 = param1.getUpdateID();
            if(param2.updateId != this.var_1823 || _loc4_.x != this.var_1215.x || _loc4_.y != this.var_1215.y || _loc4_.z != this.var_1215.z)
            {
               this.var_1823 = param2.updateId;
               this.var_1215.assign(_loc4_);
               _loc3_ = true;
            }
         }
         this.var_2469 = _loc3_;
         if(_loc3_)
         {
            _loc5_ = param2.getScreenPosition(_loc4_);
            if(_loc5_ == null)
            {
               return null;
            }
            _loc6_ = param1.getModel().getNumber(this._roomObjectVariableAccurateZ);
            if(isNaN(_loc6_) || _loc6_ == 0)
            {
               _loc7_ = new Vector3d(Math.round(_loc4_.x),Math.round(_loc4_.y),_loc4_.z);
               if(_loc7_.x != _loc4_.x || _loc7_.y != _loc4_.y)
               {
                  _loc8_ = param2.getScreenPosition(_loc7_);
                  this.var_383.assign(_loc5_);
                  if(_loc8_ != null)
                  {
                     this.var_383.z = _loc8_.z;
                  }
               }
               else
               {
                  this.var_383.assign(_loc5_);
               }
            }
            else
            {
               this.var_383.assign(_loc5_);
            }
            this.var_383.x = Math.round(this.var_383.x);
            this.var_383.y = Math.round(this.var_383.y);
         }
         return this.var_383;
      }
   }
}
