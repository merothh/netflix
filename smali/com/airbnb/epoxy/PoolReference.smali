.class public final Lcom/airbnb/epoxy/PoolReference;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ClassCircularityError;


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lo/List;

.field private final d:Landroidx/recyclerview/widget/RecyclerView$SharedElementCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView$SharedElementCallback;Lo/List;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "viewPool"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parent"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/airbnb/epoxy/PoolReference;->d:Landroidx/recyclerview/widget/RecyclerView$SharedElementCallback;

    iput-object p3, p0, Lcom/airbnb/epoxy/PoolReference;->b:Lo/List;

    .line 73
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/airbnb/epoxy/PoolReference;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/airbnb/epoxy/PoolReference;->b:Lo/List;

    invoke-virtual {v0, p0}, Lo/List;->d(Lcom/airbnb/epoxy/PoolReference;)V

    return-void
.end method

.method public final b()Landroidx/recyclerview/widget/RecyclerView$SharedElementCallback;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/airbnb/epoxy/PoolReference;->d:Landroidx/recyclerview/widget/RecyclerView$SharedElementCallback;

    return-object v0
.end method

.method public final e()Landroid/content/Context;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/airbnb/epoxy/PoolReference;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    return-object v0
.end method

.method public final onContextDestroyed()V
    .locals 0
    .annotation runtime Lo/Double;
        c = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 83
    invoke-virtual {p0}, Lcom/airbnb/epoxy/PoolReference;->a()V

    return-void
.end method
