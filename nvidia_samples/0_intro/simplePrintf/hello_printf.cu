
// System includes
#include <stdio.h>
#include <assert.h>

// CUDA runtime
#include <cuda_runtime.h>

// helper functions and utilities to work with CUDA
//#include <helper_functions.h>
//#include <helper_cuda.h>


__global__ void testKernel(void) {
  printf(" hello world \n ");
}

int main(int argc, char **argv) {
  
  printf("printf() is called. Output:\n\n");

  // Kernel configuration, where a two-dimensional grid and
  // three-dimensional blocks are configured.
  
  testKernel<<<1,1>>>();
  cudaDeviceSynchronize();

  return EXIT_SUCCESS;
}
