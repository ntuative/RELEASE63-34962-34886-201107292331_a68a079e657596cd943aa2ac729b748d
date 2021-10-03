package com.sulake.habbo.room.object.visualization.room
{
   import com.sulake.core.assets.AssetLibrary;
   import com.sulake.core.assets.BitmapDataAsset;
   import com.sulake.core.assets.IAsset;
   import com.sulake.habbo.room.object.RoomObjectVariableEnum;
   import com.sulake.habbo.room.object.RoomPlaneBitmapMaskData;
   import com.sulake.habbo.room.object.RoomPlaneBitmapMaskParser;
   import com.sulake.habbo.room.object.RoomPlaneData;
   import com.sulake.habbo.room.object.RoomPlaneParser;
   import com.sulake.room.object.IRoomObject;
   import com.sulake.room.object.IRoomObjectModel;
   import com.sulake.room.object.visualization.IRoomObjectSprite;
   import com.sulake.room.object.visualization.IRoomObjectVisualizationData;
   import com.sulake.room.object.visualization.RoomObjectSpriteVisualization;
   import com.sulake.room.utils.IRoomGeometry;
   import com.sulake.room.utils.IVector3d;
   import com.sulake.room.utils.Vector3d;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class RoomVisualization extends RoomObjectSpriteVisualization
   {
      
      public static const const_1954:int = 16777215;
      
      public static const const_1893:int = 13421772;
      
      private static const const_1103:int = 16777215;
      
      private static const const_1102:int = 13421772;
      
      private static const const_1105:int = 10066329;
      
      private static const const_1104:int = 10066329;
      
      public static const const_2060:int = 16777215;
      
      public static const const_1800:int = 13421772;
      
      public static const const_2013:int = 10066329;
       
      
      protected var _data:RoomVisualizationData = null;
      
      private var _assetLibrary:AssetLibrary = null;
      
      private var _planeParser:RoomPlaneParser = null;
      
      private var var_155:Array;
      
      private var _planesInitialized:Boolean = false;
      
      private var var_396:Array;
      
      private var var_681:Array;
      
      private var var_834:Rectangle = null;
      
      private var var_563:RoomPlaneBitmapMaskParser = null;
      
      private var var_1575:String = null;
      
      private var _floorType:String = null;
      
      private var var_1574:String = null;
      
      private var var_975:Number = NaN;
      
      private var var_1462:Number = NaN;
      
      private var var_2684:Number = NaN;
      
      private var var_1965:String = null;
      
      private var var_1280:uint = 16777215;
      
      private var var_2686:int = 255;
      
      private var var_2685:int = 255;
      
      private var var_2683:int = 255;
      
      private var var_1964:Boolean = true;
      
      private var var_1279:int = 0;
      
      private var _lastUpdateTime:int = -1000;
      
      private const const_2376:int = 250;
      
      private var var_1823:int = -1;
      
      private var var_1489:Number = 0.0;
      
      private var var_2457:Number = 0.0;
      
      private var var_2455:Number = 0.0;
      
      private var var_1963:Number = 0.0;
      
      private var var_342:Array;
      
      public function RoomVisualization()
      {
         this.var_155 = [];
         this.var_396 = [];
         this.var_681 = [];
         this.var_342 = [];
         super();
         this._assetLibrary = new AssetLibrary("room visualization");
         this._planeParser = new RoomPlaneParser();
         this.var_563 = new RoomPlaneBitmapMaskParser();
         this.var_342["null"] = false;
         this.var_342["null"] = true;
         this.var_342["null"] = true;
         this.var_342["null"] = true;
      }
      
      public function get floorRelativeDepth() : Number
      {
         return 100.1;
      }
      
      public function get wallRelativeDepth() : Number
      {
         return 100.5;
      }
      
      public function get wallAdRelativeDepth() : Number
      {
         return 100.49;
      }
      
      public function get planeCount() : int
      {
         return this.var_155.length;
      }
      
      override public function dispose() : void
      {
         var _loc1_:int = 0;
         var _loc2_:* = null;
         super.dispose();
         if(this._assetLibrary != null)
         {
            _loc1_ = 0;
            while(_loc1_ < this._assetLibrary.numAssets)
            {
               _loc2_ = this._assetLibrary.getAssetByIndex(_loc1_);
               if(_loc2_ != null)
               {
                  _loc2_.dispose();
               }
               _loc1_++;
            }
            this._assetLibrary.dispose();
            this._assetLibrary = null;
         }
         this.resetRoomPlanes();
         this.var_155 = null;
         this.var_396 = null;
         this.var_681 = null;
         if(this._planeParser != null)
         {
            this._planeParser.dispose();
            this._planeParser = null;
         }
         if(this.var_563 != null)
         {
            this.var_563.dispose();
            this.var_563 = null;
         }
         if(this._data != null)
         {
            this._data.clearCache();
            this._data = null;
         }
      }
      
      private function resetRoomPlanes() : void
      {
         var _loc1_:int = 0;
         var _loc2_:* = null;
         if(this.var_155 != null)
         {
            _loc1_ = 0;
            while(_loc1_ < this.var_155.length)
            {
               _loc2_ = this.var_155[_loc1_] as RoomPlane;
               if(_loc2_ != null)
               {
                  _loc2_.dispose();
               }
               _loc1_++;
            }
            this.var_155 = [];
         }
         this._planesInitialized = false;
         this.var_1279 += 1;
         this.reset();
      }
      
      override protected function reset() : void
      {
         super.reset();
         this.var_1575 = null;
         this._floorType = null;
         this.var_1574 = null;
         this.var_1965 = null;
         this.var_1823 = -1;
         this.var_1963 = 0;
      }
      
      override public function get boundingRectangle() : Rectangle
      {
         if(this.var_834 == null)
         {
            this.var_834 = super.boundingRectangle;
         }
         return new Rectangle(this.var_834.x,this.var_834.y,this.var_834.width,this.var_834.height);
      }
      
      override public function initialize(param1:IRoomObjectVisualizationData) : Boolean
      {
         this.reset();
         if(param1 == null || !(param1 is RoomVisualizationData))
         {
            return false;
         }
         this._data = param1 as RoomVisualizationData;
         this._data.initializeAssetCollection(assetCollection);
         return true;
      }
      
      protected function defineSprites() : void
      {
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc1_:int = this.var_155.length;
         createSprites(_loc1_);
         var _loc2_:int = 0;
         while(_loc2_ < _loc1_)
         {
            _loc3_ = this.var_155[_loc2_] as RoomPlane;
            _loc4_ = getSprite(_loc2_);
            if(_loc4_ != null && _loc3_ != null && _loc3_.leftSide != null && _loc3_.rightSide != null)
            {
               if(_loc3_.type == RoomPlane.const_77 && (_loc3_.leftSide.length < 1 || _loc3_.rightSide.length < 1))
               {
                  _loc4_.capturesMouse = false;
               }
               else
               {
                  _loc4_.capturesMouse = true;
               }
               if(_loc3_.type == RoomPlane.const_77)
               {
                  _loc4_.tag = "plane.wall@" + (_loc2_ + 1);
               }
               else if(_loc3_.type == RoomPlane.const_112)
               {
                  _loc4_.tag = "plane.floor@" + (_loc2_ + 1);
               }
               else
               {
                  _loc4_.tag = "plane@" + (_loc2_ + 1);
               }
            }
            _loc2_++;
         }
      }
      
      protected function initializeRoomPlanes() : void
      {
         var _loc8_:* = null;
         var _loc9_:* = null;
         var _loc10_:* = null;
         var _loc11_:* = null;
         var _loc12_:int = 0;
         var _loc13_:* = null;
         var _loc14_:* = null;
         var _loc15_:int = 0;
         var _loc16_:Number = NaN;
         var _loc17_:Number = NaN;
         var _loc18_:Number = NaN;
         var _loc19_:Number = NaN;
         if(this._planesInitialized)
         {
            return;
         }
         var _loc1_:IRoomObject = object;
         if(_loc1_ == null)
         {
            return;
         }
         if(!isNaN(this.var_975))
         {
            this._planeParser.floorThicknessMultiplier = this.var_975;
         }
         if(!isNaN(this.var_1462))
         {
            this._planeParser.wallThicknessMultiplier = this.var_1462;
         }
         var _loc2_:String = _loc1_.getModel().getString(RoomObjectVariableEnum.const_849);
         if(!this._planeParser.initializeFromXML(new XML(_loc2_)))
         {
            return;
         }
         var _loc3_:Number = this.getLandscapeWidth();
         var _loc4_:Number = this.getLandscapeHeight();
         var _loc5_:* = 0;
         var _loc6_:int = _loc1_.getModel().getNumber(RoomObjectVariableEnum.const_1381);
         var _loc7_:int = 0;
         while(_loc7_ < this._planeParser.planeCount)
         {
            _loc8_ = this._planeParser.getPlaneLocation(_loc7_);
            _loc9_ = this._planeParser.getPlaneLeftSide(_loc7_);
            _loc10_ = this._planeParser.getPlaneRightSide(_loc7_);
            _loc11_ = this._planeParser.getPlaneSecondaryNormals(_loc7_);
            _loc12_ = this._planeParser.getPlaneType(_loc7_);
            _loc13_ = null;
            if(!(_loc8_ != null && _loc9_ != null && _loc10_ != null))
            {
               return;
            }
            _loc14_ = Vector3d.crossProduct(_loc9_,_loc10_);
            _loc6_ = _loc6_ * 7613 + 517;
            _loc13_ = null;
            if(_loc12_ == RoomPlaneData.const_279)
            {
               _loc13_ = new RoomPlane(_loc1_.getLocation(),_loc8_,_loc9_,_loc10_,RoomPlane.const_112,true,_loc11_,_loc6_);
               if(_loc14_.z != 0)
               {
                  _loc13_.color = const_1954;
               }
               else
               {
                  _loc13_.color = const_1893;
               }
               if(_loc9_.length < 1 || _loc10_.length < 1)
               {
                  _loc13_.hasTexture = false;
               }
               if(this._data != null)
               {
                  _loc13_.rasterizer = this._data.floorRasterizer;
               }
            }
            else if(_loc12_ == RoomPlaneData.const_259)
            {
               _loc13_ = new RoomPlane(_loc1_.getLocation(),_loc8_,_loc9_,_loc10_,RoomPlane.const_77,true,_loc11_,_loc6_);
               if(_loc9_.length < 1 || _loc10_.length < 1)
               {
                  _loc13_.hasTexture = false;
               }
               if(_loc14_.x == 0 && _loc14_.y == 0)
               {
                  _loc13_.color = const_1104;
               }
               else if(_loc14_.y > 0)
               {
                  _loc13_.color = const_1103;
               }
               else if(_loc14_.y == 0)
               {
                  _loc13_.color = const_1102;
               }
               else
               {
                  _loc13_.color = const_1105;
               }
               if(this._data != null)
               {
                  _loc13_.rasterizer = this._data.wallRasterizer;
               }
            }
            else if(_loc12_ == RoomPlaneData.const_423)
            {
               _loc13_ = new RoomPlane(_loc1_.getLocation(),_loc8_,_loc9_,_loc10_,RoomPlane.TYPE_LANDSCAPE,true,_loc11_,_loc6_,_loc5_,0,_loc3_,_loc4_);
               if(_loc14_.y > 0)
               {
                  _loc13_.color = const_2060;
               }
               else if(_loc14_.y == 0)
               {
                  _loc13_.color = const_1800;
               }
               else
               {
                  _loc13_.color = const_2013;
               }
               if(this._data != null)
               {
                  _loc13_.rasterizer = this._data.landscapeRasterizer;
               }
               _loc5_ += _loc9_.length;
            }
            else if(_loc12_ == RoomPlaneData.const_1998)
            {
               _loc13_ = new RoomPlane(_loc1_.getLocation(),_loc8_,_loc9_,_loc10_,RoomPlane.const_77,true,_loc11_,_loc6_);
               if(_loc9_.length < 1 || _loc10_.length < 1)
               {
                  _loc13_.hasTexture = false;
               }
               if(_loc14_.x == 0 && _loc14_.y == 0)
               {
                  _loc13_.color = const_1104;
               }
               else if(_loc14_.y > 0)
               {
                  _loc13_.color = const_1103;
               }
               else if(_loc14_.y == 0)
               {
                  _loc13_.color = const_1102;
               }
               else
               {
                  _loc13_.color = const_1105;
               }
               if(this._data != null)
               {
                  _loc13_.rasterizer = this._data.wallAdRasterizr;
               }
            }
            if(_loc13_ != null)
            {
               _loc13_.maskManager = this._data.maskManager;
               _loc15_ = 0;
               while(_loc15_ < this._planeParser.getPlaneMaskCount(_loc7_))
               {
                  _loc16_ = this._planeParser.getPlaneMaskLeftSideLoc(_loc7_,_loc15_);
                  _loc17_ = this._planeParser.getPlaneMaskRightSideLoc(_loc7_,_loc15_);
                  _loc18_ = this._planeParser.getPlaneMaskLeftSideLength(_loc7_,_loc15_);
                  _loc19_ = this._planeParser.getPlaneMaskRightSideLength(_loc7_,_loc15_);
                  _loc13_.addRectangleMask(_loc16_,_loc17_,_loc18_,_loc19_);
                  _loc15_++;
               }
               this.var_155.push(_loc13_);
            }
            _loc7_++;
         }
         this._planesInitialized = true;
         this.defineSprites();
      }
      
      private function getLandscapeWidth() : Number
      {
         var _loc3_:int = 0;
         var _loc4_:* = null;
         var _loc1_:* = 0;
         var _loc2_:int = 0;
         while(_loc2_ < this._planeParser.planeCount)
         {
            _loc3_ = this._planeParser.getPlaneType(_loc2_);
            if(_loc3_ == RoomPlaneData.const_423)
            {
               _loc4_ = this._planeParser.getPlaneLeftSide(_loc2_);
               _loc1_ += _loc4_.length;
            }
            _loc2_++;
         }
         return _loc1_;
      }
      
      private function getLandscapeHeight() : Number
      {
         var _loc3_:int = 0;
         var _loc4_:* = null;
         var _loc1_:* = 0;
         var _loc2_:int = 0;
         while(_loc2_ < this._planeParser.planeCount)
         {
            _loc3_ = this._planeParser.getPlaneType(_loc2_);
            if(_loc3_ == RoomPlaneData.const_423)
            {
               _loc4_ = this._planeParser.getPlaneRightSide(_loc2_);
               if(_loc4_.length > _loc1_)
               {
                  _loc1_ = Number(_loc4_.length);
               }
            }
            _loc2_++;
         }
         if(_loc1_ > 5)
         {
            _loc1_ = 5;
         }
         return _loc1_;
      }
      
      override public function update(param1:IRoomGeometry, param2:int, param3:Boolean, param4:Boolean) : void
      {
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:* = null;
         var _loc13_:* = null;
         var _loc14_:* = 0;
         var _loc15_:* = 0;
         var _loc16_:* = 0;
         var _loc17_:* = 0;
         var _loc18_:* = 0;
         var _loc5_:IRoomObject = object;
         if(_loc5_ == null)
         {
            return;
         }
         if(param1 == null)
         {
            return;
         }
         var _loc6_:Boolean = this.updateGeometry(param1);
         var _loc7_:IRoomObjectModel = _loc5_.getModel();
         var _loc8_:Boolean = false;
         if(this.updatePlaneThicknesses(_loc7_))
         {
            _loc8_ = true;
         }
         if(this.updateFloorHoles(_loc7_))
         {
            _loc8_ = true;
         }
         this.initializeRoomPlanes();
         _loc8_ = this.updateMasksAndColors(_loc7_);
         var _loc9_:int = param2;
         if(_loc9_ < this._lastUpdateTime + this.const_2376 && !_loc6_ && !_loc8_)
         {
            return;
         }
         if(this.updatePlaneTexturesAndVisibilities(_loc7_))
         {
            _loc8_ = true;
         }
         if(this.updatePlanes(param1,_loc6_,param2))
         {
            _loc8_ = true;
         }
         if(_loc8_)
         {
            _loc10_ = 0;
            while(_loc10_ < this.var_396.length)
            {
               _loc11_ = this.var_681[_loc10_];
               _loc12_ = getSprite(_loc11_);
               _loc13_ = this.var_396[_loc10_] as RoomPlane;
               if(_loc12_ != null && _loc13_ != null && _loc13_.type != RoomPlane.TYPE_LANDSCAPE)
               {
                  if(this.var_1964)
                  {
                     _loc14_ = uint(_loc13_.color);
                     _loc15_ = uint((_loc14_ & 255) * this.var_2683 / 255);
                     _loc16_ = uint((_loc14_ >> 8 & 255) * this.var_2685 / 255);
                     _loc17_ = uint((_loc14_ >> 16 & 255) * this.var_2686 / 255);
                     _loc18_ = uint(_loc14_ >> 24);
                     _loc14_ = uint((_loc18_ << 24) + (_loc17_ << 16) + (_loc16_ << 8) + _loc15_);
                     _loc12_.color = _loc14_;
                  }
                  else
                  {
                     _loc12_.color = _loc13_.color;
                  }
               }
               _loc10_++;
            }
            increaseUpdateId();
         }
         var_148 = _loc7_.getUpdateID();
         this._lastUpdateTime = _loc9_;
      }
      
      private function updateGeometry(param1:IRoomGeometry) : Boolean
      {
         var _loc3_:* = null;
         var _loc2_:Boolean = false;
         if(param1.updateId != this.var_1823)
         {
            this.var_1823 = param1.updateId;
            this.var_834 = null;
            _loc3_ = param1.direction;
            if(_loc3_ != null && (_loc3_.x != this.var_1489 || _loc3_.y != this.var_2457 || _loc3_.z != this.var_2455 || param1.scale != this.var_1963))
            {
               this.var_1489 = _loc3_.x;
               this.var_2457 = _loc3_.y;
               this.var_2455 = _loc3_.z;
               this.var_1963 = param1.scale;
               _loc2_ = true;
            }
         }
         return _loc2_;
      }
      
      private function updateMasksAndColors(param1:IRoomObjectModel) : Boolean
      {
         var _loc3_:* = null;
         var _loc4_:* = 0;
         var _loc5_:Boolean = false;
         var _loc2_:Boolean = false;
         if(var_148 != param1.getUpdateID())
         {
            _loc3_ = param1.getString(RoomObjectVariableEnum.const_1272);
            if(_loc3_ != this.var_1965)
            {
               this.updatePlaneMasks(_loc3_);
               this.var_1965 = _loc3_;
               _loc2_ = true;
            }
            _loc4_ = uint(param1.getNumber(RoomObjectVariableEnum.const_843));
            if(_loc4_ != this.var_1280)
            {
               this.var_1280 = _loc4_;
               this.var_2683 = this.var_1280 & 255;
               this.var_2685 = this.var_1280 >> 8 & 255;
               this.var_2686 = this.var_1280 >> 16 & 255;
               _loc2_ = true;
            }
            _loc5_ = Boolean(param1.getNumber(RoomObjectVariableEnum.const_1370));
            if(_loc5_ != this.var_1964)
            {
               this.var_1964 = _loc5_;
               _loc2_ = true;
            }
         }
         return _loc2_;
      }
      
      private function updatePlaneTexturesAndVisibilities(param1:IRoomObjectModel) : Boolean
      {
         var _loc2_:* = null;
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = false;
         if(var_148 != param1.getUpdateID())
         {
            _loc2_ = param1.getString(RoomObjectVariableEnum.const_230);
            _loc3_ = param1.getString(RoomObjectVariableEnum.const_231);
            _loc4_ = param1.getString(RoomObjectVariableEnum.const_211);
            this.updatePlaneTextureTypes(_loc3_,_loc2_,_loc4_);
            _loc5_ = Boolean(param1.getNumber(RoomObjectVariableEnum.const_768));
            _loc6_ = Boolean(param1.getNumber(RoomObjectVariableEnum.const_784));
            _loc7_ = Boolean(param1.getNumber(RoomObjectVariableEnum.const_814));
            this.updatePlaneTypeVisibilities(_loc5_,_loc6_,_loc7_);
            return true;
         }
         return false;
      }
      
      private function updatePlaneThicknesses(param1:IRoomObjectModel) : Boolean
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         if(var_148 != param1.getUpdateID())
         {
            _loc2_ = param1.getNumber(RoomObjectVariableEnum.const_1305);
            _loc3_ = param1.getNumber(RoomObjectVariableEnum.const_1374);
            if(!isNaN(_loc2_) && !isNaN(_loc3_) && (_loc2_ != this.var_975 || _loc3_ != this.var_1462))
            {
               this.var_975 = _loc2_;
               this.var_1462 = _loc3_;
               this.resetRoomPlanes();
               return true;
            }
         }
         return false;
      }
      
      private function updateFloorHoles(param1:IRoomObjectModel) : Boolean
      {
         var _loc2_:Number = NaN;
         if(var_148 != param1.getUpdateID())
         {
            _loc2_ = param1.getNumber(RoomObjectVariableEnum.const_1218);
            if(!isNaN(_loc2_) && _loc2_ != this.var_2684)
            {
               this.var_2684 = _loc2_;
               this.resetRoomPlanes();
               return true;
            }
         }
         return false;
      }
      
      protected function updatePlaneTextureTypes(param1:String, param2:String, param3:String) : Boolean
      {
         var _loc5_:* = null;
         if(param1 != this._floorType)
         {
            this._floorType = param1;
         }
         else
         {
            param1 = null;
         }
         if(param2 != this.var_1575)
         {
            this.var_1575 = param2;
         }
         else
         {
            param2 = null;
         }
         if(param3 != this.var_1574)
         {
            this.var_1574 = param3;
         }
         else
         {
            param3 = null;
         }
         if(param1 == null && param2 == null && param3 == null)
         {
            return false;
         }
         var _loc4_:int = 0;
         while(_loc4_ < this.var_155.length)
         {
            _loc5_ = this.var_155[_loc4_] as RoomPlane;
            if(_loc5_ != null)
            {
               if(_loc5_.type == RoomPlane.const_112 && param1 != null)
               {
                  _loc5_.id = param1;
               }
               else if(_loc5_.type == RoomPlane.const_77 && param2 != null)
               {
                  _loc5_.id = param2;
               }
               else if(_loc5_.type == RoomPlane.TYPE_LANDSCAPE && param3 != null)
               {
                  _loc5_.id = param3;
               }
            }
            _loc4_++;
         }
         return true;
      }
      
      private function updatePlaneTypeVisibilities(param1:Boolean, param2:Boolean, param3:Boolean) : void
      {
         if(param1 != this.var_342["null"] || param2 != this.var_342["null"] || param3 != this.var_342["null"])
         {
            this.var_342["null"] = param1;
            this.var_342["null"] = param2;
            this.var_342["null"] = param3;
            this.var_396 = [];
            this.var_681 = [];
         }
      }
      
      protected function updatePlanes(param1:IRoomGeometry, param2:Boolean, param3:int) : Boolean
      {
         var _loc10_:int = 0;
         var _loc11_:* = null;
         var _loc12_:* = null;
         var _loc13_:Number = NaN;
         var _loc14_:* = null;
         var _loc4_:IRoomObject = object;
         if(_loc4_ == null)
         {
            return false;
         }
         if(param1 == null)
         {
            return false;
         }
         ++this.var_1279;
         if(param2)
         {
            this.var_396 = [];
            this.var_681 = [];
         }
         var _loc5_:int = param3;
         var _loc6_:Array = this.var_396;
         if(this.var_396.length == 0)
         {
            _loc6_ = this.var_155;
         }
         var _loc7_:Boolean = false;
         var _loc8_:* = this.var_396.length > 0;
         var _loc9_:int = 0;
         while(_loc9_ < _loc6_.length)
         {
            _loc10_ = _loc9_;
            if(_loc8_)
            {
               _loc10_ = this.var_681[_loc9_];
            }
            _loc11_ = getSprite(_loc10_);
            if(_loc11_ != null)
            {
               _loc12_ = _loc6_[_loc9_] as RoomPlane;
               if(_loc12_ != null)
               {
                  if(_loc12_.update(param1,_loc5_))
                  {
                     if(_loc12_.visible)
                     {
                        _loc13_ = _loc12_.relativeDepth + this.floorRelativeDepth + Number(_loc10_) / 1000;
                        if(_loc12_.type != RoomPlane.const_112)
                        {
                           _loc13_ = _loc12_.relativeDepth + this.wallRelativeDepth + Number(_loc10_) / 1000;
                        }
                        _loc14_ = "plane " + _loc10_ + " " + param1.scale;
                        this.updateSprite(_loc11_,_loc12_,_loc14_,_loc13_);
                     }
                     _loc7_ = true;
                  }
                  if(_loc11_.visible != (_loc12_.visible && this.var_342[_loc12_.type]))
                  {
                     _loc11_.visible = !_loc11_.visible;
                     _loc7_ = true;
                  }
                  if(_loc11_.visible)
                  {
                     if(!_loc8_)
                     {
                        this.var_396.push(_loc12_);
                        this.var_681.push(_loc9_);
                     }
                  }
               }
               else if(_loc11_.visible)
               {
                  _loc11_.visible = false;
                  _loc7_ = true;
               }
            }
            _loc9_++;
         }
         return _loc7_;
      }
      
      private function updateSprite(param1:IRoomObjectSprite, param2:RoomPlane, param3:String, param4:Number) : void
      {
         var _loc5_:Point = param2.offset;
         param1.offsetX = -_loc5_.x;
         param1.offsetY = -_loc5_.y;
         param1.relativeDepth = param4;
         param1.color = param2.color;
         param1.asset = this.getPlaneBitmap(param2,param3);
         param1.assetName = param3 + "_" + this.var_1279;
      }
      
      private function getPlaneBitmap(param1:RoomPlane, param2:String) : BitmapData
      {
         var _loc3_:BitmapDataAsset = this._assetLibrary.getAssetByName(param2) as BitmapDataAsset;
         if(_loc3_ == null)
         {
            _loc3_ = new BitmapDataAsset(this._assetLibrary.getAssetTypeDeclarationByClass(BitmapDataAsset));
            this._assetLibrary.setAsset(param2,_loc3_);
         }
         var _loc4_:BitmapData = _loc3_.content as BitmapData;
         var _loc5_:BitmapData = param1.copyBitmapData(_loc4_);
         if(_loc5_ == null)
         {
            _loc5_ = param1.bitmapData;
            if(_loc5_ != null)
            {
               if(_loc4_ != _loc5_)
               {
                  if(_loc4_ != null)
                  {
                     _loc4_.dispose();
                  }
                  _loc3_.setUnknownContent(_loc5_);
               }
            }
         }
         return _loc5_;
      }
      
      protected function updatePlaneMasks(param1:String) : void
      {
         var _loc10_:* = null;
         var _loc11_:* = null;
         var _loc12_:* = null;
         var _loc13_:int = 0;
         var _loc14_:* = null;
         var _loc15_:Number = NaN;
         var _loc16_:Number = NaN;
         var _loc17_:Number = NaN;
         var _loc18_:int = 0;
         if(param1 == null)
         {
            return;
         }
         var _loc2_:XML = XML(param1);
         this.var_563.initialize(_loc2_);
         var _loc3_:* = null;
         var _loc4_:* = [];
         var _loc5_:* = [];
         var _loc6_:Boolean = false;
         var _loc7_:int = 0;
         while(_loc7_ < this.var_155.length)
         {
            _loc3_ = this.var_155[_loc7_] as RoomPlane;
            if(_loc3_ != null)
            {
               _loc3_.resetBitmapMasks();
               if(_loc3_.type == RoomPlane.TYPE_LANDSCAPE)
               {
                  _loc4_.push(_loc7_);
               }
            }
            _loc7_++;
         }
         var _loc8_:int = 0;
         while(_loc8_ < this.var_563.maskCount)
         {
            _loc10_ = this.var_563.getMaskType(_loc8_);
            _loc11_ = this.var_563.getMaskLocation(_loc8_);
            _loc12_ = this.var_563.getMaskCategory(_loc8_);
            if(_loc11_ != null)
            {
               _loc13_ = 0;
               while(_loc13_ < this.var_155.length)
               {
                  _loc3_ = this.var_155[_loc13_] as RoomPlane;
                  if(_loc3_.type == RoomPlane.const_77 || _loc3_.type == RoomPlane.TYPE_LANDSCAPE)
                  {
                     if(_loc3_ != null && _loc3_.location != null && _loc3_.normal != null)
                     {
                        _loc14_ = Vector3d.dif(_loc11_,_loc3_.location);
                        _loc15_ = Math.abs(Vector3d.scalarProjection(_loc14_,_loc3_.normal));
                        if(_loc15_ < 0.01)
                        {
                           if(_loc3_.leftSide != null && _loc3_.rightSide != null)
                           {
                              _loc16_ = Vector3d.scalarProjection(_loc14_,_loc3_.leftSide);
                              _loc17_ = Vector3d.scalarProjection(_loc14_,_loc3_.rightSide);
                              if(_loc3_.type == RoomPlane.const_77 || _loc3_.type == RoomPlane.TYPE_LANDSCAPE && _loc12_ == RoomPlaneBitmapMaskData.const_310)
                              {
                                 _loc3_.addBitmapMask(_loc10_,_loc16_,_loc17_);
                              }
                              else if(_loc3_.type == RoomPlane.TYPE_LANDSCAPE)
                              {
                                 if(!_loc3_.canBeVisible)
                                 {
                                    _loc6_ = true;
                                 }
                                 _loc3_.canBeVisible = true;
                                 _loc5_.push(_loc13_);
                              }
                           }
                        }
                     }
                  }
                  _loc13_++;
               }
            }
            _loc8_++;
         }
         var _loc9_:int = 0;
         while(_loc9_ < _loc4_.length)
         {
            _loc18_ = _loc4_[_loc9_];
            if(_loc5_.indexOf(_loc18_) < 0)
            {
               _loc3_ = this.var_155[_loc18_] as RoomPlane;
               _loc3_.canBeVisible = false;
               _loc6_ = true;
            }
            _loc9_++;
         }
         if(_loc6_)
         {
            this.var_396 = [];
            this.var_681 = [];
         }
      }
   }
}
