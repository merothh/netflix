.class final Lcom/crittercism/internal/e$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/crittercism/internal/e;

.field private b:Lcom/crittercism/internal/c;


# direct methods
.method private constructor <init>(Lcom/crittercism/internal/e;Lcom/crittercism/internal/c;)V
    .locals 0

    iput-object p1, p0, Lcom/crittercism/internal/e$a;->a:Lcom/crittercism/internal/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/crittercism/internal/e$a;->b:Lcom/crittercism/internal/c;

    return-void
.end method

.method synthetic constructor <init>(Lcom/crittercism/internal/e;Lcom/crittercism/internal/c;B)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/crittercism/internal/e$a;-><init>(Lcom/crittercism/internal/e;Lcom/crittercism/internal/c;)V

    return-void
.end method

.method private a(Lcom/crittercism/internal/c;)Z
    .locals 4

    invoke-virtual {p1}, Lcom/crittercism/internal/c;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/crittercism/internal/e$a;->a:Lcom/crittercism/internal/e;

    iget-object v2, v0, Lcom/crittercism/internal/e;->b:Ljava/util/Set;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lcom/crittercism/internal/e$a;->a:Lcom/crittercism/internal/e;

    iget-object v0, v0, Lcom/crittercism/internal/e;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    monitor-exit v2

    :goto_0
    return v0

    :cond_1
    monitor-exit v2

    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private a(Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lcom/crittercism/internal/e$a;->a:Lcom/crittercism/internal/e;

    iget-object v1, v0, Lcom/crittercism/internal/e;->c:Ljava/util/Set;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/crittercism/internal/e$a;->a:Lcom/crittercism/internal/e;

    iget-object v0, v0, Lcom/crittercism/internal/e;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    monitor-exit v1

    :goto_0
    return v0

    :cond_1
    monitor-exit v1

    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/crittercism/internal/e$a;->b:Lcom/crittercism/internal/c;

    invoke-direct {p0, v0}, Lcom/crittercism/internal/e$a;->a(Lcom/crittercism/internal/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/crittercism/internal/e$a;->b:Lcom/crittercism/internal/c;

    invoke-virtual {v0}, Lcom/crittercism/internal/c;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/crittercism/internal/e$a;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    iget-object v2, p0, Lcom/crittercism/internal/e$a;->b:Lcom/crittercism/internal/c;

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/crittercism/internal/c;->a(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/crittercism/internal/e$a;->a:Lcom/crittercism/internal/e;

    iget-object v1, v0, Lcom/crittercism/internal/e;->a:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/crittercism/internal/e$a;->a:Lcom/crittercism/internal/e;

    iget-object v0, v0, Lcom/crittercism/internal/e;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/crittercism/internal/f;

    iget-object v3, p0, Lcom/crittercism/internal/e$a;->b:Lcom/crittercism/internal/c;

    invoke-interface {v0, v3}, Lcom/crittercism/internal/f;->a(Lcom/crittercism/internal/c;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method
