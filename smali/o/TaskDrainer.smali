.class public Lo/TaskDrainer;
.super Lo/HdmiClient;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/HdmiClient<",
        "Landroid/util/Pair<",
        "Lo/MacAuthenticatedInputStream;",
        "Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;",
        ">;",
        "Lo/CompatibilityInfo<",
        "Lo/LegacyRequestMapper;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final e:Lo/SensorEventListener;


# direct methods
.method public constructor <init>(Lo/SensorEventListener;Lo/InputDeviceIdentifier;)V
    .locals 0

    .line 29
    invoke-direct {p0, p2}, Lo/HdmiClient;-><init>(Lo/InputDeviceIdentifier;)V

    .line 30
    iput-object p1, p0, Lo/TaskDrainer;->e:Lo/SensorEventListener;

    return-void
.end method


# virtual methods
.method protected synthetic a(Lo/HdmiTimerRecordSources;)Ljava/lang/Object;
    .locals 0

    .line 20
    invoke-virtual {p0, p1}, Lo/TaskDrainer;->e(Lo/HdmiTimerRecordSources;)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method public d(Lo/CompatibilityInfo;)Lo/CompatibilityInfo;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/CompatibilityInfo<",
            "Lo/LegacyRequestMapper;",
            ">;)",
            "Lo/CompatibilityInfo<",
            "Lo/LegacyRequestMapper;",
            ">;"
        }
    .end annotation

    .line 44
    invoke-static {p1}, Lo/CompatibilityInfo;->d(Lo/CompatibilityInfo;)Lo/CompatibilityInfo;

    move-result-object p1

    return-object p1
.end method

.method protected e(Lo/HdmiTimerRecordSources;)Landroid/util/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/HdmiTimerRecordSources;",
            ")",
            "Landroid/util/Pair<",
            "Lo/MacAuthenticatedInputStream;",
            "Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;",
            ">;"
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lo/TaskDrainer;->e:Lo/SensorEventListener;

    .line 37
    invoke-interface {p1}, Lo/HdmiTimerRecordSources;->d()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object v1

    .line 38
    invoke-interface {p1}, Lo/HdmiTimerRecordSources;->c()Ljava/lang/Object;

    move-result-object v2

    .line 36
    invoke-interface {v0, v1, v2}, Lo/SensorEventListener;->e(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;)Lo/MacAuthenticatedInputStream;

    move-result-object v0

    .line 39
    invoke-interface {p1}, Lo/HdmiTimerRecordSources;->a()Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    move-result-object p1

    .line 35
    invoke-static {v0, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method public synthetic e(Ljava/io/Closeable;)Ljava/io/Closeable;
    .locals 0

    .line 20
    check-cast p1, Lo/CompatibilityInfo;

    invoke-virtual {p0, p1}, Lo/TaskDrainer;->d(Lo/CompatibilityInfo;)Lo/CompatibilityInfo;

    move-result-object p1

    return-object p1
.end method
