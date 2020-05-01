.class public Lo/UsageStatsManager;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/StorageStatsManager$Application;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/UsageStatsManager$ActionBar;
    }
.end annotation


# instance fields
.field private final a:J

.field private final d:Lo/UsageStatsManager$ActionBar;


# direct methods
.method public constructor <init>(Lo/UsageStatsManager$ActionBar;J)V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-wide p2, p0, Lo/UsageStatsManager;->a:J

    .line 55
    iput-object p1, p0, Lo/UsageStatsManager;->d:Lo/UsageStatsManager$ActionBar;

    return-void
.end method


# virtual methods
.method public e()Lo/StorageStatsManager;
    .locals 3

    .line 60
    iget-object v0, p0, Lo/UsageStatsManager;->d:Lo/UsageStatsManager$ActionBar;

    invoke-interface {v0}, Lo/UsageStatsManager$ActionBar;->e()Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 66
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    return-object v1

    .line 70
    :cond_2
    iget-wide v1, p0, Lo/UsageStatsManager;->a:J

    invoke-static {v0, v1, v2}, Lo/UsageEvents;->a(Ljava/io/File;J)Lo/StorageStatsManager;

    move-result-object v0

    return-object v0
.end method
