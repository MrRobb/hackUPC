path = [];
while isempty(path)
    % No feasible path found yet, increase the number of nodes
    prm.NumNodes = prm.NumNodes + 10;

    % Use the |update| function to re-create the PRM roadmap with the changed
    % attribute
    update(prm);

    % Search for a feasible path with the updated PRM
    path = findpath(prm, startLocation, endLocation);
end
% Display path
path