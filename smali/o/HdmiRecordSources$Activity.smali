.class public Lo/HdmiRecordSources$Activity;
.super Lo/TaskSingleDrainer;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/HdmiRecordSources;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Activity"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/TaskSingleDrainer<",
        "Lo/CompatibilityInfo<",
        "Lo/LegacyRequestMapper;",
        ">;",
        "Lo/CompatibilityInfo<",
        "Lo/LegacyRequestMapper;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final a:Lo/MacAuthenticatedInputStream;

.field private final c:Lo/TriggerEventListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/TriggerEventListener<",
            "Lo/MacAuthenticatedInputStream;",
            "Lo/LegacyRequestMapper;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Z

.field private final e:Z


# direct methods
.method public constructor <init>(Lo/BrightnessChangeEvent;Lo/MacAuthenticatedInputStream;ZLo/TriggerEventListener;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/BrightnessChangeEvent<",
            "Lo/CompatibilityInfo<",
            "Lo/LegacyRequestMapper;",
            ">;>;",
            "Lo/MacAuthenticatedInputStream;",
            "Z",
            "Lo/TriggerEventListener<",
            "Lo/MacAuthenticatedInputStream;",
            "Lo/LegacyRequestMapper;",
            ">;Z)V"
        }
    .end annotation

    .line 102
    invoke-direct {p0, p1}, Lo/TaskSingleDrainer;-><init>(Lo/BrightnessChangeEvent;)V

    .line 103
    iput-object p2, p0, Lo/HdmiRecordSources$Activity;->a:Lo/MacAuthenticatedInputStream;

    .line 104
    iput-boolean p3, p0, Lo/HdmiRecordSources$Activity;->e:Z

    .line 105
    iput-object p4, p0, Lo/HdmiRecordSources$Activity;->c:Lo/TriggerEventListener;

    .line 106
    iput-boolean p5, p0, Lo/HdmiRecordSources$Activity;->d:Z

    return-void
.end method


# virtual methods
.method protected synthetic c(Ljava/lang/Object;I)V
    .locals 0

    .line 87
    check-cast p1, Lo/CompatibilityInfo;

    invoke-virtual {p0, p1, p2}, Lo/HdmiRecordSources$Activity;->e(Lo/CompatibilityInfo;I)V

    return-void
.end method

.method protected e(Lo/CompatibilityInfo;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/CompatibilityInfo<",
            "Lo/LegacyRequestMapper;",
            ">;I)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 115
    invoke-static {p2}, Lo/HdmiRecordSources$Activity;->e(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 116
    invoke-virtual {p0}, Lo/HdmiRecordSources$Activity;->d()Lo/BrightnessChangeEvent;

    move-result-object p1

    invoke-interface {p1, v0, p2}, Lo/BrightnessChangeEvent;->d(Ljava/lang/Object;I)V

    :cond_0
    return-void

    .line 121
    :cond_1
    invoke-static {p2}, Lo/HdmiRecordSources$Activity;->c(I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lo/HdmiRecordSources$Activity;->e:Z

    if-nez v1, :cond_2

    return-void

    .line 126
    :cond_2
    iget-boolean v1, p0, Lo/HdmiRecordSources$Activity;->d:Z

    if-eqz v1, :cond_3

    .line 127
    iget-object v0, p0, Lo/HdmiRecordSources$Activity;->c:Lo/TriggerEventListener;

    iget-object v1, p0, Lo/HdmiRecordSources$Activity;->a:Lo/MacAuthenticatedInputStream;

    invoke-interface {v0, v1, p1}, Lo/TriggerEventListener;->a(Ljava/lang/Object;Lo/CompatibilityInfo;)Lo/CompatibilityInfo;

    move-result-object v0

    .line 130
    :cond_3
    :try_start_0
    invoke-virtual {p0}, Lo/HdmiRecordSources$Activity;->d()Lo/BrightnessChangeEvent;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-interface {v1, v2}, Lo/BrightnessChangeEvent;->c(F)V

    .line 131
    invoke-virtual {p0}, Lo/HdmiRecordSources$Activity;->d()Lo/BrightnessChangeEvent;

    move-result-object v1

    if-eqz v0, :cond_4

    move-object p1, v0

    :cond_4
    invoke-interface {v1, p1, p2}, Lo/BrightnessChangeEvent;->d(Ljava/lang/Object;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    invoke-static {v0}, Lo/CompatibilityInfo;->a(Lo/CompatibilityInfo;)V

    return-void

    :catchall_0
    move-exception p1

    invoke-static {v0}, Lo/CompatibilityInfo;->a(Lo/CompatibilityInfo;)V

    throw p1
.end method
