# VerusCoin Docker Build for Raspberry Pi

This repository exists because I needed a clean, reproducible way to build VerusCoin for the Raspberry Pi. If you stumbled across it and think, "Nice, a plug and play Verus container for my Pi!", keep reading.

You can use this repo, but you probably should not use it as-is.

## Why you should not trust this image blindly

Even though this is public, it is still a personal build environment, not an official Verus release. That means:

- You cannot reasonably verify that the binaries inside the prebuilt container are official.
- You would be trusting that I (a random person on the internet) did not modify, inject, or accidentally break anything.
- If something goes wrong, like bugs, security issues, or chain corruption, you are on your own. This is not a supported distribution.
- There is no guarantee that the binaries are up-to-date. Updates depend on me noticing a release on the official repo and having the time to update it here.

## What you should do instead

Use this repo as a template, not a product.

- Pull the binaries from the official source and check the hash before you let it near your wallet.dat file.
- Review the Dockerfile.
- Build the image yourself.
- Customize it for your Pi, your network, your mining or staking preferences, and whatever checks you want in place.

This way you control what ends up inside the container. That is the entire point of releasing the repo: transparency, not a shortcut.

## TLDR

Yes, you can run the container.  
No, you should not just pull it and trust it.

Build your own image. Verify your own binaries. Do not outsource trust when it comes to crypto infrastructure.
