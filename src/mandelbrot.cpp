#include <SDL.h>
#include <numeric>
#include <complex>
#include <cmath>
#include "mandelbrot.h"

using namespace std::literals::complex_literals;

#define WIDTH 800
#define HEIGHT 600
#define FLIPS           50
#define COMPLEX_I std::complex<double>(0.0,1.0)

Mandelbrot::Mandelbrot(float start_pos,double start_zoom,float bail_out,int zoom_factor):
 START_POS(start_pos),
 START_ZOOM(start_zoom),
 BAIL_OUT(bail_out),
 ZOOM_FACTOR(zoom_factor)
{
}
 
  
void Mandelbrot::sdl_draw_mandelbrot(SDL_Window *window, SDL_Surface *surface, std::complex<double> center, double zoom)
{
    int f,x,y,n;
    int maxiter = (WIDTH/2) * 0.049715909 * log10(zoom);
    std::complex<double> z, c;
    float C;

    static SDL_Rect rects[HEIGHT/FLIPS];

    

    for (f = 0; f < FLIPS; f++)
    {
        for  (y = f; y < HEIGHT; y += FLIPS)
        {
            for (x = 0; x < WIDTH; x++)
            {
                /* Get the complex poing on gauss space to be calculate */
                z = c = center.real() + ((x - (WIDTH/2))/zoom) + 
                    (center.imag() + ((y - (HEIGHT/2))/zoom))*COMPLEX_I;

                #define X z.real()
                #define Y z.imag()

                /* Check if point lies within the main cardiod or 
                   in the period-2 buld */
                if ( (std::pow(X-.25,2) + std::pow(Y,2))*(std::pow(X,2) + (X/2) + std::pow(Y,2) - .1875) < std::pow(Y,2)/4 ||
                     std::pow(X+1,2) + pow(Y,2) < .0625 )
                    n = maxiter;
                else
                    /* Applies the actual mandelbrot formula on that point */
                    for (n = 0; n <= maxiter && std::abs(z) < BAIL_OUT; n ++)
                        z = std::pow(z, 2) + c;

                C = n - log2f(logf(std::abs(z)) / M_LN2 );

                /* Paint the pixel calculated depending on the number 
                   of iterations found */
                ((Uint32*)surface->pixels)[(y*surface->w) + x] = (n >= maxiter)? 0 :
                    SDL_MapRGB( surface->format,
                    (1+sin(C*0.27 + 5))*127., (1+cos(C*0.85))*127., (1+sin(C*0.15))*127. );
            }
            rects[y/FLIPS].x = 0;
            rects[y/FLIPS].y = y;
            rects[y/FLIPS].w = WIDTH;
            rects[y/FLIPS].h = 1;
        }
        
        SDL_UpdateWindowSurface(window);
    }
}
