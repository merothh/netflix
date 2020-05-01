.class public final Lo/gw$TaskDescription;
.super Lo/MessagePdu;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/gw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TaskDescription"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    const-string v0, "Config_FastProperty_MdxDiscoveryLogging"

    .line 19
    invoke-direct {p0, v0}, Lo/MessagePdu;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic constructor <init>(Lo/amc;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Lo/gw$TaskDescription;-><init>()V

    return-void
.end method


# virtual methods
.method public final e()Z
    .locals 1

    const-string v0, "mdxDiscoveryLogging"

    .line 24
    invoke-static {v0}, Lo/cQ;->c(Ljava/lang/String;)Lo/hq;

    move-result-object v0

    .line 23
    check-cast v0, Lo/gw;

    .line 25
    invoke-virtual {v0}, Lo/gw;->d()Z

    move-result v0

    return v0
.end method
