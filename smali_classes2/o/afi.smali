.class public final Lo/afi;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/afi$ActionBar;
    }
.end annotation


# instance fields
.field private final c:Lo/afi$ActionBar;

.field private final e:Lo/aeX;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Lo/afi$ActionBar;

    invoke-direct {v0}, Lo/afi$ActionBar;-><init>()V

    iput-object v0, p0, Lo/afi;->c:Lo/afi$ActionBar;

    .line 21
    new-instance v0, Lo/aeX;

    invoke-direct {v0}, Lo/aeX;-><init>()V

    iput-object v0, p0, Lo/afi;->e:Lo/aeX;

    return-void
.end method

.method private final c()I
    .locals 2

    .line 58
    sget v0, Lo/aed;->c:I

    .line 59
    invoke-static {}, Lo/ady;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 60
    div-int/lit8 v0, v0, 0x2

    :cond_0
    return v0
.end method

.method private final d(Landroid/content/Context;)J
    .locals 2

    .line 67
    invoke-static {p1}, Lo/aed;->e(Landroid/content/Context;)I

    move-result p1

    int-to-long v0, p1

    return-wide v0
.end method

.method public static final synthetic e(Lo/afi;)I
    .locals 0

    .line 19
    invoke-direct {p0}, Lo/afi;->c()I

    move-result p0

    return p0
.end method


# virtual methods
.method public final a()Lo/afi$ActionBar;
    .locals 1

    .line 20
    iget-object v0, p0, Lo/afi;->c:Lo/afi$ActionBar;

    return-object v0
.end method

.method public final b()Lo/aeX;
    .locals 1

    .line 21
    iget-object v0, p0, Lo/afi;->e:Lo/aeX;

    return-object v0
.end method

.method public final b(Landroid/content/Context;)V
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-static {}, Lo/CursorToBulkCursorAdaptor;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 29
    invoke-static {p1}, Lo/PackageBackwardCompatibility;->a(Landroid/content/Context;)Lo/PackageBackwardCompatibility$TaskDescription;

    move-result-object v0

    .line 30
    invoke-direct {p0, p1}, Lo/afi;->d(Landroid/content/Context;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lo/PackageBackwardCompatibility$TaskDescription;->e(J)Lo/PackageBackwardCompatibility$TaskDescription;

    move-result-object v0

    .line 31
    invoke-virtual {v0}, Lo/PackageBackwardCompatibility$TaskDescription;->e()Lo/PackageBackwardCompatibility;

    move-result-object v0

    .line 87
    const-class v1, Landroid/app/ActivityManager;

    invoke-static {p1, v1}, Lo/OnSystemUiVisibilityChangeListener;->c(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    .line 33
    check-cast v1, Landroid/app/ActivityManager;

    .line 34
    new-instance v2, Lo/SensorEvent;

    invoke-direct {v2, v1}, Lo/SensorEvent;-><init>(Landroid/app/ActivityManager;)V

    invoke-virtual {v2}, Lo/SensorEvent;->e()Lo/SystemSensorManager;

    move-result-object v1

    .line 35
    new-instance v2, Lcom/netflix/mediaclient/util/gfx/fresco/NetflixFrescoModule$initializeFrescoImageLibrary$memoryCacheParams$1;

    invoke-direct {v2, p0, v1}, Lcom/netflix/mediaclient/util/gfx/fresco/NetflixFrescoModule$initializeFrescoImageLibrary$memoryCacheParams$1;-><init>(Lo/afi;Lo/SystemSensorManager;)V

    check-cast v2, Lo/alB;

    .line 45
    invoke-static {p1}, Lo/CameraDeviceImpl;->b(Landroid/content/Context;)Lo/CameraDeviceImpl$ActionBar;

    move-result-object v1

    .line 46
    sget-object v3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v1, v3}, Lo/CameraDeviceImpl$ActionBar;->b(Landroid/graphics/Bitmap$Config;)Lo/CameraDeviceImpl$ActionBar;

    move-result-object v1

    .line 47
    iget-object v3, p0, Lo/afi;->c:Lo/afi$ActionBar;

    check-cast v3, Lo/RuntimePermissionPresenter;

    invoke-virtual {v1, v3}, Lo/CameraDeviceImpl$ActionBar;->b(Lo/RuntimePermissionPresenter;)Lo/CameraDeviceImpl$ActionBar;

    move-result-object v1

    .line 48
    new-instance v3, Lo/afl;

    invoke-direct {v3, v2}, Lo/afl;-><init>(Lo/alB;)V

    check-cast v3, Lo/UserInfo;

    invoke-virtual {v1, v3}, Lo/CameraDeviceImpl$ActionBar;->a(Lo/UserInfo;)Lo/CameraDeviceImpl$ActionBar;

    move-result-object v1

    .line 49
    invoke-virtual {v1, v0}, Lo/CameraDeviceImpl$ActionBar;->a(Lo/PackageBackwardCompatibility;)Lo/CameraDeviceImpl$ActionBar;

    move-result-object v0

    .line 50
    iget-object v1, p0, Lo/afi;->e:Lo/aeX;

    check-cast v1, Lo/HdmiRecordListener;

    invoke-virtual {v0, v1}, Lo/CameraDeviceImpl$ActionBar;->b(Lo/HdmiRecordListener;)Lo/CameraDeviceImpl$ActionBar;

    move-result-object v0

    .line 51
    new-instance v1, Lo/afd;

    invoke-direct {v1}, Lo/afd;-><init>()V

    check-cast v1, Lo/SensorEventListener;

    invoke-virtual {v0, v1}, Lo/CameraDeviceImpl$ActionBar;->a(Lo/SensorEventListener;)Lo/CameraDeviceImpl$ActionBar;

    move-result-object v0

    .line 52
    invoke-virtual {v0}, Lo/CameraDeviceImpl$ActionBar;->c()Lo/CameraDeviceImpl;

    move-result-object v0

    .line 53
    invoke-static {}, Lo/CursorWindow;->b()Lo/CursorWindow$StateListAnimator;

    move-result-object v1

    invoke-virtual {v1}, Lo/CursorWindow$StateListAnimator;->d()Lo/CursorWindow;

    move-result-object v1

    .line 54
    invoke-static {p1, v0, v1}, Lo/CursorToBulkCursorAdaptor;->e(Landroid/content/Context;Lo/CameraDeviceImpl;Lo/CursorWindow;)V

    return-void

    .line 25
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Attempting to initialize Fresco multiple times."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method
