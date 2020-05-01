.class final Lo/NetworkStatsManager$ActionBar;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ExternalStorageStats;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/NetworkStatsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ActionBar"
.end annotation


# instance fields
.field private final a:Lo/NetworkStatsManager$Activity;

.field private d:Landroid/graphics/Bitmap$Config;

.field e:I


# direct methods
.method public constructor <init>(Lo/NetworkStatsManager$Activity;)V
    .locals 0

    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 199
    iput-object p1, p0, Lo/NetworkStatsManager$ActionBar;->a:Lo/NetworkStatsManager$Activity;

    return-void
.end method


# virtual methods
.method public d(ILandroid/graphics/Bitmap$Config;)V
    .locals 0

    .line 209
    iput p1, p0, Lo/NetworkStatsManager$ActionBar;->e:I

    .line 210
    iput-object p2, p0, Lo/NetworkStatsManager$ActionBar;->d:Landroid/graphics/Bitmap$Config;

    return-void
.end method

.method public e()V
    .locals 1

    .line 215
    iget-object v0, p0, Lo/NetworkStatsManager$ActionBar;->a:Lo/NetworkStatsManager$Activity;

    invoke-virtual {v0, p0}, Lo/NetworkStatsManager$Activity;->e(Lo/ExternalStorageStats;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 225
    instance-of v0, p1, Lo/NetworkStatsManager$ActionBar;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 226
    check-cast p1, Lo/NetworkStatsManager$ActionBar;

    .line 227
    iget v0, p0, Lo/NetworkStatsManager$ActionBar;->e:I

    iget v2, p1, Lo/NetworkStatsManager$ActionBar;->e:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lo/NetworkStatsManager$ActionBar;->d:Landroid/graphics/Bitmap$Config;

    iget-object p1, p1, Lo/NetworkStatsManager$ActionBar;->d:Landroid/graphics/Bitmap$Config;

    .line 228
    invoke-static {v0, p1}, Lo/FallbackCategoryProvider;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 235
    iget v0, p0, Lo/NetworkStatsManager$ActionBar;->e:I

    mul-int/lit8 v0, v0, 0x1f

    .line 236
    iget-object v1, p0, Lo/NetworkStatsManager$ActionBar;->d:Landroid/graphics/Bitmap$Config;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/graphics/Bitmap$Config;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 220
    iget v0, p0, Lo/NetworkStatsManager$ActionBar;->e:I

    iget-object v1, p0, Lo/NetworkStatsManager$ActionBar;->d:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1}, Lo/NetworkStatsManager;->a(ILandroid/graphics/Bitmap$Config;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
