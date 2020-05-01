.class Lo/HdmiPortInfo$ActionBar;
.super Lo/TaskSingleDrainer;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/HdmiPortInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ActionBar"
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
.field private final a:Lo/GeofenceHardwareCallback;

.field private final b:Ljava/lang/String;

.field private c:Z

.field private final d:Lo/InputManagerInternal;

.field final synthetic e:Lo/HdmiPortInfo;

.field private g:Z

.field private h:I

.field private i:Z

.field private j:Lo/CompatibilityInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/CompatibilityInfo<",
            "Lo/LegacyRequestMapper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo/HdmiPortInfo;Lo/BrightnessChangeEvent;Lo/InputManagerInternal;Ljava/lang/String;Lo/GeofenceHardwareCallback;Lo/HdmiTimerRecordSources;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/BrightnessChangeEvent<",
            "Lo/CompatibilityInfo<",
            "Lo/LegacyRequestMapper;",
            ">;>;",
            "Lo/InputManagerInternal;",
            "Ljava/lang/String;",
            "Lo/GeofenceHardwareCallback;",
            "Lo/HdmiTimerRecordSources;",
            ")V"
        }
    .end annotation

    .line 98
    iput-object p1, p0, Lo/HdmiPortInfo$ActionBar;->e:Lo/HdmiPortInfo;

    .line 99
    invoke-direct {p0, p2}, Lo/TaskSingleDrainer;-><init>(Lo/BrightnessChangeEvent;)V

    const/4 p2, 0x0

    .line 83
    iput-object p2, p0, Lo/HdmiPortInfo$ActionBar;->j:Lo/CompatibilityInfo;

    const/4 p2, 0x0

    .line 86
    iput p2, p0, Lo/HdmiPortInfo$ActionBar;->h:I

    .line 88
    iput-boolean p2, p0, Lo/HdmiPortInfo$ActionBar;->i:Z

    .line 90
    iput-boolean p2, p0, Lo/HdmiPortInfo$ActionBar;->g:Z

    .line 100
    iput-object p3, p0, Lo/HdmiPortInfo$ActionBar;->d:Lo/InputManagerInternal;

    .line 101
    iput-object p4, p0, Lo/HdmiPortInfo$ActionBar;->b:Ljava/lang/String;

    .line 102
    iput-object p5, p0, Lo/HdmiPortInfo$ActionBar;->a:Lo/GeofenceHardwareCallback;

    .line 103
    new-instance p2, Lo/HdmiPortInfo$ActionBar$1;

    invoke-direct {p2, p0, p1}, Lo/HdmiPortInfo$ActionBar$1;-><init>(Lo/HdmiPortInfo$ActionBar;Lo/HdmiPortInfo;)V

    invoke-interface {p6, p2}, Lo/HdmiTimerRecordSources;->c(Lo/InputManager;)V

    return-void
.end method

