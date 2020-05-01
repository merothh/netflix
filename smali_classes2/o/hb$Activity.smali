.class public final Lo/hb$Activity;
.super Lo/MessagePdu;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/hb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Activity"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    const-string v0, "Config_FastProperty_SendServiceTokensPolicy"

    .line 25
    invoke-direct {p0, v0}, Lo/MessagePdu;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic constructor <init>(Lo/amc;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Lo/hb$Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    const-string v0, "sendServiceTokensPolicy"

    .line 36
    invoke-static {v0}, Lo/cQ;->c(Ljava/lang/String;)Lo/hq;

    move-result-object v0

    check-cast v0, Lo/hb;

    .line 37
    invoke-virtual {v0}, Lo/hb;->d()Z

    move-result v0

    return v0
.end method

.method public final b()Z
    .locals 1

    const-string v0, "sendServiceTokensPolicy"

    .line 30
    invoke-static {v0}, Lo/cQ;->c(Ljava/lang/String;)Lo/hq;

    move-result-object v0

    check-cast v0, Lo/hb;

    .line 31
    invoke-virtual {v0}, Lo/hb;->b()Z

    move-result v0

    return v0
.end method
