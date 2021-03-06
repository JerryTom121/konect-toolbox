%
% Extract the largest connected component from the adjacency matrix
% of a unipartite graph.  The original matrix can be recovered using
% konect_connect_back().  
%
% PARAMETERS 
%	A	(nx*nx) Adjacency matrix, need not be symmetric;
%		interpreted as an undirected graph
%
% RESULT 
%	As	(n*n) Subset of adjacency matrix corresponding to the
%		chosen set of vertices
%	cc	(nx*1) 0/1 vector of chosen vertices
%	n	Number of vertices in the found component 
%

function [As cc n] = konect_connect_matrix_square(A)

cc = konect_connect_square(A); 

As = A(cc, cc); 

n = size(As, 1);
