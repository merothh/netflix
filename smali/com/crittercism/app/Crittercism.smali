.class public Lcom/crittercism/app/Crittercism;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/crittercism/internal/bl$a;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Crittercism cannot be initialized. "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/crittercism/internal/bl$a;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static a(Ljava/lang/String;)V
    .locals 4

    const-string/jumbo v0, "Crittercism cannot be initialized"

    new-instance v1, Ljava/lang/NullPointerException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " was null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/crittercism/internal/dw;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private static a(Ljava/lang/String;I)V
    .locals 2

    invoke-static {}, Lcom/crittercism/internal/ax;->C()Lcom/crittercism/internal/ax;

    move-result-object v0

    iget-object v1, v0, Lcom/crittercism/internal/ax;->g:Lcom/crittercism/internal/dr;

    invoke-virtual {v1}, Lcom/crittercism/internal/dr;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v0, "setTransactionValue"

    invoke-static {v0}, Lcom/crittercism/app/Crittercism;->h(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-boolean v1, v0, Lcom/crittercism/internal/ax;->b:Z

    if-nez v1, :cond_1

    const-string/jumbo v0, "setTransactionValue"

    invoke-static {v0}, Lcom/crittercism/app/Crittercism;->g(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p0, p1}, Lcom/crittercism/internal/ax;->a(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private static b(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/crittercism/internal/ax;->C()Lcom/crittercism/internal/ax;

    move-result-object v0

    iget-object v1, v0, Lcom/crittercism/internal/ax;->g:Lcom/crittercism/internal/dr;

    invoke-virtual {v1}, Lcom/crittercism/internal/dr;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v0, "beginTransaction"

    invoke-static {v0}, Lcom/crittercism/app/Crittercism;->h(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-boolean v1, v0, Lcom/crittercism/internal/ax;->b:Z

    if-nez v1, :cond_1

    const-string/jumbo v0, "beginTransaction"

    invoke-static {v0}, Lcom/crittercism/app/Crittercism;->g(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p0}, Lcom/crittercism/internal/ax;->c(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static beginTransaction(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    :try_start_0
    invoke-static {p0}, Lcom/crittercism/app/Crittercism;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    throw v0

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/crittercism/internal/dw;->b(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static beginUserflow(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    invoke-static {p0}, Lcom/crittercism/app/Crittercism;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    throw v0

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/crittercism/internal/dw;->b(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static c(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/crittercism/internal/ax;->C()Lcom/crittercism/internal/ax;

    move-result-object v0

    iget-object v1, v0, Lcom/crittercism/internal/ax;->g:Lcom/crittercism/internal/dr;

    invoke-virtual {v1}, Lcom/crittercism/internal/dr;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v0, "endTransaction"

    invoke-static {v0}, Lcom/crittercism/app/Crittercism;->h(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-boolean v1, v0, Lcom/crittercism/internal/ax;->b:Z

    if-nez v1, :cond_1

    const-string/jumbo v0, "endTransaction"

    invoke-static {v0}, Lcom/crittercism/app/Crittercism;->g(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p0}, Lcom/crittercism/internal/ax;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static cancelTransaction(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    :try_start_0
    invoke-static {p0}, Lcom/crittercism/app/Crittercism;->e(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    throw v0

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/crittercism/internal/dw;->b(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static cancelUserflow(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    invoke-static {p0}, Lcom/crittercism/app/Crittercism;->e(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    throw v0

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/crittercism/internal/dw;->b(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static d(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/crittercism/internal/ax;->C()Lcom/crittercism/internal/ax;

    move-result-object v0

    iget-object v1, v0, Lcom/crittercism/internal/ax;->g:Lcom/crittercism/internal/dr;

    invoke-virtual {v1}, Lcom/crittercism/internal/dr;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v0, "failTransaction"

    invoke-static {v0}, Lcom/crittercism/app/Crittercism;->h(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-boolean v1, v0, Lcom/crittercism/internal/ax;->b:Z

    if-nez v1, :cond_1

    const-string/jumbo v0, "failTransaction"

    invoke-static {v0}, Lcom/crittercism/app/Crittercism;->g(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p0}, Lcom/crittercism/internal/ax;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static didCrashOnLastLoad()Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/crittercism/internal/ax;->C()Lcom/crittercism/internal/ax;

    move-result-object v1

    iget-object v2, v1, Lcom/crittercism/internal/ax;->g:Lcom/crittercism/internal/dr;

    invoke-virtual {v2}, Lcom/crittercism/internal/dr;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v1, "didCrashOnLastLoad"

    invoke-static {v1}, Lcom/crittercism/app/Crittercism;->g(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-boolean v2, v1, Lcom/crittercism/internal/ax;->b:Z

    if-nez v2, :cond_2

    const-string/jumbo v1, "didCrashOnLoad"

    invoke-static {v1}, Lcom/crittercism/app/Crittercism;->g(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    throw v0

    :cond_2
    :try_start_1
    iget-object v2, v1, Lcom/crittercism/internal/ax;->g:Lcom/crittercism/internal/dr;

    invoke-virtual {v2}, Lcom/crittercism/internal/dr;->a()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v1, v1, Lcom/crittercism/internal/ax;->f:Landroid/os/ConditionVariable;

    invoke-virtual {v1}, Landroid/os/ConditionVariable;->block()V

    sget-boolean v0, Lcom/crittercism/internal/dp;->a:Z
    :try_end_1
    .catch Ljava/lang/ThreadDeath; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-static {v1}, Lcom/crittercism/internal/dw;->b(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static e(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/crittercism/internal/ax;->C()Lcom/crittercism/internal/ax;

    move-result-object v0

    iget-object v1, v0, Lcom/crittercism/internal/ax;->g:Lcom/crittercism/internal/dr;

    invoke-virtual {v1}, Lcom/crittercism/internal/dr;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v0, "cancelTransaction"

    invoke-static {v0}, Lcom/crittercism/app/Crittercism;->h(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-boolean v1, v0, Lcom/crittercism/internal/ax;->b:Z

    if-nez v1, :cond_1

    const-string/jumbo v0, "cancelTransaction"

    invoke-static {v0}, Lcom/crittercism/app/Crittercism;->g(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p0}, Lcom/crittercism/internal/ax;->f(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static endTransaction(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    :try_start_0
    invoke-static {p0}, Lcom/crittercism/app/Crittercism;->c(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    throw v0

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/crittercism/internal/dw;->b(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static endUserflow(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    invoke-static {p0}, Lcom/crittercism/app/Crittercism;->c(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    throw v0

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/crittercism/internal/dw;->b(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static f(Ljava/lang/String;)I
    .locals 3

    const/4 v0, -0x1

    invoke-static {}, Lcom/crittercism/internal/ax;->C()Lcom/crittercism/internal/ax;

    move-result-object v1

    iget-object v2, v1, Lcom/crittercism/internal/ax;->g:Lcom/crittercism/internal/dr;

    invoke-virtual {v2}, Lcom/crittercism/internal/dr;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v1, "getTransactionValue"

    invoke-static {v1}, Lcom/crittercism/app/Crittercism;->h(Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_0
    iget-boolean v2, v1, Lcom/crittercism/internal/ax;->b:Z

    if-nez v2, :cond_1

    const-string/jumbo v1, "getTransactionValue"

    invoke-static {v1}, Lcom/crittercism/app/Crittercism;->g(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v1, p0}, Lcom/crittercism/internal/ax;->g(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public static failTransaction(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    :try_start_0
    invoke-static {p0}, Lcom/crittercism/app/Crittercism;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    throw v0

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/crittercism/internal/dw;->b(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static failUserflow(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    invoke-static {p0}, Lcom/crittercism/app/Crittercism;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    throw v0

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/crittercism/internal/dw;->b(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static g(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Must initialize Crittercism before calling "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/crittercism/app/Crittercism;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "(). Request is being ignored..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {v0, v1}, Lcom/crittercism/internal/dw;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static generateRateMyAppAlertDialog(Landroid/content/Context;)Landroid/app/AlertDialog;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/crittercism/internal/ax;->C()Lcom/crittercism/internal/ax;

    move-result-object v3

    iget-object v1, v3, Lcom/crittercism/internal/ax;->A:Lcom/crittercism/internal/ds;

    if-eqz v1, :cond_0

    iget-object v1, v3, Lcom/crittercism/internal/ax;->A:Lcom/crittercism/internal/ds;

    invoke-virtual {v1}, Lcom/crittercism/internal/ds;->b()Ljava/lang/String;

    move-result-object v2

    iget-object v1, v3, Lcom/crittercism/internal/ax;->A:Lcom/crittercism/internal/ds;

    invoke-virtual {v1}, Lcom/crittercism/internal/ds;->c()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v3, p0, v1, v2}, Lcom/crittercism/internal/ax;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/app/AlertDialog;
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    throw v0

    :catch_1
    move-exception v1

    invoke-static {v1}, Lcom/crittercism/internal/dw;->b(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_0
    move-object v1, v0

    move-object v2, v0

    goto :goto_0
.end method

.method public static generateRateMyAppAlertDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/app/AlertDialog;
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/crittercism/internal/ax;->C()Lcom/crittercism/internal/ax;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/crittercism/internal/ax;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/app/AlertDialog;
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    throw v0

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/crittercism/internal/dw;->b(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getOptOutStatus()Z
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/crittercism/internal/ax;->C()Lcom/crittercism/internal/ax;

    move-result-object v0

    iget-object v0, v0, Lcom/crittercism/internal/ax;->g:Lcom/crittercism/internal/dr;

    invoke-virtual {v0}, Lcom/crittercism/internal/dr;->a()Z
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    throw v0

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/crittercism/internal/dw;->b(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getTransactionValue(Ljava/lang/String;)I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    :try_start_0
    invoke-static {p0}, Lcom/crittercism/app/Crittercism;->f(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    throw v0

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/crittercism/internal/dw;->b(Ljava/lang/Throwable;)V

    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static getUserflowValue(Ljava/lang/String;)I
    .locals 1

    :try_start_0
    invoke-static {p0}, Lcom/crittercism/app/Crittercism;->f(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    throw v0

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/crittercism/internal/dw;->b(Ljava/lang/Throwable;)V

    const/4 v0, -0x1

    goto :goto_0
.end method

.method private static h(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "User has opted out of Crittercism. "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/crittercism/app/Crittercism;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "() call is being ignored..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/crittercism/internal/dw;->d(Ljava/lang/String;)V

    return-void
.end method

.method public static declared-synchronized initialize(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    const-class v1, Lcom/crittercism/app/Crittercism;

    monitor-enter v1

    :try_start_0
    new-instance v0, Lcom/crittercism/app/CrittercismConfig;

    invoke-direct {v0}, Lcom/crittercism/app/CrittercismConfig;-><init>()V

    invoke-static {p0, p1, v0}, Lcom/crittercism/app/Crittercism;->initialize(Landroid/content/Context;Ljava/lang/String;Lcom/crittercism/app/CrittercismConfig;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized initialize(Landroid/content/Context;Ljava/lang/String;Lcom/crittercism/app/CrittercismConfig;)V
    .locals 6

    const-class v1, Lcom/crittercism/app/Crittercism;

    monitor-enter v1

    if-nez p1, :cond_1

    :try_start_0
    const-class v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/crittercism/app/Crittercism;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/crittercism/internal/bl$a; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    :cond_1
    if-nez p0, :cond_2

    :try_start_1
    const-class v0, Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/crittercism/app/Crittercism;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/crittercism/internal/bl$a; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ThreadDeath; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {v0}, Lcom/crittercism/app/Crittercism;->a(Lcom/crittercism/internal/bl$a;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_2
    if-nez p2, :cond_3

    :try_start_3
    const-class v0, Lcom/crittercism/app/CrittercismConfig;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/crittercism/app/Crittercism;->a(Ljava/lang/String;)V
    :try_end_3
    .catch Lcom/crittercism/internal/bl$a; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/ThreadDeath; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_3
    :try_start_5
    invoke-static {}, Lcom/crittercism/internal/ax;->C()Lcom/crittercism/internal/ax;

    move-result-object v0

    iget-boolean v0, v0, Lcom/crittercism/internal/ax;->b:Z

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    invoke-static {}, Lcom/crittercism/internal/ax;->C()Lcom/crittercism/internal/ax;

    move-result-object v0

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xe

    if-ge v4, v5, :cond_4

    const-string/jumbo v0, "Crittercism is not supported for Android API less than 14 (ICS)."

    invoke-static {v0}, Lcom/crittercism/internal/dw;->b(Ljava/lang/String;)V

    :goto_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long v2, v4, v2

    const-wide/32 v4, 0xf4240

    div-long/2addr v2, v4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Crittercism finished initializing in "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "ms"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/crittercism/internal/dw;->d(Ljava/lang/String;)V
    :try_end_5
    .catch Lcom/crittercism/internal/bl$a; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/ThreadDeath; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    :catch_2
    move-exception v0

    :try_start_6
    invoke-static {v0}, Lcom/crittercism/internal/dw;->b(Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    :cond_4
    :try_start_7
    iput-object p1, v0, Lcom/crittercism/internal/ax;->e:Ljava/lang/String;

    iput-object p0, v0, Lcom/crittercism/internal/ax;->c:Landroid/content/Context;

    new-instance v4, Lcom/crittercism/internal/at;

    invoke-direct {v4, p0}, Lcom/crittercism/internal/at;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lcom/crittercism/internal/ax;->d:Lcom/crittercism/internal/at;

    iput-object p2, v0, Lcom/crittercism/internal/ax;->t:Lcom/crittercism/app/CrittercismConfig;

    iget-object v4, v0, Lcom/crittercism/internal/ax;->g:Lcom/crittercism/internal/dr;

    invoke-virtual {v4}, Lcom/crittercism/internal/dr;->a()Z

    move-result v4

    if-eqz v4, :cond_5

    const-string/jumbo v0, "User opted out. Not initializing Crittercism"

    invoke-static {v0}, Lcom/crittercism/internal/dw;->d(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    invoke-virtual {v0}, Lcom/crittercism/internal/ax;->D()V
    :try_end_7
    .catch Lcom/crittercism/internal/bl$a; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/ThreadDeath; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_1
.end method

.method public static instrumentWebView(Landroid/webkit/WebView;)V
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/crittercism/internal/ax;->C()Lcom/crittercism/internal/ax;

    move-result-object v0

    iget-object v1, v0, Lcom/crittercism/internal/ax;->g:Lcom/crittercism/internal/dr;

    invoke-virtual {v1}, Lcom/crittercism/internal/dr;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v0, "instrumentWebView"

    invoke-static {v0}, Lcom/crittercism/app/Crittercism;->h(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-boolean v1, v0, Lcom/crittercism/internal/ax;->b:Z

    if-nez v1, :cond_1

    const-string/jumbo v0, "instrumentWebView"

    invoke-static {v0}, Lcom/crittercism/app/Crittercism;->g(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    throw v0

    :cond_1
    if-nez p0, :cond_2

    :try_start_1
    const-string/jumbo v0, "WebView was null. Skipping instrumentation."

    invoke-static {v0}, Lcom/crittercism/internal/dw;->b(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/ThreadDeath; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/crittercism/internal/dw;->b(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    :try_start_2
    invoke-virtual {v0, p0}, Lcom/crittercism/internal/ax;->a(Landroid/webkit/WebView;)V
    :try_end_2
    .catch Ljava/lang/ThreadDeath; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0
.end method

.method public static leaveBreadcrumb(Ljava/lang/String;)V
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/crittercism/internal/ax;->C()Lcom/crittercism/internal/ax;

    move-result-object v0

    iget-object v1, v0, Lcom/crittercism/internal/ax;->g:Lcom/crittercism/internal/dr;

    invoke-virtual {v1}, Lcom/crittercism/internal/dr;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v0, "leaveBreadcrumb"

    invoke-static {v0}, Lcom/crittercism/app/Crittercism;->h(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-boolean v1, v0, Lcom/crittercism/internal/ax;->b:Z

    if-nez v1, :cond_1

    const-string/jumbo v0, "leaveBreadcrumb"

    invoke-static {v0}, Lcom/crittercism/app/Crittercism;->g(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    throw v0

    :cond_1
    if-nez p0, :cond_2

    :try_start_1
    const-string/jumbo v0, "Cannot leave null breadcrumb"

    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    invoke-static {v0, v1}, Lcom/crittercism/internal/dw;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catch Ljava/lang/ThreadDeath; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/crittercism/internal/dw;->b(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    :try_start_2
    invoke-virtual {v0, p0}, Lcom/crittercism/internal/ax;->a(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/ThreadDeath; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0
.end method

.method public static logHandledException(Ljava/lang/Throwable;)V
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/crittercism/internal/ax;->C()Lcom/crittercism/internal/ax;

    move-result-object v0

    iget-object v1, v0, Lcom/crittercism/internal/ax;->g:Lcom/crittercism/internal/dr;

    invoke-virtual {v1}, Lcom/crittercism/internal/dr;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v0, "logHandledException"

    invoke-static {v0}, Lcom/crittercism/app/Crittercism;->h(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-boolean v1, v0, Lcom/crittercism/internal/ax;->b:Z

    if-nez v1, :cond_1

    const-string/jumbo v0, "logHandledException"

    invoke-static {v0}, Lcom/crittercism/app/Crittercism;->g(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    throw v0

    :cond_1
    :try_start_1
    invoke-virtual {v0, p0}, Lcom/crittercism/internal/ax;->b(Ljava/lang/Throwable;)V
    :try_end_1
    .catch Ljava/lang/ThreadDeath; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/crittercism/internal/dw;->b(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static logNetworkRequest(Ljava/lang/String;Ljava/net/URL;JJJILjava/lang/Exception;)V
    .locals 16

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v14, v2, p2

    invoke-static {}, Lcom/crittercism/internal/ax;->C()Lcom/crittercism/internal/ax;

    move-result-object v3

    iget-object v2, v3, Lcom/crittercism/internal/ax;->g:Lcom/crittercism/internal/dr;

    invoke-virtual {v2}, Lcom/crittercism/internal/dr;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "logNetworkRequest"

    invoke-static {v2}, Lcom/crittercism/app/Crittercism;->h(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-boolean v2, v3, Lcom/crittercism/internal/ax;->b:Z

    if-nez v2, :cond_1

    const-string/jumbo v2, "logNetworkRequest"

    invoke-static {v2}, Lcom/crittercism/app/Crittercism;->g(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v2

    throw v2

    :cond_1
    if-nez p1, :cond_2

    :try_start_1
    const-string/jumbo v2, "Null URL provided. Endpoint will not be logged"

    invoke-static {v2}, Lcom/crittercism/internal/dw;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/ThreadDeath; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v2

    invoke-static {v2}, Lcom/crittercism/internal/dw;->b(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    :try_start_2
    invoke-virtual/range {p1 .. p1}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v5

    new-instance v13, Lcom/crittercism/internal/ax$1;

    move-object/from16 v0, p9

    invoke-direct {v13, v3, v0}, Lcom/crittercism/internal/ax$1;-><init>(Lcom/crittercism/internal/ax;Ljava/lang/Exception;)V

    move-object/from16 v4, p0

    move-wide/from16 v6, p2

    move-wide/from16 v8, p4

    move-wide/from16 v10, p6

    move/from16 v12, p8

    invoke-virtual/range {v3 .. v15}, Lcom/crittercism/internal/ax;->a(Ljava/lang/String;Ljava/lang/String;JJJILcom/crittercism/internal/ax$b;J)V
    :try_end_2
    .catch Ljava/lang/ThreadDeath; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0
.end method

.method public static performRateMyAppButtonAction(Lcom/crittercism/app/CritterRateMyAppButtons;)V
    .locals 4

    :try_start_0
    invoke-static {}, Lcom/crittercism/internal/ax;->C()Lcom/crittercism/internal/ax;

    move-result-object v0

    iget-object v1, v0, Lcom/crittercism/internal/ax;->g:Lcom/crittercism/internal/dr;

    invoke-virtual {v1}, Lcom/crittercism/internal/dr;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v0, "performRateMyAppButtonAction"

    invoke-static {v0}, Lcom/crittercism/app/Crittercism;->h(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-boolean v1, v0, Lcom/crittercism/internal/ax;->b:Z

    if-nez v1, :cond_1

    const-string/jumbo v0, "preformRateMyAppButtonAction"

    invoke-static {v0}, Lcom/crittercism/app/Crittercism;->g(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    throw v0

    :cond_1
    :try_start_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x5

    if-ge v1, v2, :cond_2

    const-string/jumbo v0, "Rate my app not supported below api level 5"

    invoke-static {v0}, Lcom/crittercism/internal/dw;->b(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/ThreadDeath; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/crittercism/internal/dw;->b(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    :try_start_2
    invoke-virtual {v0}, Lcom/crittercism/internal/ax;->F()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    const-string/jumbo v0, "Cannot create proper URI to open app market.  Returning null."

    invoke-static {v0}, Lcom/crittercism/internal/dw;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    sget-object v2, Lcom/crittercism/internal/ax$5;->a:[I

    invoke-virtual {p0}, Lcom/crittercism/app/CritterRateMyAppButtons;->ordinal()I

    move-result v3

    aget v2, v2, v3
    :try_end_2
    .catch Ljava/lang/ThreadDeath; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    :try_start_3
    invoke-virtual {v0, v1}, Lcom/crittercism/internal/ax;->b(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/ThreadDeath; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_2
    move-exception v0

    :try_start_4
    const-string/jumbo v1, "performRateMyAppButtonAction(CritterRateMyAppButtons.YES) failed.  Email support@crittercism.com."

    invoke-static {v1}, Lcom/crittercism/internal/dw;->b(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/crittercism/internal/dw;->a(Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/lang/ThreadDeath; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    :pswitch_1
    :try_start_5
    invoke-virtual {v0}, Lcom/crittercism/internal/ax;->E()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/ThreadDeath; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0

    :catch_3
    move-exception v0

    :try_start_6
    const-string/jumbo v0, "performRateMyAppButtonAction(CritterRateMyAppButtons.NO) failed.  Email support@crittercism.com."

    invoke-static {v0}, Lcom/crittercism/internal/dw;->b(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/ThreadDeath; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static sendAppLoadData()V
    .locals 6

    :try_start_0
    invoke-static {}, Lcom/crittercism/internal/ax;->C()Lcom/crittercism/internal/ax;

    move-result-object v0

    iget-object v1, v0, Lcom/crittercism/internal/ax;->g:Lcom/crittercism/internal/dr;

    invoke-virtual {v1}, Lcom/crittercism/internal/dr;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v0, "sendAppLoadData"

    invoke-static {v0}, Lcom/crittercism/app/Crittercism;->h(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v1, v0, Lcom/crittercism/internal/ax;->b:Z

    if-nez v1, :cond_2

    const-string/jumbo v0, "sendAppLoadData"

    invoke-static {v0}, Lcom/crittercism/app/Crittercism;->g(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    throw v0

    :cond_2
    :try_start_1
    iget-object v1, v0, Lcom/crittercism/internal/ax;->u:Lcom/crittercism/internal/az;

    invoke-virtual {v1}, Lcom/crittercism/app/CrittercismConfig;->delaySendingAppLoad()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v0, v0, Lcom/crittercism/internal/ax;->C:Lcom/crittercism/internal/ap;

    iget-object v1, v0, Lcom/crittercism/internal/ap;->c:Lcom/crittercism/internal/az;

    invoke-virtual {v1}, Lcom/crittercism/internal/az;->delaySendingAppLoad()Z

    move-result v1

    if-nez v1, :cond_3

    const-string/jumbo v0, "CrittercismConfig instance not set to delay sending new app loads (or sendAppLoadData already called)."

    invoke-static {v0}, Lcom/crittercism/internal/dw;->b(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/ThreadDeath; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/crittercism/internal/dw;->b(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_3
    :try_start_2
    iget-object v1, v0, Lcom/crittercism/internal/ap;->c:Lcom/crittercism/internal/az;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/crittercism/internal/az;->setDelaySendingAppLoad(Z)V

    invoke-virtual {v0}, Lcom/crittercism/internal/ap;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/crittercism/internal/ap;->f:Lcom/crittercism/internal/ax;

    iget-object v2, v0, Lcom/crittercism/internal/ap;->e:Landroid/content/Context;

    iget-object v3, v0, Lcom/crittercism/internal/ap;->c:Lcom/crittercism/internal/az;

    iget-object v4, v0, Lcom/crittercism/internal/ap;->f:Lcom/crittercism/internal/ax;

    iget-object v5, v0, Lcom/crittercism/internal/ap;->f:Lcom/crittercism/internal/ax;

    invoke-virtual/range {v0 .. v5}, Lcom/crittercism/internal/ap;->a(Lcom/crittercism/internal/au;Landroid/content/Context;Lcom/crittercism/internal/az;Lcom/crittercism/internal/ar;Lcom/crittercism/internal/ax;)Ljava/lang/Runnable;

    move-result-object v1

    iget-object v0, v0, Lcom/crittercism/internal/ap;->f:Lcom/crittercism/internal/ax;

    invoke-virtual {v0, v1}, Lcom/crittercism/internal/ax;->a(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_4
    const-string/jumbo v0, "sendAppLoadData() will only send data to Crittercism if \"delaySendingAppLoad\" is set to true in the configuration settings you include in the init call."

    invoke-static {v0}, Lcom/crittercism/internal/dw;->c(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/ThreadDeath; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0
.end method

.method public static setLoggingLevel(Lcom/crittercism/app/Crittercism$LoggingLevel;)V
    .locals 1

    :try_start_0
    invoke-static {p0}, Lcom/crittercism/internal/dw;->a(Lcom/crittercism/app/Crittercism$LoggingLevel;)V
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    throw v0

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/crittercism/internal/dw;->b(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static setMetadata(Lorg/json/JSONObject;)V
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/crittercism/internal/ax;->C()Lcom/crittercism/internal/ax;

    move-result-object v0

    iget-object v1, v0, Lcom/crittercism/internal/ax;->g:Lcom/crittercism/internal/dr;

    invoke-virtual {v1}, Lcom/crittercism/internal/dr;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v0, "setMetadata"

    invoke-static {v0}, Lcom/crittercism/app/Crittercism;->h(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-boolean v1, v0, Lcom/crittercism/internal/ax;->b:Z

    if-nez v1, :cond_1

    const-string/jumbo v0, "setMetadata"

    invoke-static {v0}, Lcom/crittercism/app/Crittercism;->g(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    throw v0

    :cond_1
    :try_start_1
    invoke-virtual {v0, p0}, Lcom/crittercism/internal/ax;->a(Lorg/json/JSONObject;)V
    :try_end_1
    .catch Ljava/lang/ThreadDeath; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/crittercism/internal/dw;->b(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static setOptOutStatus(Z)V
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/crittercism/internal/ax;->C()Lcom/crittercism/internal/ax;

    move-result-object v0

    iget-object v1, v0, Lcom/crittercism/internal/ax;->g:Lcom/crittercism/internal/dr;

    invoke-static {}, Lcom/crittercism/internal/ax;->C()Lcom/crittercism/internal/ax;

    move-result-object v0

    invoke-interface {v0}, Lcom/crittercism/internal/av;->B()Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "Crittercism has not been initialized with a context and cannot save opt out status to disk. Ignoring request to set opt out status..."

    invoke-static {v0}, Lcom/crittercism/internal/dw;->b(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    monitor-enter v1
    :try_end_0
    .catch Lcom/crittercism/internal/bl$a; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    iget-boolean v0, v1, Lcom/crittercism/internal/dr;->a:Z

    if-eq v0, p0, :cond_2

    iget-boolean v0, v1, Lcom/crittercism/internal/dr;->b:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "Opt out status can only be changed once per session. setOptOutStatus() call is being ignored..."

    invoke-static {v0}, Lcom/crittercism/internal/dw;->b(Ljava/lang/String;)V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Lcom/crittercism/internal/bl$a; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/ThreadDeath; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/crittercism/app/Crittercism;->a(Lcom/crittercism/internal/bl$a;)V

    goto :goto_0

    :cond_1
    :try_start_3
    invoke-virtual {v1, p0}, Lcom/crittercism/internal/dr;->a(Z)Z

    move-result v0

    if-eqz v0, :cond_4

    iput-boolean p0, v1, Lcom/crittercism/internal/dr;->a:Z

    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/crittercism/internal/dr;->b:Z

    invoke-static {}, Lcom/crittercism/internal/ax;->C()Lcom/crittercism/internal/ax;

    move-result-object v0

    if-eqz p0, :cond_3

    const-string/jumbo v0, "User opted out. Not initializing Crittercism"

    invoke-static {v0}, Lcom/crittercism/internal/dw;->d(Ljava/lang/String;)V

    :cond_2
    :goto_1
    monitor-exit v1

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Lcom/crittercism/internal/ax;->D()V

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/crittercism/internal/dr;->b:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catch_1
    move-exception v0

    throw v0

    :catch_2
    move-exception v0

    invoke-static {v0}, Lcom/crittercism/internal/dw;->b(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static setTransactionValue(Ljava/lang/String;I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    :try_start_0
    invoke-static {p0, p1}, Lcom/crittercism/app/Crittercism;->a(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    throw v0

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/crittercism/internal/dw;->b(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static setUserflowValue(Ljava/lang/String;I)V
    .locals 1

    :try_start_0
    invoke-static {p0, p1}, Lcom/crittercism/app/Crittercism;->a(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    throw v0

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/crittercism/internal/dw;->b(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static setUsername(Ljava/lang/String;)V
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/crittercism/internal/ax;->C()Lcom/crittercism/internal/ax;

    move-result-object v0

    iget-object v1, v0, Lcom/crittercism/internal/ax;->g:Lcom/crittercism/internal/dr;

    invoke-virtual {v1}, Lcom/crittercism/internal/dr;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v0, "setUsername"

    invoke-static {v0}, Lcom/crittercism/app/Crittercism;->h(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-boolean v1, v0, Lcom/crittercism/internal/ax;->b:Z

    if-nez v1, :cond_1

    const-string/jumbo v0, "setUsername"

    invoke-static {v0}, Lcom/crittercism/app/Crittercism;->g(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    throw v0

    :cond_1
    if-nez p0, :cond_2

    :try_start_1
    const-string/jumbo v0, "Crittercism.setUsername() given invalid parameter: null"

    invoke-static {v0}, Lcom/crittercism/internal/dw;->b(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/ThreadDeath; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/crittercism/internal/dw;->b(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    :try_start_2
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
    :try_end_2
    .catch Ljava/lang/ThreadDeath; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    :try_start_3
    const-string/jumbo v2, "username"

    invoke-virtual {v1, v2, p0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/ThreadDeath; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    :try_start_4
    invoke-virtual {v0, v1}, Lcom/crittercism/internal/ax;->a(Lorg/json/JSONObject;)V

    goto :goto_0

    :catch_2
    move-exception v0

    const-string/jumbo v1, "Crittercism.setUsername()"

    invoke-static {v1, v0}, Lcom/crittercism/internal/dw;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/lang/ThreadDeath; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0
.end method

.method public static updateLocation(Landroid/location/Location;)V
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/crittercism/internal/ax;->C()Lcom/crittercism/internal/ax;

    move-result-object v0

    iget-object v1, v0, Lcom/crittercism/internal/ax;->g:Lcom/crittercism/internal/dr;

    invoke-virtual {v1}, Lcom/crittercism/internal/dr;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v0, "updateLocation"

    invoke-static {v0}, Lcom/crittercism/app/Crittercism;->h(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, v0, Lcom/crittercism/internal/ax;->b:Z

    if-nez v0, :cond_1

    const-string/jumbo v0, "updateLocation"

    invoke-static {v0}, Lcom/crittercism/app/Crittercism;->g(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    throw v0

    :cond_1
    if-nez p0, :cond_2

    :try_start_1
    const-string/jumbo v0, "Cannot leave null location"

    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    invoke-static {v0, v1}, Lcom/crittercism/internal/dw;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catch Ljava/lang/ThreadDeath; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/crittercism/internal/dw;->b(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    :try_start_2
    invoke-static {p0}, Lcom/crittercism/internal/ba;->a(Landroid/location/Location;)V
    :try_end_2
    .catch Ljava/lang/ThreadDeath; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0
.end method
