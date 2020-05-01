.class Lo/wV;
.super Lo/wo;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/wV$TaskDescription;
    }
.end annotation


# instance fields
.field protected switchDelay:Ljava/lang/Long;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "switchdelay"
    .end annotation
.end field

.field protected track:Lo/wV$TaskDescription;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "track"
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Lo/wo;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const-string v1, "timedtextswitch"

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 29
    invoke-direct/range {v0 .. v5}, Lo/wo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(J)Lo/wV;
    .locals 0

    .line 59
    invoke-virtual {p0, p1, p2}, Lo/wV;->b(J)V

    return-object p0
.end method

.method public b(Lo/wV$TaskDescription;)Lo/wV;
    .locals 0

    .line 54
    iput-object p1, p0, Lo/wV;->track:Lo/wV$TaskDescription;

    return-object p0
.end method

.method public d(J)Lo/wV;
    .locals 0

    .line 64
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lo/wV;->switchDelay:Ljava/lang/Long;

    return-object p0
.end method
