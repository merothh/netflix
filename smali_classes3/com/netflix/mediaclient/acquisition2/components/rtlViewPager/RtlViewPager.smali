.class public Lcom/netflix/mediaclient/acquisition2/components/rtlViewPager/RtlViewPager;
.super Landroidx/viewpager/widget/ViewPager;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/mediaclient/acquisition2/components/rtlViewPager/RtlViewPager$TaskDescription;,
        Lcom/netflix/mediaclient/acquisition2/components/rtlViewPager/RtlViewPager$Activity;,
        Lcom/netflix/mediaclient/acquisition2/components/rtlViewPager/RtlViewPager$SavedState;
    }
.end annotation


# instance fields
.field private c:I

.field private d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroidx/viewpager/widget/ViewPager$FragmentManager;",
            "Lcom/netflix/mediaclient/acquisition2/components/rtlViewPager/RtlViewPager$Activity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Landroidx/viewpager/widget/ViewPager;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 47
    iput p1, p0, Lcom/netflix/mediaclient/acquisition2/components/rtlViewPager/RtlViewPager;->c:I

    .line 48
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/netflix/mediaclient/acquisition2/components/rtlViewPager/RtlViewPager;->d:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 55
    invoke-direct {p0, p1, p2}, Landroidx/viewpager/widget/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 47
    iput p1, p0, Lcom/netflix/mediaclient/acquisition2/components/rtlViewPager/RtlViewPager;->c:I

    .line 48
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/netflix/mediaclient/acquisition2/components/rtlViewPager/RtlViewPager;->d:Ljava/util/HashMap;

    return-void
.end method

.method static synthetic a(Lcom/netflix/mediaclient/acquisition2/components/rtlViewPager/RtlViewPager;)Lo/RSAOtherPrimeInfo;
    .locals 0

    .line 46
    invoke-super {p0}, Landroidx/viewpager/widget/ViewPager;->c()Lo/RSAOtherPrimeInfo;

    move-result-object p0

    return-object p0
.end method

.method static synthetic b(Lcom/netflix/mediaclient/acquisition2/components/rtlViewPager/RtlViewPager;)Z
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition2/components/rtlViewPager/RtlViewPager;->i()Z

    move-result p0

    return p0
.end method

.method static synthetic e(Lcom/netflix/mediaclient/acquisition2/components/rtlViewPager/RtlViewPager;)Lo/RSAOtherPrimeInfo;
    .locals 0

    .line 46
    invoke-super {p0}, Landroidx/viewpager/widget/ViewPager;->c()Lo/RSAOtherPrimeInfo;

    move-result-object p0

    return-object p0
.end method

.method private i()Z
    .locals 2

    .line 92
    iget v0, p0, Lcom/netflix/mediaclient/acquisition2/components/rtlViewPager/RtlViewPager;->c:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method


# virtual methods
.method public a(Landroidx/viewpager/widget/ViewPager$FragmentManager;)V
    .locals 1

    .line 197
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/components/rtlViewPager/RtlViewPager;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netflix/mediaclient/acquisition2/components/rtlViewPager/RtlViewPager$Activity;

    if-eqz p1, :cond_0

    .line 199
    invoke-super {p0, p1}, Landroidx/viewpager/widget/ViewPager;->a(Landroidx/viewpager/widget/ViewPager$FragmentManager;)V

    :cond_0
    return-void
.end method

.method public b()I
    .locals 3

    .line 97
    invoke-super {p0}, Landroidx/viewpager/widget/ViewPager;->b()I

    move-result v0

    .line 98
    invoke-super {p0}, Landroidx/viewpager/widget/ViewPager;->c()Lo/RSAOtherPrimeInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 99
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition2/components/rtlViewPager/RtlViewPager;->i()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 100
    invoke-virtual {v1}, Lo/RSAOtherPrimeInfo;->d()I

    move-result v1

    sub-int/2addr v1, v0

    add-int/lit8 v0, v1, -0x1

    :cond_0
    return v0
.end method

