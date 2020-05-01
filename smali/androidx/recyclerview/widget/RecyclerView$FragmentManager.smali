.class public abstract Landroidx/recyclerview/widget/RecyclerView$FragmentManager;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "FragmentManager"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/widget/RecyclerView$FragmentManager$StateListAnimator;,
        Landroidx/recyclerview/widget/RecyclerView$FragmentManager$ActionBar;,
        Landroidx/recyclerview/widget/RecyclerView$FragmentManager$TaskDescription;
    }
.end annotation


# instance fields
.field private a:Landroidx/recyclerview/widget/RecyclerView$FragmentManager$TaskDescription;

.field private b:J

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/recyclerview/widget/RecyclerView$FragmentManager$ActionBar;",
            ">;"
        }
    .end annotation
.end field

.field private d:J

.field private e:J

.field private f:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 12728
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 12784
    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$FragmentManager;->a:Landroidx/recyclerview/widget/RecyclerView$FragmentManager$TaskDescription;

    .line 12785
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$FragmentManager;->c:Ljava/util/ArrayList;

    const-wide/16 v0, 0x78

    .line 12788
    iput-wide v0, p0, Landroidx/recyclerview/widget/RecyclerView$FragmentManager;->d:J

    .line 12789
    iput-wide v0, p0, Landroidx/recyclerview/widget/RecyclerView$FragmentManager;->b:J

    const-wide/16 v0, 0xfa

    .line 12790
    iput-wide v0, p0, Landroidx/recyclerview/widget/RecyclerView$FragmentManager;->e:J

    .line 12791
    iput-wide v0, p0, Landroidx/recyclerview/widget/RecyclerView$FragmentManager;->f:J

    return-void
.end method

.method static a(Landroidx/recyclerview/widget/RecyclerView$Intent;)I
    .locals 3

    .line 13113
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$Intent;->mFlags:I

    and-int/lit8 v0, v0, 0xe

    .line 13114
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Intent;->isInvalid()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x4

    return p0

    :cond_0
    and-int/lit8 v1, v0, 0x4

    if-nez v1, :cond_1

    .line 13118
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Intent;->getOldPosition()I

    move-result v1

    .line 13119
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Intent;->getAdapterPosition()I

    move-result p0

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    if-eq p0, v2, :cond_1

    if-eq v1, p0, :cond_1

    or-int/lit16 v0, v0, 0x800

    :cond_1
    return v0
.end method


# virtual methods
.method public a(Landroidx/recyclerview/widget/RecyclerView$ComponentName;Landroidx/recyclerview/widget/RecyclerView$Intent;ILjava/util/List;)Landroidx/recyclerview/widget/RecyclerView$FragmentManager$StateListAnimator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView$ComponentName;",
            "Landroidx/recyclerview/widget/RecyclerView$Intent;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)",
            "Landroidx/recyclerview/widget/RecyclerView$FragmentManager$StateListAnimator;"
        }
    .end annotation

    .line 12913
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$FragmentManager;->i()Landroidx/recyclerview/widget/RecyclerView$FragmentManager$StateListAnimator;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView$FragmentManager$StateListAnimator;->d(Landroidx/recyclerview/widget/RecyclerView$Intent;)Landroidx/recyclerview/widget/RecyclerView$FragmentManager$StateListAnimator;

    move-result-object p1

    return-object p1
.end method

.method public abstract a()V
.end method

.method public abstract b(Landroidx/recyclerview/widget/RecyclerView$Intent;)V
.end method

.method public abstract b()Z
.end method

.method public abstract b(Landroidx/recyclerview/widget/RecyclerView$Intent;Landroidx/recyclerview/widget/RecyclerView$FragmentManager$StateListAnimator;Landroidx/recyclerview/widget/RecyclerView$FragmentManager$StateListAnimator;)Z
.end method

