.class public Lo/SQLiteDatabaseConfiguration;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private a:Z

.field private b:I

.field private c:I

.field private d:Landroid/graphics/ColorFilter;

.field private e:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 22
    iput v0, p0, Lo/SQLiteDatabaseConfiguration;->e:I

    const/4 v1, 0x0

    .line 23
    iput-boolean v1, p0, Lo/SQLiteDatabaseConfiguration;->a:Z

    const/4 v1, 0x0

    .line 24
    iput-object v1, p0, Lo/SQLiteDatabaseConfiguration;->d:Landroid/graphics/ColorFilter;

    .line 25
    iput v0, p0, Lo/SQLiteDatabaseConfiguration;->b:I

    .line 26
    iput v0, p0, Lo/SQLiteDatabaseConfiguration;->c:I

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Range"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 50
    :cond_0
    iget v0, p0, Lo/SQLiteDatabaseConfiguration;->e:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 51
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 53
    :cond_1
    iget-boolean v0, p0, Lo/SQLiteDatabaseConfiguration;->a:Z

    if-eqz v0, :cond_2

    .line 54
    iget-object v0, p0, Lo/SQLiteDatabaseConfiguration;->d:Landroid/graphics/ColorFilter;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 56
    :cond_2
    iget v0, p0, Lo/SQLiteDatabaseConfiguration;->b:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_4

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    .line 57
    :goto_0
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 59
    :cond_4
    iget v0, p0, Lo/SQLiteDatabaseConfiguration;->c:I

    if-eq v0, v1, :cond_6

    if-eqz v0, :cond_5

    goto :goto_1

    :cond_5
    const/4 v2, 0x0

    .line 60
    :goto_1
    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->setFilterBitmap(Z)V

    :cond_6
    return-void
.end method

.method public b(I)V
    .locals 0

    .line 29
    iput p1, p0, Lo/SQLiteDatabaseConfiguration;->e:I

    return-void
.end method

.method public c(Z)V
    .locals 0

    .line 42
    iput p1, p0, Lo/SQLiteDatabaseConfiguration;->c:I

    return-void
.end method

.method public d(Z)V
    .locals 0

    .line 38
    iput p1, p0, Lo/SQLiteDatabaseConfiguration;->b:I

    return-void
.end method

.method public e(Landroid/graphics/ColorFilter;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lo/SQLiteDatabaseConfiguration;->d:Landroid/graphics/ColorFilter;

    const/4 p1, 0x1

    .line 34
    iput-boolean p1, p0, Lo/SQLiteDatabaseConfiguration;->a:Z

    return-void
.end method
