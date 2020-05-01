.class public Lo/DdmHandleAppName;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final a:Landroid/graphics/drawable/Drawable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 54
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    sput-object v0, Lo/DdmHandleAppName;->a:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Lo/SQLiteDebug;Lo/SQLiteReadOnlyDatabaseException$Activity;)Lo/SQLiteProgram;
    .locals 1

    .line 126
    sget-object v0, Lo/DdmHandleAppName;->a:Landroid/graphics/drawable/Drawable;

    invoke-interface {p0, v0}, Lo/SQLiteDebug;->b(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 127
    invoke-static {v0, p1}, Lo/DdmHandleAppName;->b(Landroid/graphics/drawable/Drawable;Lo/SQLiteReadOnlyDatabaseException$Activity;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 128
    invoke-interface {p0, p1}, Lo/SQLiteDebug;->b(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    const-string p0, "Parent has no child drawable!"

    .line 129
    invoke-static {p1, p0}, Lo/StringParceledListSlice;->d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    check-cast p1, Lo/SQLiteProgram;

    return-object p1
.end method

.method static b(Landroid/graphics/drawable/Drawable;Lo/SQLiteReadOnlyDatabaseException$Activity;)Landroid/graphics/drawable/Drawable;
    .locals 1

    const/4 v0, 0x0

    .line 68
    invoke-static {p0, p1, v0}, Lo/DdmHandleAppName;->c(Landroid/graphics/drawable/Drawable;Lo/SQLiteReadOnlyDatabaseException$Activity;Landroid/graphics/PointF;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method static b(Lo/SQLiteDoneException;Lcom/facebook/drawee/generic/RoundingParams;)V
    .locals 2

    .line 330
    invoke-virtual {p1}, Lcom/facebook/drawee/generic/RoundingParams;->a()Z

    move-result v0

    invoke-interface {p0, v0}, Lo/SQLiteDoneException;->a(Z)V

    .line 331
    invoke-virtual {p1}, Lcom/facebook/drawee/generic/RoundingParams;->d()[F

    move-result-object v0

    invoke-interface {p0, v0}, Lo/SQLiteDoneException;->a([F)V

    .line 332
    invoke-virtual {p1}, Lcom/facebook/drawee/generic/RoundingParams;->i()I

    move-result v0

    invoke-virtual {p1}, Lcom/facebook/drawee/generic/RoundingParams;->b()F

    move-result v1

    invoke-interface {p0, v0, v1}, Lo/SQLiteDoneException;->e(IF)V

    .line 333
    invoke-virtual {p1}, Lcom/facebook/drawee/generic/RoundingParams;->f()F

    move-result v0

    invoke-interface {p0, v0}, Lo/SQLiteDoneException;->e(F)V

    .line 334
    invoke-virtual {p1}, Lcom/facebook/drawee/generic/RoundingParams;->g()Z

    move-result v0

    invoke-interface {p0, v0}, Lo/SQLiteDoneException;->d(Z)V

    .line 335
    invoke-virtual {p1}, Lcom/facebook/drawee/generic/RoundingParams;->h()Z

    move-result p1

    invoke-interface {p0, p1}, Lo/SQLiteDoneException;->e(Z)V

    return-void
.end method

.method static c(Landroid/graphics/drawable/Drawable;Lcom/facebook/drawee/generic/RoundingParams;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 225
    :try_start_0
    invoke-static {}, Lo/GeofenceHardwareService;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "WrappingUtils#maybeWrapWithRoundedOverlayColor"

    .line 226
    invoke-static {v0}, Lo/GeofenceHardwareService;->e(Ljava/lang/String;)V

    :cond_0
    if-eqz p0, :cond_3

    if-eqz p1, :cond_3

    .line 230
    invoke-virtual {p1}, Lcom/facebook/drawee/generic/RoundingParams;->c()Lcom/facebook/drawee/generic/RoundingParams$RoundingMethod;

    move-result-object v0

    sget-object v1, Lcom/facebook/drawee/generic/RoundingParams$RoundingMethod;->c:Lcom/facebook/drawee/generic/RoundingParams$RoundingMethod;

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 233
    :cond_1
    new-instance v0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;

    invoke-direct {v0, p0}, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 234
    invoke-static {v0, p1}, Lo/DdmHandleAppName;->b(Lo/SQLiteDoneException;Lcom/facebook/drawee/generic/RoundingParams;)V

    .line 235
    invoke-virtual {p1}, Lcom/facebook/drawee/generic/RoundingParams;->e()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->c(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 238
    invoke-static {}, Lo/GeofenceHardwareService;->a()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 239
    invoke-static {}, Lo/GeofenceHardwareService;->b()V

    :cond_2
    return-object v0

    .line 238
    :cond_3
    :goto_0
    invoke-static {}, Lo/GeofenceHardwareService;->a()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 239
    invoke-static {}, Lo/GeofenceHardwareService;->b()V

    :cond_4
    return-object p0

    :catchall_0
    move-exception p0

    .line 238
    invoke-static {}, Lo/GeofenceHardwareService;->a()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 239
    invoke-static {}, Lo/GeofenceHardwareService;->b()V

    :cond_5
    throw p0
.end method

.method static c(Landroid/graphics/drawable/Drawable;Lcom/facebook/drawee/generic/RoundingParams;Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 263
    :try_start_0
    invoke-static {}, Lo/GeofenceHardwareService;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "WrappingUtils#maybeApplyLeafRounding"

    .line 264
    invoke-static {v0}, Lo/GeofenceHardwareService;->e(Ljava/lang/String;)V

    :cond_0
    if-eqz p0, :cond_5

    if-eqz p1, :cond_5

    .line 268
    invoke-virtual {p1}, Lcom/facebook/drawee/generic/RoundingParams;->c()Lcom/facebook/drawee/generic/RoundingParams$RoundingMethod;

    move-result-object v0

    sget-object v1, Lcom/facebook/drawee/generic/RoundingParams$RoundingMethod;->a:Lcom/facebook/drawee/generic/RoundingParams$RoundingMethod;

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 271
    :cond_1
    instance-of v0, p0, Lo/SQLiteDirectCursorDriver;

    if-eqz v0, :cond_3

    .line 272
    move-object v0, p0

    check-cast v0, Lo/SQLiteDirectCursorDriver;

    invoke-static {v0}, Lo/DdmHandleAppName;->c(Lo/SQLiteDebug;)Lo/SQLiteDebug;

    move-result-object v0

    .line 273
    sget-object v1, Lo/DdmHandleAppName;->a:Landroid/graphics/drawable/Drawable;

    invoke-interface {v0, v1}, Lo/SQLiteDebug;->b(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 274
    invoke-static {v1, p1, p2}, Lo/DdmHandleAppName;->d(Landroid/graphics/drawable/Drawable;Lcom/facebook/drawee/generic/RoundingParams;Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 275
    invoke-interface {v0, p1}, Lo/SQLiteDebug;->b(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 281
    invoke-static {}, Lo/GeofenceHardwareService;->a()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 282
    invoke-static {}, Lo/GeofenceHardwareService;->b()V

    :cond_2
    return-object p0

    .line 278
    :cond_3
    :try_start_1
    invoke-static {p0, p1, p2}, Lo/DdmHandleAppName;->d(Landroid/graphics/drawable/Drawable;Lcom/facebook/drawee/generic/RoundingParams;Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 281
    invoke-static {}, Lo/GeofenceHardwareService;->a()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 282
    invoke-static {}, Lo/GeofenceHardwareService;->b()V

    :cond_4
    return-object p0

    .line 281
    :cond_5
    :goto_0
    invoke-static {}, Lo/GeofenceHardwareService;->a()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 282
    invoke-static {}, Lo/GeofenceHardwareService;->b()V

    :cond_6
    return-object p0

    :catchall_0
    move-exception p0

    .line 281
    invoke-static {}, Lo/GeofenceHardwareService;->a()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 282
    invoke-static {}, Lo/GeofenceHardwareService;->b()V

    :cond_7
    throw p0
.end method

.method static c(Landroid/graphics/drawable/Drawable;Lo/SQLiteReadOnlyDatabaseException$Activity;Landroid/graphics/PointF;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 85
    invoke-static {}, Lo/GeofenceHardwareService;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "WrappingUtils#maybeWrapWithScaleType"

    .line 86
    invoke-static {v0}, Lo/GeofenceHardwareService;->e(Ljava/lang/String;)V

    :cond_0
    if-eqz p0, :cond_4

    if-nez p1, :cond_1

    goto :goto_0

    .line 94
    :cond_1
    new-instance v0, Lo/SQLiteProgram;

    invoke-direct {v0, p0, p1}, Lo/SQLiteProgram;-><init>(Landroid/graphics/drawable/Drawable;Lo/SQLiteReadOnlyDatabaseException$Activity;)V

    if-eqz p2, :cond_2

    .line 96
    invoke-virtual {v0, p2}, Lo/SQLiteProgram;->b(Landroid/graphics/PointF;)V

    .line 98
    :cond_2
    invoke-static {}, Lo/GeofenceHardwareService;->a()Z

    move-result p0

    if-eqz p0, :cond_3

    .line 99
    invoke-static {}, Lo/GeofenceHardwareService;->b()V

    :cond_3
    return-object v0

    .line 89
    :cond_4
    :goto_0
    invoke-static {}, Lo/GeofenceHardwareService;->a()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 90
    invoke-static {}, Lo/GeofenceHardwareService;->b()V

    :cond_5
    return-object p0
.end method

.method static c(Lo/SQLiteDebug;)Lo/SQLiteDebug;
    .locals 2

    .line 355
    :goto_0
    invoke-interface {p0}, Lo/SQLiteDebug;->e()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eq v0, p0, :cond_1

    .line 356
    instance-of v1, v0, Lo/SQLiteDebug;

    if-nez v1, :cond_0

    goto :goto_1

    .line 359
    :cond_0
    move-object p0, v0

    check-cast p0, Lo/SQLiteDebug;

    goto :goto_0

    :cond_1
    :goto_1
    return-object p0
.end method

.method private static d(Landroid/graphics/drawable/Drawable;Lcom/facebook/drawee/generic/RoundingParams;Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 299
    instance-of v0, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    .line 300
    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    .line 301
    new-instance v0, Lo/SQLiteGlobal;

    .line 304
    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 305
    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object p0

    invoke-direct {v0, p2, v1, p0}, Lo/SQLiteGlobal;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;Landroid/graphics/Paint;)V

    .line 306
    invoke-static {v0, p1}, Lo/DdmHandleAppName;->b(Lo/SQLiteDoneException;Lcom/facebook/drawee/generic/RoundingParams;)V

    return-object v0

    .line 308
    :cond_0
    instance-of p2, p0, Landroid/graphics/drawable/NinePatchDrawable;

    if-eqz p2, :cond_1

    .line 309
    check-cast p0, Landroid/graphics/drawable/NinePatchDrawable;

    .line 310
    new-instance p2, Lo/SQLiteMisuseException;

    invoke-direct {p2, p0}, Lo/SQLiteMisuseException;-><init>(Landroid/graphics/drawable/NinePatchDrawable;)V

    .line 312
    invoke-static {p2, p1}, Lo/DdmHandleAppName;->b(Lo/SQLiteDoneException;Lcom/facebook/drawee/generic/RoundingParams;)V

    return-object p2

    .line 314
    :cond_1
    instance-of p2, p0, Landroid/graphics/drawable/ColorDrawable;

    if-eqz p2, :cond_2

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0xb

    if-lt p2, v0, :cond_2

    .line 316
    check-cast p0, Landroid/graphics/drawable/ColorDrawable;

    .line 317
    invoke-static {p0}, Lo/SQLiteOpenHelper;->c(Landroid/graphics/drawable/ColorDrawable;)Lo/SQLiteOpenHelper;

    move-result-object p0

    .line 318
    invoke-static {p0, p1}, Lo/DdmHandleAppName;->b(Lo/SQLiteDoneException;Lcom/facebook/drawee/generic/RoundingParams;)V

    return-object p0

    :cond_2
    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    aput-object p0, p1, p2

    const-string p2, "WrappingUtils"

    const-string v0, "Don\'t know how to round that drawable: %s"

    .line 321
    invoke-static {p2, v0, p1}, Lo/DexMetadataHelper;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p0
.end method
