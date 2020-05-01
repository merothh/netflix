.class final Lcom/crittercism/internal/ax$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    invoke-direct {p0}, Lcom/crittercism/internal/ax$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/crittercism/internal/ax;->a:Lcom/crittercism/internal/ax;

    iget-object v1, v1, Lcom/crittercism/internal/ax;->v:Lcom/crittercism/internal/e;

    sget-object v2, Lcom/crittercism/internal/ax;->a:Lcom/crittercism/internal/ax;

    iget-object v2, v2, Lcom/crittercism/internal/ax;->u:Lcom/crittercism/internal/az;

    invoke-virtual {v2}, Lcom/crittercism/internal/az;->a()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/crittercism/internal/e;->a(Ljava/util/List;)V

    sget-object v1, Lcom/crittercism/internal/ax;->a:Lcom/crittercism/internal/ax;

    iget-object v1, v1, Lcom/crittercism/internal/ax;->v:Lcom/crittercism/internal/e;

    sget-object v2, Lcom/crittercism/internal/ax;->a:Lcom/crittercism/internal/ax;

    iget-object v2, v2, Lcom/crittercism/internal/ax;->u:Lcom/crittercism/internal/az;

    invoke-virtual {v2}, Lcom/crittercism/internal/az;->getPreserveQueryStringPatterns()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/crittercism/internal/e;->b(Ljava/util/List;)V

    new-instance v1, Ljava/net/URL;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/crittercism/internal/ax;->a:Lcom/crittercism/internal/ax;

    iget-object v3, v3, Lcom/crittercism/internal/ax;->u:Lcom/crittercism/internal/az;

    iget-object v3, v3, Lcom/crittercism/internal/az;->c:Lcom/crittercism/internal/bl;

    iget-object v3, v3, Lcom/crittercism/internal/bl;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/api/apm/network"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/crittercism/internal/ax;->a:Lcom/crittercism/internal/ax;

    new-instance v3, Lcom/crittercism/internal/g;

    sget-object v4, Lcom/crittercism/internal/ax;->a:Lcom/crittercism/internal/ax;

    invoke-direct {v3, v4, v1}, Lcom/crittercism/internal/g;-><init>(Lcom/crittercism/internal/ar;Ljava/net/URL;)V

    iput-object v3, v2, Lcom/crittercism/internal/ax;->p:Lcom/crittercism/internal/g;

    sget-object v1, Lcom/crittercism/internal/ax;->a:Lcom/crittercism/internal/ax;

    iget-object v1, v1, Lcom/crittercism/internal/ax;->v:Lcom/crittercism/internal/e;

    sget-object v2, Lcom/crittercism/internal/ax;->a:Lcom/crittercism/internal/ax;

    iget-object v2, v2, Lcom/crittercism/internal/ax;->p:Lcom/crittercism/internal/g;

    invoke-virtual {v1, v2}, Lcom/crittercism/internal/e;->a(Lcom/crittercism/internal/f;)V

    sget-object v1, Lcom/crittercism/internal/ax;->a:Lcom/crittercism/internal/ax;

    iget-object v1, v1, Lcom/crittercism/internal/ax;->v:Lcom/crittercism/internal/e;

    sget-object v2, Lcom/crittercism/internal/ax;->a:Lcom/crittercism/internal/ax;

    invoke-virtual {v1, v2}, Lcom/crittercism/internal/e;->a(Lcom/crittercism/internal/f;)V

    new-instance v1, Lcom/crittercism/internal/dx;

    sget-object v2, Lcom/crittercism/internal/ax;->a:Lcom/crittercism/internal/ax;

    iget-object v2, v2, Lcom/crittercism/internal/ax;->p:Lcom/crittercism/internal/g;

    const-string/jumbo v3, "OPTMZ"

    invoke-direct {v1, v2, v3}, Lcom/crittercism/internal/dx;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    sget-object v1, Lcom/crittercism/internal/ax;->a:Lcom/crittercism/internal/ax;

    iget-object v1, v1, Lcom/crittercism/internal/ax;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/crittercism/internal/h;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/crittercism/internal/ax;->a:Lcom/crittercism/internal/ax;

    iget-object v1, v1, Lcom/crittercism/internal/ax;->u:Lcom/crittercism/internal/az;

    invoke-virtual {v1}, Lcom/crittercism/internal/az;->isServiceMonitoringEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v2, Lcom/crittercism/internal/d;

    sget-object v1, Lcom/crittercism/internal/ax;->a:Lcom/crittercism/internal/ax;

    iget-object v1, v1, Lcom/crittercism/internal/ax;->c:Landroid/content/Context;

    invoke-direct {v2, v1}, Lcom/crittercism/internal/d;-><init>(Landroid/content/Context;)V

    sget-object v1, Lcom/crittercism/internal/ax;->a:Lcom/crittercism/internal/ax;

    iget-object v3, v1, Lcom/crittercism/internal/ax;->v:Lcom/crittercism/internal/e;

    invoke-static {v3, v2}, Lcom/crittercism/internal/y;->a(Lcom/crittercism/internal/e;Lcom/crittercism/internal/d;)Z

    move-result v4

    const-string/jumbo v1, "non-SSL"

    invoke-static {v4, v1}, Lcom/crittercism/internal/i;->a(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/crittercism/internal/dw;->d(Ljava/lang/String;)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x13

    if-lt v1, v5, :cond_4

    invoke-static {v3, v2}, Lcom/crittercism/internal/r;->a(Lcom/crittercism/internal/e;Lcom/crittercism/internal/d;)Z

    move-result v1

    :goto_1
    const-string/jumbo v5, "SSL"

    invoke-static {v1, v5}, Lcom/crittercism/internal/i;->a(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/crittercism/internal/dw;->d(Ljava/lang/String;)V

    if-eqz v1, :cond_2

    invoke-static {v3, v2}, Lcom/crittercism/internal/n;->a(Lcom/crittercism/internal/e;Lcom/crittercism/internal/d;)Z

    move-result v0

    const-string/jumbo v2, "provider"

    invoke-static {v0, v2}, Lcom/crittercism/internal/i;->a(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/crittercism/internal/dw;->d(Ljava/lang/String;)V

    :cond_2
    if-nez v4, :cond_3

    if-nez v1, :cond_3

    if-eqz v0, :cond_0

    :cond_3
    const-string/jumbo v0, "installed service monitoring"

    invoke-static {v0}, Lcom/crittercism/internal/dw;->c(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Exception in installApm: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/crittercism/internal/dw;->d(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/crittercism/internal/dw;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_4
    :try_start_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xe

    if-lt v1, v5, :cond_5

    invoke-static {v3, v2}, Lcom/crittercism/internal/q;->a(Lcom/crittercism/internal/e;Lcom/crittercism/internal/d;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    goto :goto_1

    :cond_5
    move v1, v0

    goto :goto_1
.end method
