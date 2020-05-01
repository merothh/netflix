.class public final Lo/gV$StateListAnimator;
.super Lo/MessagePdu;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/gV;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StateListAnimator"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    const-string v0, "Config_FastProperty_PostPlayEnableRepository"

    .line 21
    invoke-direct {p0, v0}, Lo/MessagePdu;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic constructor <init>(Lo/amc;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Lo/gV$StateListAnimator;-><init>()V

    return-void
.end method


# virtual methods
.method public final e()Z
    .locals 1

    const-string v0, "postplay_enable_repository"

    .line 27
    invoke-static {v0}, Lo/cQ;->c(Ljava/lang/String;)Lo/hq;

    move-result-object v0

    .line 25
    check-cast v0, Lo/gV;

    .line 28
    invoke-virtual {v0}, Lo/gV;->a()Z

    move-result v0

    return v0
.end method
