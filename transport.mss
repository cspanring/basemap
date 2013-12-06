
/* Contents:
 * - Roads
 * - Transit
 * - Offroad trails
 */

/* Color Definitions */

@road_color:    lighten(@land_bg, 6%);
@commuter_rail: lighten(@land_bg, 8%);
@rapid_transit: lighten(@land_bg, 8%);

/* Roads */

.roads{  
    ::stroke{
        [class = 5]{
            line-cap: round;
            line-color: @road_color;
             line-width: 0.8;
        }
        [class = 4]{
            line-cap: round;
            line-color: @road_color;
            line-width: 0.5;
            line-width: 1.2;
        }
        [class = 3]{
            line-cap: round;
             line-color: @road_color;
             line-width: 1.6;
        }
        [class = 2]{
        	line-cap: round;
            line-color: @road_color;
            line-width: .5;
            line-width: 1.6;
        }
        [class = 1]{
           line-cap: round;
           line-color: @road_color;
           #roads_tunnels{ line-color: darken(@road_color,5%); }
      	   line-width: 1.6;
         }
    }
}

/* Transit */

#commuterline [zoom>10] {
    line-width: 0.75;
    line-color: @commuter_rail;
    ::ticks{
      line-color:@commuter_rail;
      line-width: 3.5;
      line-dasharray: 1,4;
    }
}

#rapidtransit {
  [zoom > 12]{
    line-width: 1;
    line-color: @rapid_transit;
  }
  [zoom > 14]{
      line-width: 2;
  }
}
