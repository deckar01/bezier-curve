function slice(P, start=0, end=0) = [
    for(i = [start:len(P)-1-end])
    P[i]
];
