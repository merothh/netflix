.class Lo/vW$StateListAnimator;
.super Lorg/chromium/net/UrlRequest$Callback;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/vW;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "StateListAnimator"
.end annotation


# instance fields
.field final a:Lo/vX$TaskDescription;


# direct methods
.method public constructor <init>(Lo/vX$TaskDescription;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Lorg/chromium/net/UrlRequest$Callback;-><init>()V

    .line 63
    iput-object p1, p0, Lo/vW$StateListAnimator;->a:Lo/vX$TaskDescription;

    return-void
.end method


# virtual methods
.method public onFailed(Lorg/chromium/net/UrlRequest;Lorg/chromium/net/UrlResponseInfo;Lorg/chromium/net/CronetException;)V
    .locals 1

    .line 92
    instance-of p1, p3, Lorg/chromium/net/NetworkException;

    if-eqz p1, :cond_0

    check-cast p3, Lorg/chromium/net/NetworkException;

    invoke-virtual {p3}, Lorg/chromium/net/NetworkException;->getErrorCode()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 p3, 0x0

    .line 93
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p2, p3

    const-string p3, "nf_sidechannel"

    const-string v0, "side channel request failed with errorcode: %d"

    invoke-static {p3, v0, p2}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 95
    iget-object p2, p0, Lo/vW$StateListAnimator;->a:Lo/vX$TaskDescription;

    if-eqz p2, :cond_1

    .line 96
    invoke-interface {p2, p1}, Lo/vX$TaskDescription;->e(I)V

    :cond_1
    return-void
.end method

.method public onReadCompleted(Lorg/chromium/net/UrlRequest;Lorg/chromium/net/UrlResponseInfo;Ljava/nio/ByteBuffer;)V
    .locals 0

    return-void
.end method

.method public onRedirectReceived(Lorg/chromium/net/UrlRequest;Lorg/chromium/net/UrlResponseInfo;Ljava/lang/String;)V
    .locals 0

    .line 68
    invoke-virtual {p1}, Lorg/chromium/net/UrlRequest;->followRedirect()V

    return-void
.end method

.method public onResponseStarted(Lorg/chromium/net/UrlRequest;Lorg/chromium/net/UrlResponseInfo;)V
    .locals 1

    const-string p2, "nf_sidechannel"

    const-string v0, "side channel request succeeded"

    .line 77
    invoke-static {p2, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    iget-object p2, p0, Lo/vW$StateListAnimator;->a:Lo/vX$TaskDescription;

    if-eqz p2, :cond_0

    .line 79
    invoke-interface {p2}, Lo/vX$TaskDescription;->c()V

    .line 81
    :cond_0
    invoke-virtual {p1}, Lorg/chromium/net/UrlRequest;->cancel()V

    return-void
.end method

.method public onSucceeded(Lorg/chromium/net/UrlRequest;Lorg/chromium/net/UrlResponseInfo;)V
    .locals 0

    return-void
.end method
