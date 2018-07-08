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

Hash Table - hash in Ruby and Objects in JavaScript.

A hash table organizes data so you can quickly lookup values for a given key.

Strengths: 
Fast Lookups - Lookups take O(n) time on average.
Flexible keys - Most datatypes can be used for keys as long as they are hashable.

Weakmesses:

Slow worst-case lookups - Lookup take O(n) time in the worst case. 

Unordered -  Keys aren't stored in special order. if you are looking for the smallest key or largest key, you will have to look through each key to find it.

Single Directional Lookups - while you can lookup the values for a given key in O(1) time, looking up keys for a given value requires looping through the whole dataset - O(n) time.

Hash maps are built on arrays. 

Array are pretty similar to hash maps already. Array lets you lookup values for a given key. except keys are called indices and we don't get to pick them. They are always sequential integers (0, 1, 2, 3, etc)

Think of a hash map as a "hack" on top of an array to let us use flexible keys instead of being stuck with sequential integer indices. All we need is a function to convert a key into an array index(an integer). That function is called a hashing function. 

To lookup value of a given key, we just run the key through our hashing function to go to in our underlying array to grab the value. How does that hashing method works? there are few different approaches. here's one.

Take the number value of each character and add them together

"l     i     e     s"
108 + 105 + 101 + 115 = 429

but what if we only have 30 slots in our array? we will use a comman trick for forcing a number into a psecific range: the modulous operator (%). Modding our sum by 30 ensures we get a whole number that's less than 30

429 % 30 = 9

Hash Collisions -

"l     i     e     s"
108 + 105 + 101 + 115 = 429
" f    o     e     s"

They both sum up to 429! So ofcourse they both have the same answer when we mod by 30:

This is called a hash collision and there few different strategies for dealing with them. instead of storing actual values in our array slots, let's have each array slot hold a pointer to a linked list holding the values for all the keys that hash to that index. We include the keys as well as values in each linked list node. Otherwise we wouldn't know which key was for which value.

When hash table operation cost is O(n) time

Hash collisions - 

If all our keys caused hash collisions, we would be at risk of having to walk through all of our values for a single lookup (in the example above, we would have one big linked list). it is unlikely but, it can happen in worst case.

