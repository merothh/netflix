.class public final Lcom/crittercism/internal/ed;
.super Landroid/webkit/WebViewClient;


# instance fields
.field private a:Landroid/webkit/WebViewClient;

.field private b:Lcom/crittercism/internal/d;

.field private final c:Ljava/lang/String;

.field private d:Lcom/crittercism/internal/e;

.field private e:Lcom/crittercism/internal/c;


# direct methods
.method public constructor <init>(Landroid/webkit/WebViewClient;Lcom/crittercism/internal/e;Lcom/crittercism/internal/d;Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    iput-object p1, p0, Lcom/crittercism/internal/ed;->a:Landroid/webkit/WebViewClient;

    iput-object p2, p0, Lcom/crittercism/internal/ed;->d:Lcom/crittercism/internal/e;

    iput-object p3, p0, Lcom/crittercism/internal/ed;->b:Lcom/crittercism/internal/d;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "javascript:(function() {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "  if (typeof(Crittercism) !== \"undefined\") {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "    Crittercism.init({"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "      \"platform\": \"android\"});"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "  } else {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "    ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "      function() {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "        var parent = document.getElementsByTagName(\'head\').item(0);"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "        var script = document.createElement(\'script\');"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "        script.type = \'text/javascript\';"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "        script.innerHTML = window.atob(\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "                                     \');"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "        parent.appendChild(script)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "      }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "    )();"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "    if (typeof(BasicCrittercism) !== \"undefined\") {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "      BasicCrittercism.instrumentOnError({"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "        errorCallback: function(errorMsg, stackStr) {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "          _crttr.logError(errorMsg, stackStr);"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "          }, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "        platform: \"android\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "      });"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "      BasicCrittercism.initApm();"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "    } "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "  }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "})()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/crittercism/internal/ed;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final doUpdateVisitedHistory(Landroid/webkit/WebView;Ljava/lang/String;Z)V
    .locals 1

    iget-object v0, p0, Lcom/crittercism/internal/ed;->a:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/crittercism/internal/ed;->a:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebViewClient;->doUpdateVisitedHistory(Landroid/webkit/WebView;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public final onFormResubmission(Landroid/webkit/WebView;Landroid/os/Message;Landroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Lcom/crittercism/internal/ed;->a:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/crittercism/internal/ed;->a:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onFormResubmission(Landroid/webkit/WebView;Landroid/os/Message;Landroid/os/Message;)V

    :cond_0
    return-void
.end method

.method public final onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/crittercism/internal/ed;->a:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/crittercism/internal/ed;->a:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebViewClient;->onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final onPageCommitVisible(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    iget-object v0, p0, Lcom/crittercism/internal/ed;->a:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/crittercism/internal/ed;->a:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebViewClient;->onPageCommitVisible(Landroid/webkit/WebView;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 4

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "******** onPageFinished: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/crittercism/internal/dw;->d(Ljava/lang/String;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v0, p0, Lcom/crittercism/internal/ed;->e:Lcom/crittercism/internal/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/crittercism/internal/ed;->e:Lcom/crittercism/internal/c;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/crittercism/internal/c;->d(J)V

    iget-object v0, p0, Lcom/crittercism/internal/ed;->d:Lcom/crittercism/internal/e;

    iget-object v1, p0, Lcom/crittercism/internal/ed;->e:Lcom/crittercism/internal/c;

    invoke-virtual {v0, v1}, Lcom/crittercism/internal/e;->a(Lcom/crittercism/internal/c;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/crittercism/internal/ed;->e:Lcom/crittercism/internal/c;

    :cond_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :try_start_2
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getJavaScriptEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/crittercism/internal/ed;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/ThreadDeath; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/crittercism/internal/ed;->a:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/crittercism/internal/ed;->a:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    :cond_3
    return-void

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/ThreadDeath; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    :catch_0
    move-exception v0

    throw v0

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/crittercism/internal/dw;->b(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "******** onPageStarted: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/crittercism/internal/dw;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/crittercism/internal/ed;->a:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/crittercism/internal/ed;->a:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method public final onReceivedClientCertRequest(Landroid/webkit/WebView;Landroid/webkit/ClientCertRequest;)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    iget-object v0, p0, Lcom/crittercism/internal/ed;->a:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/crittercism/internal/ed;->a:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebViewClient;->onReceivedClientCertRequest(Landroid/webkit/WebView;Landroid/webkit/ClientCertRequest;)V

    :cond_0
    return-void
.end method

.method public final onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/crittercism/internal/ed;->a:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/crittercism/internal/ed;->a:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    const-string/jumbo v0, "******** onReceivedError (Marshmallow, no http)"

    invoke-static {v0}, Lcom/crittercism/internal/dw;->d(Ljava/lang/String;)V

    if-nez p2, :cond_2

    const-string/jumbo v0, "null request"

    invoke-static {v0}, Lcom/crittercism/internal/dw;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/crittercism/internal/ed;->a:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/crittercism/internal/ed;->a:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V

    :cond_1
    return-void

    :cond_2
    :try_start_1
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->isForMainFrame()Z

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v1, :cond_3

    const-string/jumbo v0, ""

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "main frame"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/crittercism/internal/dw;->d(Ljava/lang/String;)V

    if-eqz v1, :cond_0

    if-nez p3, :cond_4

    const-string/jumbo v0, "null error (no error code)"

    invoke-static {v0}, Lcom/crittercism/internal/dw;->d(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/ThreadDeath; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    throw v0

    :cond_3
    :try_start_2
    const-string/jumbo v0, "not "

    goto :goto_1

    :cond_4
    monitor-enter p0
    :try_end_2
    .catch Ljava/lang/ThreadDeath; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    :try_start_3
    iget-object v0, p0, Lcom/crittercism/internal/ed;->e:Lcom/crittercism/internal/c;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/crittercism/internal/ed;->e:Lcom/crittercism/internal/c;

    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getErrorCode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/crittercism/internal/c;->a(I)V

    :cond_5
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/ThreadDeath; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/crittercism/internal/dw;->b(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final onReceivedHttpAuthRequest(Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/crittercism/internal/ed;->a:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/crittercism/internal/ed;->a:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedHttpAuthRequest(Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    const-string/jumbo v0, "******** onReceivedHttpError (Marshmallow)"

    invoke-static {v0}, Lcom/crittercism/internal/dw;->d(Ljava/lang/String;)V

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->isForMainFrame()Z

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v1, :cond_2

    const-string/jumbo v0, ""

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "main frame"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/crittercism/internal/dw;->d(Ljava/lang/String;)V

    if-eqz v1, :cond_0

    if-nez p3, :cond_3

    const-string/jumbo v0, "null response (no status code)"

    invoke-static {v0}, Lcom/crittercism/internal/dw;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/crittercism/internal/ed;->a:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/crittercism/internal/ed;->a:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V

    :cond_1
    return-void

    :cond_2
    :try_start_1
    const-string/jumbo v0, "not "

    goto :goto_0

    :cond_3
    monitor-enter p0
    :try_end_1
    .catch Ljava/lang/ThreadDeath; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    iget-object v0, p0, Lcom/crittercism/internal/ed;->e:Lcom/crittercism/internal/c;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/crittercism/internal/ed;->e:Lcom/crittercism/internal/c;

    invoke-virtual {p3}, Landroid/webkit/WebResourceResponse;->getStatusCode()I

    move-result v1

    iput v1, v0, Lcom/crittercism/internal/c;->e:I

    :cond_4
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catch Ljava/lang/ThreadDeath; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    :catch_0
    move-exception v0

    throw v0

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/crittercism/internal/dw;->b(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public final onReceivedLoginRequest(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xc
    .end annotation

    iget-object v0, p0, Lcom/crittercism/internal/ed;->a:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/crittercism/internal/ed;->a:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedLoginRequest(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x8
    .end annotation

    iget-object v0, p0, Lcom/crittercism/internal/ed;->a:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/crittercism/internal/ed;->a:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    :cond_0
    return-void
.end method

.method public final onScaleChanged(Landroid/webkit/WebView;FF)V
    .locals 1

    iget-object v0, p0, Lcom/crittercism/internal/ed;->a:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/crittercism/internal/ed;->a:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onScaleChanged(Landroid/webkit/WebView;FF)V

    :cond_0
    return-void
.end method

.method public final onTooManyRedirects(Landroid/webkit/WebView;Landroid/os/Message;Landroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Lcom/crittercism/internal/ed;->a:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/crittercism/internal/ed;->a:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onTooManyRedirects(Landroid/webkit/WebView;Landroid/os/Message;Landroid/os/Message;)V

    :cond_0
    return-void
.end method

.method public final onUnhandledInputEvent(Landroid/webkit/WebView;Landroid/view/InputEvent;)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    iget-object v0, p0, Lcom/crittercism/internal/ed;->a:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/crittercism/internal/ed;->a:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebViewClient;->onUnhandledInputEvent(Landroid/webkit/WebView;Landroid/view/InputEvent;)V

    :cond_0
    return-void
.end method

.method public final onUnhandledKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)V
    .locals 1

    iget-object v0, p0, Lcom/crittercism/internal/ed;->a:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/crittercism/internal/ed;->a:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebViewClient;->onUnhandledKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)V

    :cond_0
    return-void
.end method

.method public final shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    const/16 v4, 0x17

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    :try_start_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v4, :cond_0

    if-eqz p2, :cond_0

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->isForMainFrame()Z
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    :goto_0
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/crittercism/internal/ed;->a:Landroid/webkit/WebViewClient;

    if-eqz v1, :cond_6

    iget-object v0, p0, Lcom/crittercism/internal/ed;->a:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    move-object v1, v0

    :goto_1
    :try_start_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v4, :cond_1

    if-eqz p2, :cond_1

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->isForMainFrame()Z
    :try_end_1
    .catch Ljava/lang/ThreadDeath; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3

    move-result v0

    if-nez v0, :cond_4

    :cond_1
    :goto_2
    return-object v1

    :cond_2
    :try_start_2
    const-string/jumbo v2, "******** shouldInterceptRequest (Lollipop) part 1"

    invoke-static {v2}, Lcom/crittercism/internal/dw;->d(Ljava/lang/String;)V

    monitor-enter p0
    :try_end_2
    .catch Ljava/lang/ThreadDeath; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    :try_start_3
    new-instance v2, Lcom/crittercism/internal/c;

    invoke-direct {v2}, Lcom/crittercism/internal/c;-><init>()V

    iput-object v2, p0, Lcom/crittercism/internal/ed;->e:Lcom/crittercism/internal/c;

    iget-object v2, p0, Lcom/crittercism/internal/ed;->e:Lcom/crittercism/internal/c;

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/crittercism/internal/c;->a(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/crittercism/internal/ed;->e:Lcom/crittercism/internal/c;

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getMethod()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/crittercism/internal/c;->f:Ljava/lang/String;

    iget-object v2, p0, Lcom/crittercism/internal/ed;->e:Lcom/crittercism/internal/c;

    invoke-virtual {v2, v0, v1}, Lcom/crittercism/internal/c;->c(J)V

    iget-object v0, p0, Lcom/crittercism/internal/ed;->e:Lcom/crittercism/internal/c;

    iget-object v1, p0, Lcom/crittercism/internal/ed;->b:Lcom/crittercism/internal/d;

    invoke-virtual {v1}, Lcom/crittercism/internal/d;->a()Lcom/crittercism/internal/b;

    move-result-object v1

    iput-object v1, v0, Lcom/crittercism/internal/c;->j:Lcom/crittercism/internal/b;

    invoke-static {}, Lcom/crittercism/internal/ba;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/crittercism/internal/ed;->e:Lcom/crittercism/internal/c;

    invoke-static {}, Lcom/crittercism/internal/ba;->a()Landroid/location/Location;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/crittercism/internal/c;->a(Landroid/location/Location;)V

    :cond_3
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/ThreadDeath; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    :catch_0
    move-exception v0

    throw v0

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/crittercism/internal/dw;->b(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_4
    :try_start_5
    const-string/jumbo v0, "******** shouldInterceptRequest (Lollipop) part 2"

    invoke-static {v0}, Lcom/crittercism/internal/dw;->d(Ljava/lang/String;)V

    if-eqz v1, :cond_1

    monitor-enter p0
    :try_end_5
    .catch Ljava/lang/ThreadDeath; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3

    :try_start_6
    iget-object v0, p0, Lcom/crittercism/internal/ed;->e:Lcom/crittercism/internal/c;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/crittercism/internal/ed;->e:Lcom/crittercism/internal/c;

    invoke-virtual {v1}, Landroid/webkit/WebResourceResponse;->getStatusCode()I

    move-result v2

    iput v2, v0, Lcom/crittercism/internal/c;->e:I

    :cond_5
    monitor-exit p0

    goto :goto_2

    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v0
    :try_end_7
    .catch Ljava/lang/ThreadDeath; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_3

    :catch_2
    move-exception v0

    throw v0

    :catch_3
    move-exception v0

    invoke-static {v0}, Lcom/crittercism/internal/dw;->b(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_6
    move-object v1, v0

    goto :goto_1
.end method

.method public final shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    iget-object v0, p0, Lcom/crittercism/internal/ed;->a:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/crittercism/internal/ed;->a:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final shouldOverrideKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/crittercism/internal/ed;->a:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/crittercism/internal/ed;->a:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "******** shouldOverrideUrlLoading: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/crittercism/internal/dw;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/crittercism/internal/ed;->a:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/crittercism/internal/ed;->a:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
