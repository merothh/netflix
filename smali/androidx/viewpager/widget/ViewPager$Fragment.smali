.class Landroidx/viewpager/widget/ViewPager$Fragment;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/viewpager/widget/ViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Fragment"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 3157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Landroid/view/View;)I
    .locals 2

    .line 3160
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/viewpager/widget/ViewPager$StateListAnimator;

    .line 3161
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroidx/viewpager/widget/ViewPager$StateListAnimator;

    .line 3162
    iget-boolean v0, p1, Landroidx/viewpager/widget/ViewPager$StateListAnimator;->e:Z

    iget-boolean v1, p2, Landroidx/viewpager/widget/ViewPager$StateListAnimator;->e:Z

    if-eq v0, v1, :cond_1

    .line 3163
    iget-boolean p1, p1, Landroidx/viewpager/widget/ViewPager$StateListAnimator;->e:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1

    .line 3165
    :cond_1
    iget p1, p1, Landroidx/viewpager/widget/ViewPager$StateListAnimator;->a:I

    iget p2, p2, Landroidx/viewpager/widget/ViewPager$StateListAnimator;->a:I

    sub-int/2addr p1, p2

    return p1
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 3157
    check-cast p1, Landroid/view/View;

    check-cast p2, Landroid/view/View;

    invoke-virtual {p0, p1, p2}, Landroidx/viewpager/widget/ViewPager$Fragment;->a(Landroid/view/View;Landroid/view/View;)I

    move-result p1

    return p1
.end method
