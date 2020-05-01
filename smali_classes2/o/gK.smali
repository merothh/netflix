.class public final Lo/gK;
.super Lo/hq;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/gK$Application;
    }
.end annotation


# static fields
.field public static final a:Lo/gK$Application;


# instance fields
.field private osUpgradeErrorCount:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "osUpgradeErrorCount"
    .end annotation
.end field

.field private osUpgradeRecoveryEnabled:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "osUpgradeRecoveryEnabled"
    .end annotation
.end field

.field private playableErrorCount:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "playableErrorCount"
    .end annotation
.end field

.field private playableRecoveryEnabled:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "playableRecoveryEnabled"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/gK$Application;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/gK$Application;-><init>(Lo/amc;)V

    sput-object v0, Lo/gK;->a:Lo/gK$Application;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Lo/hq;-><init>()V

    const/4 v0, 0x1

    .line 19
    iput-boolean v0, p0, Lo/gK;->osUpgradeRecoveryEnabled:Z

    .line 22
    iput v0, p0, Lo/gK;->osUpgradeErrorCount:I

    .line 26
    iput-boolean v0, p0, Lo/gK;->playableRecoveryEnabled:Z

    const/4 v0, 0x2

    .line 30
    iput v0, p0, Lo/gK;->playableErrorCount:I

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .line 19
    iget-boolean v0, p0, Lo/gK;->osUpgradeRecoveryEnabled:Z

    return v0
.end method

.method public final b()I
    .locals 1

    .line 22
    iget v0, p0, Lo/gK;->osUpgradeErrorCount:I

    return v0
.end method

.method public final c()I
    .locals 1

    .line 30
    iget v0, p0, Lo/gK;->playableErrorCount:I

    return v0
.end method

.method public final d()Z
    .locals 1

    .line 26
    iget-boolean v0, p0, Lo/gK;->playableRecoveryEnabled:Z

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    const-string v0, "offlineRecovery"

    return-object v0
.end method
