.class public final Lo/List;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/airbnb/epoxy/PoolReference;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lo/List;->d:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lo/alB;)Lcom/airbnb/epoxy/PoolReference;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lo/alB<",
            "+",
            "Landroidx/recyclerview/widget/RecyclerView$SharedElementCallback;",
            ">;)",
            "Lcom/airbnb/epoxy/PoolReference;"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "poolFactory"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    iget-object v0, p0, Lo/List;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-string v1, "pools.iterator()"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 30
    move-object v2, v1

    check-cast v2, Lcom/airbnb/epoxy/PoolReference;

    .line 32
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 33
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    const-string v4, "iterator.next()"

    invoke-static {v3, v4}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Lcom/airbnb/epoxy/PoolReference;

    .line 35
    invoke-virtual {v3}, Lcom/airbnb/epoxy/PoolReference;->e()Landroid/content/Context;

    move-result-object v4

    if-ne v4, p1, :cond_2

    if-nez v2, :cond_1

    move-object v2, v3

    goto :goto_0

    .line 37
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "A pool was already found"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 42
    :cond_2
    invoke-virtual {v3}, Lcom/airbnb/epoxy/PoolReference;->e()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lo/Hashtable;->b(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 45
    invoke-virtual {v3}, Lcom/airbnb/epoxy/PoolReference;->b()Landroidx/recyclerview/widget/RecyclerView$SharedElementCallback;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$SharedElementCallback;->d()V

    .line 46
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_3
    if-nez v2, :cond_6

    .line 52
    new-instance v2, Lcom/airbnb/epoxy/PoolReference;

    invoke-interface {p2}, Lo/alB;->invoke()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView$SharedElementCallback;

    invoke-direct {v2, p1, p2, p0}, Lcom/airbnb/epoxy/PoolReference;-><init>(Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView$SharedElementCallback;Lo/List;)V

    .line 53
    instance-of p2, p1, Lo/UnicodeScript;

    if-nez p2, :cond_4

    move-object p1, v1

    :cond_4
    check-cast p1, Lo/UnicodeScript;

    if-eqz p1, :cond_5

    invoke-interface {p1}, Lo/UnicodeScript;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    if-eqz p1, :cond_5

    move-object p2, v2

    check-cast p2, Lo/ClassCircularityError;

    invoke-virtual {p1, p2}, Landroidx/lifecycle/Lifecycle;->a(Lo/ClassCircularityError;)V

    .line 54
    :cond_5
    iget-object p1, p0, Lo/List;->d:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    return-object v2
.end method

.method public final d(Lcom/airbnb/epoxy/PoolReference;)V
    .locals 1

    const-string v0, "pool"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    invoke-virtual {p1}, Lcom/airbnb/epoxy/PoolReference;->e()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lo/Hashtable;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    invoke-virtual {p1}, Lcom/airbnb/epoxy/PoolReference;->b()Landroidx/recyclerview/widget/RecyclerView$SharedElementCallback;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$SharedElementCallback;->d()V

    .line 63
    iget-object v0, p0, Lo/List;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
