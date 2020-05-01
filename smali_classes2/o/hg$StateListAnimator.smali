.class public final Lo/hg$StateListAnimator;
.super Lo/MessagePdu;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/hg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StateListAnimator"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    const-string v0, "Config_FastProperty_TopTenActivateHoldback"

    .line 26
    invoke-direct {p0, v0}, Lo/MessagePdu;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic constructor <init>(Lo/amc;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lo/hg$StateListAnimator;-><init>()V

    return-void
.end method


# virtual methods
.method public final d()Z
    .locals 1

    const-string v0, "topten_activate"

    .line 32
    invoke-static {v0}, Lo/cQ;->c(Ljava/lang/String;)Lo/hq;

    move-result-object v0

    .line 31
    check-cast v0, Lo/hg;

    .line 35
    invoke-virtual {v0}, Lo/hg;->c()Z

    move-result v0

    return v0
.end method
