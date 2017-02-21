/*
  -----------------------------------------------------------------------------
  This source file is part of OGRE
  (Object-oriented Graphics Rendering Engine)
  For the latest info, see http://www.ogre3d.org

Copyright (c) 2000-2017 Torus Knot Software Ltd

  Permission is hereby granted, free of charge, to any person obtaining a copy
  of this software and associated documentation files (the "Software"), to deal
  in the Software without restriction, including without limitation the rights
  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
  copies of the Software, and to permit persons to whom the Software is
  furnished to do so, subject to the following conditions:

  The above copyright notice and this permission notice shall be included in
  all copies or substantial portions of the Software.

  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
  THE SOFTWARE.
  -----------------------------------------------------------------------------
*/

#include "OgreMetalPixelFormatToShaderType.h"

namespace Ogre
{
    const char* MetalPixelFormatToShaderType::getPixelFormatType( PixelFormat pixelFormat ) const
    {
        switch( pixelFormat )
        {
        //UNORM formats
        case PF_L8:
        case PF_A8:
        case PF_R8:
        case PF_D16_UNORM:
        case PF_D24_UNORM:
        case PF_D24_UNORM_S8_UINT:
        case PF_D24_UNORM_X8:
            return "float";
        case PF_L16:
            return "float";
        case PF_RG8:
        case PF_BYTE_LA:
            return "float";
        case PF_SHORT_GR:
            return "float";
        case PF_R8G8B8:
        case PF_B8G8R8:
        case PF_A8R8G8B8:
        case PF_A8B8G8R8:
        case PF_B8G8R8A8:
        case PF_R8G8B8A8:
        case PF_X8R8G8B8:
        case PF_X8B8G8R8:
            return "float";
        case PF_A2R10G10B10:
        case PF_A2B10G10R10:
            return "float";
        case PF_SHORT_RGB:
        case PF_SHORT_RGBA:
            return "float";

        //SNORM formats
        case PF_R8_SNORM:
            return "float";
        case PF_R16_SNORM:
            return "float";
        case PF_R8G8_SNORM:
            return "float";
        case PF_R16G16_SNORM:
            return "float";
        case PF_R8G8B8_SNORM:
        case PF_R8G8B8A8_SNORM:
            return "float";
        case PF_R16G16B16_SNORM:
        case PF_R16G16B16A16_SNORM:
            return "float";

        //SINT formats
        case PF_R8_SINT:
            return "int";
        case PF_R16_SINT:
            return "int";
        case PF_R32_SINT:
            return "int";
        case PF_R8G8_SINT:
            return "int";
        case PF_R16G16_SINT:
            return "int";
        case PF_R32G32_SINT:
            return "int";
        case PF_R8G8B8_SINT:
        case PF_R8G8B8A8_SINT:
            return "int";
        case PF_R16G16B16_SINT:
        case PF_R16G16B16A16_SINT:
            return "int";
        case PF_R32G32B32_SINT:
        case PF_R32G32B32A32_SINT:
            return "int";

        //UINT formats
        case PF_R8_UINT:
            return "uint";
        case PF_R16_UINT:
            return "uint";
        case PF_R32_UINT:
            return "uint";
        case PF_R8G8_UINT:
            return "uint";
        case PF_R16G16_UINT:
            return "uint";
        case PF_R32G32_UINT:
            return "uint";
        case PF_R8G8B8_UINT:
        case PF_R8G8B8A8_UINT:
            return "uint";
//        case PF_R10G10B10A2_UINT:
//            return "uint";
        case PF_R16G16B16_UINT:
        case PF_R16G16B16A16_UINT:
            return "uint";
        case PF_R32G32B32_UINT:
        case PF_R32G32B32A32_UINT:
            return "uint";

        //Pure floating point
        case PF_FLOAT16_R:
            return "float";
        case PF_FLOAT32_R:
        case PF_D32_FLOAT:
        case PF_D32_FLOAT_X24_S8_UINT:
        case PF_D32_FLOAT_X24_X8:
            return "float";
        case PF_FLOAT16_GR:
            return "float";
        case PF_FLOAT32_GR:
            return "float";
        case PF_R11G11B10_FLOAT:
            return "float";
        case PF_FLOAT16_RGB:
        case PF_FLOAT16_RGBA:
            return "float";
        case PF_FLOAT32_RGB:
        case PF_FLOAT32_RGBA:
            return "float";
        default:
            return 0;
        }

        return 0;
    }
}
