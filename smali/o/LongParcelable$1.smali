.class Lo/LongParcelable$1;
.super Lo/TaskSingleDrainer;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/LongParcelable;->a(Lo/BrightnessChangeEvent;Lo/MacAuthenticatedInputStream;Z)Lo/BrightnessChangeEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
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
.field final synthetic a:Lo/MacAuthenticatedInputStream;

.field final synthetic c:Lo/LongParcelable;

.field final synthetic e:Z


# direct methods
.method constructor <init>(Lo/LongParcelable;Lo/BrightnessChangeEvent;Lo/MacAuthenticatedInputStream;Z)V
    .locals 0

    .line 118
    iput-object p1, p0, Lo/LongParcelable$1;->c:Lo/LongParcelable;

    iput-object p3, p0, Lo/LongParcelable$1;->a:Lo/MacAuthenticatedInputStream;

    iput-boolean p4, p0, Lo/LongParcelable$1;->e:Z

    invoke-direct {p0, p2}, Lo/TaskSingleDrainer;-><init>(Lo/BrightnessChangeEvent;)V

    return-void
.end method


# virtual methods
.method public b(Lo/CompatibilityInfo;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/CompatibilityInfo<",
            "Lo/LegacyRequestMapper;",
            ">;I)V"
        }
    .end annotation

    .line 123
    :try_start_0
    invoke-static {}, Lo/GeofenceHardwareService;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "BitmapMemoryCacheProducer#onNewResultImpl"

    .line 124
    invoke-static {v0}, Lo/GeofenceHardwareService;->e(Ljava/lang/String;)V

    .line 126
    :cond_0
    invoke-static {p2}, Lo/LongParcelable$1;->e(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez p1, :cond_3

    if-eqz v0, :cond_1

    .line 130
    invoke-virtual {p0}, Lo/LongParcelable$1;->d()Lo/BrightnessChangeEvent;

    move-result-object p1

    invoke-interface {p1, v1, p2}, Lo/BrightnessChangeEvent;->d(Ljava/lang/Object;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 172
    :cond_1
    invoke-static {}, Lo/GeofenceHardwareService;->a()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 173
    invoke-static {}, Lo/GeofenceHardwareService;->b()V

    :cond_2
    return-void

    .line 135
    :cond_3
    :try_start_1
    invoke-virtual {p1}, Lo/CompatibilityInfo;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/LegacyRequestMapper;

    invoke-virtual {v2}, Lo/LegacyRequestMapper;->d()Z

    move-result v2

    if-nez v2, :cond_d

    const/16 v2, 0x8

    invoke-static {p2, v2}, Lo/LongParcelable$1;->b(II)Z

    move-result v2

    if-eqz v2, :cond_4

    goto/16 :goto_2

    :cond_4
    if-nez v0, :cond_8

    .line 142
    iget-object v2, p0, Lo/LongParcelable$1;->c:Lo/LongParcelable;

    invoke-static {v2}, Lo/LongParcelable;->e(Lo/LongParcelable;)Lo/TriggerEventListener;

    move-result-object v2

    iget-object v3, p0, Lo/LongParcelable$1;->a:Lo/MacAuthenticatedInputStream;

    invoke-interface {v2, v3}, Lo/TriggerEventListener;->a(Ljava/lang/Object;)Lo/CompatibilityInfo;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz v2, :cond_8

    .line 145
    :try_start_2
    invoke-virtual {p1}, Lo/CompatibilityInfo;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/LegacyRequestMapper;

    invoke-virtual {v3}, Lo/LegacyRequestMapper;->b()Lo/LegacyResultMapper;

    move-result-object v3

    .line 146
    invoke-virtual {v2}, Lo/CompatibilityInfo;->a()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/LegacyRequestMapper;

    invoke-virtual {v4}, Lo/LegacyRequestMapper;->b()Lo/LegacyResultMapper;

    move-result-object v4

    .line 147
    invoke-interface {v4}, Lo/LegacyResultMapper;->c()Z

    move-result v5

    if-nez v5, :cond_6

    .line 148
    invoke-interface {v4}, Lo/LegacyResultMapper;->e()I

    move-result v4

    invoke-interface {v3}, Lo/LegacyResultMapper;->e()I

    move-result v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-lt v4, v3, :cond_5

    goto :goto_0

    .line 153
    :cond_5
    :try_start_3
    invoke-static {v2}, Lo/CompatibilityInfo;->a(Lo/CompatibilityInfo;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_1

    .line 149
    :cond_6
    :goto_0
    :try_start_4
    invoke-virtual {p0}, Lo/LongParcelable$1;->d()Lo/BrightnessChangeEvent;

    move-result-object p1

    invoke-interface {p1, v2, p2}, Lo/BrightnessChangeEvent;->d(Ljava/lang/Object;I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 153
    :try_start_5
    invoke-static {v2}, Lo/CompatibilityInfo;->a(Lo/CompatibilityInfo;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 172
    invoke-static {}, Lo/GeofenceHardwareService;->a()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 173
    invoke-static {}, Lo/GeofenceHardwareService;->b()V

    :cond_7
    return-void

    :catchall_0
    move-exception p1

    .line 153
    :try_start_6
    invoke-static {v2}, Lo/CompatibilityInfo;->a(Lo/CompatibilityInfo;)V

    throw p1

    .line 159
    :cond_8
    :goto_1
    iget-boolean v2, p0, Lo/LongParcelable$1;->e:Z

    if-eqz v2, :cond_9

    .line 160
    iget-object v1, p0, Lo/LongParcelable$1;->c:Lo/LongParcelable;

    invoke-static {v1}, Lo/LongParcelable;->e(Lo/LongParcelable;)Lo/TriggerEventListener;

    move-result-object v1

    iget-object v2, p0, Lo/LongParcelable$1;->a:Lo/MacAuthenticatedInputStream;

    invoke-interface {v1, v2, p1}, Lo/TriggerEventListener;->a(Ljava/lang/Object;Lo/CompatibilityInfo;)Lo/CompatibilityInfo;

    move-result-object v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :cond_9
    if-eqz v0, :cond_a

    .line 164
    :try_start_7
    invoke-virtual {p0}, Lo/LongParcelable$1;->d()Lo/BrightnessChangeEvent;

    move-result-object v0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-interface {v0, v2}, Lo/BrightnessChangeEvent;->c(F)V

    .line 166
    :cond_a
    invoke-virtual {p0}, Lo/LongParcelable$1;->d()Lo/BrightnessChangeEvent;

    move-result-object v0

    if-eqz v1, :cond_b

    move-object p1, v1

    .line 167
    :cond_b
    invoke-interface {v0, p1, p2}, Lo/BrightnessChangeEvent;->d(Ljava/lang/Object;I)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 169
    :try_start_8
    invoke-static {v1}, Lo/CompatibilityInfo;->a(Lo/CompatibilityInfo;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 172
    invoke-static {}, Lo/GeofenceHardwareService;->a()Z

    move-result p1

    if-eqz p1, :cond_c

    .line 173
    invoke-static {}, Lo/GeofenceHardwareService;->b()V

    :cond_c
    return-void

    :catchall_1
    move-exception p1

    .line 169
    :try_start_9
    invoke-static {v1}, Lo/CompatibilityInfo;->a(Lo/CompatibilityInfo;)V

    throw p1

    .line 136
    :cond_d
    :goto_2
    invoke-virtual {p0}, Lo/LongParcelable$1;->d()Lo/BrightnessChangeEvent;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lo/BrightnessChangeEvent;->d(Ljava/lang/Object;I)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 172
    invoke-static {}, Lo/GeofenceHardwareService;->a()Z

    move-result p1

    if-eqz p1, :cond_e

    .line 173
    invoke-static {}, Lo/GeofenceHardwareService;->b()V

    :cond_e
    return-void

    :catchall_2
    move-exception p1

    .line 172
    invoke-static {}, Lo/GeofenceHardwareService;->a()Z

    move-result p2

    if-eqz p2, :cond_f

    .line 173
    invoke-static {}, Lo/GeofenceHardwareService;->b()V

    :cond_f
    throw p1
.end method

.method public synthetic c(Ljava/lang/Object;I)V
    .locals 0

    .line 118
    check-cast p1, Lo/CompatibilityInfo;

    invoke-virtual {p0, p1, p2}, Lo/LongParcelable$1;->b(Lo/CompatibilityInfo;I)V

    return-void
.end method
