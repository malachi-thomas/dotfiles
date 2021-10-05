// this file config options
// https://docs.qmk.fm/#/config_options?id=the-configh-file

#pragma once

// how long before a tap becomes a hold, if set above 500, a key tapped during the tapping term will turn it into a hold too
#define TAPPING_TERM 200

// makes tap and hold keys trigger the hold if another key is pressed before releasing, even if it hasn’t hit the TAPPING_TERM
#define PERMISSIVE_HOLD

// tap anyway, even after TAPPING_TERM, if there was no other key interruption between press and release
#define RETRO_TAPPING

// makes it possible to do rolling combos (zx) with keys that convert to other keys on hold, by enforcing the TAPPING_TERM for both keys.
#define IGNORE_MOD_TAP_INTERRUPT

// When stops repeting a tap mod key when holding it after a tap
/* #define TAPPING_FORCE_HOLD */

