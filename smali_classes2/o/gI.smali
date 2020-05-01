.class public final Lo/gI;
.super Lo/hq;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/gI$Activity;
    }
.end annotation


# static fields
.field public static final e:Lo/gI$Activity;


# instance fields
.field private fiveDotEightDisabled:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "fiveEightIsDisabled "
    .end annotation
.end field

.field private widevineUsageTableCorruptionFallbackDisabled:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "wdUsageTableCorruptionDisabled "
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/gI$Activity;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/gI$Activity;-><init>(Lo/amc;)V

    sput-object v0, Lo/gI;->e:Lo/gI$Activity;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Lo/hq;-><init>()V

    const/4 v0, 0x1

    .line 17
    iput-boolean v0, p0, Lo/gI;->fiveDotEightDisabled:Z

    .line 20
    iput-boolean v0, p0, Lo/gI;->widevineUsageTableCorruptionFallbackDisabled:Z

    return-void
.end method

.method public static final b()Z
    .locals 1

    sget-object v0, Lo/gI;->e:Lo/gI$Activity;

    invoke-virtual {v0}, Lo/gI$Activity;->a()Z

    move-result v0

    return v0
.end method

.method public static final c()Z
    .locals 1

    sget-object v0, Lo/gI;->e:Lo/gI$Activity;

    invoke-virtual {v0}, Lo/gI$Activity;->b()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .line 20
    iget-boolean v0, p0, Lo/gI;->widevineUsageTableCorruptionFallbackDisabled:Z

    return v0
.end method

.method public final d()Z
    .locals 1

    .line 17
    iget-boolean v0, p0, Lo/gI;->fiveDotEightDisabled:Z

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    const-string v0, "playback_fallback_configuration"

    return-object v0
.end method
