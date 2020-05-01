.class public final Lo/gI$Activity;
.super Lo/MessagePdu;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/gI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Activity"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    const-string v0, "Config_FastProperty_PlaybackFallback"

    .line 26
    invoke-direct {p0, v0}, Lo/MessagePdu;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic constructor <init>(Lo/amc;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lo/gI$Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    const-string v0, "playback_fallback_configuration"

    .line 31
    invoke-static {v0}, Lo/cQ;->c(Ljava/lang/String;)Lo/hq;

    move-result-object v0

    check-cast v0, Lo/gI;

    .line 32
    invoke-virtual {v0}, Lo/gI;->d()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final b()Z
    .locals 1

    const-string v0, "playback_fallback_configuration"

    .line 37
    invoke-static {v0}, Lo/cQ;->c(Ljava/lang/String;)Lo/hq;

    move-result-object v0

    check-cast v0, Lo/gI;

    .line 38
    invoke-virtual {v0}, Lo/gI;->a()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
