.class public final Lo/fZ$TaskDescription;
.super Lo/MessagePdu;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/fZ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TaskDescription"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    const-string v0, "Config_FastProperty_DPTabsInTablets"

    .line 21
    invoke-direct {p0, v0}, Lo/MessagePdu;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic constructor <init>(Lo/amc;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Lo/fZ$TaskDescription;-><init>()V

    return-void
.end method


# virtual methods
.method public final b()Z
    .locals 1

    const-string v0, "enable_dp_tabs_in_tablets"

    .line 26
    invoke-static {v0}, Lo/cQ;->c(Ljava/lang/String;)Lo/hq;

    move-result-object v0

    .line 25
    check-cast v0, Lo/fZ;

    .line 27
    invoke-virtual {v0}, Lo/fZ;->c()Z

    move-result v0

    return v0
.end method