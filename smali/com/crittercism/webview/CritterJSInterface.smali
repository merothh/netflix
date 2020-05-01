.class public Lcom/crittercism/webview/CritterJSInterface;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/crittercism/internal/ax;


# direct methods
.method public constructor <init>(Lcom/crittercism/internal/ax;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    const-string/jumbo v0, "CritterJSInterface"

    invoke-static {v0}, Lcom/crittercism/webview/CritterJSInterface;->a(Ljava/lang/String;)V

    :cond_0
    iput-object p1, p0, Lcom/crittercism/webview/CritterJSInterface;->a:Lcom/crittercism/internal/ax;

    return-void
.end method

.method private static a(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/crittercism/webview/CritterJSInterface;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "() badly initialized: null instance."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    invoke-static {v0, v1}, Lcom/crittercism/internal/dw;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "negative long integer: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/crittercism/webview/CritterJSInterface;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    const/4 v1, 0x0

    if-nez p0, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-class v3, Lcom/crittercism/webview/CritterJSInterface;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "() given invalid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "parameter: null string or invalid javascript type. Request is being ignored..."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    invoke-static {v0, v2}, Lcom/crittercism/internal/dw;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v1

    :goto_1
    return v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "empty string"

    invoke-static {p1, p2, v0}, Lcom/crittercism/webview/CritterJSInterface;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    goto :goto_1
.end method

.method private static b(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "User has opted out of Crittercism. "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/crittercism/webview/CritterJSInterface;

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

.method private static b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/crittercism/webview/CritterJSInterface;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "() given invalid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "parameter: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ". Request is being ignored."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    invoke-static {v0, v1}, Lcom/crittercism/internal/dw;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method


# virtual methods
.method public beginTransaction(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/crittercism/webview/CritterJSInterface;->a:Lcom/crittercism/internal/ax;

    if-nez v0, :cond_1

    const-string/jumbo v0, "beginTransaction"

    invoke-static {v0}, Lcom/crittercism/webview/CritterJSInterface;->a(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/crittercism/webview/CritterJSInterface;->a:Lcom/crittercism/internal/ax;

    iget-object v0, v0, Lcom/crittercism/internal/ax;->g:Lcom/crittercism/internal/dr;

    invoke-virtual {v0}, Lcom/crittercism/internal/dr;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "beginTransaction"

    invoke-static {v0}, Lcom/crittercism/webview/CritterJSInterface;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    throw v0

    :cond_2
    :try_start_1
    const-string/jumbo v0, "beginTransaction"

    const-string/jumbo v1, "name"

    invoke-static {p1, v0, v1}, Lcom/crittercism/webview/CritterJSInterface;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/crittercism/webview/CritterJSInterface;->a:Lcom/crittercism/internal/ax;

    invoke-virtual {v0, p1}, Lcom/crittercism/internal/ax;->c(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/ThreadDeath; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/crittercism/internal/dw;->b(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public cancelTransaction(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/crittercism/webview/CritterJSInterface;->a:Lcom/crittercism/internal/ax;

    if-nez v0, :cond_1

    const-string/jumbo v0, "cancelTransaction"

    invoke-static {v0}, Lcom/crittercism/webview/CritterJSInterface;->a(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/crittercism/webview/CritterJSInterface;->a:Lcom/crittercism/internal/ax;

    iget-object v0, v0, Lcom/crittercism/internal/ax;->g:Lcom/crittercism/internal/dr;

    invoke-virtual {v0}, Lcom/crittercism/internal/dr;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "cancelTransaction"

    invoke-static {v0}, Lcom/crittercism/webview/CritterJSInterface;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    throw v0

    :cond_2
    :try_start_1
    const-string/jumbo v0, "cancelTransaction"

    const-string/jumbo v1, "name"

    invoke-static {p1, v0, v1}, Lcom/crittercism/webview/CritterJSInterface;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/crittercism/webview/CritterJSInterface;->a:Lcom/crittercism/internal/ax;

    invoke-virtual {v0, p1}, Lcom/crittercism/internal/ax;->f(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/ThreadDeath; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/crittercism/internal/dw;->b(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public endTransaction(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/crittercism/webview/CritterJSInterface;->a:Lcom/crittercism/internal/ax;

    if-nez v0, :cond_1

    const-string/jumbo v0, "endTransaction"

    invoke-static {v0}, Lcom/crittercism/webview/CritterJSInterface;->a(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/crittercism/webview/CritterJSInterface;->a:Lcom/crittercism/internal/ax;

    iget-object v0, v0, Lcom/crittercism/internal/ax;->g:Lcom/crittercism/internal/dr;

    invoke-virtual {v0}, Lcom/crittercism/internal/dr;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "endTransaction"

    invoke-static {v0}, Lcom/crittercism/webview/CritterJSInterface;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    throw v0

    :cond_2
    :try_start_1
    const-string/jumbo v0, "endTransaction"

    const-string/jumbo v1, "name"

    invoke-static {p1, v0, v1}, Lcom/crittercism/webview/CritterJSInterface;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/crittercism/webview/CritterJSInterface;->a:Lcom/crittercism/internal/ax;

    invoke-virtual {v0, p1}, Lcom/crittercism/internal/ax;->d(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/ThreadDeath; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/crittercism/internal/dw;->b(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public failTransaction(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/crittercism/webview/CritterJSInterface;->a:Lcom/crittercism/internal/ax;

    if-nez v0, :cond_1

    const-string/jumbo v0, "failTransaction"

    invoke-static {v0}, Lcom/crittercism/webview/CritterJSInterface;->a(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/crittercism/webview/CritterJSInterface;->a:Lcom/crittercism/internal/ax;

    iget-object v0, v0, Lcom/crittercism/internal/ax;->g:Lcom/crittercism/internal/dr;

    invoke-virtual {v0}, Lcom/crittercism/internal/dr;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "failTransaction"

    invoke-static {v0}, Lcom/crittercism/webview/CritterJSInterface;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    throw v0

    :cond_2
    :try_start_1
    const-string/jumbo v0, "failTransaction"

    const-string/jumbo v1, "name"

    invoke-static {p1, v0, v1}, Lcom/crittercism/webview/CritterJSInterface;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/crittercism/webview/CritterJSInterface;->a:Lcom/crittercism/internal/ax;

    invoke-virtual {v0, p1}, Lcom/crittercism/internal/ax;->e(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/ThreadDeath; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/crittercism/internal/dw;->b(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getTransactionValue(Ljava/lang/String;)I
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const/4 v0, -0x1

    :try_start_0
    iget-object v1, p0, Lcom/crittercism/webview/CritterJSInterface;->a:Lcom/crittercism/internal/ax;

    if-nez v1, :cond_1

    const-string/jumbo v1, "getTransactionValue"

    invoke-static {v1}, Lcom/crittercism/webview/CritterJSInterface;->a(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/crittercism/webview/CritterJSInterface;->a:Lcom/crittercism/internal/ax;

    iget-object v1, v1, Lcom/crittercism/internal/ax;->g:Lcom/crittercism/internal/dr;

    invoke-virtual {v1}, Lcom/crittercism/internal/dr;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "getTransactionValue"

    invoke-static {v1}, Lcom/crittercism/webview/CritterJSInterface;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    throw v0

    :cond_2
    :try_start_1
    const-string/jumbo v1, "getTransactionValue"

    const-string/jumbo v2, "transactionName"

    invoke-static {p1, v1, v2}, Lcom/crittercism/webview/CritterJSInterface;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/crittercism/webview/CritterJSInterface;->a:Lcom/crittercism/internal/ax;

    invoke-virtual {v1, p1}, Lcom/crittercism/internal/ax;->g(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/ThreadDeath; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-static {v1}, Lcom/crittercism/internal/dw;->b(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public leaveBreadcrumb(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/crittercism/webview/CritterJSInterface;->a:Lcom/crittercism/internal/ax;

    if-nez v0, :cond_1

    const-string/jumbo v0, "leaveBreadcrumb"

    invoke-static {v0}, Lcom/crittercism/webview/CritterJSInterface;->a(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/crittercism/webview/CritterJSInterface;->a:Lcom/crittercism/internal/ax;

    iget-object v0, v0, Lcom/crittercism/internal/ax;->g:Lcom/crittercism/internal/dr;

    invoke-virtual {v0}, Lcom/crittercism/internal/dr;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "leaveBreadcrumb"

    invoke-static {v0}, Lcom/crittercism/webview/CritterJSInterface;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    throw v0

    :cond_2
    :try_start_1
    const-string/jumbo v0, "leaveBreadcrumb"

    const-string/jumbo v1, "breadcrumb"

    invoke-static {p1, v0, v1}, Lcom/crittercism/webview/CritterJSInterface;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/crittercism/webview/CritterJSInterface;->a:Lcom/crittercism/internal/ax;

    invoke-virtual {v0, p1}, Lcom/crittercism/internal/ax;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/ThreadDeath; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/crittercism/internal/dw;->b(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public logError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const/4 v4, 0x1

    :try_start_0
    iget-object v0, p0, Lcom/crittercism/webview/CritterJSInterface;->a:Lcom/crittercism/internal/ax;

    if-nez v0, :cond_1

    const-string/jumbo v0, "logError"

    invoke-static {v0}, Lcom/crittercism/webview/CritterJSInterface;->a(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, ""

    const-string/jumbo v0, ""

    const-string/jumbo v2, ":"

    const/4 v3, 0x2

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    if-lez v3, :cond_2

    const/4 v1, 0x0

    aget-object v1, v2, v1

    const-string/jumbo v3, "Uncaught "

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_4

    const/4 v1, 0x0

    aget-object v1, v2, v1

    :goto_1
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    :cond_2
    array-length v3, v2

    if-le v3, v4, :cond_3

    const/4 v0, 0x1

    aget-object v0, v2, v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :cond_3
    new-instance v2, Lcom/crittercism/internal/co;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v0, p2, v3}, Lcom/crittercism/internal/co;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/crittercism/webview/CritterJSInterface;->a:Lcom/crittercism/internal/ax;

    invoke-virtual {v0, v2}, Lcom/crittercism/internal/ax;->b(Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    throw v0

    :cond_4
    const/4 v1, 0x0

    :try_start_1
    aget-object v1, v2, v1

    const/16 v3, 0x9

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/ThreadDeath; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/crittercism/internal/dw;->b(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public logHandledException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/crittercism/webview/CritterJSInterface;->a:Lcom/crittercism/internal/ax;

    if-nez v0, :cond_1

    const-string/jumbo v0, "logHandledException"

    invoke-static {v0}, Lcom/crittercism/webview/CritterJSInterface;->a(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/crittercism/webview/CritterJSInterface;->a:Lcom/crittercism/internal/ax;

    iget-object v0, v0, Lcom/crittercism/internal/ax;->g:Lcom/crittercism/internal/dr;

    invoke-virtual {v0}, Lcom/crittercism/internal/dr;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "logHandledException"

    invoke-static {v0}, Lcom/crittercism/webview/CritterJSInterface;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    throw v0

    :cond_2
    :try_start_1
    const-string/jumbo v0, "logHandledException"

    const-string/jumbo v1, "name"

    invoke-static {p1, v0, v1}, Lcom/crittercism/webview/CritterJSInterface;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "logHandledException"

    const-string/jumbo v1, "reason"

    invoke-static {p2, v0, v1}, Lcom/crittercism/webview/CritterJSInterface;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "logHandledException"

    const-string/jumbo v1, "stack"

    invoke-static {p3, v0, v1}, Lcom/crittercism/webview/CritterJSInterface;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/crittercism/internal/co;

    const/4 v1, 0x1

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/crittercism/internal/co;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/crittercism/webview/CritterJSInterface;->a:Lcom/crittercism/internal/ax;

    invoke-virtual {v1, v0}, Lcom/crittercism/internal/ax;->b(Ljava/lang/Throwable;)V
    :try_end_1
    .catch Ljava/lang/ThreadDeath; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/crittercism/internal/dw;->b(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public logNetworkRequest(Ljava/lang/String;Ljava/lang/String;JJJII)V
    .locals 17
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/crittercism/webview/CritterJSInterface;->a:Lcom/crittercism/internal/ax;

    if-nez v2, :cond_1

    const-string/jumbo v2, "logNetworkRequest"

    invoke-static {v2}, Lcom/crittercism/webview/CritterJSInterface;->a(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/crittercism/webview/CritterJSInterface;->a:Lcom/crittercism/internal/ax;

    iget-object v2, v2, Lcom/crittercism/internal/ax;->g:Lcom/crittercism/internal/dr;

    invoke-virtual {v2}, Lcom/crittercism/internal/dr;->a()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v2, "logNetworkRequest"

    invoke-static {v2}, Lcom/crittercism/webview/CritterJSInterface;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v2

    throw v2

    :cond_2
    :try_start_1
    const-string/jumbo v2, "logNetworkRequest"

    const-string/jumbo v3, "httpMethod"

    move-object/from16 v0, p1

    invoke-static {v0, v2, v3}, Lcom/crittercism/webview/CritterJSInterface;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_0

    const-string/jumbo v2, "logNetworkRequest"

    const-string/jumbo v3, "url"

    move-object/from16 v0, p2

    invoke-static {v0, v2, v3}, Lcom/crittercism/webview/CritterJSInterface;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-wide/16 v2, 0x0

    cmp-long v2, p5, v2

    if-gez v2, :cond_6

    const-string/jumbo v2, "logNetworkRequest"

    const-string/jumbo v3, "bytesRead"

    move-wide/from16 v0, p5

    invoke-static {v2, v3, v0, v1}, Lcom/crittercism/webview/CritterJSInterface;->a(Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_1
    .catch Ljava/lang/ThreadDeath; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v2

    invoke-static {v2}, Lcom/crittercism/internal/dw;->b(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_3
    const/16 v2, 0x9

    :try_start_2
    new-array v3, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v4, "GET"

    aput-object v4, v3, v2

    const/4 v2, 0x1

    const-string/jumbo v4, "HEAD"

    aput-object v4, v3, v2

    const/4 v2, 0x2

    const-string/jumbo v4, "POST"

    aput-object v4, v3, v2

    const/4 v2, 0x3

    const-string/jumbo v4, "PUT"

    aput-object v4, v3, v2

    const/4 v2, 0x4

    const-string/jumbo v4, "DELETE"

    aput-object v4, v3, v2

    const/4 v2, 0x5

    const-string/jumbo v4, "TRACE"

    aput-object v4, v3, v2

    const/4 v2, 0x6

    const-string/jumbo v4, "CONNECT"

    aput-object v4, v3, v2

    const/4 v2, 0x7

    const-string/jumbo v4, "OPTIONS"

    aput-object v4, v3, v2

    const/16 v2, 0x8

    const-string/jumbo v4, "PATCH"

    aput-object v4, v3, v2

    const/4 v2, 0x0

    :goto_2
    const/16 v4, 0x9

    if-ge v2, v4, :cond_5

    aget-object v4, v3, v2

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v2, 0x1

    goto :goto_1

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    const-string/jumbo v2, "logNetworkRequest"

    const-string/jumbo v3, "httpMethod"

    move-object/from16 v0, p1

    invoke-static {v2, v3, v0}, Lcom/crittercism/webview/CritterJSInterface;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    goto/16 :goto_1

    :cond_6
    const-wide/16 v2, 0x0

    cmp-long v2, p7, v2

    if-gez v2, :cond_7

    const-string/jumbo v2, "logNetworkRequest"

    const-string/jumbo v3, "bytesSent"

    move-wide/from16 v0, p7

    invoke-static {v2, v3, v0, v1}, Lcom/crittercism/webview/CritterJSInterface;->a(Ljava/lang/String;Ljava/lang/String;J)V

    goto/16 :goto_0

    :cond_7
    if-gez p9, :cond_8

    const-string/jumbo v2, "logNetworkRequest"

    const-string/jumbo v3, "responseCode"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "negative integer: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p9

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/crittercism/webview/CritterJSInterface;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    :goto_3
    if-eqz v2, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v14, v2, p3

    const-string/jumbo v2, "logNetworkRequest"

    const-string/jumbo v3, "latency"

    const-wide/16 v4, 0x0

    cmp-long v4, p3, v4

    if-gez v4, :cond_b

    move-wide/from16 v0, p3

    invoke-static {v2, v3, v0, v1}, Lcom/crittercism/webview/CritterJSInterface;->a(Ljava/lang/String;Ljava/lang/String;J)V

    const/4 v2, 0x0

    :goto_4
    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/crittercism/webview/CritterJSInterface;->a:Lcom/crittercism/internal/ax;

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-wide/from16 v6, p3

    move-wide/from16 v8, p5

    move-wide/from16 v10, p7

    move/from16 v12, p9

    move/from16 v13, p10

    invoke-virtual/range {v3 .. v15}, Lcom/crittercism/internal/ax;->a(Ljava/lang/String;Ljava/lang/String;JJJIIJ)V

    goto/16 :goto_0

    :cond_8
    const/16 v2, 0x2a

    new-array v3, v2, [I

    fill-array-data v3, :array_0

    const/4 v2, 0x0

    :goto_5
    const/16 v4, 0x2a

    if-ge v2, v4, :cond_a

    aget v4, v3, v2

    move/from16 v0, p9

    if-ne v4, v0, :cond_9

    const/4 v2, 0x1

    goto :goto_3

    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_a
    const-string/jumbo v2, "logNetworkRequest"

    const-string/jumbo v3, "responseCode"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "the given HTTP response is not allowed: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p9

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/crittercism/webview/CritterJSInterface;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    goto :goto_3

    :cond_b
    const-wide/16 v4, 0x0

    cmp-long v4, v14, v4

    if-gez v4, :cond_c

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "excessively large long integer: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-wide/from16 v0, p3

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/crittercism/webview/CritterJSInterface;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/ThreadDeath; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    const/4 v2, 0x0

    goto :goto_4

    :cond_c
    const/4 v2, 0x1

    goto :goto_4

    :array_0
    .array-data 4
        0x0
        0x64
        0x65
        0xc8
        0xc9
        0xca
        0xcb
        0xcc
        0xcd
        0xce
        0x12c
        0x12d
        0x12e
        0x12f
        0x130
        0x131
        0x132
        0x133
        0x190
        0x191
        0x192
        0x193
        0x194
        0x195
        0x196
        0x197
        0x198
        0x199
        0x19a
        0x19b
        0x19c
        0x19d
        0x19e
        0x19f
        0x1a0
        0x1a1
        0x1f4
        0x1f5
        0x1f6
        0x1f7
        0x1f8
        0x1f9
    .end array-data
.end method

.method public logUnhandledException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/crittercism/webview/CritterJSInterface;->a:Lcom/crittercism/internal/ax;

    if-nez v0, :cond_1

    const-string/jumbo v0, "logUnhandledException"

    invoke-static {v0}, Lcom/crittercism/webview/CritterJSInterface;->a(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/crittercism/webview/CritterJSInterface;->a:Lcom/crittercism/internal/ax;

    iget-object v0, v0, Lcom/crittercism/internal/ax;->g:Lcom/crittercism/internal/dr;

    invoke-virtual {v0}, Lcom/crittercism/internal/dr;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "logUnhandledException"

    invoke-static {v0}, Lcom/crittercism/webview/CritterJSInterface;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    throw v0

    :cond_2
    :try_start_1
    const-string/jumbo v0, "logUnhandledException"

    const-string/jumbo v1, "name"

    invoke-static {p1, v0, v1}, Lcom/crittercism/webview/CritterJSInterface;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "logUnhandledException"

    const-string/jumbo v1, "reason"

    invoke-static {p2, v0, v1}, Lcom/crittercism/webview/CritterJSInterface;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "logUnhandledException"

    const-string/jumbo v1, "stack"

    invoke-static {p3, v0, v1}, Lcom/crittercism/webview/CritterJSInterface;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/crittercism/internal/co;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/crittercism/internal/co;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/crittercism/webview/CritterJSInterface;->a:Lcom/crittercism/internal/ax;

    invoke-virtual {v1, v0}, Lcom/crittercism/internal/ax;->b(Ljava/lang/Throwable;)V
    :try_end_1
    .catch Ljava/lang/ThreadDeath; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/crittercism/internal/dw;->b(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public setMetadata(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/crittercism/webview/CritterJSInterface;->a:Lcom/crittercism/internal/ax;

    if-nez v0, :cond_1

    const-string/jumbo v0, "setMetadata"

    invoke-static {v0}, Lcom/crittercism/webview/CritterJSInterface;->a(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "setMetadata"

    const-string/jumbo v1, "metadataJson"

    invoke-static {p1, v0, v1}, Lcom/crittercism/webview/CritterJSInterface;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/crittercism/webview/CritterJSInterface;->a:Lcom/crittercism/internal/ax;

    iget-object v0, v0, Lcom/crittercism/internal/ax;->g:Lcom/crittercism/internal/dr;

    invoke-virtual {v0}, Lcom/crittercism/internal/dr;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "setMetadata"

    invoke-static {v0}, Lcom/crittercism/webview/CritterJSInterface;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    throw v0

    :cond_2
    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/ThreadDeath; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    iget-object v1, p0, Lcom/crittercism/webview/CritterJSInterface;->a:Lcom/crittercism/internal/ax;

    invoke-virtual {v1, v0}, Lcom/crittercism/internal/ax;->a(Lorg/json/JSONObject;)V
    :try_end_2
    .catch Ljava/lang/ThreadDeath; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/crittercism/internal/dw;->b(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_2
    move-exception v0

    :try_start_3
    const-string/jumbo v0, "setMetadata"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "badly formatted json string. "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-static {v0, v2, v1}, Lcom/crittercism/webview/CritterJSInterface;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/ThreadDeath; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0
.end method

.method public setTransactionValue(Ljava/lang/String;I)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/crittercism/webview/CritterJSInterface;->a:Lcom/crittercism/internal/ax;

    if-nez v0, :cond_1

    const-string/jumbo v0, "setTransactionValue"

    invoke-static {v0}, Lcom/crittercism/webview/CritterJSInterface;->a(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/crittercism/webview/CritterJSInterface;->a:Lcom/crittercism/internal/ax;

    iget-object v0, v0, Lcom/crittercism/internal/ax;->g:Lcom/crittercism/internal/dr;

    invoke-virtual {v0}, Lcom/crittercism/internal/dr;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "setTransactionValue"

    invoke-static {v0}, Lcom/crittercism/webview/CritterJSInterface;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    throw v0

    :cond_2
    :try_start_1
    const-string/jumbo v0, "setTransactionValue"

    const-string/jumbo v1, "transactionName"

    invoke-static {p1, v0, v1}, Lcom/crittercism/webview/CritterJSInterface;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/crittercism/webview/CritterJSInterface;->a:Lcom/crittercism/internal/ax;

    invoke-virtual {v0, p1, p2}, Lcom/crittercism/internal/ax;->a(Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/ThreadDeath; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/crittercism/internal/dw;->b(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public setUsername(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/crittercism/webview/CritterJSInterface;->a:Lcom/crittercism/internal/ax;

    if-nez v0, :cond_1

    const-string/jumbo v0, "setUsername"

    invoke-static {v0}, Lcom/crittercism/webview/CritterJSInterface;->a(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/crittercism/webview/CritterJSInterface;->a:Lcom/crittercism/internal/ax;

    iget-object v0, v0, Lcom/crittercism/internal/ax;->g:Lcom/crittercism/internal/dr;

    invoke-virtual {v0}, Lcom/crittercism/internal/dr;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "setUsername"

    invoke-static {v0}, Lcom/crittercism/webview/CritterJSInterface;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    throw v0

    :cond_2
    :try_start_1
    const-string/jumbo v0, "setUsername"

    const-string/jumbo v1, "username"

    invoke-static {p1, v0, v1}, Lcom/crittercism/webview/CritterJSInterface;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_1
    .catch Ljava/lang/ThreadDeath; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    const-string/jumbo v1, "username"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/ThreadDeath; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    :try_start_3
    iget-object v1, p0, Lcom/crittercism/webview/CritterJSInterface;->a:Lcom/crittercism/internal/ax;

    invoke-virtual {v1, v0}, Lcom/crittercism/internal/ax;->a(Lorg/json/JSONObject;)V
    :try_end_3
    .catch Ljava/lang/ThreadDeath; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/crittercism/internal/dw;->b(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_2
    move-exception v0

    :try_start_4
    const-string/jumbo v1, "Crittercism.setUsername()"

    invoke-static {v1, v0}, Lcom/crittercism/internal/dw;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/lang/ThreadDeath; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0
.end method
