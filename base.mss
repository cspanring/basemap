
/* Contents:
 * - Building Footprints
 */

/* Color Definitions */

@land_bg:    #000;

Map {
  background-color: lighten(@land_bg, 8%);
}

.land {
  polygon-fill: @land_bg;
}

/* Buildings */

#buildings [zoom>15] {
  line-width: 0;
  polygon-opacity: 1;
  polygon-fill: lighten(@land_bg, 5%);
}