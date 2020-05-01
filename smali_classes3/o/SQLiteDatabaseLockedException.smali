.class public Lo/SQLiteDatabaseLockedException;
.super Lo/SQLiteDirectCursorDriver;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private b:Z

.field private c:Z

.field d:F

.field private e:I


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;I)V
    .locals 1

    const/4 v0, 0x1

    .line 44
    invoke-direct {p0, p1, p2, v0}, Lo/SQLiteDatabaseLockedException;-><init>(Landroid/graphics/drawable/Drawable;IZ)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;IZ)V
    .locals 0

    .line 55
    invoke-static {p1}, Lo/StringParceledListSlice;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, p1}, Lo/SQLiteDirectCursorDriver;-><init>(Landroid/graphics/drawable/Drawable;)V

    const/4 p1, 0x0

    .line 30
    iput p1, p0, Lo/SQLiteDatabaseLockedException;->d:F

    const/4 p1, 0x0

    .line 34
    iput-boolean p1, p0, Lo/SQLiteDatabaseLockedException;->b:Z

    .line 56
    iput p2, p0, Lo/SQLiteDatabaseLockedException;->e:I

    .line 57
    iput-boolean p3, p0, Lo/SQLiteDatabaseLockedException;->c:Z

    return-void
.end method

.method private a()V
    .locals 4

    .line 121
    iget-boolean v0, p0, Lo/SQLiteDatabaseLockedException;->b:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 122
    iput-boolean v0, p0, Lo/SQLiteDatabaseLockedException;->b:Z

    .line 123
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x14

    add-long/2addr v0, v2

    invoke-virtual {p0, p0, v0, v1}, Lo/SQLiteDatabaseLockedException;->scheduleSelf(Ljava/lang/Runnable;J)V

    :cond_0
    return-void
.end method

.method private c()I
    .locals 2

    .line 128
    iget v0, p0, Lo/SQLiteDatabaseLockedException;->e:I

    int-to-float v0, v0

    const/high16 v1, 0x41a00000    # 20.0f

    div-float/2addr v1, v0

    const/high16 v0, 0x43b40000    # 360.0f

    mul-float v1, v1, v0

    float-to-int v0, v1

    return v0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 80
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 82
    invoke-virtual {p0}, Lo/SQLiteDatabaseLockedException;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 83
    iget v2, v1, Landroid/graphics/Rect;->right:I

    iget v3, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    .line 84
    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    iget v4, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    .line 86
    iget v4, p0, Lo/SQLiteDatabaseLockedException;->d:F

    .line 87
    iget-boolean v5, p0, Lo/SQLiteDatabaseLockedException;->c:Z

    if-nez v5, :cond_0

    const/high16 v5, 0x43b40000    # 360.0f

    sub-float v4, v5, v4

    .line 90
    :cond_0
    iget v5, v1, Landroid/graphics/Rect;->left:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v5, v2

    int-to-float v2, v5

    iget v1, v1, Landroid/graphics/Rect;->top:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v1, v3

    int-to-float v1, v1

    invoke-virtual {p1, v4, v2, v1}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 91
    invoke-super {p0, p1}, Lo/SQLiteDirectCursorDriver;->draw(Landroid/graphics/Canvas;)V

    .line 92
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 94
    invoke-direct {p0}, Lo/SQLiteDatabaseLockedException;->a()V

    return-void
.end method

.method public run()V
    .locals 2

    const/4 v0, 0x0

    .line 99
    iput-boolean v0, p0, Lo/SQLiteDatabaseLockedException;->b:Z

    .line 100
    iget v0, p0, Lo/SQLiteDatabaseLockedException;->d:F

    invoke-direct {p0}, Lo/SQLiteDatabaseLockedException;->c()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p0, Lo/SQLiteDatabaseLockedException;->d:F

    .line 101
    invoke-virtual {p0}, Lo/SQLiteDatabaseLockedException;->invalidateSelf()V

    return-void
.end method
