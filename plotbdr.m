function [ varargout ] = plotbdr( varargin )
%PLOTBDR Boundary plot function.
%
%   [ H ] = PLOTBDR( PROB, VARARGIN ) Plot and highlight boundaries.
%   PROB is a valid finite element problem structure.
%   Accepts the following property/value pairs.
%
%       Property    Value/{Default}           Description
%       -----------------------------------------------------------------------------------
%       axis        off|{on}                  Show axes
%       grid        on |{off}                 Show grid
%       normals     on |{off}                 Show normals
%       axequal     off|{on}                  Axis equal setting
%       bbox        {0.05}                    Size of bounding box (0=off)
%       colors      {r,g,b,c,m,y}             Cell array with colors
%       labels      on/{off}                  Print boundary numbers
%       fontsize    {2*axes default}          Font size used in text labels
%       view        {[-35 20]}                3D view setting
%       alpha       {0.5}                     Transparency level
%       intb        {false}                   Plot interor/internal boundaries
%       selbdr      {all}                     Index vector to boundaries to plot
%       parent      {gca}                     Axes handle to plot in
%
%   See also PLOTGEOM, PLOTGRID, PLOTSUBD, POSTPLOT

% Copyright 2013-2020 Precise Simulation, Ltd.

if( ~nargin && ~nargout ), help plotbdr, return, end
varargout = cell( 1, nargout );
[varargout{:}] = featool( 'feval', 'plotbdr', varargin{:} );
if( ~nargout ), clear varargout; end
