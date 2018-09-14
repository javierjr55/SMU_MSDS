*SAS code
*This is a permutation test from beginning to end;
    data Cash_OnHand; *0 is SMU and 1 is Seattle U;
    datalines;
    0 34
    0 1200
    0 23
    0 50
    0 60
    0 50
    0 0
    0 0
    0 30
    0 89
    0 0
    0 300
    0 400
    0 20
    0 10
    0 0
    1 20
    1 10
    1 5
    1 0
    1 30
    1 50
    1 0
    1 100
    1 110
    1 0
    1 40
    1 10
    1 3
    1 0
    ;

    proc sort data = cash_onhand; *Data is being sorted by class "school"
    by school;
    run;

    proc univariate data = cash_onhand; *univariate provides the descriptive statics;
    by school;
    var cash;
    histogram cash; *followed by a histogram
    run;

    proc ttest data = cash_onhand; *proc to conduct ttest;
    class school;
    var cash;
    run;

    *permutation code begins;
    ods output off;
    ods exclude all;

    proc iml;
    use cash_onhand;
    read all var{school cash} into x;
    p = t(ranperm(x[,2],1000));
    paf=x[,1]||p; 
    create newds from paf;
    append from paf;
    quit;

    ods output conflimits=diff;
    proc ttest data=newds plots=none;
    class col1;
    var col2 - col1001;
    run;

    ods output on;
    ods exclude none;

    proc univariate data=diff;
    where method="Pooled";
    var mean;
    histogram mean;
    run;

    data numdiffs;
    set diff;
    where method = "Pooled";
    if abs(mean) >= ___; *the difference in means goes here

    proc print data = numdiffs;
    where method = "Pooled";
    run;

*This prodedure uses POWER and is searching for power w/ 2 sample means;
    proc power;
        twosamplemeans test=diff_statt #satterweight
        alpha = 0.01
        sides = 1
        groupmeans = 10 | 14
        stddev = 20
        power = .
        ntotal = 50;
        run;

*This procedure uses POWER and is searching for sample size w/ one sample mean;
    proc power;
        onesamplemeans
        sides=1
        alpha= 0.05
        nullmean=0
        mean=5
        stddev= 25
        power= 0.8
        ntotal= .;
        run;
*This procedure is for a One-Sample t Test;
    ods graphics on;
    proc ttest h0=80 plots(showh0) sides=2 alpha=0.05;
        var time;
        run;
    ods graphics off;

*Next procuder
