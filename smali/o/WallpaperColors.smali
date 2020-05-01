.class public final Lo/WallpaperColors;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static volatile c:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .locals 1

    .line 20
    sget-boolean v0, Lo/WallpaperColors;->c:Z

    if-eqz v0, :cond_0

    const-string v0, "Bugsnag"

    .line 21
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static b()Z
    .locals 1

    .line 36
    sget-boolean v0, Lo/WallpaperColors;->c:Z

    return v0
.end method

.method public static c(Ljava/lang/String;)V
    .locals 1

    .line 14
    sget-boolean v0, Lo/WallpaperColors;->c:Z

    if-eqz v0, :cond_0

    const-string v0, "Bugsnag"

    .line 15
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static c(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 26
    sget-boolean v0, Lo/WallpaperColors;->c:Z

    if-eqz v0, :cond_0

    const-string v0, "Bugsnag"

    .line 27
    invoke-static {v0, p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method static e(Z)V
    .locals 0

    .line 32
    sput-boolean p0, Lo/WallpaperColors;->c:Z

    return-void
.end method