.method public c()Lo/RSAOtherPrimeInfo;
    .locals 1

    .line 87
    invoke-super {p0}, Landroidx/viewpager/widget/ViewPager;->c()Lo/RSAOtherPrimeInfo;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/acquisition2/components/rtlViewPager/RtlViewPager$TaskDescription;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 88
    :cond_0
    invoke-virtual {v0}, Lcom/netflix/mediaclient/acquisition2/components/rtlViewPager/RtlViewPager$TaskDescription;->e()Lo/RSAOtherPrimeInfo;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public e(Landroidx/viewpager/widget/ViewPager$FragmentManager;)V
    .locals 2

    .line 190
    new-instance v0, Lcom/netflix/mediaclient/acquisition2/components/rtlViewPager/RtlViewPager$Activity;

    invoke-direct {v0, p0, p1}, Lcom/netflix/mediaclient/acquisition2/components/rtlViewPager/RtlViewPager$Activity;-><init>(Lcom/netflix/mediaclient/acquisition2/components/rtlViewPager/RtlViewPager;Landroidx/viewpager/widget/ViewPager$FragmentManager;)V

    .line 191
    iget-object v1, p0, Lcom/netflix/mediaclient/acquisition2/components/rtlViewPager/RtlViewPager;->d:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    invoke-super {p0, v0}, Landroidx/viewpager/widget/ViewPager;->e(Landroidx/viewpager/widget/ViewPager$FragmentManager;)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 372
    :try_start_0
    invoke-super {p0, p1}, Landroidx/viewpager/widget/ViewPager;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method

