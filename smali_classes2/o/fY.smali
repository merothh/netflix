.class public final Lo/fY;
.super Lo/hq;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/fY$TaskDescription;
    }
.end annotation


# static fields
.field public static final e:Lo/fY$TaskDescription;


# instance fields
.field private enterSuspendForBackgroundLaunchTimeoutInMs:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "enterSuspendTimeoutForBackgroundLaunchInSec"
    .end annotation
.end field

.field private enterSuspendForUserInteractionTimeoutInMs:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "enterSuspendForUserInteractionTimeoutInSec"
    .end annotation
.end field

.field private releaseOnSuspend:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "releaseOnSuspend"
    .end annotation
.end field

.field private releaseOnSuspendForBackgroundLaunch:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "releaseOnSuspendForBackgroundLaunch"
    .end annotation
.end field

.field private releaseOnSuspendForUserInteraction:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "releaseOnSuspendForUserInteraction"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/fY$TaskDescription;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/fY$TaskDescription;-><init>(Lo/amc;)V

    sput-object v0, Lo/fY;->e:Lo/fY$TaskDescription;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Lo/hq;-><init>()V

    const/4 v0, 0x1

    .line 17
    iput-boolean v0, p0, Lo/fY;->releaseOnSuspend:Z

    .line 20
    iput-boolean v0, p0, Lo/fY;->releaseOnSuspendForUserInteraction:Z

    .line 23
    iput-boolean v0, p0, Lo/fY;->releaseOnSuspendForBackgroundLaunch:Z

    const v0, 0xdbba0

    .line 26
    iput v0, p0, Lo/fY;->enterSuspendForUserInteractionTimeoutInMs:I

    .line 29
    iput v0, p0, Lo/fY;->enterSuspendForBackgroundLaunchTimeoutInMs:I

    return-void
.end method

.method public static final f()Z
    .locals 1

    sget-object v0, Lo/fY;->e:Lo/fY$TaskDescription;

    invoke-virtual {v0}, Lo/fY$TaskDescription;->b()Z

    move-result v0

    return v0
.end method

.method public static final g()Z
    .locals 1

    sget-object v0, Lo/fY;->e:Lo/fY$TaskDescription;

    invoke-virtual {v0}, Lo/fY$TaskDescription;->d()Z

    move-result v0

    return v0
.end method

.method public static final h()Z
    .locals 1

    sget-object v0, Lo/fY;->e:Lo/fY$TaskDescription;

    invoke-virtual {v0}, Lo/fY$TaskDescription;->a()Z

    move-result v0

    return v0
.end method

.method public static final j()I
    .locals 1

    sget-object v0, Lo/fY;->e:Lo/fY$TaskDescription;

    invoke-virtual {v0}, Lo/fY$TaskDescription;->e()I

    move-result v0

    return v0
.end method

.method public static final l()I
    .locals 1

    sget-object v0, Lo/fY;->e:Lo/fY$TaskDescription;

    invoke-virtual {v0}, Lo/fY$TaskDescription;->c()I

    move-result v0

    return v0
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .line 20
    iget-boolean v0, p0, Lo/fY;->releaseOnSuspendForUserInteraction:Z

    return v0
.end method

.method public final b()I
    .locals 1

    .line 26
    iget v0, p0, Lo/fY;->enterSuspendForUserInteractionTimeoutInMs:I

    return v0
.end method

.method public final c()Z
    .locals 1

    .line 23
    iget-boolean v0, p0, Lo/fY;->releaseOnSuspendForBackgroundLaunch:Z

    return v0
.end method

.method public final d()Z
    .locals 1

    .line 17
    iget-boolean v0, p0, Lo/fY;->releaseOnSuspend:Z

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    const-string v0, "crypto_overrides"

    return-object v0
.end method

.method public final i()I
    .locals 1

    .line 29
    iget v0, p0, Lo/fY;->enterSuspendForBackgroundLaunchTimeoutInMs:I

    return v0
.end method
