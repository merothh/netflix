.class public final Lo/gQ;
.super Lo/hq;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/gQ$Activity;
    }
.end annotation


# static fields
.field public static final e:Lo/gQ$Activity;


# instance fields
.field private delayPostInMs:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "delayPostInMs"
    .end annotation
.end field

.field private fetchPostPlayDataAheadVideoEndInMs:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "fetchPostPlayDataAheadVideoEndInMs"
    .end annotation
.end field

.field private inactivityTimeoutInMs:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "inactivityTimeoutInMs"
    .end annotation
.end field

.field private inactivityTimeoutWhenTalkBackOnInMs:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "inactivityTimeoutWhenTalkBackOnInMs"
    .end annotation
.end field

.field private pauseLockScreenTimeoutInMs:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "pauseLockScreenTimeoutInMs"
    .end annotation
.end field

.field private pauseTimeoutInMs:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "pauseTimeoutInMs"
    .end annotation
.end field

.field private playbackSeekWindowSizeInMs:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "playbackSeekWindowSizeInMs"
    .end annotation
.end field

.field private skipDeltaInMs:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "skipDeltaInMs"
    .end annotation
.end field

.field private volumeTimeoutInMs:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "volumeTimeoutInMs"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/gQ$Activity;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/gQ$Activity;-><init>(Lo/amc;)V

    sput-object v0, Lo/gQ;->e:Lo/gQ$Activity;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Lo/hq;-><init>()V

    const v0, 0x1d4c0

    .line 13
    iput v0, p0, Lo/gQ;->pauseLockScreenTimeoutInMs:I

    const/16 v0, 0x1388

    .line 19
    iput v0, p0, Lo/gQ;->inactivityTimeoutInMs:I

    const/16 v0, 0x1f40

    .line 22
    iput v0, p0, Lo/gQ;->inactivityTimeoutWhenTalkBackOnInMs:I

    const/16 v0, 0x1f4

    .line 30
    iput v0, p0, Lo/gQ;->volumeTimeoutInMs:I

    const/16 v0, 0x3e8

    .line 36
    iput v0, p0, Lo/gQ;->delayPostInMs:I

    const v0, 0xdbba0

    .line 44
    iput v0, p0, Lo/gQ;->pauseTimeoutInMs:I

    const/16 v0, 0x2710

    .line 47
    iput v0, p0, Lo/gQ;->skipDeltaInMs:I

    const v0, 0xea60

    .line 54
    iput v0, p0, Lo/gQ;->fetchPostPlayDataAheadVideoEndInMs:I

    const/16 v0, 0x7d0

    .line 57
    iput v0, p0, Lo/gQ;->playbackSeekWindowSizeInMs:I

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 19
    iget v0, p0, Lo/gQ;->inactivityTimeoutInMs:I

    return v0
.end method

.method public final b()I
    .locals 1

    .line 30
    iget v0, p0, Lo/gQ;->volumeTimeoutInMs:I

    return v0
.end method

.method public final c()I
    .locals 1

    .line 13
    iget v0, p0, Lo/gQ;->pauseLockScreenTimeoutInMs:I

    return v0
.end method

.method public final d()I
    .locals 1

    .line 22
    iget v0, p0, Lo/gQ;->inactivityTimeoutWhenTalkBackOnInMs:I

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    const-string v0, "player_ui"

    return-object v0
.end method

.method public final f()I
    .locals 1

    .line 47
    iget v0, p0, Lo/gQ;->skipDeltaInMs:I

    return v0
.end method

.method public final g()I
    .locals 1

    .line 57
    iget v0, p0, Lo/gQ;->playbackSeekWindowSizeInMs:I

    return v0
.end method

.method public final h()I
    .locals 1

    .line 36
    iget v0, p0, Lo/gQ;->delayPostInMs:I

    return v0
.end method

.method public final i()I
    .locals 1

    .line 54
    iget v0, p0, Lo/gQ;->fetchPostPlayDataAheadVideoEndInMs:I

    return v0
.end method

.method public final j()I
    .locals 1

    .line 44
    iget v0, p0, Lo/gQ;->pauseTimeoutInMs:I

    return v0
.end method
