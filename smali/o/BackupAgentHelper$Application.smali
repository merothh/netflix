.class Lo/BackupAgentHelper$Application;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/DeviceFilter$ActionBar;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/BackupAgentHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Application"
.end annotation


# instance fields
.field final synthetic c:Lo/BackupAgentHelper;

.field private final d:Lo/ContentProviderClient;


# direct methods
.method constructor <init>(Lo/BackupAgentHelper;Lo/ContentProviderClient;)V
    .locals 0

    .line 667
    iput-object p1, p0, Lo/BackupAgentHelper$Application;->c:Lo/BackupAgentHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 668
    iput-object p2, p0, Lo/BackupAgentHelper$Application;->d:Lo/ContentProviderClient;

    return-void
.end method


# virtual methods
.method public b(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 674
    iget-object p1, p0, Lo/BackupAgentHelper$Application;->c:Lo/BackupAgentHelper;

    monitor-enter p1

    .line 675
    :try_start_0
    iget-object v0, p0, Lo/BackupAgentHelper$Application;->d:Lo/ContentProviderClient;

    invoke-virtual {v0}, Lo/ContentProviderClient;->b()V

    .line 676
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :goto_0
    return-void
.end method
