.class Lo/TypeReference$Application;
.super Lo/TypeReference$TaskDescription;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/TypeReference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Application"
.end annotation


# instance fields
.field final synthetic b:Lo/TypeReference;


# direct methods
.method public constructor <init>(Lo/TypeReference;Lo/BrightnessChangeEvent;Lo/HdmiTimerRecordSources;ZI)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/BrightnessChangeEvent<",
            "Lo/CompatibilityInfo<",
            "Lo/LegacyRequestMapper;",
            ">;>;",
            "Lo/HdmiTimerRecordSources;",
            "ZI)V"
        }
    .end annotation

    .line 435
    iput-object p1, p0, Lo/TypeReference$Application;->b:Lo/TypeReference;

    .line 436
    invoke-direct/range {p0 .. p5}, Lo/TypeReference$TaskDescription;-><init>(Lo/TypeReference;Lo/BrightnessChangeEvent;Lo/HdmiTimerRecordSources;ZI)V

    return-void
.end method


# virtual methods
.method protected b()Lo/LegacyResultMapper;
    .locals 1

    const/4 v0, 0x0

    .line 454
    invoke-static {v0, v0, v0}, Lo/RequestHolder;->d(IZZ)Lo/LegacyResultMapper;

    move-result-object v0

    return-object v0
.end method

.method protected d(Lo/LegacyFaceDetectMapper;)I
    .locals 0

    .line 449
    invoke-virtual {p1}, Lo/LegacyFaceDetectMapper;->o()I

    move-result p1

    return p1
.end method

.method protected declared-synchronized d(Lo/LegacyFaceDetectMapper;I)Z
    .locals 1

    monitor-enter p0

    .line 441
    :try_start_0
    invoke-static {p2}, Lo/TypeReference$Application;->c(I)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 442
    monitor-exit p0

    return p1

    .line 444
    :cond_0
    :try_start_1
    invoke-super {p0, p1, p2}, Lo/TypeReference$TaskDescription;->d(Lo/LegacyFaceDetectMapper;I)Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
