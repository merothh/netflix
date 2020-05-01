.class public final Lo/CompatibilityInfo;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/CompatibilityInfo$Application;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Cloneable;",
        "Ljava/io/Closeable;"
    }
.end annotation


# static fields
.field private static b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "Lo/CompatibilityInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final g:Lo/CompatibilityInfo$Application;

.field private static final i:Lo/ConfigurationBoundResourceCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/ConfigurationBoundResourceCache<",
            "Ljava/io/Closeable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Lo/CompatibilityInfo$Application;

.field private c:Z

.field private final d:Ljava/lang/Throwable;

.field private final e:Lcom/facebook/common/references/SharedReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/references/SharedReference<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 68
    const-class v0, Lo/CompatibilityInfo;

    sput-object v0, Lo/CompatibilityInfo;->b:Ljava/lang/Class;

    .line 87
    new-instance v0, Lo/CompatibilityInfo$5;

    invoke-direct {v0}, Lo/CompatibilityInfo$5;-><init>()V

    sput-object v0, Lo/CompatibilityInfo;->i:Lo/ConfigurationBoundResourceCache;

    .line 99
    new-instance v0, Lo/CompatibilityInfo$2;

    invoke-direct {v0}, Lo/CompatibilityInfo$2;-><init>()V

    sput-object v0, Lo/CompatibilityInfo;->g:Lo/CompatibilityInfo$Application;

    return-void
.end method

.method private constructor <init>(Lcom/facebook/common/references/SharedReference;Lo/CompatibilityInfo$Application;Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/references/SharedReference<",
            "TT;>;",
            "Lo/CompatibilityInfo$Application;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 70
    iput-boolean v0, p0, Lo/CompatibilityInfo;->c:Z

    .line 119
    invoke-static {p1}, Lo/StringParceledListSlice;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/common/references/SharedReference;

    iput-object v0, p0, Lo/CompatibilityInfo;->e:Lcom/facebook/common/references/SharedReference;

    .line 120
    invoke-virtual {p1}, Lcom/facebook/common/references/SharedReference;->b()V

    .line 121
    iput-object p2, p0, Lo/CompatibilityInfo;->a:Lo/CompatibilityInfo$Application;

    .line 122
    iput-object p3, p0, Lo/CompatibilityInfo;->d:Ljava/lang/Throwable;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;Lo/ConfigurationBoundResourceCache;Lo/CompatibilityInfo$Application;Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lo/ConfigurationBoundResourceCache<",
            "TT;>;",
            "Lo/CompatibilityInfo$Application;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 70
    iput-boolean v0, p0, Lo/CompatibilityInfo;->c:Z

    .line 130
    new-instance v0, Lcom/facebook/common/references/SharedReference;

    invoke-direct {v0, p1, p2}, Lcom/facebook/common/references/SharedReference;-><init>(Ljava/lang/Object;Lo/ConfigurationBoundResourceCache;)V

    iput-object v0, p0, Lo/CompatibilityInfo;->e:Lcom/facebook/common/references/SharedReference;

    .line 131
    iput-object p3, p0, Lo/CompatibilityInfo;->a:Lo/CompatibilityInfo$Application;

    .line 132
    iput-object p4, p0, Lo/CompatibilityInfo;->d:Ljava/lang/Throwable;

    return-void
.end method

.method public static a(Ljava/io/Closeable;)Lo/CompatibilityInfo;
    .locals 1
    .param p0    # Ljava/io/Closeable;
        .annotation build Lcom/facebook/infer/annotation/PropagatesNullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/io/Closeable;",
            ">(TT;)",
            "Lo/CompatibilityInfo<",
            "TT;>;"
        }
    .end annotation

    .line 141
    sget-object v0, Lo/CompatibilityInfo;->i:Lo/ConfigurationBoundResourceCache;

    invoke-static {p0, v0}, Lo/CompatibilityInfo;->c(Ljava/lang/Object;Lo/ConfigurationBoundResourceCache;)Lo/CompatibilityInfo;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lo/CompatibilityInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/CompatibilityInfo<",
            "*>;)V"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 308
    invoke-virtual {p0}, Lo/CompatibilityInfo;->close()V

    :cond_0
    return-void
