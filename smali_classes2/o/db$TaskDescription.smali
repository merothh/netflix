.class Lo/db$TaskDescription;
.super Lorg/chromium/net/UrlRequest$Callback;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/db;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TaskDescription"
.end annotation


# instance fields
.field public a:J

.field final synthetic b:Lo/db;

.field private c:Ljava/io/ByteArrayOutputStream;

.field private e:Ljava/nio/channels/WritableByteChannel;


# direct methods
.method constructor <init>(Lo/db;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lo/db$TaskDescription;->b:Lo/db;

    invoke-direct {p0}, Lorg/chromium/net/UrlRequest$Callback;-><init>()V

    .line 47
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object p1, p0, Lo/db$TaskDescription;->c:Ljava/io/ByteArrayOutputStream;

    .line 48
    iget-object p1, p0, Lo/db$TaskDescription;->c:Ljava/io/ByteArrayOutputStream;

    invoke-static {p1}, Ljava/nio/channels/Channels;->newChannel(Ljava/io/OutputStream;)Ljava/nio/channels/WritableByteChannel;

    move-result-object p1

    iput-object p1, p0, Lo/db$TaskDescription;->e:Ljava/nio/channels/WritableByteChannel;

    return-void
.end method


# virtual methods
.method public onFailed(Lorg/chromium/net/UrlRequest;Lorg/chromium/net/UrlResponseInfo;Lorg/chromium/net/CronetException;)V
    .locals 1

    .line 124
    invoke-virtual {p2}, Lorg/chromium/net/UrlResponseInfo;->getHttpStatusCode()I

    move-result p1

    const/16 p3, 0x190

    if-ne p1, p3, :cond_0

    .line 125
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "15002. Provisiong failed with status code 400 on url "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lo/db$TaskDescription;->b:Lo/db;

    iget-object v0, v0, Lo/db;->b:Lcom/netflix/mediaclient/drm/NetflixMediaDrm$ProvisionRequest;

    invoke-interface {v0}, Lcom/netflix/mediaclient/drm/NetflixMediaDrm$ProvisionRequest;->getDefaultUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p3}, Lo/SpinnerAdapter;->b(Ljava/lang/String;)V

    .line 128
    :cond_0
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to get provisiong certificate. Response is null from URL "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lo/db$TaskDescription;->b:Lo/db;

    iget-object v0, v0, Lo/db;->b:Lcom/netflix/mediaclient/drm/NetflixMediaDrm$ProvisionRequest;

    invoke-interface {v0}, Lcom/netflix/mediaclient/drm/NetflixMediaDrm$ProvisionRequest;->getDefaultUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ". HTTP status code: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lorg/chromium/net/UrlResponseInfo;->getHttpStatusCode()I

    move-result p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lo/SpinnerAdapter;->b(Ljava/lang/String;)V

    .line 129
    iget-object p1, p0, Lo/db$TaskDescription;->b:Lo/db;

    iget-object p1, p1, Lo/db;->a:Lo/dl;

    if-eqz p1, :cond_1

    .line 130
    iget-object p1, p0, Lo/db$TaskDescription;->b:Lo/db;

    iget-object p1, p1, Lo/db;->a:Lo/dl;

    invoke-interface {p1}, Lo/dl;->d()V

    .line 133
    :cond_1
    iget-object p1, p0, Lo/db$TaskDescription;->b:Lo/db;

    invoke-static {p1}, Lo/db;->c(Lo/db;)V

    return-void
.end method

.method public onReadCompleted(Lorg/chromium/net/UrlRequest;Lorg/chromium/net/UrlResponseInfo;Ljava/nio/ByteBuffer;)V
    .locals 3

    .line 87
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 89
    :try_start_0
    iget-object p2, p0, Lo/db$TaskDescription;->e:Ljava/nio/channels/WritableByteChannel;

    invoke-interface {p2, p3}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "nf_net"

    const-string v2, "IOException during ByteBuffer read. Details: "

    .line 91
    invoke-static {v1, p2, v2, v0}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 93
    :goto_0
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 94
    invoke-virtual {p1, p3}, Lorg/chromium/net/UrlRequest;->read(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public onRedirectReceived(Lorg/chromium/net/UrlRequest;Lorg/chromium/net/UrlResponseInfo;Ljava/lang/String;)V
    .locals 0

    const-string p2, "nf_net"

    const-string p3, "****** onRedirectReceived ******"

    .line 57
    invoke-static {p2, p3}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    invoke-virtual {p1}, Lorg/chromium/net/UrlRequest;->followRedirect()V

    return-void
.end method

.method public onResponseStarted(Lorg/chromium/net/UrlRequest;Lorg/chromium/net/UrlResponseInfo;)V
    .locals 2

    .line 69
    invoke-virtual {p2}, Lorg/chromium/net/UrlResponseInfo;->getHttpStatusCode()I

    move-result p2

    const v0, 0x8000

    const/16 v1, 0xc8

    if-ne p2, v1, :cond_0

    .line 72
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/chromium/net/UrlRequest;->read(Ljava/nio/ByteBuffer;)V

    goto :goto_0

    :cond_0
    const/16 v1, 0x1f7

    if-ne p2, v1, :cond_1

    .line 76
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/chromium/net/UrlRequest;->read(Ljava/nio/ByteBuffer;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onSucceeded(Lorg/chromium/net/UrlRequest;Lorg/chromium/net/UrlResponseInfo;)V
    .locals 0

    .line 106
    iget-object p1, p0, Lo/db$TaskDescription;->c:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    .line 108
    iget-object p2, p0, Lo/db$TaskDescription;->b:Lo/db;

    iget-object p2, p2, Lo/db;->a:Lo/dl;

    if-eqz p2, :cond_0

    .line 109
    iget-object p2, p0, Lo/db$TaskDescription;->b:Lo/db;

    iget-object p2, p2, Lo/db;->a:Lo/dl;

    invoke-interface {p2, p1}, Lo/dl;->a([B)V

    .line 112
    :cond_0
    iget-object p1, p0, Lo/db$TaskDescription;->b:Lo/db;

    invoke-static {p1}, Lo/db;->c(Lo/db;)V

    return-void
.end method
