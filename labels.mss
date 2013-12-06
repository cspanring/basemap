
/* Contents:
 * - Town labels
 * - Road labels
 */

/* Color Definitions */

@town_label_color: lighten(@land_bg, 15%);
@road_label_color: lighten(@land_bg, 10%);

/* Font Definitions */

@font_regular: "Franklin Gothic Book Regular","Helvetica Neue Regular","Arial Regular","DejaVu Sans Book";
@font_italic: "Franklin Gothic Book Italic","Helvetica Neue Italic","Arial Italic","DejaVu Sans Oblique";
@font_medium: "Franklin Gothic Medium Regular","Helvetica Neue Medium","Arial Bold","DejaVu Sans Bold";

/* Towns and Neighborhoods */

#mapc_label_points[zoom < 10]{
  ::boston{
      [town='Boston']{
        text-name: "[town]";
        text-face-name: @font_regular;
        text-size: 12;
        text-fill: @town_label_color;
        text-allow-overlap: false;
      }
  }
  ::notboston{
    [zoom > 6]{
      text-name: "[town]";
      text-face-name: @font_regular;
      text-size: 10;
      text-allow-overlap: false;
      text-fill: @town_label_color;
      text-allow-overlap: false;
    }
  }    
}

#non_mapc_town_label[zoom > 6][zoom < 10]{
    /* just make sure the bigger cities get labeled */
    text-name: "[town]";
    text-face-name: @font_regular;
    text-transform: capitalize;
    text-allow-overlap: false;
    text-size: 10;
    text-fill: @town_label_color;
}
 
#mapc_labels[zoom > 9], #non_mapc_town_label[zoom > 9]{
    text-name: "[town]";
    text-face-name: @font_regular;
    text-allow-overlap: false;
    text-size: 10;
    text-fill: @town_label_color;
    text-transform: capitalize;
    [zoom>10]{
      text-face-name: @font_medium;
      text-size: 12;
      text-halo-radius: 0;
      text-opacity: .75;
    }
    [zoom>11]{
      text-size: 16;
      text-opacity: .5;
      text-allow-overlap: true;
    }
    [zoom>12]{
      text-size: 20;
      text-opacity: .35;
      text-character-spacing: 4;
    }
    [zoom>13]{
      text-size: 24;
      text-character-spacing: 6;
    }
    [zoom>15]{
      text-size: 28;
      text-opacity: .2;
      text-character-spacing: 8;
    }
    [zoom>16]{
      text-size: 32;
      text-character-spacing: 20;
    }
}

#bostonneighborhood[zoom > 12]{
    text-name: "[name]";
    text-face-name: @font_regular;
    text-allow-overlap: false;
    text-size: 14;
    text-character-spacing: 2;
    text-opacity: .5;
    text-placement: interior;
    text-wrap-width: 50;
    text-line-spacing: 5;
    text-fill: @town_label_color;
    [zoom>13]{
      text-size: 16;
      text-character-spacing: 6;
    }
    [zoom>15]{
      text-size: 18;
      text-opacity: .2;
      text-character-spacing: 8;
    }
    [zoom>16]{
      text-size: 24;
      text-character-spacing: 20;
    }
}

/* Roads */

#road_labels{
  [class = 1][admin_type = 0][zoom > 12],
  [class = 2][zoom > 12],
  [class = 3][zoom > 12],
  [class = 4][zoom > 13],
  [class = 5][zoom > 14]{
    text-name: "[map_label_txt]";
    text-face-name: @font_regular;
    text-placement: line;
    text-fill: @road_label_color;
    text-size: 9;
    text-min-distance: 100;
    text-min-padding: 20;
    text-allow-overlap: false;
    [zoom > 13] { text-min-distance: 250; }
    [zoom = 16]{ text-size: 11; }
    [zoom > 16]{
      text-size: 12;
      text-min-distance: 200;
    }
  }
}
