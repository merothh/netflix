.class public Lo/gZ;
.super Lo/gs;
.source ""


# static fields
.field protected static a:Ljava/lang/String; = "retryPolicyLogblob"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Lo/gs;-><init>()V

    return-void
.end method

.method public static a()I
    .locals 1

    .line 35
    sget-object v0, Lo/gZ;->a:Ljava/lang/String;

    invoke-static {v0}, Lo/cQ;->c(Ljava/lang/String;)Lo/hq;

    move-result-object v0

    check-cast v0, Lo/gs;

    if-eqz v0, :cond_0

    .line 36
    iget v0, v0, Lo/gs;->undeliveredPayloadExpirationInHours:I

    goto :goto_0

    :cond_0
    const/16 v0, 0x48

    :goto_0
    return v0
.end method

.method public static b()Z
    .locals 1

    .line 25
    sget-object v0, Lo/gZ;->a:Ljava/lang/String;

    invoke-static {v0}, Lo/cQ;->c(Ljava/lang/String;)Lo/hq;

    move-result-object v0

    check-cast v0, Lo/gs;

    if-eqz v0, :cond_0

    .line 26
    iget-boolean v0, v0, Lo/gs;->retryWhenScheduled:Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public static c()I
    .locals 1

    .line 30
    sget-object v0, Lo/gZ;->a:Ljava/lang/String;

    invoke-static {v0}, Lo/cQ;->c(Ljava/lang/String;)Lo/hq;

    move-result-object v0

    check-cast v0, Lo/gs;

    if-eqz v0, :cond_0

    .line 31
    iget v0, v0, Lo/gs;->retryTimeoutInHours:I

    goto :goto_0

    :cond_0
    const/16 v0, 0x18

    :goto_0
    return v0
.end method

.method public static d()Z
    .locals 1

    .line 20
    sget-object v0, Lo/gZ;->a:Ljava/lang/String;

    invoke-static {v0}, Lo/cQ;->c(Ljava/lang/String;)Lo/hq;

    move-result-object v0

    check-cast v0, Lo/gs;

    if-eqz v0, :cond_0

    .line 21
    iget-boolean v0, v0, Lo/gs;->retryAllFailuresWhenNetworkAvailable:Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static f()Z
    .locals 1

    .line 45
    sget-object v0, Lo/gZ;->a:Ljava/lang/String;

    invoke-static {v0}, Lo/cQ;->c(Ljava/lang/String;)Lo/hq;

    move-result-object v0

    check-cast v0, Lo/gs;

    if-eqz v0, :cond_0

    .line 46
    iget-boolean v0, v0, Lo/gs;->countFailuresToDeliverEvents:Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public static g()Z
    .locals 1

    .line 50
    sget-object v0, Lo/gZ;->a:Ljava/lang/String;

    invoke-static {v0}, Lo/cQ;->c(Ljava/lang/String;)Lo/hq;

    move-result-object v0

    check-cast v0, Lo/gs;

    if-eqz v0, :cond_0

    .line 51
    iget-boolean v0, v0, Lo/gs;->disableRetries:Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static h()Z
    .locals 1

    .line 40
    sget-object v0, Lo/gZ;->a:Ljava/lang/String;

    invoke-static {v0}, Lo/cQ;->c(Ljava/lang/String;)Lo/hq;

    move-result-object v0

    check-cast v0, Lo/gs;

    if-eqz v0, :cond_0

    .line 41
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

    .line 11
    sget-object v0, Lo/gZ;->a:Ljava/lang/String;

    return-object v0
.end method
