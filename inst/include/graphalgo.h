/*****************************************************************************
* (c) Copyright 2012-2013 F.Hoffmann-La Roche AG                             *
* Contact: bioinfoc@bioinfoc.ch, Detlef.Wolf@Roche.com.                      *
*                                                                            *
* This file is part of BIOINFO-C. BIOINFO-C is free software: you can        *
* redistribute it and/or modify it under the terms of the GNU Lesser         *
* General Public License as published by the Free Software Foundation,       *
* either version 3 of the License, or (at your option) any later version.    *
*                                                                            *
* BIOINFO-C is distributed in the hope that it will be useful, but           *
* WITHOUT ANY WARRANTY; without even the implied warranty of                 *
* MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU          *
* Lesser General Public License for more details. You should have            *
* received a copy of the GNU Lesser General Public License along with        *
* BIOINFO-C. If not, see <http://www.gnu.org/licenses/>.                     *
*****************************************************************************/
/** @file graphalgo.h
    @brief Module containing algorithms for graph handling.
    Module prefix gral_
*/
#ifndef GRAPHALGO_H
#define GRAPHALGO_H

#ifdef __cplusplus
extern "C" {
#endif

/// no connection
#define GRAL_NC -1

extern void gral_spInit (int n);
extern float gral_sp (int i,int j);
extern void gral_spSet (int i,int j,float v);
extern void gral_spDeInit (void);
extern void gral_spCompute (void);
extern int gral_spNGet (void);
extern float gral_spMaxDistGet (int *imax,int *jmax);
extern void gral_matDiagonalSet (float val);
extern void gral_matUndirected (void);

#ifdef __cplusplus
}
#endif

#endif
