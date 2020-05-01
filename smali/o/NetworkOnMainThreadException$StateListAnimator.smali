.class public Lo/NetworkOnMainThreadException$StateListAnimator;
.super Landroid/widget/RelativeLayout;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/NetworkOnMainThreadException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StateListAnimator"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/NetworkOnMainThreadException$StateListAnimator$ActionBar;,
        Lo/NetworkOnMainThreadException$StateListAnimator$StateListAnimator;
    }
.end annotation


# instance fields
.field private a:Landroid/view/ViewGroup;

.field private b:Lo/ImageSwitcher;

.field private c:Lo/ImageSwitcher;

.field private d:I

.field private e:I

.field private h:Lo/NetworkOnMainThreadException$StateListAnimator$StateListAnimator;

.field private j:Lo/NetworkOnMainThreadException$StateListAnimator$ActionBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 777
    invoke-direct {p0, p1, v0}, Lo/NetworkOnMainThreadException$StateListAnimator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 781
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 782
    sget-object v0, Lo/IHwInterface$Fragment;->br:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 783
    sget v0, Lo/IHwInterface$Fragment;->bq:I

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lo/NetworkOnMainThreadException$StateListAnimator;->e:I

    .line 784
    sget v0, Lo/IHwInterface$Fragment;->bx:I

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lo/NetworkOnMainThreadException$StateListAnimator;->d:I

    .line 786
    sget v0, Lo/IHwInterface$Fragment;->bv:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 787
    sget v0, Lo/IHwInterface$Fragment;->bv:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    int-to-float v0, v0

    invoke-static {p0, v0}, Lo/FilterWriter;->a(Landroid/view/View;F)V

    .line 790
    :cond_0
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    const/4 p2, 0x1

    .line 792
    invoke-virtual {p0, p2}, Lo/NetworkOnMainThreadException$StateListAnimator;->setClickable(Z)V

    .line 797
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lo/IHwInterface$LoaderManager;->b:I

    invoke-virtual {p1, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 799
    invoke-static {p0, p2}, Lo/FilterWriter;->d(Landroid/view/View;I)V

    .line 801
    invoke-static {p0, p2}, Lo/FilterWriter;->c(Landroid/view/View;I)V

    .line 805
    invoke-static {p0, p2}, Lo/FilterWriter;->c(Landroid/view/View;Z)V

    .line 806
    new-instance p1, Lo/NetworkOnMainThreadException$StateListAnimator$3;

    invoke-direct {p1, p0}, Lo/NetworkOnMainThreadException$StateListAnimator$3;-><init>(Lo/NetworkOnMainThreadException$StateListAnimator;)V

    invoke-static {p0, p1}, Lo/FilterWriter;->c(Landroid/view/View;Lo/FilenameFilter;)V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 856
    iget v0, p0, Lo/NetworkOnMainThreadException$StateListAnimator;->e:I

    return v0
.end method

.method public b()Landroid/view/ViewGroup;
    .locals 1

    .line 832
    iget-object v0, p0, Lo/NetworkOnMainThreadException$StateListAnimator;->a:Landroid/view/ViewGroup;

    return-object v0
.end method

.method b(Lo/NetworkOnMainThreadException$StateListAnimator$ActionBar;)V
    .locals 0

    .line 914
    iput-object p1, p0, Lo/NetworkOnMainThreadException$StateListAnimator;->j:Lo/NetworkOnMainThreadException$StateListAnimator$ActionBar;

    return-void
.end method

.method c()Lo/ImageSwitcher;
    .locals 1

    .line 828
    iget-object v0, p0, Lo/NetworkOnMainThreadException$StateListAnimator;->b:Lo/ImageSwitcher;

    return-object v0
.end method

.method c(II)V
    .locals 7

    .line 860
    iget-object v0, p0, Lo/NetworkOnMainThreadException$StateListAnimator;->a:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lo/FilterWriter;->e(Landroid/view/View;F)V

    .line 861
    iget-object v0, p0, Lo/NetworkOnMainThreadException$StateListAnimator;->a:Landroid/view/ViewGroup;

    invoke-static {v0}, Lo/FilterWriter;->k(Landroid/view/View;)Lo/InputStream;

    move-result-object v0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Lo/InputStream;->c(F)Lo/InputStream;

    move-result-object v0

    int-to-long v3, p2

    invoke-virtual {v0, v3, v4}, Lo/InputStream;->d(J)Lo/InputStream;

    move-result-object p2

    int-to-long v5, p1

    .line 862
    invoke-virtual {p2, v5, v6}, Lo/InputStream;->b(J)Lo/InputStream;

    move-result-object p1

    invoke-virtual {p1}, Lo/InputStream;->a()V

    .line 864
    iget-object p1, p0, Lo/NetworkOnMainThreadException$StateListAnimator;->c:Lo/ImageSwitcher;

    invoke-virtual {p1}, Lo/ImageSwitcher;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    .line 865
    iget-object p1, p0, Lo/NetworkOnMainThreadException$StateListAnimator;->c:Lo/ImageSwitcher;

    invoke-static {p1, v1}, Lo/FilterWriter;->e(Landroid/view/View;F)V

    .line 866
    iget-object p1, p0, Lo/NetworkOnMainThreadException$StateListAnimator;->c:Lo/ImageSwitcher;

    invoke-static {p1}, Lo/FilterWriter;->k(Landroid/view/View;)Lo/InputStream;

    move-result-object p1

    invoke-virtual {p1, v2}, Lo/InputStream;->c(F)Lo/InputStream;

    move-result-object p1

    invoke-virtual {p1, v3, v4}, Lo/InputStream;->d(J)Lo/InputStream;

    move-result-object p1

    .line 867
    invoke-virtual {p1, v5, v6}, Lo/InputStream;->b(J)Lo/InputStream;

    move-result-object p1

    invoke-virtual {p1}, Lo/InputStream;->a()V

    :cond_0
    return-void
.end method

.method d()Lo/ImageSwitcher;
    .locals 1

    .line 836
    iget-object v0, p0, Lo/NetworkOnMainThreadException$StateListAnimator;->c:Lo/ImageSwitcher;

    return-object v0
.end method

.method d(Lo/NetworkOnMainThreadException$StateListAnimator$StateListAnimator;)V
    .locals 0

    .line 910
    iput-object p1, p0, Lo/NetworkOnMainThreadException$StateListAnimator;->h:Lo/NetworkOnMainThreadException$StateListAnimator$StateListAnimator;

    return-void
.end method

.method e(II)V
    .locals 7

    .line 872
    iget-object v0, p0, Lo/NetworkOnMainThreadException$StateListAnimator;->a:Landroid/view/ViewGroup;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Lo/FilterWriter;->e(Landroid/view/View;F)V

    .line 873
    iget-object v0, p0, Lo/NetworkOnMainThreadException$StateListAnimator;->a:Landroid/view/ViewGroup;

    invoke-static {v0}, Lo/FilterWriter;->k(Landroid/view/View;)Lo/InputStream;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lo/InputStream;->c(F)Lo/InputStream;

    move-result-object v0

    int-to-long v3, p2

    invoke-virtual {v0, v3, v4}, Lo/InputStream;->d(J)Lo/InputStream;

    move-result-object p2

    int-to-long v5, p1

    .line 874
    invoke-virtual {p2, v5, v6}, Lo/InputStream;->b(J)Lo/InputStream;

    move-result-object p1

    invoke-virtual {p1}, Lo/InputStream;->a()V

    .line 876
    iget-object p1, p0, Lo/NetworkOnMainThreadException$StateListAnimator;->c:Lo/ImageSwitcher;

    invoke-virtual {p1}, Lo/ImageSwitcher;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    .line 877
    iget-object p1, p0, Lo/NetworkOnMainThreadException$StateListAnimator;->c:Lo/ImageSwitcher;

    invoke-static {p1, v1}, Lo/FilterWriter;->e(Landroid/view/View;F)V

    .line 878
    iget-object p1, p0, Lo/NetworkOnMainThreadException$StateListAnimator;->c:Lo/ImageSwitcher;

    invoke-static {p1}, Lo/FilterWriter;->k(Landroid/view/View;)Lo/InputStream;

    move-result-object p1

    invoke-virtual {p1, v2}, Lo/InputStream;->c(F)Lo/InputStream;

    move-result-object p1

    invoke-virtual {p1, v3, v4}, Lo/InputStream;->d(J)Lo/InputStream;

    move-result-object p1

    .line 879
    invoke-virtual {p1, v5, v6}, Lo/InputStream;->b(J)Lo/InputStream;

    move-result-object p1

    invoke-virtual {p1}, Lo/InputStream;->a()V

    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 893
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 894
    iget-object v0, p0, Lo/NetworkOnMainThreadException$StateListAnimator;->j:Lo/NetworkOnMainThreadException$StateListAnimator$ActionBar;

    if-eqz v0, :cond_0

    .line 895
    invoke-interface {v0, p0}, Lo/NetworkOnMainThreadException$StateListAnimator$ActionBar;->a(Landroid/view/View;)V

    .line 898
    :cond_0
    invoke-static {p0}, Lo/FilterWriter;->p(Landroid/view/View;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 903
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 904
    iget-object v0, p0, Lo/NetworkOnMainThreadException$StateListAnimator;->j:Lo/NetworkOnMainThreadException$StateListAnimator$ActionBar;

    if-eqz v0, :cond_0

    .line 905
    invoke-interface {v0, p0}, Lo/NetworkOnMainThreadException$StateListAnimator$ActionBar;->d(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 821
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 822
    sget v0, Lo/IHwInterface$FragmentManager;->u:I

    invoke-virtual {p0, v0}, Lo/NetworkOnMainThreadException$StateListAnimator;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/ImageSwitcher;

    iput-object v0, p0, Lo/NetworkOnMainThreadException$StateListAnimator;->b:Lo/ImageSwitcher;

    .line 823
    sget v0, Lo/IHwInterface$FragmentManager;->y:I

    invoke-virtual {p0, v0}, Lo/NetworkOnMainThreadException$StateListAnimator;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lo/NetworkOnMainThreadException$StateListAnimator;->a:Landroid/view/ViewGroup;

    .line 824
    sget v0, Lo/IHwInterface$FragmentManager;->q:I

    invoke-virtual {p0, v0}, Lo/NetworkOnMainThreadException$StateListAnimator;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/ImageSwitcher;

    iput-object v0, p0, Lo/NetworkOnMainThreadException$StateListAnimator;->c:Lo/ImageSwitcher;

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 6

    .line 885
    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    .line 886
    iget-object v0, p0, Lo/NetworkOnMainThreadException$StateListAnimator;->h:Lo/NetworkOnMainThreadException$StateListAnimator$StateListAnimator;

    if-eqz v0, :cond_0

    move-object v1, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 887
    invoke-interface/range {v0 .. v5}, Lo/NetworkOnMainThreadException$StateListAnimator$StateListAnimator;->a(Landroid/view/View;IIII)V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 841
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 843
    iget p1, p0, Lo/NetworkOnMainThreadException$StateListAnimator;->e:I

    if-lez p1, :cond_0

    invoke-virtual {p0}, Lo/NetworkOnMainThreadException$StateListAnimator;->getMeasuredWidth()I

    move-result p1

    iget v0, p0, Lo/NetworkOnMainThreadException$StateListAnimator;->e:I

    if-le p1, v0, :cond_0

    const/high16 p1, 0x40000000    # 2.0f

    .line 844
    invoke-static {v0, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 845
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    :cond_0
    return-void
.end method

.method public setMaxWidth(I)V
    .locals 0

    if-gez p1, :cond_0

    .line 851
    iput p1, p0, Lo/NetworkOnMainThreadException$StateListAnimator;->e:I

    :cond_0
    return-void
.end method
