.class public final Lkotlin/SynchronizedLazyImpl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/aka;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/aka<",
        "TT;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/Object;

.field private volatile b:Ljava/lang/Object;

.field private d:Lo/alB;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/alB<",
            "+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo/alB;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/alB<",
            "+TT;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    const-string v0, "initializer"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lkotlin/SynchronizedLazyImpl;->d:Lo/alB;

    .line 57
    sget-object p1, Lo/aki;->e:Lo/aki;

    iput-object p1, p0, Lkotlin/SynchronizedLazyImpl;->b:Ljava/lang/Object;

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    move-object p2, p0

    .line 59
    :goto_0
    iput-object p2, p0, Lkotlin/SynchronizedLazyImpl;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lo/alB;Ljava/lang/Object;ILo/amc;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 55
    :cond_0
    invoke-direct {p0, p1, p2}, Lkotlin/SynchronizedLazyImpl;-><init>(Lo/alB;Ljava/lang/Object;)V

    return-void
.end method

.method private final writeReplace()Ljava/lang/Object;
    .locals 2

    .line 86
    new-instance v0, Lkotlin/InitializedLazyImpl;

    invoke-virtual {p0}, Lkotlin/SynchronizedLazyImpl;->a()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Lkotlin/InitializedLazyImpl;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lkotlin/SynchronizedLazyImpl;->b:Ljava/lang/Object;

    .line 64
    sget-object v1, Lo/aki;->e:Lo/aki;

    if-eq v0, v1, :cond_0

    return-object v0

    .line 69
    :cond_0
    iget-object v0, p0, Lkotlin/SynchronizedLazyImpl;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 70
    :try_start_0
    iget-object v1, p0, Lkotlin/SynchronizedLazyImpl;->b:Ljava/lang/Object;

    .line 71
    sget-object v2, Lo/aki;->e:Lo/aki;

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 74
    :cond_1
    iget-object v1, p0, Lkotlin/SynchronizedLazyImpl;->d:Lo/alB;

    if-nez v1, :cond_2

    invoke-static {}, Lo/amh;->c()V

    :cond_2
    invoke-interface {v1}, Lo/alB;->invoke()Ljava/lang/Object;

    move-result-object v1

    .line 75
    iput-object v1, p0, Lkotlin/SynchronizedLazyImpl;->b:Ljava/lang/Object;

    const/4 v2, 0x0

    .line 76
    check-cast v2, Lo/alB;

    iput-object v2, p0, Lkotlin/SynchronizedLazyImpl;->d:Lo/alB;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    :goto_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public d()Z
    .locals 2

    .line 82
    iget-object v0, p0, Lkotlin/SynchronizedLazyImpl;->b:Ljava/lang/Object;

    sget-object v1, Lo/aki;->e:Lo/aki;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 84
    invoke-virtual {p0}, Lkotlin/SynchronizedLazyImpl;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lkotlin/SynchronizedLazyImpl;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "Lazy value not initialized yet."

    :goto_0
    return-object v0
.end method
