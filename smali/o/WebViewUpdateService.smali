.class public final Lo/WebViewUpdateService;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/WebViewUpdateService$Activity;
    }
.end annotation


# static fields
.field public static final c:Lo/WebViewUpdateService$Activity;

.field private static final e:Landroid/graphics/Bitmap$CompressFormat;


# instance fields
.field private final b:Lo/AbsSpinner;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/WebViewUpdateService$Activity;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/WebViewUpdateService$Activity;-><init>(Lo/amc;)V

    sput-object v0, Lo/WebViewUpdateService;->c:Lo/WebViewUpdateService$Activity;

    .line 32
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    sput-object v0, Lo/WebViewUpdateService;->e:Landroid/graphics/Bitmap$CompressFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lo/WebViewUpdateService;-><init>(Lo/AbsSpinner;ILo/amc;)V

    return-void
.end method

.method public constructor <init>(Lo/AbsSpinner;)V
    .locals 1

    const-string v0, "shareUtils"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/WebViewUpdateService;->b:Lo/AbsSpinner;

    return-void
.end method

.method public synthetic constructor <init>(Lo/AbsSpinner;ILo/amc;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 27
    new-instance p1, Lo/AbsSpinner;

    invoke-direct {p1}, Lo/AbsSpinner;-><init>()V

    :cond_0
    invoke-direct {p0, p1}, Lo/WebViewUpdateService;-><init>(Lo/AbsSpinner;)V

    return-void
.end method

.method private final a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 5

    .line 190
    sget-object v0, Lcom/netflix/android/imageloader/api/BlurProcessor;->c:Lcom/netflix/android/imageloader/api/BlurProcessor$Activity;

    sget-object v1, Lo/TextViewMetrics;->e:Lo/TextViewMetrics;

    .line 470
    const-class v1, Landroid/content/Context;

    invoke-static {v1}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    .line 190
    invoke-virtual {v0, v1}, Lcom/netflix/android/imageloader/api/BlurProcessor$Activity;->c(Landroid/content/Context;)Lcom/netflix/android/imageloader/api/BlurProcessor;

    move-result-object v0

    sget-object v1, Lcom/netflix/android/imageloader/api/BlurProcessor$Intensity;->e:Lcom/netflix/android/imageloader/api/BlurProcessor$Intensity;

    invoke-interface {v0, p1, v1}, Lcom/netflix/android/imageloader/api/BlurProcessor;->b(Landroid/graphics/Bitmap;Lcom/netflix/android/imageloader/api/BlurProcessor$Intensity;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 193
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    const-string v1, "#60000000"

    .line 194
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 195
    new-instance v1, Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 196
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 197
    invoke-virtual {v2, v1, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-object p1
.end method

.method public static final synthetic a(Lo/WebViewUpdateService;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lo/WebViewUpdateService;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic a(Lo/WebViewUpdateService;)Lo/AbsSpinner;
    .locals 0

    .line 27
    iget-object p0, p0, Lo/WebViewUpdateService;->b:Lo/AbsSpinner;

    return-object p0
.end method

.method private final b(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 18

    .line 131
    sget-object v0, Lo/AbsSpinner;->c:Lo/AbsSpinner$StateListAnimator;

    invoke-virtual {v0}, Lo/AbsSpinner$StateListAnimator;->d()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 133
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 134
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v5, p1

    .line 135
    invoke-virtual {v2, v5, v4, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    const/4 v3, 0x0

    .line 137
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    int-to-float v7, v7

    .line 138
    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    .line 139
    new-instance v17, Landroid/graphics/LinearGradient;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 140
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v13, v5

    const/4 v14, 0x0

    const-wide v4, 0x80000000L

    long-to-int v15, v4

    .line 141
    sget-object v16, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object/from16 v9, v17

    .line 139
    invoke-direct/range {v9 .. v16}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    move-object/from16 v4, v17

    check-cast v4, Landroid/graphics/Shader;

    invoke-virtual {v8, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    const/4 v4, 0x0

    move v5, v6

    move v6, v7

    move-object v7, v8

    .line 136
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    const-string v2, "result"

    .line 146
    invoke-static {v0, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    .line 131
    monitor-exit v1

    throw v0
.end method

.method public static final synthetic b(Lo/WebViewUpdateService;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lo/WebViewUpdateService;->b(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic b(Lo/WebViewUpdateService;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2}, Lo/WebViewUpdateService;->e(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public static final synthetic c()Landroid/graphics/Bitmap$CompressFormat;
    .locals 1

    .line 27
    sget-object v0, Lo/WebViewUpdateService;->e:Landroid/graphics/Bitmap$CompressFormat;

    return-object v0
.end method

.method private final d(Lo/Serializable;Landroid/graphics/Bitmap;Ljava/lang/String;)Lio/reactivex/Single;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/Serializable;",
            "Landroid/graphics/Bitmap;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Single<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 151
    sget-object v0, Lcom/netflix/android/imageloader/api/GetImageRequest;->b:Lcom/netflix/android/imageloader/api/GetImageRequest$Application;

    invoke-virtual {v0, p1}, Lcom/netflix/android/imageloader/api/GetImageRequest$Application;->b(Lo/Serializable;)Lcom/netflix/android/imageloader/api/GetImageRequest;

    move-result-object v0

    .line 152
    invoke-virtual {v0, p3}, Lcom/netflix/android/imageloader/api/GetImageRequest;->c(Ljava/lang/String;)Lcom/netflix/android/imageloader/api/GetImageRequest;

    move-result-object p3

    .line 153
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p3, v0}, Lcom/netflix/android/imageloader/api/GetImageRequest;->c(I)Lcom/netflix/android/imageloader/api/GetImageRequest;

    move-result-object p3

    .line 154
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {p3, v0}, Lcom/netflix/android/imageloader/api/GetImageRequest;->b(I)Lcom/netflix/android/imageloader/api/GetImageRequest;

    move-result-object p3

    const/4 v0, 0x1

    .line 155
    invoke-virtual {p3, v0}, Lcom/netflix/android/imageloader/api/GetImageRequest;->b(Z)Lcom/netflix/android/imageloader/api/GetImageRequest;

    move-result-object p3

    .line 156
    invoke-virtual {p3}, Lcom/netflix/android/imageloader/api/GetImageRequest;->d()Lcom/netflix/android/imageloader/api/GetImageRequest$TaskDescription;

    move-result-object p3

    .line 158
    sget-object v0, Lo/ErrorCodes;->d:Lo/ErrorCodes$TaskDescription;

    check-cast p1, Landroid/content/Context;

    invoke-virtual {v0, p1}, Lo/ErrorCodes$TaskDescription;->e(Landroid/content/Context;)Lo/ErrorCodes;

    move-result-object p1

    invoke-interface {p1, p3}, Lo/ErrorCodes;->e(Lcom/netflix/android/imageloader/api/GetImageRequest$TaskDescription;)Lio/reactivex/Single;

    move-result-object p1

    .line 159
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object p3

    invoke-virtual {p1, p3}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    .line 160
    new-instance p3, Lo/WebViewUpdateService$StateListAnimator;

    invoke-direct {p3, p0, p2}, Lo/WebViewUpdateService$StateListAnimator;-><init>(Lo/WebViewUpdateService;Landroid/graphics/Bitmap;)V

    check-cast p3, Lio/reactivex/functions/Function;

    invoke-virtual {p1, p3}, Lio/reactivex/Single;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object p1

    const-string p2, "ImageLoaderRepository.ge\u2026          }\n            }"

    invoke-static {p1, p2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public static final synthetic d(Lo/WebViewUpdateService;Lo/Serializable;Landroid/graphics/Bitmap;Ljava/lang/String;)Lio/reactivex/Single;
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2, p3}, Lo/WebViewUpdateService;->d(Lo/Serializable;Landroid/graphics/Bitmap;Ljava/lang/String;)Lio/reactivex/Single;

    move-result-object p0

    return-object p0
.end method

.method private final e(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 8

    .line 171
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-double v0, v0

    const-wide v2, 0x3fc3333333333333L    # 0.15

    mul-double v0, v0, v2

    double-to-int v0, v0

    .line 172
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-double v1, v1

    const-wide v3, 0x3fc999999999999aL    # 0.2

    mul-double v1, v1, v3

    double-to-int v1, v1

    .line 174
    invoke-virtual {p0}, Lo/WebViewUpdateService;->d()Landroid/graphics/Paint;

    move-result-object v2

    .line 176
    sget-object v3, Lo/AbsSpinner;->c:Lo/AbsSpinner$StateListAnimator;

    invoke-virtual {v3}, Lo/AbsSpinner$StateListAnimator;->d()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 177
    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    mul-int/lit8 v5, v1, 0x2

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    .line 178
    new-instance v5, Landroid/graphics/Rect;

    .line 180
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    sub-int/2addr v6, v0

    int-to-float v6, v6

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    int-to-float v7, v7

    mul-float v7, v7, v4

    sub-float/2addr v6, v7

    float-to-int v4, v6

    .line 181
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    sub-int/2addr v6, v1

    .line 182
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    sub-int/2addr v7, v0

    .line 178
    invoke-direct {v5, v1, v4, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 185
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 p1, 0x0

    invoke-virtual {v0, p2, p1, v5, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 186
    sget-object p1, Lo/akj;->a:Lo/akj;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 176
    monitor-exit v3

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v3

    throw p1
.end method


# virtual methods
.method public final a(Lo/Serializable;Ljava/lang/String;II)Lio/reactivex/Single;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/Serializable;",
            "Ljava/lang/String;",
            "II)",
            "Lio/reactivex/Single<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    const-string v0, "activity"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "billboardUrl"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    sget-object v0, Lcom/netflix/android/imageloader/api/GetImageRequest;->b:Lcom/netflix/android/imageloader/api/GetImageRequest$Application;

    invoke-virtual {v0, p1}, Lcom/netflix/android/imageloader/api/GetImageRequest$Application;->b(Lo/Serializable;)Lcom/netflix/android/imageloader/api/GetImageRequest;

    move-result-object v0

    .line 99
    invoke-virtual {v0, p2}, Lcom/netflix/android/imageloader/api/GetImageRequest;->c(Ljava/lang/String;)Lcom/netflix/android/imageloader/api/GetImageRequest;

    move-result-object v0

    .line 100
    invoke-virtual {v0, p3}, Lcom/netflix/android/imageloader/api/GetImageRequest;->c(I)Lcom/netflix/android/imageloader/api/GetImageRequest;

    move-result-object p3

    .line 101
    invoke-virtual {p3, p4}, Lcom/netflix/android/imageloader/api/GetImageRequest;->b(I)Lcom/netflix/android/imageloader/api/GetImageRequest;

    move-result-object p3

    const/4 p4, 0x1

    .line 102
    invoke-virtual {p3, p4}, Lcom/netflix/android/imageloader/api/GetImageRequest;->b(Z)Lcom/netflix/android/imageloader/api/GetImageRequest;

    move-result-object p3

    .line 103
    invoke-virtual {p3}, Lcom/netflix/android/imageloader/api/GetImageRequest;->d()Lcom/netflix/android/imageloader/api/GetImageRequest$TaskDescription;

    move-result-object p3

    .line 105
    sget-object p4, Lo/ErrorCodes;->d:Lo/ErrorCodes$TaskDescription;

    check-cast p1, Landroid/content/Context;

    invoke-virtual {p4, p1}, Lo/ErrorCodes$TaskDescription;->e(Landroid/content/Context;)Lo/ErrorCodes;

    move-result-object p1

    invoke-interface {p1, p3}, Lo/ErrorCodes;->e(Lcom/netflix/android/imageloader/api/GetImageRequest$TaskDescription;)Lio/reactivex/Single;

    move-result-object p1

    .line 106
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object p3

    invoke-virtual {p1, p3}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    .line 107
    new-instance p3, Lo/WebViewUpdateService$PendingIntent;

    invoke-direct {p3, p0, p2}, Lo/WebViewUpdateService$PendingIntent;-><init>(Lo/WebViewUpdateService;Ljava/lang/String;)V

    check-cast p3, Lio/reactivex/functions/Function;

    invoke-virtual {p1, p3}, Lio/reactivex/Single;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object p1

    const-string p2, "ImageLoaderRepository.ge\u2026          }\n            }"

    invoke-static {p1, p2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final b(Landroid/net/Uri;)Landroid/graphics/Rect;
    .locals 4

    const-string v0, "uri"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 444
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    .line 445
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 447
    sget-object v1, Lo/TextViewMetrics;->e:Lo/TextViewMetrics;

    .line 471
    const-class v1, Landroid/content/Context;

    invoke-static {v1}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 447
    invoke-virtual {v1, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p1

    check-cast p1, Ljava/io/Closeable;

    const/4 v1, 0x0

    move-object v2, v1

    check-cast v2, Ljava/lang/Throwable;

    :try_start_0
    move-object v3, p1

    check-cast v3, Ljava/io/InputStream;

    .line 448
    invoke-static {v3, v1, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 447
    invoke-static {p1, v2}, Lo/aly;->e(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 451
    new-instance p1, Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    const/4 v2, 0x0

    invoke-direct {p1, v2, v2, v1, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p1

    :catchall_0
    move-exception v0

    .line 447
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    invoke-static {p1, v0}, Lo/aly;->e(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final b(Lo/Serializable;Ljava/lang/String;II)Lio/reactivex/Single;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/Serializable;",
            "Ljava/lang/String;",
            "II)",
            "Lio/reactivex/Single<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    const-string v0, "activity"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "boxArtUrl"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 278
    sget-object v0, Lcom/netflix/android/imageloader/api/GetImageRequest;->b:Lcom/netflix/android/imageloader/api/GetImageRequest$Application;

    invoke-virtual {v0, p1}, Lcom/netflix/android/imageloader/api/GetImageRequest$Application;->b(Lo/Serializable;)Lcom/netflix/android/imageloader/api/GetImageRequest;

    move-result-object v0

    .line 279
    invoke-virtual {v0, p2}, Lcom/netflix/android/imageloader/api/GetImageRequest;->c(Ljava/lang/String;)Lcom/netflix/android/imageloader/api/GetImageRequest;

    move-result-object v0

    .line 280
    invoke-virtual {v0, p3}, Lcom/netflix/android/imageloader/api/GetImageRequest;->c(I)Lcom/netflix/android/imageloader/api/GetImageRequest;

    move-result-object v0

    .line 281
    invoke-virtual {v0, p4}, Lcom/netflix/android/imageloader/api/GetImageRequest;->b(I)Lcom/netflix/android/imageloader/api/GetImageRequest;

    move-result-object v0

    const/4 v1, 0x1

    .line 282
    invoke-virtual {v0, v1}, Lcom/netflix/android/imageloader/api/GetImageRequest;->b(Z)Lcom/netflix/android/imageloader/api/GetImageRequest;

    move-result-object v0

    .line 283
    invoke-virtual {v0}, Lcom/netflix/android/imageloader/api/GetImageRequest;->d()Lcom/netflix/android/imageloader/api/GetImageRequest$TaskDescription;

    move-result-object v0

    .line 285
    sget-object v1, Lo/ErrorCodes;->d:Lo/ErrorCodes$TaskDescription;

    check-cast p1, Landroid/content/Context;

    invoke-virtual {v1, p1}, Lo/ErrorCodes$TaskDescription;->e(Landroid/content/Context;)Lo/ErrorCodes;

    move-result-object p1

    invoke-interface {p1, v0}, Lo/ErrorCodes;->e(Lcom/netflix/android/imageloader/api/GetImageRequest$TaskDescription;)Lio/reactivex/Single;

    move-result-object p1

    .line 286
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    .line 287
    new-instance v0, Lo/WebViewUpdateService$TaskDescription;

    invoke-direct {v0, p0, p3, p4, p2}, Lo/WebViewUpdateService$TaskDescription;-><init>(Lo/WebViewUpdateService;IILjava/lang/String;)V

    check-cast v0, Lio/reactivex/functions/Function;

    invoke-virtual {p1, v0}, Lio/reactivex/Single;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object p1

    const-string p2, "ImageLoaderRepository.ge\u2026          }\n            }"

    invoke-static {p1, p2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final b(Lo/Serializable;Ljava/lang/String;Ljava/lang/String;II)Lio/reactivex/Single;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/Serializable;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II)",
            "Lio/reactivex/Single<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    const-string v0, "activity"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "billboardUrl"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logoUrl"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    sget-object v0, Lcom/netflix/android/imageloader/api/GetImageRequest;->b:Lcom/netflix/android/imageloader/api/GetImageRequest$Application;

    invoke-virtual {v0, p1}, Lcom/netflix/android/imageloader/api/GetImageRequest$Application;->b(Lo/Serializable;)Lcom/netflix/android/imageloader/api/GetImageRequest;

    move-result-object v0

    .line 55
    invoke-virtual {v0, p2}, Lcom/netflix/android/imageloader/api/GetImageRequest;->c(Ljava/lang/String;)Lcom/netflix/android/imageloader/api/GetImageRequest;

    move-result-object v0

    .line 56
    invoke-virtual {v0, p4}, Lcom/netflix/android/imageloader/api/GetImageRequest;->c(I)Lcom/netflix/android/imageloader/api/GetImageRequest;

    move-result-object p4

    .line 57
    invoke-virtual {p4, p5}, Lcom/netflix/android/imageloader/api/GetImageRequest;->b(I)Lcom/netflix/android/imageloader/api/GetImageRequest;

    move-result-object p4

    const/4 p5, 0x1

    .line 58
    invoke-virtual {p4, p5}, Lcom/netflix/android/imageloader/api/GetImageRequest;->b(Z)Lcom/netflix/android/imageloader/api/GetImageRequest;

    move-result-object p4

    .line 59
    invoke-virtual {p4}, Lcom/netflix/android/imageloader/api/GetImageRequest;->d()Lcom/netflix/android/imageloader/api/GetImageRequest$TaskDescription;

    move-result-object p4

    .line 61
    sget-object p5, Lo/ErrorCodes;->d:Lo/ErrorCodes$TaskDescription;

    move-object v0, p1

    check-cast v0, Landroid/content/Context;

    invoke-virtual {p5, v0}, Lo/ErrorCodes$TaskDescription;->e(Landroid/content/Context;)Lo/ErrorCodes;

    move-result-object p5

    invoke-interface {p5, p4}, Lo/ErrorCodes;->e(Lcom/netflix/android/imageloader/api/GetImageRequest$TaskDescription;)Lio/reactivex/Single;

    move-result-object p4

    .line 62
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object p5

    invoke-virtual {p4, p5}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p4

    .line 63
    new-instance p5, Lo/WebViewUpdateService$LoaderManager;

    invoke-direct {p5, p0}, Lo/WebViewUpdateService$LoaderManager;-><init>(Lo/WebViewUpdateService;)V

    check-cast p5, Lio/reactivex/functions/Function;

    invoke-virtual {p4, p5}, Lio/reactivex/Single;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object p4

    .line 70
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object p5

    invoke-virtual {p4, p5}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p4

    .line 71
    new-instance p5, Lo/WebViewUpdateService$Fragment;

    invoke-direct {p5, p0, p1, p3}, Lo/WebViewUpdateService$Fragment;-><init>(Lo/WebViewUpdateService;Lo/Serializable;Ljava/lang/String;)V

    check-cast p5, Lio/reactivex/functions/Function;

    invoke-virtual {p4, p5}, Lio/reactivex/Single;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object p1

    .line 73
    new-instance p3, Lo/WebViewUpdateService$FragmentManager;

    invoke-direct {p3, p0, p2}, Lo/WebViewUpdateService$FragmentManager;-><init>(Lo/WebViewUpdateService;Ljava/lang/String;)V

    check-cast p3, Lio/reactivex/functions/Function;

    invoke-virtual {p1, p3}, Lio/reactivex/Single;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object p1

    const-string p2, "ImageLoaderRepository.ge\u2026       file\n            }"

    invoke-static {p1, p2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final c(Lo/Serializable;Ljava/lang/String;II)Lio/reactivex/Single;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/Serializable;",
            "Ljava/lang/String;",
            "II)",
            "Lio/reactivex/Single<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    const-string v0, "activity"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "boxArtUrl"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 219
    sget-object v0, Lcom/netflix/android/imageloader/api/GetImageRequest;->b:Lcom/netflix/android/imageloader/api/GetImageRequest$Application;

    invoke-virtual {v0, p1}, Lcom/netflix/android/imageloader/api/GetImageRequest$Application;->b(Lo/Serializable;)Lcom/netflix/android/imageloader/api/GetImageRequest;

    move-result-object v0

    .line 220
    invoke-virtual {v0, p2}, Lcom/netflix/android/imageloader/api/GetImageRequest;->c(Ljava/lang/String;)Lcom/netflix/android/imageloader/api/GetImageRequest;

    move-result-object v0

    .line 221
    invoke-virtual {v0, p3}, Lcom/netflix/android/imageloader/api/GetImageRequest;->c(I)Lcom/netflix/android/imageloader/api/GetImageRequest;

    move-result-object v0

    .line 222
    invoke-virtual {v0, p4}, Lcom/netflix/android/imageloader/api/GetImageRequest;->b(I)Lcom/netflix/android/imageloader/api/GetImageRequest;

    move-result-object v0

    const/4 v1, 0x1

    .line 223
    invoke-virtual {v0, v1}, Lcom/netflix/android/imageloader/api/GetImageRequest;->b(Z)Lcom/netflix/android/imageloader/api/GetImageRequest;

    move-result-object v0

    .line 224
    invoke-virtual {v0, v1}, Lcom/netflix/android/imageloader/api/GetImageRequest;->d(Z)Lcom/netflix/android/imageloader/api/GetImageRequest;

    move-result-object v0

    .line 225
    invoke-virtual {v0}, Lcom/netflix/android/imageloader/api/GetImageRequest;->d()Lcom/netflix/android/imageloader/api/GetImageRequest$TaskDescription;

    move-result-object v0

    .line 227
    sget-object v1, Lo/ErrorCodes;->d:Lo/ErrorCodes$TaskDescription;

    check-cast p1, Landroid/content/Context;

    invoke-virtual {v1, p1}, Lo/ErrorCodes$TaskDescription;->e(Landroid/content/Context;)Lo/ErrorCodes;

    move-result-object p1

    invoke-interface {p1, v0}, Lo/ErrorCodes;->e(Lcom/netflix/android/imageloader/api/GetImageRequest$TaskDescription;)Lio/reactivex/Single;

    move-result-object p1

    .line 228
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    .line 229
    new-instance v0, Lo/WebViewUpdateService$Application;

    invoke-direct {v0, p0, p3, p4, p2}, Lo/WebViewUpdateService$Application;-><init>(Lo/WebViewUpdateService;IILjava/lang/String;)V

    check-cast v0, Lio/reactivex/functions/Function;

    invoke-virtual {p1, v0}, Lio/reactivex/Single;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object p1

    const-string p2, "ImageLoaderRepository.ge\u2026          }\n            }"

    invoke-static {p1, p2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final c(Lo/Serializable;Ljava/lang/String;Ljava/lang/String;II)Lio/reactivex/Single;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/Serializable;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II)",
            "Lio/reactivex/Single<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    const-string v0, "activity"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "titleTreatmentUrl"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "postImageUrl"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 334
    sget-object v0, Lo/ErrorCodes;->d:Lo/ErrorCodes$TaskDescription;

    move-object v1, p1

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v0, v1}, Lo/ErrorCodes$TaskDescription;->e(Landroid/content/Context;)Lo/ErrorCodes;

    move-result-object v0

    .line 335
    sget-object v2, Lcom/netflix/android/imageloader/api/GetImageRequest;->b:Lcom/netflix/android/imageloader/api/GetImageRequest$Application;

    invoke-virtual {v2, p1}, Lcom/netflix/android/imageloader/api/GetImageRequest$Application;->b(Lo/Serializable;)Lcom/netflix/android/imageloader/api/GetImageRequest;

    move-result-object v2

    .line 336
    invoke-virtual {v2, p2}, Lcom/netflix/android/imageloader/api/GetImageRequest;->c(Ljava/lang/String;)Lcom/netflix/android/imageloader/api/GetImageRequest;

    move-result-object p2

    .line 337
    invoke-virtual {p2, p4}, Lcom/netflix/android/imageloader/api/GetImageRequest;->c(I)Lcom/netflix/android/imageloader/api/GetImageRequest;

    move-result-object p2

    .line 338
    invoke-virtual {p2, p5}, Lcom/netflix/android/imageloader/api/GetImageRequest;->b(I)Lcom/netflix/android/imageloader/api/GetImageRequest;

    move-result-object p2

    const/4 v2, 0x1

    .line 339
    invoke-virtual {p2, v2}, Lcom/netflix/android/imageloader/api/GetImageRequest;->b(Z)Lcom/netflix/android/imageloader/api/GetImageRequest;

    move-result-object p2

    .line 340
    invoke-virtual {p2}, Lcom/netflix/android/imageloader/api/GetImageRequest;->d()Lcom/netflix/android/imageloader/api/GetImageRequest$TaskDescription;

    move-result-object p2

    .line 334
    invoke-interface {v0, p2}, Lo/ErrorCodes;->e(Lcom/netflix/android/imageloader/api/GetImageRequest$TaskDescription;)Lio/reactivex/Single;

    move-result-object p2

    .line 342
    sget-object v0, Lo/ErrorCodes;->d:Lo/ErrorCodes$TaskDescription;

    invoke-virtual {v0, v1}, Lo/ErrorCodes$TaskDescription;->e(Landroid/content/Context;)Lo/ErrorCodes;

    move-result-object v0

    .line 343
    sget-object v1, Lcom/netflix/android/imageloader/api/GetImageRequest;->b:Lcom/netflix/android/imageloader/api/GetImageRequest$Application;

    invoke-virtual {v1, p1}, Lcom/netflix/android/imageloader/api/GetImageRequest$Application;->b(Lo/Serializable;)Lcom/netflix/android/imageloader/api/GetImageRequest;

    move-result-object p1

    .line 344
    invoke-virtual {p1, p3}, Lcom/netflix/android/imageloader/api/GetImageRequest;->c(Ljava/lang/String;)Lcom/netflix/android/imageloader/api/GetImageRequest;

    move-result-object p1

    .line 345
    invoke-virtual {p1, p4}, Lcom/netflix/android/imageloader/api/GetImageRequest;->c(I)Lcom/netflix/android/imageloader/api/GetImageRequest;

    move-result-object p1

    .line 346
    invoke-virtual {p1, p5}, Lcom/netflix/android/imageloader/api/GetImageRequest;->b(I)Lcom/netflix/android/imageloader/api/GetImageRequest;

    move-result-object p1

    .line 347
    invoke-virtual {p1, v2}, Lcom/netflix/android/imageloader/api/GetImageRequest;->b(Z)Lcom/netflix/android/imageloader/api/GetImageRequest;

    move-result-object p1

    .line 348
    invoke-virtual {p1}, Lcom/netflix/android/imageloader/api/GetImageRequest;->d()Lcom/netflix/android/imageloader/api/GetImageRequest$TaskDescription;

    move-result-object p1

    .line 342
    invoke-interface {v0, p1}, Lo/ErrorCodes;->e(Lcom/netflix/android/imageloader/api/GetImageRequest$TaskDescription;)Lio/reactivex/Single;

    move-result-object p1

    .line 352
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p2, v0}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p2

    check-cast p2, Lio/reactivex/SingleSource;

    .line 353
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    check-cast p1, Lio/reactivex/SingleSource;

    .line 354
    new-instance v0, Lo/WebViewUpdateService$ActionBar;

    invoke-direct {v0, p0, p4, p5, p3}, Lo/WebViewUpdateService$ActionBar;-><init>(Lo/WebViewUpdateService;IILjava/lang/String;)V

    check-cast v0, Lio/reactivex/functions/BiFunction;

    .line 351
    invoke-static {p2, p1, v0}, Lio/reactivex/Single;->zip(Lio/reactivex/SingleSource;Lio/reactivex/SingleSource;Lio/reactivex/functions/BiFunction;)Lio/reactivex/Single;

    move-result-object p1

    const-string p2, "Single.zip(\n            \u2026}\n            }\n        )"

    invoke-static {p1, p2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final d()Landroid/graphics/Paint;
    .locals 2

    .line 310
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    const/4 v1, 0x1

    .line 311
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 312
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 313
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    return-object v0
.end method

.method public final d(IIII)Landroid/graphics/Rect;
    .locals 5

    int-to-float p1, p1

    int-to-float p2, p2

    div-float v0, p1, p2

    int-to-float v1, p3

    int-to-float v2, p4

    div-float v3, v1, v2

    const/4 v4, 0x0

    cmpl-float v3, v0, v3

    if-lez v3, :cond_0

    .line 463
    new-instance p4, Landroid/graphics/Rect;

    div-float/2addr p2, p1

    mul-float p2, p2, v1

    float-to-int p1, p2

    invoke-direct {p4, v4, v4, p3, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object p1, p4

    goto :goto_0

    .line 465
    :cond_0
    new-instance p1, Landroid/graphics/Rect;

    mul-float v0, v0, v2

    float-to-int p2, v0

    invoke-direct {p1, v4, v4, p2, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    :goto_0
    return-object p1
.end method