.end method

.method public static c(Ljava/lang/Object;Lo/ConfigurationBoundResourceCache;)Lo/CompatibilityInfo;
    .locals 1
    .param p0    # Ljava/lang/Object;
        .annotation build Lcom/facebook/infer/annotation/PropagatesNullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lo/ConfigurationBoundResourceCache<",
            "TT;>;)",
            "Lo/CompatibilityInfo<",
            "TT;>;"
        }
    .end annotation

    .line 169
    sget-object v0, Lo/CompatibilityInfo;->g:Lo/CompatibilityInfo$Application;

    invoke-static {p0, p1, v0}, Lo/CompatibilityInfo;->c(Ljava/lang/Object;Lo/ConfigurationBoundResourceCache;Lo/CompatibilityInfo$Application;)Lo/CompatibilityInfo;

    move-result-object p0

    return-object p0
.end method

.method public static c(Ljava/lang/Object;Lo/ConfigurationBoundResourceCache;Lo/CompatibilityInfo$Application;)Lo/CompatibilityInfo;
    .locals 3
    .param p0    # Ljava/lang/Object;
        .annotation build Lcom/facebook/infer/annotation/PropagatesNullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lo/ConfigurationBoundResourceCache<",
            "TT;>;",
            "Lo/CompatibilityInfo$Application;",
            ")",
            "Lo/CompatibilityInfo<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 182
    :cond_0
    new-instance v1, Lo/CompatibilityInfo;

    .line 186
    invoke-interface {p2}, Lo/CompatibilityInfo$Application;->c()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    :cond_1
    invoke-direct {v1, p0, p1, p2, v0}, Lo/CompatibilityInfo;-><init>(Ljava/lang/Object;Lo/ConfigurationBoundResourceCache;Lo/CompatibilityInfo$Application;Ljava/lang/Throwable;)V

    return-object v1
.end method

.method public static d(Lo/CompatibilityInfo;)Lo/CompatibilityInfo;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lo/CompatibilityInfo<",
            "TT;>;)",
            "Lo/CompatibilityInfo<",
            "TT;>;"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 278
    invoke-virtual {p0}, Lo/CompatibilityInfo;->b()Lo/CompatibilityInfo;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static e(Ljava/io/Closeable;Lo/CompatibilityInfo$Application;)Lo/CompatibilityInfo;
    .locals 4
    .param p0    # Ljava/io/Closeable;
        .annotation build Lcom/facebook/infer/annotation/PropagatesNullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/io/Closeable;",
            ">(TT;",
            "Lo/CompatibilityInfo$Application;",
            ")",
            "Lo/CompatibilityInfo<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 155
    :cond_0
    new-instance v1, Lo/CompatibilityInfo;

    sget-object v2, Lo/CompatibilityInfo;->i:Lo/ConfigurationBoundResourceCache;

    .line 159
    invoke-interface {p1}, Lo/CompatibilityInfo$Application;->c()Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    :cond_1
    invoke-direct {v1, p0, v2, p1, v0}, Lo/CompatibilityInfo;-><init>(Ljava/lang/Object;Lo/ConfigurationBoundResourceCache;Lo/CompatibilityInfo$Application;Ljava/lang/Throwable;)V

    return-object v1
.end method