.method private a()V
    .locals 2

    .line 159
    iget-object v0, p0, Lo/HdmiPortInfo$ActionBar;->e:Lo/HdmiPortInfo;

    invoke-static {v0}, Lo/HdmiPortInfo;->a(Lo/HdmiPortInfo;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lo/HdmiPortInfo$ActionBar$4;

    invoke-direct {v1, p0}, Lo/HdmiPortInfo$ActionBar$4;-><init>(Lo/HdmiPortInfo$ActionBar;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private a(Ljava/lang/Throwable;)V
    .locals 1

    .line 267
    invoke-direct {p0}, Lo/HdmiPortInfo$ActionBar;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 268
    invoke-virtual {p0}, Lo/HdmiPortInfo$ActionBar;->d()Lo/BrightnessChangeEvent;

    move-result-object v0

    invoke-interface {v0, p1}, Lo/BrightnessChangeEvent;->e(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lo/HdmiPortInfo$ActionBar;)V
    .locals 0

    .line 73
    invoke-direct {p0}, Lo/HdmiPortInfo$ActionBar;->b()V

    return-void
.end method

.method static synthetic a(Lo/HdmiPortInfo$ActionBar;Z)Z
    .locals 0

    .line 73
    iput-boolean p1, p0, Lo/HdmiPortInfo$ActionBar;->i:Z

    return p1
.end method

.method private b()V
    .locals 1

    .line 187
    monitor-enter p0

    const/4 v0, 0x0

    .line 188
    :try_start_0
    iput-boolean v0, p0, Lo/HdmiPortInfo$ActionBar;->g:Z

    .line 189
    invoke-direct {p0}, Lo/HdmiPortInfo$ActionBar;->g()Z

    move-result v0

    .line 190
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 192
    invoke-direct {p0}, Lo/HdmiPortInfo$ActionBar;->a()V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    .line 190
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private b(Lo/CompatibilityInfo;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/CompatibilityInfo<",
            "Lo/LegacyRequestMapper;",
            ">;I)V"
        }
    .end annotation

    .line 260
    invoke-static {p2}, Lo/HdmiPortInfo$ActionBar;->e(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 261
    invoke-direct {p0}, Lo/HdmiPortInfo$ActionBar;->i()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    if-eqz v0, :cond_2

    invoke-direct {p0}, Lo/HdmiPortInfo$ActionBar;->j()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 262
    :cond_1
    invoke-virtual {p0}, Lo/HdmiPortInfo$ActionBar;->d()Lo/BrightnessChangeEvent;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lo/BrightnessChangeEvent;->d(Ljava/lang/Object;I)V

    :cond_2
    return-void
.end method

.method static synthetic b(Lo/HdmiPortInfo$ActionBar;)V
    .locals 0

    .line 73
    invoke-direct {p0}, Lo/HdmiPortInfo$ActionBar;->f()V

    return-void
.end method

.method static synthetic b(Lo/HdmiPortInfo$ActionBar;Lo/CompatibilityInfo;I)V
    .locals 0

    .line 73
    invoke-direct {p0, p1, p2}, Lo/HdmiPortInfo$ActionBar;->d(Lo/CompatibilityInfo;I)V

    return-void
.end method

.method private c(Lo/InputManagerInternal;Ljava/lang/String;Lo/GeofenceHardwareCallback;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/InputManagerInternal;",
            "Ljava/lang/String;",
            "Lo/GeofenceHardwareCallback;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 234
    invoke-interface {p1, p2}, Lo/InputManagerInternal;->b(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 237
    :cond_0
    invoke-interface {p3}, Lo/GeofenceHardwareCallback;->a()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Postprocessor"

    invoke-static {p2, p1}, Lcom/facebook/common/internal/ImmutableMap;->e(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method static synthetic c(Lo/HdmiPortInfo$ActionBar;)Lo/CompatibilityInfo;
    .locals 0

    .line 73
    iget-object p0, p0, Lo/HdmiPortInfo$ActionBar;->j:Lo/CompatibilityInfo;

    return-object p0
.end method

.method static synthetic c(Lo/HdmiPortInfo$ActionBar;Lo/CompatibilityInfo;)Lo/CompatibilityInfo;
    .locals 0

    .line 73
    iput-object p1, p0, Lo/HdmiPortInfo$ActionBar;->j:Lo/CompatibilityInfo;

    return-object p1
.end method

.method static synthetic d(Lo/HdmiPortInfo$ActionBar;)I
    .locals 0

    .line 73
    iget p0, p0, Lo/HdmiPortInfo$ActionBar;->h:I

    return p0
.end method

.method private d(Lo/CompatibilityInfo;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/CompatibilityInfo<",
            "Lo/LegacyRequestMapper;",
            ">;I)V"
        }
    .end annotation

    .line 208
    invoke-static {p1}, Lo/CompatibilityInfo;->e(Lo/CompatibilityInfo;)Z

    move-result v0

    invoke-static {v0}, Lo/StringParceledListSlice;->a(Z)V

    .line 209
    invoke-virtual {p1}, Lo/CompatibilityInfo;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/LegacyRequestMapper;

    invoke-direct {p0, v0}, Lo/HdmiPortInfo$ActionBar;->d(Lo/LegacyRequestMapper;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 210
    invoke-direct {p0, p1, p2}, Lo/HdmiPortInfo$ActionBar;->b(Lo/CompatibilityInfo;I)V

    return-void

    .line 213
    :cond_0
    iget-object v0, p0, Lo/HdmiPortInfo$ActionBar;->d:Lo/InputManagerInternal;

    iget-object v1, p0, Lo/HdmiPortInfo$ActionBar;->b:Ljava/lang/String;

    const-string v2, "PostprocessorProducer"

    invoke-interface {v0, v1, v2}, Lo/InputManagerInternal;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 217
    :try_start_0
    invoke-virtual {p1}, Lo/CompatibilityInfo;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/LegacyRequestMapper;

    invoke-direct {p0, p1}, Lo/HdmiPortInfo$ActionBar;->e(Lo/LegacyRequestMapper;)Lo/CompatibilityInfo;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 224
    :try_start_1
    iget-object p1, p0, Lo/HdmiPortInfo$ActionBar;->d:Lo/InputManagerInternal;

    iget-object v1, p0, Lo/HdmiPortInfo$ActionBar;->b:Ljava/lang/String;

    iget-object v3, p0, Lo/HdmiPortInfo$ActionBar;->d:Lo/InputManagerInternal;

    iget-object v4, p0, Lo/HdmiPortInfo$ActionBar;->b:Ljava/lang/String;

    iget-object v5, p0, Lo/HdmiPortInfo$ActionBar;->a:Lo/GeofenceHardwareCallback;

    .line 225
    invoke-direct {p0, v3, v4, v5}, Lo/HdmiPortInfo$ActionBar;->c(Lo/InputManagerInternal;Ljava/lang/String;Lo/GeofenceHardwareCallback;)Ljava/util/Map;

    move-result-object v3

    .line 224
    invoke-interface {p1, v1, v2, v3}, Lo/InputManagerInternal;->c(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 226
    invoke-direct {p0, v0, p2}, Lo/HdmiPortInfo$ActionBar;->b(Lo/CompatibilityInfo;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 228
    invoke-static {v0}, Lo/CompatibilityInfo;->a(Lo/CompatibilityInfo;)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 219
    :try_start_2
    iget-object p2, p0, Lo/HdmiPortInfo$ActionBar;->d:Lo/InputManagerInternal;

    iget-object v1, p0, Lo/HdmiPortInfo$ActionBar;->b:Ljava/lang/String;

    iget-object v3, p0, Lo/HdmiPortInfo$ActionBar;->d:Lo/InputManagerInternal;

    iget-object v4, p0, Lo/HdmiPortInfo$ActionBar;->b:Ljava/lang/String;

    iget-object v5, p0, Lo/HdmiPortInfo$ActionBar;->a:Lo/GeofenceHardwareCallback;

    .line 220
    invoke-direct {p0, v3, v4, v5}, Lo/HdmiPortInfo$ActionBar;->c(Lo/InputManagerInternal;Ljava/lang/String;Lo/GeofenceHardwareCallback;)Ljava/util/Map;

    move-result-object v3

    .line 219
    invoke-interface {p2, v1, v2, p1, v3}, Lo/InputManagerInternal;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/util/Map;)V

    .line 221
    invoke-direct {p0, p1}, Lo/HdmiPortInfo$ActionBar;->a(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 228
    invoke-static {v0}, Lo/CompatibilityInfo;->a(Lo/CompatibilityInfo;)V

    return-void

    :goto_0
    invoke-static {v0}, Lo/CompatibilityInfo;->a(Lo/CompatibilityInfo;)V

    throw p1
.end method

.method private d(Lo/LegacyRequestMapper;)Z
    .locals 0

    .line 241
    instance-of p1, p1, Lo/LegacyMetadataMapper;

    return p1
.end method

.method private e(Lo/LegacyRequestMapper;)Lo/CompatibilityInfo;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/LegacyRequestMapper;",
            ")",
            "Lo/CompatibilityInfo<",
            "Lo/LegacyRequestMapper;",
            ">;"
        }
    .end annotation

    .line 245
    move-object v0, p1

    check-cast v0, Lo/LegacyMetadataMapper;

    .line 246
    invoke-virtual {v0}, Lo/LegacyMetadataMapper;->e()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 247
    iget-object v2, p0, Lo/HdmiPortInfo$ActionBar;->a:Lo/GeofenceHardwareCallback;

    iget-object v3, p0, Lo/HdmiPortInfo$ActionBar;->e:Lo/HdmiPortInfo;

    invoke-static {v3}, Lo/HdmiPortInfo;->b(Lo/HdmiPortInfo;)Lo/Camera;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Lo/GeofenceHardwareCallback;->e(Landroid/graphics/Bitmap;Lo/Camera;)Lo/CompatibilityInfo;

    move-result-object v1

    .line 248
    invoke-virtual {v0}, Lo/LegacyMetadataMapper;->i()I

    move-result v2

    .line 249
    invoke-virtual {v0}, Lo/LegacyMetadataMapper;->f()I

    move-result v0

    .line 251
    :try_start_0
    new-instance v3, Lo/LegacyMetadataMapper;

    .line 253
    invoke-virtual {p1}, Lo/LegacyRequestMapper;->b()Lo/LegacyResultMapper;

    move-result-object p1

    invoke-direct {v3, v1, p1, v2, v0}, Lo/LegacyMetadataMapper;-><init>(Lo/CompatibilityInfo;Lo/LegacyResultMapper;II)V

    .line 251
    invoke-static {v3}, Lo/CompatibilityInfo;->a(Ljava/io/Closeable;)Lo/CompatibilityInfo;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 255
    invoke-static {v1}, Lo/CompatibilityInfo;->a(Lo/CompatibilityInfo;)V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-static {v1}, Lo/CompatibilityInfo;->a(Lo/CompatibilityInfo;)V

    throw p1
.end method

.method private e(Lo/CompatibilityInfo;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/CompatibilityInfo<",
            "Lo/LegacyRequestMapper;",
            ">;I)V"
        }
    .end annotation

    .line 142
    monitor-enter p0

    .line 143
    :try_start_0
    iget-boolean v0, p0, Lo/HdmiPortInfo$ActionBar;->c:Z

    if-eqz v0, :cond_0

    .line 144
    monitor-exit p0

    return-void

    .line 146
    :cond_0
    iget-object v0, p0, Lo/HdmiPortInfo$ActionBar;->j:Lo/CompatibilityInfo;

    .line 147
    invoke-static {p1}, Lo/CompatibilityInfo;->d(Lo/CompatibilityInfo;)Lo/CompatibilityInfo;

    move-result-object p1

    iput-object p1, p0, Lo/HdmiPortInfo$ActionBar;->j:Lo/CompatibilityInfo;

    .line 148
    iput p2, p0, Lo/HdmiPortInfo$ActionBar;->h:I

    const/4 p1, 0x1

    .line 149
    iput-boolean p1, p0, Lo/HdmiPortInfo$ActionBar;->i:Z

    .line 150
    invoke-direct {p0}, Lo/HdmiPortInfo$ActionBar;->g()Z

    move-result p1

    .line 151
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
    invoke-static {v0}, Lo/CompatibilityInfo;->a(Lo/CompatibilityInfo;)V

    if-eqz p1, :cond_1

    .line 154
    invoke-direct {p0}, Lo/HdmiPortInfo$ActionBar;->a()V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 151
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private f()V
    .locals 1

    .line 273
    invoke-direct {p0}, Lo/HdmiPortInfo$ActionBar;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 274
    invoke-virtual {p0}, Lo/HdmiPortInfo$ActionBar;->d()Lo/BrightnessChangeEvent;

    move-result-object v0

    invoke-interface {v0}, Lo/BrightnessChangeEvent;->c()V

    :cond_0
    return-void
.end method

.method private declared-synchronized g()Z
    .locals 1

    monitor-enter p0

    .line 197
    :try_start_0
    iget-boolean v0, p0, Lo/HdmiPortInfo$ActionBar;->c:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lo/HdmiPortInfo$ActionBar;->i:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lo/HdmiPortInfo$ActionBar;->g:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lo/HdmiPortInfo$ActionBar;->j:Lo/CompatibilityInfo;

    .line 198
    invoke-static {v0}, Lo/CompatibilityInfo;->e(Lo/CompatibilityInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 199
    iput-boolean v0, p0, Lo/HdmiPortInfo$ActionBar;->g:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 200
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 202
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized i()Z
    .locals 1

    monitor-enter p0

    .line 279
    :try_start_0
    iget-boolean v0, p0, Lo/HdmiPortInfo$ActionBar;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private j()Z
    .locals 2

    .line 284
    monitor-enter p0

    .line 285
    :try_start_0
    iget-boolean v0, p0, Lo/HdmiPortInfo$ActionBar;->c:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 286
    monitor-exit p0

    return v0

    .line 288
    :cond_0
    iget-object v0, p0, Lo/HdmiPortInfo$ActionBar;->j:Lo/CompatibilityInfo;

    const/4 v1, 0x0

    .line 289
    iput-object v1, p0, Lo/HdmiPortInfo$ActionBar;->j:Lo/CompatibilityInfo;

    const/4 v1, 0x1

    .line 290
    iput-boolean v1, p0, Lo/HdmiPortInfo$ActionBar;->c:Z

    .line 291
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 292
    invoke-static {v0}, Lo/CompatibilityInfo;->a(Lo/CompatibilityInfo;)V

    return v1

    :catchall_0
    move-exception v0

    .line 291
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method protected a(Lo/CompatibilityInfo;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/CompatibilityInfo<",
            "Lo/LegacyRequestMapper;",
            ">;I)V"
        }
    .end annotation

    .line 116
    invoke-static {p1}, Lo/CompatibilityInfo;->e(Lo/CompatibilityInfo;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 118
    invoke-static {p2}, Lo/HdmiPortInfo$ActionBar;->e(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 119
    invoke-direct {p0, p1, p2}, Lo/HdmiPortInfo$ActionBar;->b(Lo/CompatibilityInfo;I)V

    :cond_0
    return-void

    .line 124
    :cond_1
    invoke-direct {p0, p1, p2}, Lo/HdmiPortInfo$ActionBar;->e(Lo/CompatibilityInfo;I)V

    return-void
.end method

.method protected b(Ljava/lang/Throwable;)V
    .locals 0

    .line 129
    invoke-direct {p0, p1}, Lo/HdmiPortInfo$ActionBar;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method protected synthetic c(Ljava/lang/Object;I)V
    .locals 0

    .line 73
    check-cast p1, Lo/CompatibilityInfo;

    invoke-virtual {p0, p1, p2}, Lo/HdmiPortInfo$ActionBar;->a(Lo/CompatibilityInfo;I)V

    return-void
.end method

.method protected e()V
    .locals 0

    .line 134
    invoke-direct {p0}, Lo/HdmiPortInfo$ActionBar;->f()V

    return-void
.end method
