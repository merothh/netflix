.class public Lo/CursorIndexOutOfBoundsException;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/LegacyCameraDevice;


# instance fields
.field private final b:Lo/LegacyCameraDevice;

.field private final d:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Lo/LegacyCameraDevice;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lo/CursorIndexOutOfBoundsException;->d:Landroid/content/res/Resources;

    .line 30
    iput-object p2, p0, Lo/CursorIndexOutOfBoundsException;->b:Lo/LegacyCameraDevice;

    return-void
.end method

.method private static a(Lo/LegacyMetadataMapper;)Z
    .locals 1

    .line 74
    invoke-virtual {p0}, Lo/LegacyMetadataMapper;->i()I

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    invoke-virtual {p0}, Lo/LegacyMetadataMapper;->i()I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static e(Lo/LegacyMetadataMapper;)Z
    .locals 2

    .line 81
    invoke-virtual {p0}, Lo/LegacyMetadataMapper;->f()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 82
    invoke-virtual {p0}, Lo/LegacyMetadataMapper;->f()I

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method


# virtual methods
.method public b(Lo/LegacyRequestMapper;)Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 42
    :try_start_0
    invoke-static {}, Lo/GeofenceHardwareService;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "DefaultDrawableFactory#createDrawable"

    .line 43
    invoke-static {v0}, Lo/GeofenceHardwareService;->e(Ljava/lang/String;)V

    .line 45
    :cond_0
    instance-of v0, p1, Lo/LegacyMetadataMapper;

    if-eqz v0, :cond_4

    .line 46
    check-cast p1, Lo/LegacyMetadataMapper;

    .line 47
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lo/CursorIndexOutOfBoundsException;->d:Landroid/content/res/Resources;

    .line 48
    invoke-virtual {p1}, Lo/LegacyMetadataMapper;->e()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 49
    invoke-static {p1}, Lo/CursorIndexOutOfBoundsException;->a(Lo/LegacyMetadataMapper;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 50
    invoke-static {p1}, Lo/CursorIndexOutOfBoundsException;->e(Lo/LegacyMetadataMapper;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_2

    .line 65
    invoke-static {}, Lo/GeofenceHardwareService;->a()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 66
    invoke-static {}, Lo/GeofenceHardwareService;->b()V

    :cond_1
    return-object v0

    .line 54
    :cond_2
    :try_start_1
    new-instance v1, Lo/SQLiteDiskIOException;

    .line 56
    invoke-virtual {p1}, Lo/LegacyMetadataMapper;->i()I

    move-result v2

    .line 57
    invoke-virtual {p1}, Lo/LegacyMetadataMapper;->f()I

    move-result p1

    invoke-direct {v1, v0, v2, p1}, Lo/SQLiteDiskIOException;-><init>(Landroid/graphics/drawable/Drawable;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 65
    invoke-static {}, Lo/GeofenceHardwareService;->a()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 66
    invoke-static {}, Lo/GeofenceHardwareService;->b()V

    :cond_3
    return-object v1

    .line 59
    :cond_4
    :try_start_2
    iget-object v0, p0, Lo/CursorIndexOutOfBoundsException;->b:Lo/LegacyCameraDevice;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lo/CursorIndexOutOfBoundsException;->b:Lo/LegacyCameraDevice;

    .line 60
    invoke-interface {v0, p1}, Lo/LegacyCameraDevice;->d(Lo/LegacyRequestMapper;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 61
    iget-object v0, p0, Lo/CursorIndexOutOfBoundsException;->b:Lo/LegacyCameraDevice;

    invoke-interface {v0, p1}, Lo/LegacyCameraDevice;->b(Lo/LegacyRequestMapper;)Landroid/graphics/drawable/Drawable;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 65
    invoke-static {}, Lo/GeofenceHardwareService;->a()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 66
    invoke-static {}, Lo/GeofenceHardwareService;->b()V

    :cond_5
    return-object p1

    :cond_6
    const/4 p1, 0x0

    .line 65
    invoke-static {}, Lo/GeofenceHardwareService;->a()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 66
    invoke-static {}, Lo/GeofenceHardwareService;->b()V

    :cond_7
    return-object p1

    :catchall_0
    move-exception p1

    .line 65
    invoke-static {}, Lo/GeofenceHardwareService;->a()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 66
    invoke-static {}, Lo/GeofenceHardwareService;->b()V

    :cond_8
    throw p1
.end method

.method public d(Lo/LegacyRequestMapper;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
