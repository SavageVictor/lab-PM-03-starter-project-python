from fastapi import APIRouter
import numpy as np

router = APIRouter()

@router.get('')
def hello_world() -> dict:
    return {'msg': 'Hello, World!'}

@router.get('/matrices/product')
def matrices_product() -> dict:
    # Generate two random 10x10 matrices
    matrix_a = np.random.rand(10, 10)
    matrix_b = np.random.rand(10, 10)

    # Calculate the product of the two matrices
    product = np.dot(matrix_a, matrix_b)

    # Convert the matrices and product to lists and return as JSON
    return {
        'matrix_a': matrix_a.tolist(),
        'matrix_b': matrix_b.tolist(),
        'product': product.tolist()
    }
