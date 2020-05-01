.class Lo/DisplayManagerInternal$StateListAnimator;
.super Lo/TaskSingleDrainer;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/DisplayManagerInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "StateListAnimator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/TaskSingleDrainer<",
        "Lo/LegacyFaceDetectMapper;",
        "Lo/LegacyFaceDetectMapper;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lo/TriggerEventListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/TriggerEventListener<",
            "Lo/MacAuthenticatedInputStream;",
            "Lcom/facebook/common/memory/PooledByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lo/MacAuthenticatedInputStream;

.field private final d:Z


# direct methods
.method public constructor <init>(Lo/BrightnessChangeEvent;Lo/TriggerEventListener;Lo/MacAuthenticatedInputStream;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/BrightnessChangeEvent<",
            "Lo/LegacyFaceDetectMapper;",
            ">;",
            "Lo/TriggerEventListener<",
            "Lo/MacAuthenticatedInputStream;",
            "Lcom/facebook/common/memory/PooledByteBuffer;",
            ">;",
            "Lo/MacAuthenticatedInputStream;",
            "Z)V"
        }
    .end annotation

    .line 123
    invoke-direct {p0, p1}, Lo/TaskSingleDrainer;-><init>(Lo/BrightnessChangeEvent;)V

    .line 124
    iput-object p2, p0, Lo/DisplayManagerInternal$StateListAnimator;->a:Lo/TriggerEventListener;

    .line 125
    iput-object p3, p0, Lo/DisplayManagerInternal$StateListAnimator;->b:Lo/MacAuthenticatedInputStream;

    .line 126
    iput-boolean p4, p0, Lo/DisplayManagerInternal$StateListAnimator;->d:Z

    return-void
.end method


# virtual methods
.method public synthetic c(Ljava/lang/Object;I)V
    .locals 0

    .line 111
    check-cast p1, Lo/LegacyFaceDetectMapper;

    invoke-virtual {p0, p1, p2}, Lo/DisplayManagerInternal$StateListAnimator;->d(Lo/LegacyFaceDetectMapper;I)V

    return-void
.end method

.method public d(Lo/LegacyFaceDetectMapper;I)V
    .locals 3

    .line 132
    :try_start_0
    invoke-static {}, Lo/GeofenceHardwareService;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "EncodedMemoryCacheProducer#onNewResultImpl"

    .line 133
    invoke-static {v0}, Lo/GeofenceHardwareService;->e(Ljava/lang/String;)V

    .line 137
    :cond_0
    invoke-static {p2}, Lo/DisplayManagerInternal$StateListAnimator;->c(I)Z

    move-result v0

    if-nez v0, :cond_6

    if-eqz p1, :cond_6

    const/16 v0, 0xa

    .line 139
    invoke-static {p2, v0}, Lo/DisplayManagerInternal$StateListAnimator;->e(II)Z

    move-result v0

    if-nez v0, :cond_6

    .line 140
    invoke-virtual {p1}, Lo/LegacyFaceDetectMapper;->e()Lo/GestureLibraries;

    move-result-object v0

    sget-object v1, Lo/GestureLibraries;->a:Lo/GestureLibraries;

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 146
    :cond_1
    invoke-virtual {p1}, Lo/LegacyFaceDetectMapper;->a()Lo/CompatibilityInfo;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    if-eqz v0, :cond_4

    const/4 v1, 0x0

    .line 150
    :try_start_1
    iget-boolean v2, p0, Lo/DisplayManagerInternal$StateListAnimator;->d:Z

    if-eqz v2, :cond_2

    .line 151
    iget-object v1, p0, Lo/DisplayManagerInternal$StateListAnimator;->a:Lo/TriggerEventListener;

    iget-object v2, p0, Lo/DisplayManagerInternal$StateListAnimator;->b:Lo/MacAuthenticatedInputStream;

    invoke-interface {v1, v2, v0}, Lo/TriggerEventListener;->a(Ljava/lang/Object;Lo/CompatibilityInfo;)Lo/CompatibilityInfo;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 154
    :cond_2
    :try_start_2
    invoke-static {v0}, Lo/CompatibilityInfo;->a(Lo/CompatibilityInfo;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    if-eqz v1, :cond_4

    .line 159
    :try_start_3
    new-instance v0, Lo/LegacyFaceDetectMapper;

    invoke-direct {v0, v1}, Lo/LegacyFaceDetectMapper;-><init>(Lo/CompatibilityInfo;)V

    .line 160
    invoke-virtual {v0, p1}, Lo/LegacyFaceDetectMapper;->e(Lo/LegacyFaceDetectMapper;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 162
    :try_start_4
    invoke-static {v1}, Lo/CompatibilityInfo;->a(Lo/CompatibilityInfo;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 165
    :try_start_5
    invoke-virtual {p0}, Lo/DisplayManagerInternal$StateListAnimator;->d()Lo/BrightnessChangeEvent;

    move-result-object p1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-interface {p1, v1}, Lo/BrightnessChangeEvent;->c(F)V

    .line 166
    invoke-virtual {p0}, Lo/DisplayManagerInternal$StateListAnimator;->d()Lo/BrightnessChangeEvent;

    move-result-object p1

    invoke-interface {p1, v0, p2}, Lo/BrightnessChangeEvent;->d(Ljava/lang/Object;I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 169
    :try_start_6
    invoke-static {v0}, Lo/LegacyFaceDetectMapper;->a(Lo/LegacyFaceDetectMapper;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 175
    invoke-static {}, Lo/GeofenceHardwareService;->a()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 176
    invoke-static {}, Lo/GeofenceHardwareService;->b()V

    :cond_3
    return-void

    :catchall_0
    move-exception p1

    .line 169
    :try_start_7
    invoke-static {v0}, Lo/LegacyFaceDetectMapper;->a(Lo/LegacyFaceDetectMapper;)V

    throw p1

    :catchall_1
    move-exception p1

    .line 162
    invoke-static {v1}, Lo/CompatibilityInfo;->a(Lo/CompatibilityInfo;)V

    throw p1

    :catchall_2
    move-exception p1

    .line 154
    invoke-static {v0}, Lo/CompatibilityInfo;->a(Lo/CompatibilityInfo;)V

    throw p1

    .line 173
    :cond_4
    invoke-virtual {p0}, Lo/DisplayManagerInternal$StateListAnimator;->d()Lo/BrightnessChangeEvent;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lo/BrightnessChangeEvent;->d(Ljava/lang/Object;I)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 175
    invoke-static {}, Lo/GeofenceHardwareService;->a()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 176
    invoke-static {}, Lo/GeofenceHardwareService;->b()V

    :cond_5
    return-void

    .line 141
    :cond_6
    :goto_0
    :try_start_8
    invoke-virtual {p0}, Lo/DisplayManagerInternal$StateListAnimator;->d()Lo/BrightnessChangeEvent;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lo/BrightnessChangeEvent;->d(Ljava/lang/Object;I)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 175
    invoke-static {}, Lo/GeofenceHardwareService;->a()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 176
    invoke-static {}, Lo/GeofenceHardwareService;->b()V

    :cond_7
    return-void

    :catchall_3
    move-exception p1

    .line 175
    invoke-static {}, Lo/GeofenceHardwareService;->a()Z

    move-result p2

    if-eqz p2, :cond_8

    .line 176
    invoke-static {}, Lo/GeofenceHardwareService;->b()V

    :cond_8
    throw p1
.end method
