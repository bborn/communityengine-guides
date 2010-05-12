SUMMARY
=======

This project serves as the basis for the online documentation effort for the [CommunityEngine Social Networking Plugin](http://communiyengine.org).  The documentation has been graciously donated by members of our online community.  This work is licensed under the [Creative Commons Attribution-Share Alike 3.0 ](http://creativecommons.org/licenses/by-sa/3.0/) license.  Contributions are encouraged.  Please ask [Bruno Bornsztein](http://github.com/bborn) for commit access if you have something to contribute.  If you are thinking about a new guide or major changes to the organization of the existing guides, please be courteous and do this in your own fork so it can be dicussed before merging. 
                                                   
The guides are written in [Textile]() and there is information on the [communityengine-guides wiki](http://wiki.github.com/bborn/communityengine-guides) on the general style to use when writing a guide.  Please stick to the established format and feel free to ask questions on [the CE google group](http://groups.google.com/group/communityengine) if you have any questions. 

To build the entire set of guides simply run the following command

<pre><code>
  $ git clone git://github.com/bborn/communityengine-guides.git
  $ cd communityengine-guides
  $ rake guides
</code></pre>
            
You will also need to install the RedCloth gem (4.2.3 or greater) if you do not done so.  Output will be generated in the `output` directory.

To build just one file, say checkout.textile , you can run `ce_guides.rb` with an extra argument, as below:

<pre><code>
  $ ruby ce_guides.rb checkout
</code></pre>

To watch for changes automatically and re-generate the files when they are changed:

<pre><code>
  $ rake watch
</code></pre>

(You'll need the fssm gem installed for this: `gem install ttilley-fssm`)

You do not need to fork the communityengine-guides project in order to contribute.  Just send an GitHub private message to [bborn](http://github.com/bborn) (be sure to include your github username) and say that you would like to contribute.  We'll add you to the list so you can commit directly to the guides project.  

Please be considerate when making changes to the communityengine-guides.  If you wish to make major changes to how the documentation is organized then you should use a GitHub fork and ask people to review your proposed changes instead.
