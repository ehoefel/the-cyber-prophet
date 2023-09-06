---
title: "Vectorpersonography"
date: 2023-09-04T17:43:43+02:00
draft: false
---

Hello cyber folks! I'd like to start today's post by saying that my holidays
were great, thank you for asking.
It was one of the reasons why I haven't posted in a while, others being that my
computer broke, and I had to move.
But now everything is fine, and I should be able to post more frequently.

How frequently?

Well, that depends on how much time I dedicate to it.

How much is that?

That's not that easy to answer.
You see, there are many things I want to do, but
they all have different weighs of importance.
Some are for pleasure, some to fulfill a sense of duty, and some are
simply because I'd be screwed otherwise.
In theory, if I want to maximize my productivity in pursuit of happiness and
life satisfaction, I
should strive for an optimal balance of energy spent on each of the activities
I'd like to do.
So I created a method to help me organize the importance of my
duties and hobbies, and decide what to do with my free time.

I call it **Vectorpersonography**.

# Vectorpersonography

When searching for a name for this method, I got inspired by the word
_Vectorcardiography_, which according to [Dictionary.com](https://www.dictionary.com/browse/vectorcardiography) means:

> A method of determining the direction and magnitude of the electrical forces of the heart.

Similarly, **Vectorpersonography** is a method of determining the direction and
magnitude of the moral values of a person.

Let's start by stating what is our objective with this algorithm, and some
assumptions and requirements needed for it to work:

 - You have some constant free time in your routine which you'd like to use for
 hobbies and duties;
 - You need help managing your free time, or at least convincing yourself that
 the time is being well spent;
 - You're open to experiment with a tool to achieve that goal, which may or may
 not be suited for your personal situation.

 With that being said, let's get to the first step.

## Step 1: Find and weigh your motivations

 Write down the general motives (which I'll refer to as impulses) that drive you
 into doing tasks, then measure how important they are in proportion to each other.
 Make sure it adds to 100%.
 Let me show you what I did:

### Need (20%)

 For the things that _must_ be done, one way or another, there's
 always this sense of obligation and fear of consequences.
 Studying for exams or doing groceries are good examples.
 I also use *need* for things that keep my body in shape and mind in peace,
 like meditating.

### Fun (20%)

 Self-explanatory.

### Reward (15%)

 For the tasks that provide some sort of compensation, possibly
 long-term, which is not just dopamine.
 For example: watching a movie that my friends have watched, so we can discuss
 it.
 Or just cooking.

### Right (10%)

 For the things that must be done because it's _the right thing to
 do_.
 Similar to reward, except that it's a moral reward.
 I use this label to convince myself to learn Dutch.

### Defining (30%)

 This one is interesting.
 Do you have an image of whom you'd like to be in the future?
 Or maybe it's something you already are, but you'd like some reassurance?
 Are there activities you could add to your routine that would help you achieve
 that?
 This category is here for that.

### Expected (5%)

 The last category I use.
 For the things that driven by social demand more than personal desire; for the
 things I do to avoid backslash, or FOMO.
 Like _visiting family_ or _watching Black Mirror_.

Feel free to use those same labels or adapt them for yourself, whatever.

## Step 2: Define your activities

In this step, write down what would you like to do in your free time, and
connect the activities with the motives from the previous step.
Write down a table with that information.

Mine looks like this:

| Impulse  | Read | Clean | Videogames | Learn Dutch | Gym | Cook | Movies |
|----------|:----:|:-----:|:----------:|:-----------:|:---:|:----:|:------:|
| Need     |      |   x   |            |      x      |  x  |   x  |        |
| Fun      |   x  |       |     x      |             |     |   x  |   x    |
| Reward   |   x  |       |            |      x      |  x  |   x  |   x    |
| Right    |      |   x   |            |      x      |     |      |        |
| Defining |   x  |       |            |             |     |   x  |        |
| Expected |      |   x   |            |      x      |     |      |        |

## Step 3: Weigh your activities

 First, let's give "points" to the impulses.
 Each impulse gets `x²` points, where `x` is the number of activities connected
 to that impulse.
 So if I have `5` activities connected to **Reward**, I give it `25` points.
 Do this to each impulse.

 Next, using the table from the previous step we'll _distribute_ those points
 of the impulses amongst the activities they're connected to.
 Do this based on your own discretion.
 For example, _videogames_ are more **fun** than _reading_ for me, so I give it
 more **fun** points.
 On the other hand, I find _reading_ more **rewarding** than _movies_, so I
 give it more **reward** points.

 Let's see how my table looks like:

| Impulse  | Read | Clean | Videogames | Learn Dutch | Gym | Cook | Movies |
|----------|:----:|:-----:|:----------:|:-----------:|:---:|:----:|:------:|
| Need     |      |   5   |            |      3      |  2  |   6  |        |
| Fun      |   4  |       |     5      |             |     |   3  |   4    |
| Reward   |   5  |       |            |      6      |  7  |   4  |   3    |
| Right    |      |   2   |            |      2      |     |      |        |
| Defining |   2  |       |            |             |     |   2  |        |
| Expected |      |   2   |            |      2      |     |      |        |

## Step 4: Calculate the results

In this final step, we'll measure how much energy we should put on each activity
based on the points' distribution, weighed according to the importance of each
impulse (see step 1).

For each activity `$ A_\alpha $` we compute:

`$$ A_\alpha = \sum_{i=0}^n M_i(\alpha) \times W_i $$`

Where

 - `$ M_i $` is an impulse from set `${ M_0 ... M_n }$`;
 - `$ M_i(\alpha) $` is the % of points of `$ M_i $` given to `$ A_i $`;
 - `$ W_i $` is the weigh of importance of impulse `$ M_i $`.

 Let's see how it works in practice:

 `$$ A_{Movies} = M_{Fun}(Movies) \times W_{Fun} + M_{Reward}(Movies) \times W_{Reward} $$`
 `$$ A_{Movies} = \frac{4}{16} \times 20\% + \frac{3}{25} \times 15\% $$`
 `$$ A_{Movies} = \frac{4}{80} + \frac{3}{166} $$`
 `$$ A_{Movies} = \frac{113}{1660} $$`
 `$$ A_{Movies} = 6.8\% $$`

 Converting the percentages to time based on an input of 4 free hours/day, the
 results tell me to spend:

 - `23%` of my free time reading, or 55 minutes/day;
 - `13.75%` of my free time cleaning, or 33 minutes/day;
 - `6.25%` of my free time playing videogames, or 2 hours/week;
 - `14.85%` of my free time learning dutch, or 36 minutes/day;
 - `6.7%` of my free time going to the gym, or 1 hour every 4 days;
 - `28.65%` of my free time cooking, or 1 hour/day;
 - `6.8%` of my free time watching movies, or 2 hours/week.

 Of course, I don't plan on following this data strictly.
 It's just a nice reference to see if my routine matches my values.
 In the end, what matters is to feel satisfied and in control of our lives.
 As Albert Einstein once said: _All models are wrong, but some are useful_.

 Those calculations can be quite tedious, so I made a spreadsheet that automates
 it.
 If you need a copy, just email [vectorpersonography@thecyberprophet.nl](mailto:vectorpersonography@thecyberprophet.nl).

That's it for today.
See you next time!
