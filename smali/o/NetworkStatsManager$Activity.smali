.class Lo/NetworkStatsManager$Activity;
.super Lo/Utils;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/NetworkStatsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Activity"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/Utils<",
        "Lo/NetworkStatsManager$ActionBar;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 177
    invoke-direct {p0}, Lo/Utils;-><init>()V

    return-void
.end method


# virtual methods
.method protected synthetic a()Lo/ExternalStorageStats;
    .locals 1

    .line 176
    invoke-virtual {p0}, Lo/NetworkStatsManager$Activity;->c()Lo/NetworkStatsManager$ActionBar;

    move-result-object v0

    return-object v0
.end method

.method protected c()Lo/NetworkStatsManager$ActionBar;
    .locals 1

    .line 187
    new-instance v0, Lo/NetworkStatsManager$ActionBar;

    invoke-direct {v0, p0}, Lo/NetworkStatsManager$ActionBar;-><init>(Lo/NetworkStatsManager$Activity;)V

    return-object v0
.end method

.method public d(ILandroid/graphics/Bitmap$Config;)Lo/NetworkStatsManager$ActionBar;
    .locals 1

    .line 180
    invoke-virtual {p0}, Lo/NetworkStatsManager$Activity;->e()Lo/ExternalStorageStats;

    move-result-object v0

    check-cast v0, Lo/NetworkStatsManager$ActionBar;

    .line 181
    invoke-virtual {v0, p1, p2}, Lo/NetworkStatsManager$ActionBar;->d(ILandroid/graphics/Bitmap$Config;)V

    return-object v0
.end method
