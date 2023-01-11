#include <iostream>
#include <complex>
#include "SDL_image.h"
#include "mandelbrot.h"

#define WIDTH 800
#define HEIGHT 600

#define START_POS   -0.5
#define START_ZOOM  (WIDTH * 0.25296875f)

#define BAIL_OUT        10.0
#define FLIPS           50

#define ZOOM_FACTOR     4

#define COMPLEX_I std::complex<double>(0.0,1.0)

int main() {
     /* SDL SEtup */
    if ( SDL_Init(SDL_INIT_VIDEO) < 0 )
    {
        std::cout << "HEY.. SDL_Init HAS FAILED. SDL_ERROR: " << SDL_GetError() << std::endl;
        exit(1);
    }
    atexit(SDL_Quit);

    SDL_Window *window;

    window = SDL_CreateWindow("SDL Mandelbrot",
            SDL_WINDOWPOS_UNDEFINED,
            SDL_WINDOWPOS_UNDEFINED,
            WIDTH,
            HEIGHT,
            SDL_WINDOW_OPENGL
            );

    SDL_Surface* surface = SDL_GetWindowSurface(window);

    /* Initialize variables */
    std::complex<double> center = START_POS;
    double zoom = START_ZOOM;
  
  	float bail_out;
  int zoom_factor;
  

  
  	Mandelbrot mandel(
START_POS,
START_ZOOM,
BAIL_OUT,
ZOOM_FACTOR);

    mandel.sdl_draw_mandelbrot(window, surface, center, zoom);
  
  SDL_Event event;
    while(1)
    {
        SDL_PollEvent(&event);
        switch (event.type)
        {
            case SDL_QUIT:
                exit(0);
                break;
            case SDL_KEYDOWN:
                if (event.key.keysym.sym == ' ')
                {
                    center = START_POS;
                    zoom = START_ZOOM;
                    mandel.sdl_draw_mandelbrot(window, surface, center, zoom);
                }
                else if (event.key.keysym.sym == SDLK_ESCAPE)
                {
                    exit(0);
                }
                break;
            case SDL_MOUSEBUTTONDOWN:
                center = center.real() + ((event.button.x - (WIDTH/2))/zoom) +
                         (center.imag() + ((event.button.y - (HEIGHT/2))/zoom))
                          *COMPLEX_I;

                if (event.button.button == 1)
                    zoom *= ZOOM_FACTOR;
                else if (event.button.button == 3)
                    zoom /= ZOOM_FACTOR;

                mandel.sdl_draw_mandelbrot(window, surface, center, zoom);
                break;
        }
    }
    
    SDL_DestroyWindow(window);
    SDL_Quit();
  	
  return 0;
}