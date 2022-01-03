function [out] = state_eqns(in)
%% Define persistent variables
% These variables are called from the workspace once, and saved here
% permanently.
persistent Q C2 tau

% The 1st value is the current time:
t=in(1);

% If the persistent variables have not been loaded, load them
if t==0
    Q   = evalin('base','Q');
    C2  = evalin('base','C2');
    tau = evalin('base','tau');
end

%% Split up the incoming signals
u = in(2);   % The 2nd value is the current
x = in(3:4); % The 3rd set of values are the states (SOC,V2)

%% Calculate the states

out(1) = 1/Q*u;
out(2) = -1/tau*x(2) + 1/C2*u;

end