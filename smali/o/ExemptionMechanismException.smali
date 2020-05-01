.class public final Lo/ExemptionMechanismException;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ExemptionMechanismException$TaskDescription;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lo/BiConsumer<",
        "*>;V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/view/View$OnClickListener;",
        "Landroid/view/View$OnLongClickListener;"
    }
.end annotation


# instance fields
.field private final b:Lo/Stream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/Stream<",
            "TT;TV;>;"
        }
    .end annotation
.end field

.field private final e:Lo/LongStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/LongStream<",
            "TT;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo/LongStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/LongStream<",
            "TT;TV;>;)V"
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 25
    iput-object p1, p0, Lo/ExemptionMechanismException;->e:Lo/LongStream;

    const/4 p1, 0x0

    .line 26
    check-cast p1, Lo/Stream;

    iput-object p1, p0, Lo/ExemptionMechanismException;->b:Lo/Stream;

    return-void

    .line 21
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Click listener cannot be null"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method public constructor <init>(Lo/Stream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/Stream<",
            "TT;TV;>;)V"
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 34
    iput-object p1, p0, Lo/ExemptionMechanismException;->b:Lo/Stream;

    const/4 p1, 0x0

    .line 35
    check-cast p1, Lo/LongStream;

    iput-object p1, p0, Lo/ExemptionMechanismException;->e:Lo/LongStream;

    return-void

    .line 30
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Click listener cannot be null"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method private final a(Landroid/view/View;)Lo/anb;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Lo/anb<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 104
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 105
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lo/ExemptionMechanismException;->d(Landroid/view/ViewGroup;)Lo/anb;

    move-result-object v0

    new-instance v1, Lcom/airbnb/epoxy/WrappedEpoxyModelClickListener$allViewsInHierarchy$1;

    invoke-direct {v1, p0}, Lcom/airbnb/epoxy/WrappedEpoxyModelClickListener$allViewsInHierarchy$1;-><init>(Lo/ExemptionMechanismException;)V

    check-cast v1, Lo/alA;

    invoke-static {v0, v1}, Lo/ane;->c(Lo/anb;Lo/alA;)Lo/anb;

    move-result-object v0

    .line 107
    invoke-static {v0, p1}, Lo/ane;->e(Lo/anb;Ljava/lang/Object;)Lo/anb;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/view/View;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 109
    invoke-static {v0}, Lo/ane;->e([Ljava/lang/Object;)Lo/anb;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public static final synthetic c(Lo/ExemptionMechanismException;Landroid/view/View;)Lo/anb;
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lo/ExemptionMechanismException;->a(Landroid/view/View;)Lo/anb;

    move-result-object p0

    return-object p0
.end method

.method private final e(Landroid/view/View;)Lo/ExemptionMechanismException$TaskDescription;
    .locals 7

    .line 63
    invoke-static {p1}, Lo/Supplier;->d(Landroid/view/View;)Lo/Consumer;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v1, "ListenersUtils.getEpoxyH\u2026holder for clicked view\")"

    .line 64
    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    invoke-virtual {v0}, Lo/Consumer;->getAdapterPosition()I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    return-object v3

    .line 69
    :cond_0
    invoke-virtual {v0}, Lo/Consumer;->a()Ljava/lang/Object;

    move-result-object v2

    const-string v4, "epoxyHolder.objectToBind()"

    invoke-static {v2, v4}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    instance-of v4, v2, Lo/DoubleStream;

    if-eqz v4, :cond_3

    .line 77
    check-cast v2, Lo/DoubleStream;

    invoke-virtual {v2}, Lo/DoubleStream;->d()Ljava/util/ArrayList;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    .line 158
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lo/Consumer;

    .line 78
    iget-object v5, v5, Lo/Consumer;->itemView:Landroid/view/View;

    const-string v6, "it.itemView"

    invoke-static {v5, v6}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v5}, Lo/ExemptionMechanismException;->a(Landroid/view/View;)Lo/anb;

    move-result-object v5

    invoke-static {v5, p1}, Lo/ane;->a(Lo/anb;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v3, v4

    .line 159
    :cond_2
    move-object p1, v3

    check-cast p1, Lo/Consumer;

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    move-object p1, v0

    .line 86
    :goto_0
    new-instance v0, Lo/ExemptionMechanismException$TaskDescription;

    .line 87
    invoke-virtual {p1}, Lo/Consumer;->b()Lo/BiConsumer;

    move-result-object v2

    const-string v3, "holderToUse.model"

    invoke-static {v2, v3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    invoke-virtual {p1}, Lo/Consumer;->a()Ljava/lang/Object;

    move-result-object p1

    const-string v3, "holderToUse.objectToBind()"

    invoke-static {p1, v3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    invoke-direct {v0, v2, v1, p1}, Lo/ExemptionMechanismException$TaskDescription;-><init>(Lo/BiConsumer;ILjava/lang/Object;)V

    return-object v0

    .line 64
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Could not find RecyclerView holder for clicked view"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method


# virtual methods
.method public final a(Landroid/view/ViewGroup;)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            ")",
            "Ljava/util/Iterator<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    const-string v0, "$this$iterator"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    new-instance v0, Lo/ExemptionMechanismException$Application;

    invoke-direct {v0, p1}, Lo/ExemptionMechanismException$Application;-><init>(Landroid/view/ViewGroup;)V

    check-cast v0, Ljava/util/Iterator;

    return-object v0
.end method

.method public final d(Landroid/view/ViewGroup;)Lo/anb;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            ")",
            "Lo/anb<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    const-string v0, "$this$children"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    new-instance v0, Lo/ExemptionMechanismException$StateListAnimator;

    invoke-direct {v0, p0, p1}, Lo/ExemptionMechanismException$StateListAnimator;-><init>(Lo/ExemptionMechanismException;Landroid/view/ViewGroup;)V

    check-cast v0, Lo/anb;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 128
    move-object v0, p0

    check-cast v0, Lo/ExemptionMechanismException;

    const/4 v1, 0x1

    if-ne v0, p1, :cond_0

    return v1

    .line 132
    :cond_0
    instance-of v0, p1, Lo/ExemptionMechanismException;

    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    .line 136
    :cond_1
    iget-object v0, p0, Lo/ExemptionMechanismException;->e:Lo/LongStream;

    if-eqz v0, :cond_2

    .line 137
    move-object v3, p1

    check-cast v3, Lo/ExemptionMechanismException;

    iget-object v3, v3, Lo/ExemptionMechanismException;->e:Lo/LongStream;

    invoke-static {v0, v3}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v1

    goto :goto_0

    .line 139
    :cond_2
    move-object v0, p1

    check-cast v0, Lo/ExemptionMechanismException;

    iget-object v0, v0, Lo/ExemptionMechanismException;->e:Lo/LongStream;

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_4

    return v2

    .line 144
    :cond_4
    iget-object v0, p0, Lo/ExemptionMechanismException;->b:Lo/Stream;

    if-eqz v0, :cond_5

    .line 145
    check-cast p1, Lo/ExemptionMechanismException;

    iget-object p1, p1, Lo/ExemptionMechanismException;->b:Lo/Stream;

    invoke-static {v0, p1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    goto :goto_1

    .line 147
    :cond_5
    check-cast p1, Lo/ExemptionMechanismException;

    iget-object p1, p1, Lo/ExemptionMechanismException;->b:Lo/Stream;

    if-nez p1, :cond_6

    goto :goto_1

    :cond_6
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    .line 152
    iget-object v0, p0, Lo/ExemptionMechanismException;->e:Lo/LongStream;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 153
    iget-object v2, p0, Lo/ExemptionMechanismException;->b:Lo/Stream;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    const-string v0, "view"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    invoke-direct {p0, p1}, Lo/ExemptionMechanismException;->e(Landroid/view/View;)Lo/ExemptionMechanismException$TaskDescription;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 42
    iget-object v1, p0, Lo/ExemptionMechanismException;->e:Lo/LongStream;

    if-eqz v1, :cond_1

    .line 43
    invoke-virtual {v0}, Lo/ExemptionMechanismException$TaskDescription;->a()Lo/BiConsumer;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 44
    invoke-virtual {v0}, Lo/ExemptionMechanismException$TaskDescription;->e()Ljava/lang/Object;

    move-result-object v3

    .line 46
    invoke-virtual {v0}, Lo/ExemptionMechanismException$TaskDescription;->c()I

    move-result v0

    .line 42
    invoke-interface {v1, v2, v3, p1, v0}, Lo/LongStream;->d(Lo/BiConsumer;Ljava/lang/Object;Landroid/view/View;I)V

    return-void

    .line 43
    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type T"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 47
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Original click listener is null"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    :cond_2
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 4

    const-string v0, "view"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    invoke-direct {p0, p1}, Lo/ExemptionMechanismException;->e(Landroid/view/View;)Lo/ExemptionMechanismException$TaskDescription;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 54
    iget-object v1, p0, Lo/ExemptionMechanismException;->b:Lo/Stream;

    if-eqz v1, :cond_1

    .line 55
    invoke-virtual {v0}, Lo/ExemptionMechanismException$TaskDescription;->a()Lo/BiConsumer;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 56
    invoke-virtual {v0}, Lo/ExemptionMechanismException$TaskDescription;->e()Ljava/lang/Object;

    move-result-object v3

    .line 58
    invoke-virtual {v0}, Lo/ExemptionMechanismException$TaskDescription;->c()I

    move-result v0

    .line 54
    invoke-interface {v1, v2, v3, p1, v0}, Lo/Stream;->a(Lo/BiConsumer;Ljava/lang/Object;Landroid/view/View;I)Z

    move-result p1

    return p1

    .line 55
    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type T"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 59
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Original long click listener is null"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method
