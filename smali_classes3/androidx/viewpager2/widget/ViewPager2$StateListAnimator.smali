.class Landroidx/viewpager2/widget/ViewPager2$StateListAnimator;
.super Landroidx/viewpager2/widget/ViewPager2$Application;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/viewpager2/widget/ViewPager2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StateListAnimator"
.end annotation


# instance fields
.field final synthetic d:Landroidx/viewpager2/widget/ViewPager2;


# direct methods
.method constructor <init>(Landroidx/viewpager2/widget/ViewPager2;)V
    .locals 1

    .line 1288
    iput-object p1, p0, Landroidx/viewpager2/widget/ViewPager2$StateListAnimator;->d:Landroidx/viewpager2/widget/ViewPager2;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/viewpager2/widget/ViewPager2$Application;-><init>(Landroidx/viewpager2/widget/ViewPager2;Landroidx/viewpager2/widget/ViewPager2$4;)V

    return-void
.end method


# virtual methods
.method public d(I)Z
    .locals 1

    const/16 v0, 0x2000

    if-eq p1, v0, :cond_0

    const/16 v0, 0x1000

    if-ne p1, v0, :cond_1

    .line 1291
    :cond_0
    iget-object p1, p0, Landroidx/viewpager2/widget/ViewPager2$StateListAnimator;->d:Landroidx/viewpager2/widget/ViewPager2;

    .line 1293
    invoke-virtual {p1}, Landroidx/viewpager2/widget/ViewPager2;->j()Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public e(Lo/LineNumberInputStream;)V
    .locals 1

    .line 1307
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2$StateListAnimator;->d:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->j()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1308
    sget-object v0, Lo/LineNumberInputStream$ActionBar;->m:Lo/LineNumberInputStream$ActionBar;

    invoke-virtual {p1, v0}, Lo/LineNumberInputStream;->d(Lo/LineNumberInputStream$ActionBar;)Z

    .line 1309
    sget-object v0, Lo/LineNumberInputStream$ActionBar;->k:Lo/LineNumberInputStream$ActionBar;

    invoke-virtual {p1, v0}, Lo/LineNumberInputStream;->d(Lo/LineNumberInputStream$ActionBar;)Z

    const/4 v0, 0x0

    .line 1310
    invoke-virtual {p1, v0}, Lo/LineNumberInputStream;->g(Z)V

    :cond_0
    return-void
.end method

.method public e(I)Z
    .locals 0

    .line 1298
    invoke-virtual {p0, p1}, Landroidx/viewpager2/widget/ViewPager2$StateListAnimator;->d(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1299
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public f()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public g()Ljava/lang/CharSequence;
    .locals 1

    .line 1321
    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2$StateListAnimator;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "androidx.viewpager.widget.ViewPager"

    return-object v0

    .line 1322
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