.method public static e(Lo/CompatibilityInfo;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/CompatibilityInfo<",
            "*>;)Z"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 268
    invoke-virtual {p0}, Lo/CompatibilityInfo;->e()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic f()Ljava/lang/Class;
    .locals 1

    .line 66
    sget-object v0, Lo/CompatibilityInfo;->b:Ljava/lang/Class;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized a()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    monitor-enter p0

    .line 195
    :try_start_0
    iget-boolean v0, p0, Lo/CompatibilityInfo;->c:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lo/StringParceledListSlice;->c(Z)V

    .line 196
    iget-object v0, p0, Lo/CompatibilityInfo;->e:Lcom/facebook/common/references/SharedReference;

    invoke-virtual {v0}, Lcom/facebook/common/references/SharedReference;->e()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b()Lo/CompatibilityInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/CompatibilityInfo<",
            "TT;>;"
        }
    .end annotation

    monitor-enter p0

    .line 209
    :try_start_0
    invoke-virtual {p0}, Lo/CompatibilityInfo;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 210
    invoke-virtual {p0}, Lo/CompatibilityInfo;->d()Lo/CompatibilityInfo;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 212
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public c()I
    .locals 1

    .line 239
    invoke-virtual {p0}, Lo/CompatibilityInfo;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/CompatibilityInfo;->e:Lcom/facebook/common/references/SharedReference;

    invoke-virtual {v0}, Lcom/facebook/common/references/SharedReference;->e()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 66
    invoke-virtual {p0}, Lo/CompatibilityInfo;->d()Lo/CompatibilityInfo;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 1

    .line 252
    monitor-enter p0

    .line 253
    :try_start_0
    iget-boolean v0, p0, Lo/CompatibilityInfo;->c:Z

    if-eqz v0, :cond_0

    .line 254
    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 256
    iput-boolean v0, p0, Lo/CompatibilityInfo;->c:Z

    .line 257
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 259
    iget-object v0, p0, Lo/CompatibilityInfo;->e:Lcom/facebook/common/references/SharedReference;

    invoke-virtual {v0}, Lcom/facebook/common/references/SharedReference;->d()V

    return-void

    :catchall_0
    move-exception v0

    .line 257
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized d()Lo/CompatibilityInfo;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/CompatibilityInfo<",
            "TT;>;"
        }
    .end annotation

    monitor-enter p0

    .line 204
    :try_start_0
    invoke-virtual {p0}, Lo/CompatibilityInfo;->e()Z

    move-result v0

    invoke-static {v0}, Lo/StringParceledListSlice;->c(Z)V

    .line 205
    new-instance v0, Lo/CompatibilityInfo;

    iget-object v1, p0, Lo/CompatibilityInfo;->e:Lcom/facebook/common/references/SharedReference;

    iget-object v2, p0, Lo/CompatibilityInfo;->a:Lo/CompatibilityInfo$Application;

    iget-object v3, p0, Lo/CompatibilityInfo;->d:Ljava/lang/Throwable;

    invoke-direct {v0, v1, v2, v3}, Lo/CompatibilityInfo;-><init>(Lcom/facebook/common/references/SharedReference;Lo/CompatibilityInfo$Application;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized e()Z
    .locals 1

    monitor-enter p0

    .line 221
    :try_start_0
    iget-boolean v0, p0, Lo/CompatibilityInfo;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    xor-int/lit8 v0, v0, 0x1

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected finalize()V
    .locals 3

    .line 330
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 331
    :try_start_1
    iget-boolean v0, p0, Lo/CompatibilityInfo;->c:Z

    if-eqz v0, :cond_0

    .line 332
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 340
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    .line 334
    :cond_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 336
    :try_start_3
    iget-object v0, p0, Lo/CompatibilityInfo;->a:Lo/CompatibilityInfo$Application;

    iget-object v1, p0, Lo/CompatibilityInfo;->e:Lcom/facebook/common/references/SharedReference;

    iget-object v2, p0, Lo/CompatibilityInfo;->d:Ljava/lang/Throwable;

    invoke-interface {v0, v1, v2}, Lo/CompatibilityInfo$Application;->c(Lcom/facebook/common/references/SharedReference;Ljava/lang/Throwable;)V

    .line 338
    invoke-virtual {p0}, Lo/CompatibilityInfo;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 340
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    .line 334
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v0

    .line 340
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method
