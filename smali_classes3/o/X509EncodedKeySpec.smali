.class public final Lo/X509EncodedKeySpec;
.super Landroidx/viewpager2/widget/ViewPager2$ActionBar;
.source ""


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/viewpager2/widget/ViewPager2$ActionBar;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 34
    invoke-direct {p0}, Landroidx/viewpager2/widget/ViewPager2$ActionBar;-><init>()V

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lo/X509EncodedKeySpec;->a:Ljava/util/List;

    return-void
.end method

.method private d(Ljava/util/ConcurrentModificationException;)V
    .locals 2

    .line 95
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Adding and removing callbacks during dispatch to callbacks is not supported"

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public c(I)V
    .locals 2

    .line 72
    :try_start_0
    iget-object v0, p0, Lo/X509EncodedKeySpec;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/viewpager2/widget/ViewPager2$ActionBar;

    .line 73
    invoke-virtual {v1, p1}, Landroidx/viewpager2/widget/ViewPager2$ActionBar;->c(I)V
    :try_end_0
    .catch Ljava/util/ConcurrentModificationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 76
    invoke-direct {p0, p1}, Lo/X509EncodedKeySpec;->d(Ljava/util/ConcurrentModificationException;)V

    :cond_0
    return-void
.end method

.method public c(IFI)V
    .locals 2

    .line 58
    :try_start_0
    iget-object v0, p0, Lo/X509EncodedKeySpec;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/viewpager2/widget/ViewPager2$ActionBar;

    .line 59
    invoke-virtual {v1, p1, p2, p3}, Landroidx/viewpager2/widget/ViewPager2$ActionBar;->c(IFI)V
    :try_end_0
    .catch Ljava/util/ConcurrentModificationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 62
    invoke-direct {p0, p1}, Lo/X509EncodedKeySpec;->d(Ljava/util/ConcurrentModificationException;)V

    :cond_0
    return-void
.end method

.method public e(I)V
    .locals 2

    .line 86
    :try_start_0
    iget-object v0, p0, Lo/X509EncodedKeySpec;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/viewpager2/widget/ViewPager2$ActionBar;

    .line 87
    invoke-virtual {v1, p1}, Landroidx/viewpager2/widget/ViewPager2$ActionBar;->e(I)V
    :try_end_0
    .catch Ljava/util/ConcurrentModificationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 90
    invoke-direct {p0, p1}, Lo/X509EncodedKeySpec;->d(Ljava/util/ConcurrentModificationException;)V

    :cond_0
    return-void
.end method

.method public e(Landroidx/viewpager2/widget/ViewPager2$ActionBar;)V
    .locals 1

    .line 42
    iget-object v0, p0, Lo/X509EncodedKeySpec;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
