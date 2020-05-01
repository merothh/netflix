.class Lo/TypeReference$Activity;
.super Lo/TypeReference$TaskDescription;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/TypeReference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Activity"
.end annotation


# instance fields
.field private final a:Lo/CameraDeviceState;

.field private final b:Lo/CaptureCollector;

.field private c:I

.field final synthetic d:Lo/TypeReference;


# direct methods
.method public constructor <init>(Lo/TypeReference;Lo/BrightnessChangeEvent;Lo/HdmiTimerRecordSources;Lo/CaptureCollector;Lo/CameraDeviceState;ZI)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/BrightnessChangeEvent<",
            "Lo/CompatibilityInfo<",
            "Lo/LegacyRequestMapper;",
            ">;>;",
            "Lo/HdmiTimerRecordSources;",
            "Lo/CaptureCollector;",
            "Lo/CameraDeviceState;",
            "ZI)V"
        }
    .end annotation

    .line 470
    iput-object p1, p0, Lo/TypeReference$Activity;->d:Lo/TypeReference;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p6

    move v5, p7

    .line 471
    invoke-direct/range {v0 .. v5}, Lo/TypeReference$TaskDescription;-><init>(Lo/TypeReference;Lo/BrightnessChangeEvent;Lo/HdmiTimerRecordSources;ZI)V

    .line 472
    invoke-static {p4}, Lo/StringParceledListSlice;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/CaptureCollector;

    iput-object p1, p0, Lo/TypeReference$Activity;->b:Lo/CaptureCollector;

    .line 473
    invoke-static {p5}, Lo/StringParceledListSlice;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/CameraDeviceState;

    iput-object p1, p0, Lo/TypeReference$Activity;->a:Lo/CameraDeviceState;

    const/4 p1, 0x0

    .line 474
    iput p1, p0, Lo/TypeReference$Activity;->c:I

    return-void
.end method


# virtual methods
.method protected b()Lo/LegacyResultMapper;
    .locals 2

    .line 510
    iget-object v0, p0, Lo/TypeReference$Activity;->a:Lo/CameraDeviceState;

    iget-object v1, p0, Lo/TypeReference$Activity;->b:Lo/CaptureCollector;

    invoke-virtual {v1}, Lo/CaptureCollector;->a()I

    move-result v1

    invoke-interface {v0, v1}, Lo/CameraDeviceState;->a(I)Lo/LegacyResultMapper;

    move-result-object v0

    return-object v0
.end method

.method protected d(Lo/LegacyFaceDetectMapper;)I
    .locals 0

    .line 505
    iget-object p1, p0, Lo/TypeReference$Activity;->b:Lo/CaptureCollector;

    invoke-virtual {p1}, Lo/CaptureCollector;->e()I

    move-result p1

    return p1
.end method

.method protected declared-synchronized d(Lo/LegacyFaceDetectMapper;I)Z
    .locals 3

    monitor-enter p0

    .line 479
    :try_start_0
    invoke-super {p0, p1, p2}, Lo/TypeReference$TaskDescription;->d(Lo/LegacyFaceDetectMapper;I)Z

    move-result v0

    .line 480
    invoke-static {p2}, Lo/TypeReference$Activity;->c(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x8

    invoke-static {p2, v1}, Lo/TypeReference$Activity;->b(II)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_0
    const/4 v1, 0x4

    .line 481
    invoke-static {p2, v1}, Lo/TypeReference$Activity;->b(II)Z

    move-result p2

    if-nez p2, :cond_4

    .line 482
    invoke-static {p1}, Lo/LegacyFaceDetectMapper;->c(Lo/LegacyFaceDetectMapper;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 483
    invoke-virtual {p1}, Lo/LegacyFaceDetectMapper;->e()Lo/GestureLibraries;

    move-result-object p2

    sget-object v1, Lo/GestureLibrary;->d:Lo/GestureLibraries;

    if-ne p2, v1, :cond_4

    .line 484
    iget-object p2, p0, Lo/TypeReference$Activity;->b:Lo/CaptureCollector;

    invoke-virtual {p2, p1}, Lo/CaptureCollector;->b(Lo/LegacyFaceDetectMapper;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p2, 0x0

    if-nez p1, :cond_1

    .line 485
    monitor-exit p0

    return p2

    .line 487
    :cond_1
    :try_start_1
    iget-object p1, p0, Lo/TypeReference$Activity;->b:Lo/CaptureCollector;

    invoke-virtual {p1}, Lo/CaptureCollector;->a()I

    move-result p1

    .line 488
    iget v1, p0, Lo/TypeReference$Activity;->c:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-gt p1, v1, :cond_2

    .line 490
    monitor-exit p0

    return p2

    .line 492
    :cond_2
    :try_start_2
    iget-object v1, p0, Lo/TypeReference$Activity;->a:Lo/CameraDeviceState;

    iget v2, p0, Lo/TypeReference$Activity;->c:I

    invoke-interface {v1, v2}, Lo/CameraDeviceState;->e(I)I

    move-result v1

    if-ge p1, v1, :cond_3

    iget-object v1, p0, Lo/TypeReference$Activity;->b:Lo/CaptureCollector;

    .line 493
    invoke-virtual {v1}, Lo/CaptureCollector;->b()Z

    move-result v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v1, :cond_3

    .line 496
    monitor-exit p0

    return p2

    .line 498
    :cond_3
    :try_start_3
    iput p1, p0, Lo/TypeReference$Activity;->c:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 500
    :cond_4
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
