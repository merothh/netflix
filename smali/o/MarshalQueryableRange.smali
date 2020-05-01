.class public abstract Lo/MarshalQueryableRange;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/MarshalQueryableString;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/MarshalQueryableString<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final d:Lo/MarshalRegistry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/MarshalRegistry<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lo/MarshalQueryableRange;->a:Ljava/util/Set;

    .line 25
    new-instance v0, Lo/MarshalRegistry;

    invoke-direct {v0}, Lo/MarshalRegistry;-><init>()V

    iput-object v0, p0, Lo/MarshalQueryableRange;->d:Lo/MarshalRegistry;

    return-void
.end method

.method private c(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 54
    monitor-enter p0

    .line 55
    :try_start_0
    iget-object v0, p0, Lo/MarshalQueryableRange;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 56
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    :goto_0
    return-object p1
.end method


# virtual methods
.method public b(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 32
    iget-object v0, p0, Lo/MarshalQueryableRange;->d:Lo/MarshalRegistry;

    invoke-virtual {v0, p1}, Lo/MarshalRegistry;->e(I)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, p1}, Lo/MarshalQueryableRange;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public c()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 49
    iget-object v0, p0, Lo/MarshalQueryableRange;->d:Lo/MarshalRegistry;

    invoke-virtual {v0}, Lo/MarshalRegistry;->b()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/MarshalQueryableRange;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public d(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 38
    monitor-enter p0

    .line 39
    :try_start_0
    iget-object v0, p0, Lo/MarshalQueryableRange;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 40
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lo/MarshalQueryableRange;->d:Lo/MarshalRegistry;

    invoke-virtual {p0, p1}, Lo/MarshalQueryableRange;->e(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lo/MarshalRegistry;->b(ILjava/lang/Object;)V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 40
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
