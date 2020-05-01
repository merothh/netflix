.class public Lo/SQLiteMisuseException;
.super Lo/SQLiteOutOfMemoryException;
.source ""


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/NinePatchDrawable;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lo/SQLiteOutOfMemoryException;-><init>(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 21
    invoke-static {}, Lo/GeofenceHardwareService;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "RoundedNinePatchDrawable#draw"

    .line 22
    invoke-static {v0}, Lo/GeofenceHardwareService;->e(Ljava/lang/String;)V

    .line 24
    :cond_0
    invoke-virtual {p0}, Lo/SQLiteMisuseException;->b()Z

    move-result v0

    if-nez v0, :cond_2

    .line 25
    invoke-super {p0, p1}, Lo/SQLiteOutOfMemoryException;->draw(Landroid/graphics/Canvas;)V

    .line 26
    invoke-static {}, Lo/GeofenceHardwareService;->a()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 27
    invoke-static {}, Lo/GeofenceHardwareService;->b()V

    :cond_1
    return-void

    .line 31
    :cond_2
    invoke-virtual {p0}, Lo/SQLiteMisuseException;->c()V

    .line 32
    invoke-virtual {p0}, Lo/SQLiteMisuseException;->d()V

    .line 33
    iget-object v0, p0, Lo/SQLiteMisuseException;->d:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 34
    invoke-super {p0, p1}, Lo/SQLiteOutOfMemoryException;->draw(Landroid/graphics/Canvas;)V

    .line 35
    invoke-static {}, Lo/GeofenceHardwareService;->a()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 36
    invoke-static {}, Lo/GeofenceHardwareService;->b()V

    :cond_3
    return-void
.end method
