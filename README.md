# NAME

Message::Match - Fast, simple message matching

# SYNOPSIS

    use Message::Match qw(mmatch);

    #basic usage
    mmatch(
        {a => 'b', c => 'd'},   #message
        {a => 'b'}              #match
    ); #true
    mmatch(
        {a => 'b', c => {x => 'y'}, #message
        {c => {x => 'y'}}           #match
    ); #true
    mmatch(
        {a => 'b', c => 'd'},   #message
        {x => 'y'}              #match
    ); #false

    #set membership
    mmatch(
        {a => [1,2,3], some => 'thing'},    #message
        {a => 2},                           #match
    ); #true
    mmatch(
        {a => [1,2,3], some => 'thing'},    #message
        {a => 4},                           #match
    ); #false

    #array recursion
    mmatch(
        {a => [{a => 'b'},2,3], x => 'y'},      #message
        {a => [{a => 'b'},2,3]},                #match
    ); #true

    #regex
    mmatch(
        {a => 'forefoot'},          #message
        {a => ' special/foo/'},     #match
    ); #true

    #universal match
    mmatch(
        {some => 'random', stuff => 'here'},    #message
        {},                                     #match
    ); #true

# DESCRIPTION

This is a very light-weight and fast library that does some basic but
reasonably powerful message matching.

# FUNCTION

## mmatch($message, $match);

Takes two and only two arguments, both HASH references.

# SEE ALSO

Good question; I found some things somewhat similiar to this, but not quite
close enough to mention here.

# TODO

Define handling for other tuples:
 HASH,scalar
 scalar,HASH
 scalar,ARRAY
 ARRAY,HASH
 HASH,ARRAY

More special handling.

# BUGS

None known.

# COPYRIGHT

Copyright (c) 2012, 2013, 2016 Dana M. Diederich. All Rights Reserved.

# AUTHOR

Dana M. Diederich <diederich@gmail.com>
