.class public final Lo/gK$Application;
.super Lo/MessagePdu;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/gK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Application"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    const-string v0, "offlineRecovery"

    .line 37
    invoke-direct {p0, v0}, Lo/MessagePdu;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic constructor <init>(Lo/amc;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lo/gK$Application;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    const-string v0, "offlineRecovery"

    .line 57
    invoke-static {v0}, Lo/cQ;->c(Ljava/lang/String;)Lo/hq;

    move-result-object v0

    check-cast v0, Lo/gK;

    .line 58
    invoke-virtual {v0}, Lo/gK;->c()I

    move-result v0

    return v0
.end method

.method public final c()Z
    .locals 1

    const-string v0, "offlineRecovery"

    .line 41
    invoke-static {v0}, Lo/cQ;->c(Ljava/lang/String;)Lo/hq;

    move-result-object v0

    check-cast v0, Lo/gK;

    .line 42
    invoke-virtual {v0}, Lo/gK;->a()Z

    move-result v0

    return v0
.end method

.method public final d()Z
    .locals 1

    const-string v0, "offlineRecovery"

    .line 52
    invoke-static {v0}, Lo/cQ;->c(Ljava/lang/String;)Lo/hq;

    move-result-object v0

    check-cast v0, Lo/gK;

    .line 53
    invoke-virtual {v0}, Lo/gK;->d()Z

    move-result v0

    return v0
.end method

.method public final e()I
    .locals 1

    const-string v0, "offlineRecovery"

    .line 47
    invoke-static {v0}, Lo/cQ;->c(Ljava/lang/String;)Lo/hq;

    move-result-object v0

    check-cast v0, Lo/gK;

    .line 48
    invoke-virtual {v0}, Lo/gK;->b()I

    move-result v0

    return v0
.end method
