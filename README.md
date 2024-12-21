# Ada Subtype Conversion Bug

This repository demonstrates a common, yet subtle, error in Ada programming related to subtype conversions when dealing with array slices. The bug involves attempting to directly assign a slice of an array to a variable of a subtype without explicit type conversion, which can lead to unexpected behavior or compilation errors.

The `bug.ada` file contains the erroneous code, while `bugSolution.ada` provides the corrected version.

## How to Reproduce

1. Compile `bug.ada`.  Most Ada compilers will likely flag this as an error.  If not, it might produce unexpected results at runtime.
2. Compile and run `bugSolution.ada` to see the correct way to handle subtype conversions.

## Solution

The solution involves explicitly converting the array slice to the subtype using an array aggregate or assignment with explicit index ranges.  See `bugSolution.ada` for the corrected code.