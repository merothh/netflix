.class public final Lo/UsageStats;
.super Lo/UsageStatsManager;
.source ""


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string v0, "image_manager_disk_cache"

    const-wide/32 v1, 0xfa00000

    .line 15
    invoke-direct {p0, p1, v0, v1, v2}, Lo/UsageStats;-><init>(Landroid/content/Context;Ljava/lang/String;J)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;J)V
    .locals 1

    const-string v0, "image_manager_disk_cache"

    .line 20
    invoke-direct {p0, p1, v0, p2, p3}, Lo/UsageStats;-><init>(Landroid/content/Context;Ljava/lang/String;J)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 1

    .line 25
    new-instance v0, Lo/UsageStats$3;

    invoke-direct {v0, p1, p2}, Lo/UsageStats$3;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {p0, v0, p3, p4}, Lo/UsageStatsManager;-><init>(Lo/UsageStatsManager$ActionBar;J)V

    return-void
.end method
