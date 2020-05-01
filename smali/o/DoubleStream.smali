.class public final Lo/DoubleStream;
.super Lo/TimeUnit;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/DoubleStream$Activity;
    }
.end annotation


# static fields
.field public static final a:Lo/DoubleStream$Activity;

.field private static final h:Lo/List;

.field private static final j:Lo/Predicate;


# instance fields
.field private b:Landroid/view/ViewGroup;

.field private c:Landroid/view/ViewGroup;

.field private final d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lo/Consumer;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/airbnb/epoxy/PoolReference;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/ExemptionMechanismSpi;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lo/Executor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/DoubleStream$Activity;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/DoubleStream$Activity;-><init>(Lo/amc;)V

    sput-object v0, Lo/DoubleStream;->a:Lo/DoubleStream$Activity;

    .line 185
    new-instance v0, Lo/Predicate;

    invoke-direct {v0}, Lo/Predicate;-><init>()V

    sput-object v0, Lo/DoubleStream;->j:Lo/Predicate;

    .line 186
    new-instance v0, Lo/List;

    invoke-direct {v0}, Lo/List;-><init>()V

    sput-object v0, Lo/DoubleStream;->h:Lo/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 12
    invoke-direct {p0}, Lo/TimeUnit;-><init>()V

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lo/DoubleStream;->d:Ljava/util/ArrayList;

    return-void
.end method

.method private final a(Landroid/view/ViewGroup;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            ")",
            "Ljava/util/List<",
            "Lo/ExemptionMechanismSpi;",
            ">;"
        }
    .end annotation

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 63
    invoke-direct {p0, p1, v0}, Lo/DoubleStream;->c(Landroid/view/ViewGroup;Ljava/util/ArrayList;)V

    .line 65
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 61
    check-cast v0, Ljava/util/List;

    return-object v0

    .line 66
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "No view stubs found. If viewgroup is not empty it must contain ViewStubs."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method private final b(I)V
    .locals 2

    .line 172
    invoke-direct {p0}, Lo/DoubleStream;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 173
    iget-object v0, p0, Lo/DoubleStream;->f:Ljava/util/List;

    if-nez v0, :cond_0

    const-string v1, "stubs"

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ExemptionMechanismSpi;

    invoke-virtual {v0}, Lo/ExemptionMechanismSpi;->b()V

    goto :goto_0

    .line 175
    :cond_1
    iget-object v0, p0, Lo/DoubleStream;->c:Landroid/view/ViewGroup;

    if-nez v0, :cond_2

    const-string v1, "childContainer"

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 178
    :goto_0
    iget-object v0, p0, Lo/DoubleStream;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "viewHolders.removeAt(modelPosition)"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lo/Consumer;

    .line 179
    invoke-virtual {p1}, Lo/Consumer;->e()V

    .line 180
    iget-object v0, p0, Lo/DoubleStream;->e:Lcom/airbnb/epoxy/PoolReference;

    if-nez v0, :cond_3

    const-string v1, "poolReference"

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v0}, Lcom/airbnb/epoxy/PoolReference;->b()Landroidx/recyclerview/widget/RecyclerView$SharedElementCallback;

    move-result-object v0

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$Intent;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$SharedElementCallback;->e(Landroidx/recyclerview/widget/RecyclerView$Intent;)V

    return-void
.end method

.method private final c(Landroid/view/ViewGroup;Lo/BiConsumer;)Lo/Consumer;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Lo/BiConsumer<",
            "*>;)",
            "Lo/Consumer;"
        }
    .end annotation

    .line 146
    invoke-static {p2}, Lo/KeyAgreement;->a(Lo/BiConsumer;)I

    move-result v0

    .line 147
    iget-object v1, p0, Lo/DoubleStream;->e:Lcom/airbnb/epoxy/PoolReference;

    if-nez v1, :cond_0

    const-string v2, "poolReference"

    invoke-static {v2}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v1}, Lcom/airbnb/epoxy/PoolReference;->b()Landroidx/recyclerview/widget/RecyclerView$SharedElementCallback;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView$SharedElementCallback;->a(I)Landroidx/recyclerview/widget/RecyclerView$Intent;

    move-result-object v1

    .line 149
    instance-of v2, v1, Lo/Consumer;

    if-nez v2, :cond_1

    const/4 v1, 0x0

    :cond_1
    check-cast v1, Lo/Consumer;

    if-eqz v1, :cond_2

    goto :goto_0

    .line 150
    :cond_2
    sget-object v1, Lo/DoubleStream;->j:Lo/Predicate;

    invoke-virtual {v1, p2, p1, v0}, Lo/Predicate;->d(Lo/BiConsumer;Landroid/view/ViewGroup;I)Lo/Consumer;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method private final c(Landroid/view/ViewGroup;Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Ljava/util/ArrayList<",
            "Lo/ExemptionMechanismSpi;",
            ">;)V"
        }
    .end annotation

    .line 77
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 78
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 80
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    .line 81
    check-cast v2, Landroid/view/ViewGroup;

    invoke-direct {p0, v2, p2}, Lo/DoubleStream;->c(Landroid/view/ViewGroup;Ljava/util/ArrayList;)V

    goto :goto_1

    .line 82
    :cond_0
    instance-of v3, v2, Landroid/view/ViewStub;

    if-eqz v3, :cond_1

    .line 83
    new-instance v3, Lo/ExemptionMechanismSpi;

    check-cast v2, Landroid/view/ViewStub;

    invoke-direct {v3, p1, v2, v1}, Lo/ExemptionMechanismSpi;-><init>(Landroid/view/ViewGroup;Landroid/view/ViewStub;I)V

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private final c()Z
    .locals 2

    .line 29
    iget-object v0, p0, Lo/DoubleStream;->f:Ljava/util/List;

    if-nez v0, :cond_0

    const-string v1, "stubs"

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private final e(Landroid/view/ViewGroup;)Landroid/view/ViewGroup;
    .locals 2

    .line 55
    sget v0, Lo/AppGlobals$Activity;->e:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 57
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    move-object p1, v0

    :cond_1
    return-object p1
