.class public final Lo/hk$ActionBar;
.super Lo/MessagePdu;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/hk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ActionBar"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    const-string v0, "Config_FastProperty_TopTenKillSwitch"

    .line 17
    invoke-direct {p0, v0}, Lo/MessagePdu;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic constructor <init>(Lo/amc;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Lo/hk$ActionBar;-><init>()V

    return-void
.end method


# virtual methods
.method public final b()Z
    .locals 1

    const-string v0, "topten_killswitch"

    .line 23
    invoke-static {v0}, Lo/cQ;->c(Ljava/lang/String;)Lo/hq;

    move-result-object v0

    .line 22
    check-cast v0, Lo/hk;

    .line 26
    invoke-virtual {v0}, Lo/hk;->d()Z

    move-result v0

    return v0
.end method
