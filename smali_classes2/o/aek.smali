.class public Lo/aek;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static a:Ljava/util/concurrent/atomic/AtomicLong; = null

.field public static b:Lcom/netflix/mediaclient/util/DeviceCategory; = null

.field private static c:Ljava/lang/String; = null

.field public static d:Ljava/lang/String; = null

.field private static e:I = -0x1


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 65
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, -0x1

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Lo/aek;->a:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)J
    .locals 5

    .line 241
    sget-object v0, Lo/aek;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 242
    sget-object v0, Lo/aek;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {p0}, Lo/aek;->k(Landroid/content/Context;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 244
    :cond_0
    sget-object p0, Lo/aek;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public static a(Lcom/netflix/mediaclient/servicemgr/Logblob;)V
    .locals 1

    .line 340
    invoke-static {}, Lo/CarrierIdentifier;->getInstance()Lo/CarrierIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lo/CarrierIdentifier;->n()Lo/CameraPrewarmService;

    move-result-object v0

    invoke-virtual {v0}, Lo/CameraPrewarmService;->j()Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 342
    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->l()Lo/zS;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 344
    invoke-interface {v0, p0}, Lo/zS;->e(Lcom/netflix/mediaclient/servicemgr/Logblob;)V

    :cond_0
    return-void
.end method

.method public static a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static a(Landroid/content/Context;I)Z
    .locals 3

    const-string v0, "window"

    .line 168
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 172
    :cond_0
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    if-nez p0, :cond_1

    return v0

    .line 176
    :cond_1
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 180
    invoke-virtual {p0, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 181
    iget p0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 182
    iget v2, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 183
    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    int-to-float p0, p0

    div-float/2addr p0, v1

    int-to-float v2, v2

    div-float/2addr v2, v1

    .line 186
    invoke-static {p0, v2}, Ljava/lang/Math;->min(FF)F

    move-result p0

    int-to-float p1, p1

    cmpg-float p0, p1, p0

    if-gtz p0, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public static b()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "uimode"

    .line 232
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/UiModeManager;

    .line 233
    invoke-virtual {p0}, Landroid/app/UiModeManager;->getCurrentModeType()I

    move-result p0

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static c()Ljava/lang/String;
    .locals 1

    .line 88
    invoke-static {}, Lo/aek;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lo/aek;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "/android/samurai/masterCsDebug"

    goto :goto_0

    :cond_0
    const-string v0, "/android/7.54/api"

    :goto_0
    return-object v0
.end method

.method public static c(Landroid/content/Context;)Z
    .locals 1

    .line 199
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v0, "org.chromium.arc"

    .line 201
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static d(Ljava/lang/String;)V
    .locals 0

    .line 328
    invoke-static {p0}, Lcom/netflix/mediaclient/util/DeviceCategory;->c(Ljava/lang/String;)Lcom/netflix/mediaclient/util/DeviceCategory;

    move-result-object p0

    sput-object p0, Lo/aek;->b:Lcom/netflix/mediaclient/util/DeviceCategory;

    return-void
.end method

.method public static d()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static d(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "display"

    .line 217
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/display/DisplayManager;

    const/4 v0, 0x0

    .line 218
    invoke-virtual {p0, v0}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static e()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static e(Landroid/content/Context;)Z
    .locals 1

    const/16 v0, 0x258

    .line 152
    invoke-static {p0, v0}, Lo/aek;->e(Landroid/content/Context;I)Z

    move-result p0

    return p0
.end method

.method public static e(Landroid/content/Context;I)Z
    .locals 4

    .line 126
    sget-object v0, Lo/aek;->b:Lcom/netflix/mediaclient/util/DeviceCategory;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 127
    sget-object p0, Lcom/netflix/mediaclient/util/DeviceCategory;->a:Lcom/netflix/mediaclient/util/DeviceCategory;

    if-ne v0, p0, :cond_0

    .line 128
    sput v2, Lo/aek;->e:I

    goto :goto_0

    .line 130
    :cond_0
    sput v1, Lo/aek;->e:I

    .line 132
    :goto_0
    sget p0, Lo/aek;->e:I

    if-ne p0, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    .line 136
    :cond_2
    sget v0, Lo/aek;->e:I

    if-ltz v0, :cond_4

    const/16 v3, 0x258

    if-ne p1, v3, :cond_4

    if-ne v0, v2, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1

    .line 141
    :cond_4
    invoke-static {p0}, Lo/aek;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {p0}, Lo/aek;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {p0}, Lo/aek;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_1

    .line 144
    :cond_5
    invoke-static {p0, p1}, Lo/aek;->a(Landroid/content/Context;I)Z

    move-result v2

    .line 147
    :cond_6
    :goto_1
    sput v2, Lo/aek;->e:I

    return v2
.end method

.method public static f()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static f(Landroid/content/Context;)Z
    .locals 6

    .line 297
    invoke-static {}, Lo/aek;->g()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 300
    :cond_0
    invoke-static {p0}, Lo/aek;->a(Landroid/content/Context;)J

    move-result-wide v2

    const-wide/32 v4, 0x60000000

    cmp-long p0, v2, v4

    if-gtz p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static g(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    .line 257
    invoke-static {p0}, Lo/aek;->a(Landroid/content/Context;)J

    move-result-wide v0

    const-wide/32 v2, 0x40000000

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    .line 258
    invoke-static {p0}, Lo/adk;->f(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "high"

    goto :goto_1

    :cond_1
    :goto_0
    const-string p0, "low"

    .line 261
    :goto_1
    sget-object v0, Lo/aek;->c:Ljava/lang/String;

    if-eqz v0, :cond_2

    move-object p0, v0

    :cond_2
    sput-object p0, Lo/aek;->d:Ljava/lang/String;

    .line 266
    sget-object p0, Lo/aek;->d:Ljava/lang/String;

    return-object p0
.end method

.method public static g()Z
    .locals 2

    .line 308
    sget-object v0, Lo/aek;->d:Ljava/lang/String;

    const-string v1, "low"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static h(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    .line 278
    invoke-static {p0}, Lo/aek;->a(Landroid/content/Context;)J

    move-result-wide v0

    const-wide/32 v2, 0x40000000

    cmp-long v4, v0, v2

    if-lez v4, :cond_2

    const-wide v2, 0x80000000L

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    .line 280
    invoke-static {}, Lo/ContentObservable;->d()I

    move-result v0

    const/4 v1, 0x4

    if-le v0, v1, :cond_2

    .line 281
    :cond_0
    invoke-static {p0}, Lo/adk;->f(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const-string p0, "high"

    goto :goto_1

    :cond_2
    :goto_0
    const-string p0, "low"

    .line 284
    :goto_1
    sput-object p0, Lo/aek;->d:Ljava/lang/String;

    .line 288
    sget-object p0, Lo/aek;->d:Ljava/lang/String;

    return-object p0
.end method

.method public static h()Z
    .locals 1

    .line 293
    invoke-static {}, Lo/aek;->g()Z

    move-result v0

    return v0
.end method

.method public static i(Landroid/content/Context;)Lcom/netflix/mediaclient/media/VideoResolutionRange;
    .locals 4

    const-string v0, "display"

    .line 360
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/display/DisplayManager;

    .line 361
    invoke-virtual {p0}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    move-result-object p0

    .line 362
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p0, v1

    .line 366
    invoke-virtual {v2}, Landroid/view/Display;->isValid()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Landroid/view/Display;->getDisplayId()I

    move-result v3

    if-nez v3, :cond_1

    .line 367
    new-instance p0, Landroid/util/DisplayMetrics;

    invoke-direct {p0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 368
    invoke-static {}, Lo/adk;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 369
    invoke-virtual {v2, p0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    goto :goto_1

    .line 371
    :cond_0
    invoke-virtual {v2, p0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 373
    :goto_1
    iget v0, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    iget p0, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    goto :goto_2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const p0, 0x7fffffff

    .line 377
    :goto_2
    invoke-static {p0}, Lcom/netflix/mediaclient/media/VideoResolutionRange;->getVideoResolutionRangeFromMaxHieght(I)Lcom/netflix/mediaclient/media/VideoResolutionRange;

    move-result-object p0

    return-object p0
.end method

.method public static i()Ljava/lang/String;
    .locals 1

    .line 315
    sget-object v0, Lo/aek;->d:Ljava/lang/String;

    return-object v0
.end method

.method public static j(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 336
    invoke-static {p0}, Lo/aek;->e(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/netflix/mediaclient/util/DeviceCategory;->a:Lcom/netflix/mediaclient/util/DeviceCategory;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/netflix/mediaclient/util/DeviceCategory;->b:Lcom/netflix/mediaclient/util/DeviceCategory;

    :goto_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/util/DeviceCategory;->e()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static j()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static k(Landroid/content/Context;)J
    .locals 2

    const-string v0, "activity"

    .line 248
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    .line 249
    new-instance v0, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 250
    invoke-virtual {p0, v0}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 251
    iget-wide v0, v0, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    return-wide v0
.end method

.method public static k()Lcom/netflix/mediaclient/util/DeviceCategory;
    .locals 1

    .line 332
    sget-object v0, Lo/aek;->b:Lcom/netflix/mediaclient/util/DeviceCategory;

    return-object v0
.end method

.method public static n()Z
    .locals 2

    .line 350
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v1, "Amazon"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static o()Z
    .locals 2

    .line 354
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "samsu"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static o(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "audio"

    .line 381
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioManager;

    if-eqz p0, :cond_1

    const/4 v0, 0x3

    .line 382
    invoke-virtual {p0, v0}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
