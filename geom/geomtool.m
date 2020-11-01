function [ varargout ] = geomtool( varargin )
%GETOMTOOL GEOMTool system call helper.
%
%   [ GEOM, STAT, MSG ] = GEOMTOOL( S_CMD, FORMAT, SIGNAL ) Calls the
%   external GEOMTool geometry engine with command S_CMD.
%
%   FORMAT is a string designating CAD format to import/export
%   (valid formats are brep (default), iges, and step).
%
%   SIGNAL is optional and raises error exceptions if >0 or throws
%   warninigs for <0 (default).
%
%   MSG is the terminal output returned by GEOMTool.
%
%   The path to the GEOMTool binary must be specified in GEOMCFG. STAT
%   returns zero if the system call is successful, and returns 2
%   without warning for subtract operation resulting in an empty
%   result.
%
%   See also GEOMCFG

% Copyright 2013-2020 Precise Simulation, Ltd.

if( ~nargin && ~nargout ), help geomtool, return, end
varargout = cell( 1, nargout );
[varargout{:}] = featool( 'feval', 'geomtool', varargin{:} );
if( ~nargout ), clear varargout; end
