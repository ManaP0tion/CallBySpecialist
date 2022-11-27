//Move
var vertical_limit, yprev;
vertical_limit = tan(degtorad(gradeability)) * max(1, abs(sspeed));

// Set Gravity

if place_free(x, y + wspeed + (wspeed >= 0)) {
  gapply = gforce;
  wspeed += gapply;
  wspeed = min(wspeed, maxwspeed);
  y += wspeed;
} else {
  if wspeed != 0
    move_contact_solid(90 + 180 * (vspeed >= 0), abs(wspeed));
  if wspeed > 0 {
    gapply = 0;
    wspeed = 0;
  } else {
    wspeed = -wspeed;
  }
}


// Speed Movement

if sspeed != 0 {

  if place_free(x + sspeed, y) {

    var yprev, ycontact;
    x += sspeed;

    if wspeed == 0 and gapply == 0 {
      yprev = y;
      move_contact_solid(270, ceil(vertical_limit));
      ycontact = y;
  
      y = yprev;
  
      if (ycontact < yprev + vertical_limit) {
        y = ycontact;
      }
    }

  } else {
    if place_free(x + sspeed, y - vertical_limit) {
      x += sspeed;
      y -= vertical_limit;
      move_contact_solid(270, vertical_limit);
    } else {
      sspeed = 0;
    }

  }
}

if !place_free( x, y+1) sspeed = (sspeed - (sign(sspeed) * Friction)) * (abs(sspeed) > Friction);


// Misc; Position Restriction
x = median(sprite_xoffset, x, room_width - sprite_xoffset);

