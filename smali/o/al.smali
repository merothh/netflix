.class public final Lo/al;
.super Lo/aj;
.source ""

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/al$Application;
    }
.end annotation


# static fields
.field public static final c:Lo/al$Application;


# instance fields
.field private final a:Lo/ap;

.field private b:I

.field private final d:Landroid/view/Choreographer;

.field private e:J

.field private final j:Lo/al$Activity;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/al$Application;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/al$Application;-><init>(Lo/amc;)V

    sput-object v0, Lo/al;->c:Lo/al$Application;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 20
    sget-object v0, Lcom/netflix/mediaclient/performance/api/capture/CaptureType;->d:Lcom/netflix/mediaclient/performance/api/capture/CaptureType;

    invoke-direct {p0, v0}, Lo/aj;-><init>(Lcom/netflix/mediaclient/performance/api/capture/CaptureType;)V

    .line 28
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    const-string v1, "Choreographer.getInstance()"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lo/al;->d:Landroid/view/Choreographer;

    .line 32
    new-instance v0, Lo/ap;

    const-string v1, "fpsAvg"

    invoke-direct {v0, v1}, Lo/ap;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lo/al;->a:Lo/ap;

    .line 39
    sget-object v0, Lo/TextViewMetrics;->e:Lo/TextViewMetrics;

    .line 166
    const-class v0, Lo/am;

    invoke-static {v0}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/am;

    invoke-virtual {v0}, Lo/am;->b()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance v1, Lo/al$Activity;

    invoke-direct {v1, p0, v0}, Lo/al$Activity;-><init>(Lo/al;Landroid/os/Looper;)V

    iput-object v1, p0, Lo/al;->j:Lo/al$Activity;

    return-void
.end method

.method private final c(F)V
    .locals 1

    .line 77
    iget-object v0, p0, Lo/al;->j:Lo/al$Activity;

    invoke-virtual {v0}, Lo/al$Activity;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 78
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 79
    iget-object p1, p0, Lo/al;->j:Lo/al$Activity;

    invoke-virtual {p1, v0}, Lo/al$Activity;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method


# virtual methods
.method public b()V
    .locals 2

    .line 109
    invoke-super {p0}, Lo/aj;->b()V

    .line 111
    sget-object v0, Lo/al;->c:Lo/al$Application;

    check-cast v0, Lo/MessagePdu;

    .line 112
    iget-object v0, p0, Lo/al;->d:Landroid/view/Choreographer;

    move-object v1, p0

    check-cast v1, Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    return-void
.end method

.method public b(Ljava/lang/String;F)V
    .locals 1

    const-string v0, "captureName"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "PerformanceCapture"

    .line 127
    invoke-static {p1}, Lo/aeB;->e(Ljava/lang/String;)Z

    .line 129
    iget-object p1, p0, Lo/al;->a:Lo/ap;

    invoke-virtual {p1, p2}, Lo/ap;->b(F)V

    .line 130
    sget-object p1, Lo/al;->c:Lo/al$Application;

    check-cast p1, Lo/MessagePdu;

    return-void
.end method

.method public c()Z
    .locals 1

    .line 119
    iget-object v0, p0, Lo/al;->a:Lo/ap;

    invoke-virtual {v0}, Lo/ap;->d()Z

    move-result v0

    return v0
.end method

.method public d()V
    .locals 2

    .line 92
    invoke-static {}, Lo/adu;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 97
    :cond_0
    invoke-virtual {p0}, Lo/al;->b()V

    .line 99
    invoke-super {p0}, Lo/aj;->d()V

    .line 101
    sget-object v0, Lo/al;->c:Lo/al$Application;

    check-cast v0, Lo/MessagePdu;

    .line 102
    iget-object v0, p0, Lo/al;->d:Landroid/view/Choreographer;

    move-object v1, p0

    check-cast v1, Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    return-void
.end method

.method public doFrame(J)V
    .locals 5

    .line 52
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p1

    .line 54
    iget-wide v0, p0, Lo/al;->e:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 56
    iput-wide p1, p0, Lo/al;->e:J

    goto :goto_0

    :cond_0
    sub-long v0, p1, v0

    long-to-float v0, v0

    const/high16 v1, 0x447a0000    # 1000.0f

    cmpl-float v2, v0, v1

    if-lez v2, :cond_1

    .line 61
    iget v2, p0, Lo/al;->b:I

    int-to-float v2, v2

    mul-float v2, v2, v1

    div-float/2addr v2, v0

    invoke-direct {p0, v2}, Lo/al;->c(F)V

    const/4 v0, 0x0

    .line 62
    iput v0, p0, Lo/al;->b:I

    .line 63
    iput-wide p1, p0, Lo/al;->e:J

    .line 68
    :cond_1
    :goto_0
    iget p1, p0, Lo/al;->b:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lo/al;->b:I

    .line 69
    iget-object p1, p0, Lo/al;->d:Landroid/view/Choreographer;

    move-object p2, p0

    check-cast p2, Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {p1, p2}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    return-void
.end method

.method public e()V
    .locals 0

    .line 84
    invoke-super {p0}, Lo/aj;->e()V

    return-void
.end method

.method public j()V
    .locals 1

    const-string v0, "PerformanceCapture"

    .line 141
    invoke-static {v0}, Lo/aeB;->e(Ljava/lang/String;)Z

    .line 142
    iget-object v0, p0, Lo/al;->a:Lo/ap;

    invoke-virtual {v0}, Lo/ap;->a()V

    return-void
.end method

.method public toJSONObject()Lorg/json/JSONObject;
    .locals 3

    .line 134
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 135
    iget-object v1, p0, Lo/al;->a:Lo/ap;

    invoke-virtual {v1}, Lo/ap;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "fpsAvg"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method
