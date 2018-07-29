module Vector.Vector where

import           GHC.Generics


data V3 = V3 { x :: Double , y :: Double , z :: Double } deriving (Show, Generic)
  --TODO:add this to its own module and create the basic function for add , subtract norm
  --TODO: add in unit tests maybe find beter syntax
v3Add :: V3 -> V3 -> V3
v3Add V3{ x = x1, y = y1 , z= z1} V3{ x = x2, y = y2, z = z2} = V3{x=x1+x2,y=y1+y2,z=z1+z2}

v3Sub :: V3 -> V3 -> V3
v3Sub V3{ x = x1 , y = y1 , z = z1} V3{ x = x2, y = y2, z = z2} = V3{x=x1-x2, y=y1-y2,z=z1-z2}

v3Norm :: V3 -> Double
v3Norm V3{x = x1 , y = y1 , z = z1} = sqrt( (x1 * x1) + (y1 * y1) + (z1*z1))

v3Dot :: V3 -> V3 -> Double
v3Dot V3{ x = x1 , y = y1 , z = z1} V3{ x = x2, y = y2, z = z2} = (x1*x2) + (y1*y2) + (z1*z2)

v3ScalerMultiply :: Double -> V3 -> V3
v3ScalerMultiply num V3{x= x1, y = y1 , z = z1} = V3{x = num*x1 , y = num*y1 , z = num * z1}
