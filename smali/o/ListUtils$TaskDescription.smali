.class Lo/ListUtils$TaskDescription;
.super Lo/TaskSingleDrainer;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ListUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TaskDescription"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/TaskSingleDrainer<",
        "Lo/LegacyFaceDetectMapper;",
        "Lo/LegacyFaceDetectMapper;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lo/BrightnessChangeEvent;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/BrightnessChangeEvent<",
            "Lo/LegacyFaceDetectMapper;",
            ">;)V"
        }
    .end annotation

    .line 34
    invoke-direct {p0, p1}, Lo/TaskSingleDrainer;-><init>(Lo/BrightnessChangeEvent;)V

    return-void
.end method

.method synthetic constructor <init>(Lo/BrightnessChangeEvent;Lo/ListUtils$1;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lo/ListUtils$TaskDescription;-><init>(Lo/BrightnessChangeEvent;)V

    return-void
.end method


# virtual methods
.method protected synthetic c(Ljava/lang/Object;I)V
    .locals 0

    .line 30
    check-cast p1, Lo/LegacyFaceDetectMapper;

    invoke-virtual {p0, p1, p2}, Lo/ListUtils$TaskDescription;->e(Lo/LegacyFaceDetectMapper;I)V

    return-void
.end method

.method protected e(Lo/LegacyFaceDetectMapper;I)V
    .locals 1

    if-nez p1, :cond_0

    .line 40
    invoke-virtual {p0}, Lo/ListUtils$TaskDescription;->d()Lo/BrightnessChangeEvent;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0, p2}, Lo/BrightnessChangeEvent;->d(Ljava/lang/Object;I)V

    return-void

    .line 43
    :cond_0
    invoke-static {p1}, Lo/LegacyFaceDetectMapper;->d(Lo/LegacyFaceDetectMapper;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 44
    invoke-virtual {p1}, Lo/LegacyFaceDetectMapper;->m()V

    .line 46
    :cond_1
    invoke-virtual {p0}, Lo/ListUtils$TaskDescription;->d()Lo/BrightnessChangeEvent;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lo/BrightnessChangeEvent;->d(Ljava/lang/Object;I)V

    return-void
.end method
