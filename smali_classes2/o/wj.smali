.class Lo/wj;
.super Lo/wo;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/wj$Activity;
    }
.end annotation


# instance fields
.field protected newTrackInfo:Lo/wj$Activity;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "newtrackinfo"
    .end annotation
.end field

.field protected oldTrackInfo:Lo/wj$Activity;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "oldtrackinfo"
    .end annotation
.end field

.field protected switchDelay:Ljava/lang/Long;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "switchdelay"
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lo/wo;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const-string v1, "audioswitch"

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 32
    invoke-direct/range {v0 .. v5}, Lo/wo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(J)Lo/wj;
    .locals 0

    .line 66
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lo/wj;->switchDelay:Ljava/lang/Long;

    return-object p0
.end method

.method public d(Lo/wj$Activity;)Lo/wj;
    .locals 0

    .line 56
    iput-object p1, p0, Lo/wj;->newTrackInfo:Lo/wj$Activity;

    return-object p0
.end method

.method public e(J)Lo/wj;
    .locals 0

    .line 61
    invoke-virtual {p0, p1, p2}, Lo/wj;->b(J)V

    return-object p0
.end method
