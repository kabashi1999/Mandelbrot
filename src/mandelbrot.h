#ifndef MANDELBROT_H
#define MANDELBROT_H

#include <SDL.h>
#include <numeric>
#include <complex>





class Mandelbrot {
 public:
  Mandelbrot(float start_pos,double start_zoom,float bail_out,int zoom_factor);//initializes non constant parameters
  void sdl_draw_mandelbrot(SDL_Window *window, SDL_Surface *surface, std::complex<double> center, double zoom);//Draws a single mandelbrot set with the specified parameters

 private:
   float START_POS;//starting position of the set with respect to screen size
   double START_ZOOM;// initial zoom in 
   float BAIL_OUT;//determines how many points are considered i the set
   int ZOOM_FACTOR;// determines how much can we zoom in one click
};

#endif