.method public b(Landroidx/recyclerview/widget/RecyclerView$Intent;Ljava/util/List;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView$Intent;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 13332
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$FragmentManager;->f(Landroidx/recyclerview/widget/RecyclerView$Intent;)Z

    move-result p1

    return p1
.end method

.method public d()J
    .locals 2

    .line 12799
    iget-wide v0, p0, Landroidx/recyclerview/widget/RecyclerView$FragmentManager;->e:J

    return-wide v0
.end method

.method d(Landroidx/recyclerview/widget/RecyclerView$FragmentManager$TaskDescription;)V
    .locals 0

    .line 12874
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$FragmentManager;->a:Landroidx/recyclerview/widget/RecyclerView$FragmentManager$TaskDescription;

    return-void
.end method

.method public abstract d(Landroidx/recyclerview/widget/RecyclerView$Intent;Landroidx/recyclerview/widget/RecyclerView$FragmentManager$StateListAnimator;Landroidx/recyclerview/widget/RecyclerView$FragmentManager$StateListAnimator;)Z
.end method

.method public e(Landroidx/recyclerview/widget/RecyclerView$ComponentName;Landroidx/recyclerview/widget/RecyclerView$Intent;)Landroidx/recyclerview/widget/RecyclerView$FragmentManager$StateListAnimator;
    .locals 0

    .line 12942
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$FragmentManager;->i()Landroidx/recyclerview/widget/RecyclerView$FragmentManager$StateListAnimator;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView$FragmentManager$StateListAnimator;->d(Landroidx/recyclerview/widget/RecyclerView$Intent;)Landroidx/recyclerview/widget/RecyclerView$FragmentManager$StateListAnimator;

    move-result-object p1

    return-object p1
.end method

.method public abstract e()V
.end method

.method public abstract e(Landroidx/recyclerview/widget/RecyclerView$Intent;Landroidx/recyclerview/widget/RecyclerView$FragmentManager$StateListAnimator;Landroidx/recyclerview/widget/RecyclerView$FragmentManager$StateListAnimator;)Z
.end method

.method public abstract e(Landroidx/recyclerview/widget/RecyclerView$Intent;Landroidx/recyclerview/widget/RecyclerView$Intent;Landroidx/recyclerview/widget/RecyclerView$FragmentManager$StateListAnimator;Landroidx/recyclerview/widget/RecyclerView$FragmentManager$StateListAnimator;)Z
.end method

.method public f()J
    .locals 2

    .line 12835
    iget-wide v0, p0, Landroidx/recyclerview/widget/RecyclerView$FragmentManager;->b:J

    return-wide v0
.end method

.method public f(Landroidx/recyclerview/widget/RecyclerView$Intent;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public g()J
    .locals 2

    .line 12853
    iget-wide v0, p0, Landroidx/recyclerview/widget/RecyclerView$FragmentManager;->f:J

    return-wide v0
.end method

.method public final g(Landroidx/recyclerview/widget/RecyclerView$Intent;)V
    .locals 1

    .line 13197
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$FragmentManager;->h(Landroidx/recyclerview/widget/RecyclerView$Intent;)V

    .line 13198
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$FragmentManager;->a:Landroidx/recyclerview/widget/RecyclerView$FragmentManager$TaskDescription;

    if-eqz v0, :cond_0

    .line 13199
    invoke-interface {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$FragmentManager$TaskDescription;->b(Landroidx/recyclerview/widget/RecyclerView$Intent;)V

    :cond_0
    return-void
.end method

.method public final h()V
    .locals 3

    .line 13340
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$FragmentManager;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 13342
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$FragmentManager;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$FragmentManager$ActionBar;

    invoke-interface {v2}, Landroidx/recyclerview/widget/RecyclerView$FragmentManager$ActionBar;->c()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 13344
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$FragmentManager;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public h(Landroidx/recyclerview/widget/RecyclerView$Intent;)V
    .locals 0

    return-void
.end method

.method public i()Landroidx/recyclerview/widget/RecyclerView$FragmentManager$StateListAnimator;
    .locals 1

    .line 13358
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$FragmentManager$StateListAnimator;

    invoke-direct {v0}, Landroidx/recyclerview/widget/RecyclerView$FragmentManager$StateListAnimator;-><init>()V

    return-object v0
.end method

.method public j()J
    .locals 2

    .line 12817
    iget-wide v0, p0, Landroidx/recyclerview/widget/RecyclerView$FragmentManager;->d:J

    return-wide v0
.end method