.end method

.method private final e(Lo/BiConsumer;Lo/BiConsumer;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/BiConsumer<",
            "*>;",
            "Lo/BiConsumer<",
            "*>;)Z"
        }
    .end annotation

    .line 142
    invoke-static {p1}, Lo/KeyAgreement;->a(Lo/BiConsumer;)I

    move-result p1

    invoke-static {p2}, Lo/KeyAgreement;->a(Lo/BiConsumer;)I

    move-result p2

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public final b()V
    .locals 3

    .line 158
    iget-object v0, p0, Lo/DoubleStream;->i:Lo/Executor;

    if-eqz v0, :cond_2

    .line 162
    iget-object v0, p0, Lo/DoubleStream;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 164
    iget-object v2, p0, Lo/DoubleStream;->d:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-direct {p0, v2}, Lo/DoubleStream;->b(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 167
    :cond_0
    iget-object v0, p0, Lo/DoubleStream;->e:Lcom/airbnb/epoxy/PoolReference;

    if-nez v0, :cond_1

    const-string v1, "poolReference"

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v0}, Lcom/airbnb/epoxy/PoolReference;->a()V

    const/4 v0, 0x0

    .line 168
    check-cast v0, Lo/Executor;

    iput-object v0, p0, Lo/DoubleStream;->i:Lo/Executor;

    return-void

    .line 159
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Group is not bound"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public final c(Lo/Executor;)V
    .locals 10

    const-string v0, "group"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lo/DoubleStream;->i:Lo/Executor;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-eqz v0, :cond_1

    .line 97
    iget-object v1, v0, Lo/Executor;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p1, Lo/Executor;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-le v1, v2, :cond_1

    .line 98
    iget-object v1, v0, Lo/Executor;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p1, Lo/Executor;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v1, v2, :cond_1

    .line 99
    :goto_0
    invoke-direct {p0, v1}, Lo/DoubleStream;->b(I)V

    if-eq v1, v2, :cond_1

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 104
    :cond_1
    iput-object p1, p0, Lo/DoubleStream;->i:Lo/Executor;

    .line 105
    iget-object v1, p1, Lo/Executor;->b:Ljava/util/List;

    .line 106
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 108
    invoke-direct {p0}, Lo/DoubleStream;->c()Z

    move-result v3

    const-string v4, "stubs"

    if-eqz v3, :cond_4

    iget-object v3, p0, Lo/DoubleStream;->f:Ljava/util/List;

    if-nez v3, :cond_2

    invoke-static {v4}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v3, v2, :cond_4

    .line 109
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Insufficient view stubs for EpoxyModelGroup. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " models were provided but only "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/DoubleStream;->f:Ljava/util/List;

    if-nez v1, :cond_3

    invoke-static {v4}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " view stubs exist."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 109
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 113
    :cond_4
    iget-object v3, p0, Lo/DoubleStream;->d:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->ensureCapacity(I)V

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_d

    .line 116
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lo/BiConsumer;

    if-eqz v0, :cond_5

    .line 117
    iget-object v6, v0, Lo/Executor;->b:Ljava/util/List;

    if-eqz v6, :cond_5

    invoke-static {v6, v3}, Lo/akz;->c(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lo/BiConsumer;

    goto :goto_2

    :cond_5
    const/4 v6, 0x0

    .line 118
    :goto_2
    iget-object v7, p0, Lo/DoubleStream;->f:Ljava/util/List;

    if-nez v7, :cond_6

    invoke-static {v4}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_6
    invoke-static {v7, v3}, Lo/akz;->c(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lo/ExemptionMechanismSpi;

    const-string v8, "childContainer"

    if-eqz v7, :cond_7

    .line 119
    invoke-virtual {v7}, Lo/ExemptionMechanismSpi;->a()Landroid/view/ViewGroup;

    move-result-object v9

    if-eqz v9, :cond_7

    goto :goto_3

    :cond_7
    iget-object v9, p0, Lo/DoubleStream;->c:Landroid/view/ViewGroup;

    if-nez v9, :cond_8

    invoke-static {v8}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_8
    :goto_3
    if-eqz v6, :cond_a

    .line 122
    invoke-direct {p0, v6, v5}, Lo/DoubleStream;->e(Lo/BiConsumer;Lo/BiConsumer;)Z

    move-result v6

    if-eqz v6, :cond_9

    goto :goto_5

    .line 126
    :cond_9
    invoke-direct {p0, v3}, Lo/DoubleStream;->b(I)V

    :cond_a
    const-string v6, "model"

    .line 129
    invoke-static {v5, v6}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v9, v5}, Lo/DoubleStream;->c(Landroid/view/ViewGroup;Lo/BiConsumer;)Lo/Consumer;

    move-result-object v6

    if-nez v7, :cond_c

    .line 132
    iget-object v5, p0, Lo/DoubleStream;->c:Landroid/view/ViewGroup;

    if-nez v5, :cond_b

    invoke-static {v8}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_b
    iget-object v7, v6, Lo/Consumer;->itemView:Landroid/view/View;

    invoke-virtual {v5, v7, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    goto :goto_4

    .line 134
    :cond_c
    iget-object v8, v6, Lo/Consumer;->itemView:Landroid/view/View;

    const-string v9, "holder.itemView"

    invoke-static {v8, v9}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v5, v3}, Lo/Executor;->a(Lo/BiConsumer;I)Z

    move-result v5

    invoke-virtual {v7, v8, v5}, Lo/ExemptionMechanismSpi;->e(Landroid/view/View;Z)V

    .line 137
    :goto_4
    iget-object v5, p0, Lo/DoubleStream;->d:Ljava/util/ArrayList;

    invoke-virtual {v5, v3, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_d
    return-void
.end method

.method public final d()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lo/Consumer;",
            ">;"
        }
    .end annotation

    .line 13
    iget-object v0, p0, Lo/DoubleStream;->d:Ljava/util/ArrayList;

    return-object v0
.end method

.method protected d(Landroid/view/View;)V
    .locals 2

    const-string v0, "itemView"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_4

    .line 38
    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lo/DoubleStream;->b:Landroid/view/ViewGroup;

    .line 39
    iget-object v0, p0, Lo/DoubleStream;->b:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    const-string v1, "rootView"

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0, v0}, Lo/DoubleStream;->e(Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    move-result-object v0

    iput-object v0, p0, Lo/DoubleStream;->c:Landroid/view/ViewGroup;

    .line 40
    sget-object v0, Lo/DoubleStream;->h:Lo/List;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "itemView.context"

    invoke-static {p1, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/airbnb/epoxy/ModelGroupHolder$bindView$1;->d:Lcom/airbnb/epoxy/ModelGroupHolder$bindView$1;

    check-cast v1, Lo/alB;

    invoke-virtual {v0, p1, v1}, Lo/List;->a(Landroid/content/Context;Lo/alB;)Lcom/airbnb/epoxy/PoolReference;

    move-result-object p1

    iput-object p1, p0, Lo/DoubleStream;->e:Lcom/airbnb/epoxy/PoolReference;

    .line 42
    iget-object p1, p0, Lo/DoubleStream;->c:Landroid/view/ViewGroup;

    const-string v0, "childContainer"

    if-nez p1, :cond_1

    invoke-static {v0}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    if-eqz p1, :cond_3

    .line 43
    iget-object p1, p0, Lo/DoubleStream;->c:Landroid/view/ViewGroup;

    if-nez p1, :cond_2

    invoke-static {v0}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_2
    invoke-direct {p0, p1}, Lo/DoubleStream;->a(Landroid/view/ViewGroup;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    .line 45
    :cond_3
    invoke-static {}, Lo/akz;->e()Ljava/util/List;

    move-result-object p1

    .line 42
    :goto_0
    iput-object p1, p0, Lo/DoubleStream;->f:Ljava/util/List;

    return-void

    .line 33
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "The layout provided to EpoxyModelGroup must be a ViewGroup"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method public final e()Landroid/view/ViewGroup;
    .locals 2

    .line 22
    iget-object v0, p0, Lo/DoubleStream;->b:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    const-string v1, "rootView"

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method
