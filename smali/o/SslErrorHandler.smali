.class abstract Lo/SslErrorHandler;
.super Lo/WebBackForwardList;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/SslErrorHandler$TaskDescription;
    }
.end annotation


# instance fields
.field private final a:Lo/ValueCallback;


# direct methods
.method constructor <init>(Lo/ValueCallback;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Lo/WebBackForwardList;-><init>()V

    .line 15
    iput-object p1, p0, Lo/SslErrorHandler;->a:Lo/ValueCallback;

    return-void
.end method


# virtual methods
.method public a()Lo/ValueCallback;
    .locals 1
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "osInfo"
    .end annotation

    .line 22
    iget-object v0, p0, Lo/SslErrorHandler;->a:Lo/ValueCallback;

    return-object v0
.end method

.method public e()Lo/WebBackForwardList$StateListAnimator;
    .locals 2

    .line 54
    new-instance v0, Lo/SslErrorHandler$TaskDescription;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lo/SslErrorHandler$TaskDescription;-><init>(Lo/WebBackForwardList;Lo/SslErrorHandler$3;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 37
    :cond_0
    instance-of v1, p1, Lo/WebBackForwardList;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 38
    check-cast p1, Lo/WebBackForwardList;

    .line 39
    iget-object v1, p0, Lo/SslErrorHandler;->a:Lo/ValueCallback;

    invoke-virtual {p1}, Lo/WebBackForwardList;->a()Lo/ValueCallback;

    move-result-object p1

    if-nez v1, :cond_2

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_3
    return v2
.end method

.method public hashCode()I
    .locals 2

    .line 48
    iget-object v0, p0, Lo/SslErrorHandler;->a:Lo/ValueCallback;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    const v1, 0xf4243

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DeviceHistoryData{currentOsInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/SslErrorHandler;->a:Lo/ValueCallback;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
