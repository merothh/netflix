.class public final Lo/fY$TaskDescription;
.super Lo/MessagePdu;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/fY;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TaskDescription"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    const-string v0, "Config_FastProperty_Config_FastProperty_Crypto"

    .line 35
    invoke-direct {p0, v0}, Lo/MessagePdu;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic constructor <init>(Lo/amc;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lo/fY$TaskDescription;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    const-string v0, "crypto_overrides"

    .line 43
    invoke-static {v0}, Lo/cQ;->c(Ljava/lang/String;)Lo/hq;

    move-result-object v0

    check-cast v0, Lo/fY;

    .line 44
    invoke-virtual {v0}, Lo/fY;->d()Z

    move-result v0

    return v0
.end method

.method public final b()Z
    .locals 1

    const-string v0, "crypto_overrides"

    .line 55
    invoke-static {v0}, Lo/cQ;->c(Ljava/lang/String;)Lo/hq;

    move-result-object v0

    check-cast v0, Lo/fY;

    .line 56
    invoke-virtual {v0}, Lo/fY;->c()Z

    move-result v0

    return v0
.end method

.method public final c()I
    .locals 1

    const-string v0, "crypto_overrides"

    .line 67
    invoke-static {v0}, Lo/cQ;->c(Ljava/lang/String;)Lo/hq;

    move-result-object v0

    check-cast v0, Lo/fY;

    .line 68
    invoke-virtual {v0}, Lo/fY;->i()I

    move-result v0

    return v0
.end method

.method public final d()Z
    .locals 1

    const-string v0, "crypto_overrides"

    .line 49
    invoke-static {v0}, Lo/cQ;->c(Ljava/lang/String;)Lo/hq;

    move-result-object v0

    check-cast v0, Lo/fY;

    .line 50
    invoke-virtual {v0}, Lo/fY;->a()Z

    move-result v0

    return v0
.end method

.method public final e()I
    .locals 1

    const-string v0, "crypto_overrides"

    .line 61
    invoke-static {v0}, Lo/cQ;->c(Ljava/lang/String;)Lo/hq;

    move-result-object v0

    check-cast v0, Lo/fY;

    .line 62
    invoke-virtual {v0}, Lo/fY;->b()I

    move-result v0

    return v0
.end method
