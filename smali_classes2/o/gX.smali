.class public Lo/gX;
.super Lo/gs;
.source ""


# static fields
.field protected static d:Ljava/lang/String; = "retryPolicyCL"


# instance fields
.field public updateEnvelopeSendTime:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "updateEnvelopeSendTime"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Lo/gs;-><init>()V

    const/4 v0, 0x1

    .line 20
    iput-boolean v0, p0, Lo/gX;->updateEnvelopeSendTime:Z

    return-void
.end method

.method public static a()I
    .locals 1

    .line 39
    sget-object v0, Lo/gX;->d:Ljava/lang/String;

    invoke-static {v0}, Lo/cQ;->c(Ljava/lang/String;)Lo/hq;

    move-result-object v0

    check-cast v0, Lo/gs;

    if-eqz v0, :cond_0

    .line 40
    iget v0, v0, Lo/gs;->retryTimeoutInHours:I

    goto :goto_0

    :cond_0
    const/16 v0, 0x18

    :goto_0
    return v0
.end method

.method public static b()Z
    .locals 1

    .line 29
    sget-object v0, Lo/gX;->d:Ljava/lang/String;

    invoke-static {v0}, Lo/cQ;->c(Ljava/lang/String;)Lo/hq;

    move-result-object v0

    check-cast v0, Lo/gs;

    if-eqz v0, :cond_0

    .line 30
    iget-boolean v0, v0, Lo/gs;->retryAllFailuresWhenNetworkAvailable:Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static c()Z
    .locals 1

    .line 24
    sget-object v0, Lo/gX;->d:Ljava/lang/String;

    invoke-static {v0}, Lo/cQ;->c(Ljava/lang/String;)Lo/hq;

    move-result-object v0

    check-cast v0, Lo/gs;

    if-eqz v0, :cond_0

    .line 25
    iget-boolean v0, v0, Lo/gs;->retryOnFailureToDeliver:Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static d()Z
    .locals 1

    .line 34
    sget-object v0, Lo/gX;->d:Ljava/lang/String;

    invoke-static {v0}, Lo/cQ;->c(Ljava/lang/String;)Lo/hq;

    move-result-object v0

    check-cast v0, Lo/gs;

    if-eqz v0, :cond_0

    .line 35
    iget-boolean v0, v0, Lo/gs;->retryWhenScheduled:Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public static f()I
    .locals 1

    .line 44
    sget-object v0, Lo/gX;->d:Ljava/lang/String;

    invoke-static {v0}, Lo/cQ;->c(Ljava/lang/String;)Lo/hq;

    move-result-object v0

    check-cast v0, Lo/gs;

    if-eqz v0, :cond_0

    .line 45
    iget v0, v0, Lo/gs;->undeliveredPayloadExpirationInHours:I

    goto :goto_0

    :cond_0
    const/16 v0, 0x48

    :goto_0
    return v0
.end method

.method public static g()Z
    .locals 1

    .line 59
    sget-object v0, Lo/gX;->d:Ljava/lang/String;

    invoke-static {v0}, Lo/cQ;->c(Ljava/lang/String;)Lo/hq;

    move-result-object v0

    check-cast v0, Lo/gs;

    if-eqz v0, :cond_0

    .line 60
    iget-boolean v0, v0, Lo/gs;->disableRetries:Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static h()Z
    .locals 1

    .line 54
    sget-object v0, Lo/gX;->d:Ljava/lang/String;

    invoke-static {v0}, Lo/cQ;->c(Ljava/lang/String;)Lo/hq;

    move-result-object v0

    check-cast v0, Lo/gs;

    if-eqz v0, :cond_0

    .line 55
    iget-boolean v0, v0, Lo/gs;->countFailuresToDeliverEvents:Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public static i()Z
    .locals 1

    .line 64
    sget-object v0, Lo/gX;->d:Ljava/lang/String;

    invoke-static {v0}, Lo/cQ;->c(Ljava/lang/String;)Lo/hq;

    move-result-object v0

    check-cast v0, Lo/gX;

    if-eqz v0, :cond_0

    .line 65
    iget-boolean v0, v0, Lo/gX;->updateEnvelopeSendTime:Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public static j()Z
    .locals 1

    .line 49
    sget-object v0, Lo/gX;->d:Ljava/lang/String;

    invoke-static {v0}, Lo/cQ;->c(Ljava/lang/String;)Lo/hq;

    move-result-object v0

    check-cast v0, Lo/gs;

    if-eqz v0, :cond_0

    .line 50
    iget-boolean v0, v0, Lo/gs;->logDetailsForFailureToDeliverEvents:Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public e()Ljava/lang/String;
    .locals 1

    .line 14
    sget-object v0, Lo/gX;->d:Ljava/lang/String;

    return-object v0
.end method
