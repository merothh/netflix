.class public final Lo/gh$StateListAnimator;
.super Lo/MessagePdu;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/gh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StateListAnimator"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    const-string v0, "Config_FastProperty_DetailsPageLoadingTracker"

    .line 20
    invoke-direct {p0, v0}, Lo/MessagePdu;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic constructor <init>(Lo/amc;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lo/gh$StateListAnimator;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    const-string v0, "enable_dp_loading_tracker"

    .line 25
    invoke-static {v0}, Lo/cQ;->c(Ljava/lang/String;)Lo/hq;

    move-result-object v0

    .line 24
    check-cast v0, Lo/gh;

    .line 26
    invoke-virtual {v0}, Lo/gh;->d()Z

    move-result v0

    return v0
.end method
