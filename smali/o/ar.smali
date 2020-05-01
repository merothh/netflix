.class public final Lo/ar;
.super Lo/at;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ar$StateListAnimator;
    }
.end annotation


# static fields
.field public static final b:Lo/ar$StateListAnimator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/ar$StateListAnimator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/ar$StateListAnimator;-><init>(Lo/amc;)V

    sput-object v0, Lo/ar;->b:Lo/ar$StateListAnimator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 8
    sget-object v0, Lcom/netflix/mediaclient/performance/api/capture/CaptureType;->a:Lcom/netflix/mediaclient/performance/api/capture/CaptureType;

    const-wide/16 v1, 0x2710

    invoke-direct {p0, v0, v1, v2}, Lo/at;-><init>(Lcom/netflix/mediaclient/performance/api/capture/CaptureType;J)V

    return-void
.end method


# virtual methods
.method public final b(FFF)V
    .locals 1

    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "rAvailMem"

    .line 34
    invoke-virtual {p0, v0, p1}, Lo/ar;->e(Ljava/lang/String;F)V

    const-string p1, "rTotalMem"

    .line 35
    invoke-virtual {p0, p1, p2}, Lo/ar;->e(Ljava/lang/String;F)V

    const-string p1, "rMaxMem"

    .line 36
    invoke-virtual {p0, p1, p3}, Lo/ar;->e(Ljava/lang/String;F)V

    .line 38
    sget-object p1, Lo/ar;->b:Lo/ar$StateListAnimator;

    check-cast p1, Lo/MessagePdu;

    return-void
.end method

.method public e()V
    .locals 5

    .line 18
    sget-object v0, Lo/ar;->b:Lo/ar$StateListAnimator;

    check-cast v0, Lo/MessagePdu;

    .line 19
    invoke-super {p0}, Lo/at;->e()V

    .line 20
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    .line 22
    invoke-virtual {v0}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v1

    long-to-float v1, v1

    .line 23
    invoke-virtual {v0}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v2

    long-to-float v2, v2

    .line 24
    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v3

    long-to-float v0, v3

    .line 21
    invoke-virtual {p0, v1, v2, v0}, Lo/ar;->b(FFF)V

    return-void
.end method
