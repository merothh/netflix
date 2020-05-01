.class public final Lo/hn;
.super Lo/hq;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/hn$Activity;
    }
.end annotation


# static fields
.field public static final d:Lo/hn$Activity;


# instance fields
.field private enabledWidevineL1NotReportedButExpectedBackgroundLaunch:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "enabledWidevineL1NotReportedButExpectedBackgroundLaunch"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/hn$Activity;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/hn$Activity;-><init>(Lo/amc;)V

    sput-object v0, Lo/hn;->d:Lo/hn$Activity;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Lo/hq;-><init>()V

    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lo/hn;->enabledWidevineL1NotReportedButExpectedBackgroundLaunch:Z

    return-void
.end method

.method public static final d()Z
    .locals 1

    sget-object v0, Lo/hn;->d:Lo/hn$Activity;

    invoke-virtual {v0}, Lo/hn$Activity;->b()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final c()Z
    .locals 1

    .line 10
    iget-boolean v0, p0, Lo/hn;->enabledWidevineL1NotReportedButExpectedBackgroundLaunch:Z

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    const-string v0, "widevineFailureHandling"

    return-object v0
.end method
