A hash method takes a string, or content of a file and outputs a hash, a fixed-size string or number.

For example, here's a MD5 hash (MD5 is a comman hashing method) for a file containing a string 'cake':

DF7CE038E2FA96EDF39206F898DF134D

And here's the hash for same file afetr it was edited to 'cakes'

0E9091167610558FDAE6F69BD6716771

Notice that the hash is completely different even though the file was similar. What if we created a hash for a much larger file?

664f67364296d08f31aec6fea4e9b83f  

The resulted hash is still the same length.
We can think of a hash like a fingerprint. We can trust that a given file will always have the same hash value. We do have to worry about 2 files having the same value Which is called a hash collision.  

Some uses for hashing:

Suppose we want a array like datastructure wit h constant time O(1) lookups. But, we want to lookup values based on arbitrary keys not just sequencial indices. We could allocate arrays an array and use hashing method to translate keys ito array indices.  
