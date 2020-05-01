.class Lo/Y$ActionBar;
.super Lorg/chromium/net/UrlRequest$Callback;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ActionBar"
.end annotation


# instance fields
.field final synthetic c:Lo/Y;


# direct methods
.method public constructor <init>(Lo/Y;)V
    .locals 0

    .line 458
    iput-object p1, p0, Lo/Y$ActionBar;->c:Lo/Y;

    invoke-direct {p0}, Lorg/chromium/net/UrlRequest$Callback;-><init>()V

    return-void
.end method

.method private d(Ljava/io/IOException;)V
    .locals 1

    .line 532
    iget-object v0, p0, Lo/Y$ActionBar;->c:Lo/Y;

    invoke-static {v0, p1}, Lo/Y;->d(Lo/Y;Ljava/io/IOException;)Ljava/io/IOException;

    .line 533
    iget-object v0, p0, Lo/Y$ActionBar;->c:Lo/Y;

    invoke-static {v0}, Lo/Y;->g(Lo/Y;)Lo/W;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 534
    iget-object v0, p0, Lo/Y$ActionBar;->c:Lo/Y;

    invoke-static {v0}, Lo/Y;->g(Lo/Y;)Lo/W;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo/W;->b(Ljava/io/IOException;)V

    .line 536
    :cond_0
    iget-object v0, p0, Lo/Y$ActionBar;->c:Lo/Y;

    invoke-static {v0}, Lo/Y;->i(Lo/Y;)Lo/Z;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 537
    iget-object v0, p0, Lo/Y$ActionBar;->c:Lo/Y;

    invoke-static {v0}, Lo/Y;->i(Lo/Y;)Lo/Z;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo/Z;->a(Ljava/io/IOException;)V

    .line 539
    :cond_1
    iget-object p1, p0, Lo/Y$ActionBar;->c:Lo/Y;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lo/Y;->a(Lo/Y;Z)Z

    .line 540
    iget-object p1, p0, Lo/Y$ActionBar;->c:Lo/Y;

    invoke-static {p1}, Lo/Y;->d(Lo/Y;)Lo/X;

    move-result-object p1

    invoke-virtual {p1}, Lo/X;->b()V

    return-void
.end method


# virtual methods
.method public onCanceled(Lorg/chromium/net/UrlRequest;Lorg/chromium/net/UrlResponseInfo;)V
    .locals 2

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    .line 520
    invoke-virtual {p2}, Lorg/chromium/net/UrlResponseInfo;->getUrl()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p1, v1

    const-string v0, "nf_network"

    const-string v1, "!!! %s CANCELED"

    invoke-static {v0, v1, p1}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 521
    iget-object p1, p0, Lo/Y$ActionBar;->c:Lo/Y;

    invoke-static {p1, p2}, Lo/Y;->b(Lo/Y;Lorg/chromium/net/UrlResponseInfo;)Lorg/chromium/net/UrlResponseInfo;

    .line 522
    new-instance p1, Ljava/io/IOException;

    const-string p2, "disconnect() called"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lo/Y$ActionBar;->d(Ljava/io/IOException;)V

    return-void
.end method

.method public onFailed(Lorg/chromium/net/UrlRequest;Lorg/chromium/net/UrlResponseInfo;Lorg/chromium/net/CronetException;)V
    .locals 2

    if-eqz p3, :cond_0

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    .line 513
    iget-object v1, p0, Lo/Y$ActionBar;->c:Lo/Y;

    invoke-static {v1}, Lo/Y;->h(Lo/Y;)Ljava/net/URL;

    move-result-object v1

    aput-object v1, p1, v0

    const/4 v0, 0x1

    invoke-virtual {p3}, Lorg/chromium/net/CronetException;->getMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v0

    const-string v0, "nf_network"

    const-string v1, "!!! %s %s"

    invoke-static {v0, v1, p1}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 514
    iget-object p1, p0, Lo/Y$ActionBar;->c:Lo/Y;

    invoke-static {p1, p2}, Lo/Y;->b(Lo/Y;Lorg/chromium/net/UrlResponseInfo;)Lorg/chromium/net/UrlResponseInfo;

    .line 515
    invoke-direct {p0, p3}, Lo/Y$ActionBar;->d(Ljava/io/IOException;)V

    return-void

    .line 510
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Exception cannot be null in onFailed."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onReadCompleted(Lorg/chromium/net/UrlRequest;Lorg/chromium/net/UrlResponseInfo;Ljava/nio/ByteBuffer;)V
    .locals 0

    .line 471
    iget-object p1, p0, Lo/Y$ActionBar;->c:Lo/Y;

    invoke-static {p1, p2}, Lo/Y;->b(Lo/Y;Lorg/chromium/net/UrlResponseInfo;)Lorg/chromium/net/UrlResponseInfo;

    .line 472
    iget-object p1, p0, Lo/Y$ActionBar;->c:Lo/Y;

    invoke-static {p1}, Lo/Y;->d(Lo/Y;)Lo/X;

    move-result-object p1

    invoke-virtual {p1}, Lo/X;->b()V

    return-void