.method public onMeasure(II)V
    .locals 4

    .line 211
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    if-nez v0, :cond_2

    const/4 p2, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 213
    :goto_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/components/rtlViewPager/RtlViewPager;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 214
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/acquisition2/components/rtlViewPager/RtlViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 215
    invoke-static {p2, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v2, p1, v3}, Landroid/view/View;->measure(II)V

    .line 216
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    if-le v2, v1, :cond_0

    move v1, v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/high16 p2, 0x40000000    # 2.0f

    .line 221
    invoke-static {v1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 223
    :cond_2
    invoke-super {p0, p1, p2}, Landroidx/viewpager/widget/ViewPager;->onMeasure(II)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 173
    instance-of v0, p1, Lcom/netflix/mediaclient/acquisition2/components/rtlViewPager/RtlViewPager$SavedState;

    if-nez v0, :cond_0

    .line 174
    invoke-super {p0, p1}, Landroidx/viewpager/widget/ViewPager;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    .line 178
    :cond_0
    check-cast p1, Lcom/netflix/mediaclient/acquisition2/components/rtlViewPager/RtlViewPager$SavedState;

    .line 179
    invoke-static {p1}, Lcom/netflix/mediaclient/acquisition2/components/rtlViewPager/RtlViewPager$SavedState;->b(Lcom/netflix/mediaclient/acquisition2/components/rtlViewPager/RtlViewPager$SavedState;)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/acquisition2/components/rtlViewPager/RtlViewPager;->c:I

    .line 180
    invoke-static {p1}, Lcom/netflix/mediaclient/acquisition2/components/rtlViewPager/RtlViewPager$SavedState;->d(Lcom/netflix/mediaclient/acquisition2/components/rtlViewPager/RtlViewPager$SavedState;)Landroid/os/Parcelable;

    move-result-object p1

    invoke-super {p0, p1}, Landroidx/viewpager/widget/ViewPager;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 2

    .line 60
    invoke-super {p0, p1}, Landroidx/viewpager/widget/ViewPager;->onRtlPropertiesChanged(I)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 62
    :goto_0
    iget p1, p0, Lcom/netflix/mediaclient/acquisition2/components/rtlViewPager/RtlViewPager;->c:I

    if-eq v1, p1, :cond_2

    .line 63
    invoke-super {p0}, Landroidx/viewpager/widget/ViewPager;->c()Lo/RSAOtherPrimeInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 66
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/components/rtlViewPager/RtlViewPager;->b()I

    move-result v0

    .line 68
    :cond_1
    iput v1, p0, Lcom/netflix/mediaclient/acquisition2/components/rtlViewPager/RtlViewPager;->c:I

    if-eqz p1, :cond_2

    .line 70
    invoke-virtual {p1}, Lo/RSAOtherPrimeInfo;->b()V

    .line 71
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/acquisition2/components/rtlViewPager/RtlViewPager;->setCurrentItem(I)V

    :cond_2
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    .line 167
    invoke-super {p0}, Landroidx/viewpager/widget/ViewPager;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 168
    new-instance v1, Lcom/netflix/mediaclient/acquisition2/components/rtlViewPager/RtlViewPager$SavedState;

    iget v2, p0, Lcom/netflix/mediaclient/acquisition2/components/rtlViewPager/RtlViewPager;->c:I

    const/4 v3, 0x0

    invoke-direct {v1, v0, v2, v3}, Lcom/netflix/mediaclient/acquisition2/components/rtlViewPager/RtlViewPager$SavedState;-><init>(Landroid/os/Parcelable;ILcom/netflix/mediaclient/acquisition2/components/rtlViewPager/RtlViewPager$1;)V

    return-object v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 360
    :try_start_0
    invoke-super {p0, p1}, Landroidx/viewpager/widget/ViewPager;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method

.method public setAdapter(Lo/RSAOtherPrimeInfo;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 79
    new-instance v0, Lcom/netflix/mediaclient/acquisition2/components/rtlViewPager/RtlViewPager$TaskDescription;

    invoke-direct {v0, p0, p1}, Lcom/netflix/mediaclient/acquisition2/components/rtlViewPager/RtlViewPager$TaskDescription;-><init>(Lcom/netflix/mediaclient/acquisition2/components/rtlViewPager/RtlViewPager;Lo/RSAOtherPrimeInfo;)V

    move-object p1, v0

    .line 81
    :cond_0
    invoke-super {p0, p1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Lo/RSAOtherPrimeInfo;)V

    const/4 p1, 0x0

    .line 82
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/acquisition2/components/rtlViewPager/RtlViewPager;->setCurrentItem(I)V

    return-void
.end method

.method public setCurrentItem(I)V
    .locals 2

    .line 116
    invoke-super {p0}, Landroidx/viewpager/widget/ViewPager;->c()Lo/RSAOtherPrimeInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 117
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition2/components/rtlViewPager/RtlViewPager;->i()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 118
    invoke-virtual {v0}, Lo/RSAOtherPrimeInfo;->d()I

    move-result v0

    sub-int/2addr v0, p1

    add-int/lit8 p1, v0, -0x1

    .line 120
    :cond_0
    invoke-super {p0, p1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    return-void
.end method

.method public setCurrentItem(IZ)V
    .locals 2

    .line 107
    invoke-super {p0}, Landroidx/viewpager/widget/ViewPager;->c()Lo/RSAOtherPrimeInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 108
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition2/components/rtlViewPager/RtlViewPager;->i()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 109
    invoke-virtual {v0}, Lo/RSAOtherPrimeInfo;->d()I

    move-result v0

    sub-int/2addr v0, p1

    add-int/lit8 p1, v0, -0x1

    .line 111
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    return-void
.end method

.method public setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$FragmentManager;)V
    .locals 1

    .line 185
    new-instance v0, Lcom/netflix/mediaclient/acquisition2/components/rtlViewPager/RtlViewPager$Activity;

    invoke-direct {v0, p0, p1}, Lcom/netflix/mediaclient/acquisition2/components/rtlViewPager/RtlViewPager$Activity;-><init>(Lcom/netflix/mediaclient/acquisition2/components/rtlViewPager/RtlViewPager;Landroidx/viewpager/widget/ViewPager$FragmentManager;)V

    invoke-super {p0, v0}, Landroidx/viewpager/widget/ViewPager;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$FragmentManager;)V

    return-void
.end method