.end method

.method public onRedirectReceived(Lorg/chromium/net/UrlRequest;Lorg/chromium/net/UrlResponseInfo;Ljava/lang/String;)V
    .locals 3

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    .line 478
    invoke-virtual {p2}, Lorg/chromium/net/UrlResponseInfo;->getUrl()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p1, v1

    const/4 v0, 0x1

    aput-object p3, p1, v0

    const-string v1, "nf_network"

    const-string v2, "--- %s -> %s"

    invoke-static {v1, v2, p1}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 479
    iget-object p1, p0, Lo/Y$ActionBar;->c:Lo/Y;

    invoke-static {p1, v0}, Lo/Y;->d(Lo/Y;Z)Z

    .line 481
    :try_start_0
    new-instance p1, Ljava/net/URL;

    invoke-direct {p1, p3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 482
    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object p3

    iget-object v0, p0, Lo/Y$ActionBar;->c:Lo/Y;

    invoke-static {v0}, Lo/Y;->e(Lo/Y;)Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    .line 483
    iget-object v0, p0, Lo/Y$ActionBar;->c:Lo/Y;

    invoke-static {v0}, Lo/Y;->c(Lo/Y;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 486
    iget-object v0, p0, Lo/Y$ActionBar;->c:Lo/Y;

    invoke-static {v0, p1}, Lo/Y;->c(Lo/Y;Ljava/net/URL;)Ljava/net/URL;

    .line 488
    :cond_0
    iget-object p1, p0, Lo/Y$ActionBar;->c:Lo/Y;

    invoke-static {p1}, Lo/Y;->b(Lo/Y;)Z

    move-result p1

    if-eqz p1, :cond_1

    if-eqz p3, :cond_1

    .line 489
    iget-object p1, p0, Lo/Y$ActionBar;->c:Lo/Y;

    invoke-static {p1}, Lo/Y;->a(Lo/Y;)Lorg/chromium/net/UrlRequest;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/net/UrlRequest;->followRedirect()V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 495
    :catch_0
    :cond_1
    iget-object p1, p0, Lo/Y$ActionBar;->c:Lo/Y;

    invoke-static {p1, p2}, Lo/Y;->b(Lo/Y;Lorg/chromium/net/UrlResponseInfo;)Lorg/chromium/net/UrlResponseInfo;

    .line 496
    iget-object p1, p0, Lo/Y$ActionBar;->c:Lo/Y;

    invoke-static {p1}, Lo/Y;->a(Lo/Y;)Lorg/chromium/net/UrlRequest;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/net/UrlRequest;->cancel()V

    const/4 p1, 0x0

    .line 497
    invoke-direct {p0, p1}, Lo/Y$ActionBar;->d(Ljava/io/IOException;)V

    return-void
.end method

.method public onResponseStarted(Lorg/chromium/net/UrlRequest;Lorg/chromium/net/UrlResponseInfo;)V
    .locals 0

    .line 462
    iget-object p1, p0, Lo/Y$ActionBar;->c:Lo/Y;

    invoke-static {p1, p2}, Lo/Y;->b(Lo/Y;Lorg/chromium/net/UrlResponseInfo;)Lorg/chromium/net/UrlResponseInfo;

    .line 463
    iget-object p1, p0, Lo/Y$ActionBar;->c:Lo/Y;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lo/Y;->a(Lo/Y;Z)Z

    .line 465
    iget-object p1, p0, Lo/Y$ActionBar;->c:Lo/Y;

    invoke-static {p1}, Lo/Y;->d(Lo/Y;)Lo/X;

    move-result-object p1

    invoke-virtual {p1}, Lo/X;->b()V

    return-void
.end method

.method public onSucceeded(Lorg/chromium/net/UrlRequest;Lorg/chromium/net/UrlResponseInfo;)V
    .locals 2

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    .line 502
    iget-object v0, p0, Lo/Y$ActionBar;->c:Lo/Y;

    invoke-static {v0}, Lo/Y;->f(Lo/Y;)Ljava/net/URL;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p1, v1

    invoke-virtual {p2}, Lorg/chromium/net/UrlResponseInfo;->getHttpStatusCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, p1, v1

    const-string v0, "nf_network"

    const-string v1, "<-- %s %s"

    invoke-static {v0, v1, p1}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 503
    iget-object p1, p0, Lo/Y$ActionBar;->c:Lo/Y;

    invoke-static {p1, p2}, Lo/Y;->b(Lo/Y;Lorg/chromium/net/UrlResponseInfo;)Lorg/chromium/net/UrlResponseInfo;

    const/4 p1, 0x0

    .line 504
    invoke-direct {p0, p1}, Lo/Y$ActionBar;->d(Ljava/io/IOException;)V

    return-void
.end method
