.class public Lo/MoveToDisplayItem;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/NewIntentItem;
.implements Lo/RestoreSession$Application;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/NewIntentItem;",
        "Lo/RestoreSession$Application<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/FileBackupHelperBase;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lo/ObjectPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/ObjectPool<",
            "*>;"
        }
    .end annotation
.end field

.field private c:I

.field private d:Lo/FileBackupHelperBase;

.field private final e:Lo/NewIntentItem$ActionBar;

.field private volatile f:Lo/BluetoothAvrcpPlayerSettings$Application;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/BluetoothAvrcpPlayerSettings$Application<",
            "*>;"
        }
    .end annotation
.end field

.field private h:I

.field private i:Ljava/io/File;

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/BluetoothAvrcpPlayerSettings<",
            "Ljava/io/File;",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/List;Lo/ObjectPool;Lo/NewIntentItem$ActionBar;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/FileBackupHelperBase;",
            ">;",
            "Lo/ObjectPool<",
            "*>;",
            "Lo/NewIntentItem$ActionBar;",
            ")V"
        }
    .end annotation

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 23
    iput v0, p0, Lo/MoveToDisplayItem;->c:I

    .line 40
    iput-object p1, p0, Lo/MoveToDisplayItem;->a:Ljava/util/List;

    .line 41
    iput-object p2, p0, Lo/MoveToDisplayItem;->b:Lo/ObjectPool;

    .line 42
    iput-object p3, p0, Lo/MoveToDisplayItem;->e:Lo/NewIntentItem$ActionBar;

    return-void
.end method

.method public constructor <init>(Lo/ObjectPool;Lo/NewIntentItem$ActionBar;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/ObjectPool<",
            "*>;",
            "Lo/NewIntentItem$ActionBar;",
            ")V"
        }
    .end annotation

    .line 34
    invoke-virtual {p1}, Lo/ObjectPool;->n()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lo/MoveToDisplayItem;-><init>(Ljava/util/List;Lo/ObjectPool;Lo/NewIntentItem$ActionBar;)V

    return-void
.end method

.method private c()Z
    .locals 2

    .line 82
    iget v0, p0, Lo/MoveToDisplayItem;->h:I

    iget-object v1, p0, Lo/MoveToDisplayItem;->j:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public b(Ljava/lang/Object;)V
    .locals 6

    .line 95
    iget-object v0, p0, Lo/MoveToDisplayItem;->e:Lo/NewIntentItem$ActionBar;

    iget-object v1, p0, Lo/MoveToDisplayItem;->d:Lo/FileBackupHelperBase;

    iget-object v2, p0, Lo/MoveToDisplayItem;->f:Lo/BluetoothAvrcpPlayerSettings$Application;

    iget-object v3, v2, Lo/BluetoothAvrcpPlayerSettings$Application;->e:Lo/RestoreSession;

    sget-object v4, Lcom/bumptech/glide/load/DataSource;->c:Lcom/bumptech/glide/load/DataSource;

    iget-object v5, p0, Lo/MoveToDisplayItem;->d:Lo/FileBackupHelperBase;

    move-object v2, p1

    invoke-interface/range {v0 .. v5}, Lo/NewIntentItem$ActionBar;->e(Lo/FileBackupHelperBase;Ljava/lang/Object;Lo/RestoreSession;Lcom/bumptech/glide/load/DataSource;Lo/FileBackupHelperBase;)V

    return-void
.end method

.method public d(Ljava/lang/Exception;)V
    .locals 4

    .line 100
    iget-object v0, p0, Lo/MoveToDisplayItem;->e:Lo/NewIntentItem$ActionBar;

    iget-object v1, p0, Lo/MoveToDisplayItem;->d:Lo/FileBackupHelperBase;

    iget-object v2, p0, Lo/MoveToDisplayItem;->f:Lo/BluetoothAvrcpPlayerSettings$Application;

    iget-object v2, v2, Lo/BluetoothAvrcpPlayerSettings$Application;->e:Lo/RestoreSession;

    sget-object v3, Lcom/bumptech/glide/load/DataSource;->c:Lcom/bumptech/glide/load/DataSource;

    invoke-interface {v0, v1, p1, v2, v3}, Lo/NewIntentItem$ActionBar;->b(Lo/FileBackupHelperBase;Ljava/lang/Exception;Lo/RestoreSession;Lcom/bumptech/glide/load/DataSource;)V

    return-void
.end method

.method public d()Z
    .locals 7

    .line 47
    :cond_0
    :goto_0
    iget-object v0, p0, Lo/MoveToDisplayItem;->j:Ljava/util/List;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lo/MoveToDisplayItem;->c()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_2

    :cond_1
    const/4 v0, 0x0

    .line 66
    iput-object v0, p0, Lo/MoveToDisplayItem;->f:Lo/BluetoothAvrcpPlayerSettings$Application;

    :cond_2
    :goto_1
    if-nez v1, :cond_3

    .line 68
    invoke-direct {p0}, Lo/MoveToDisplayItem;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 69
    iget-object v0, p0, Lo/MoveToDisplayItem;->j:Ljava/util/List;

    iget v3, p0, Lo/MoveToDisplayItem;->h:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lo/MoveToDisplayItem;->h:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/BluetoothAvrcpPlayerSettings;

    .line 70
    iget-object v3, p0, Lo/MoveToDisplayItem;->i:Ljava/io/File;

    iget-object v4, p0, Lo/MoveToDisplayItem;->b:Lo/ObjectPool;

    .line 71
    invoke-virtual {v4}, Lo/ObjectPool;->i()I

    move-result v4

    iget-object v5, p0, Lo/MoveToDisplayItem;->b:Lo/ObjectPool;

    invoke-virtual {v5}, Lo/ObjectPool;->j()I

    move-result v5

    iget-object v6, p0, Lo/MoveToDisplayItem;->b:Lo/ObjectPool;

    .line 72
    invoke-virtual {v6}, Lo/ObjectPool;->b()Lo/FullBackupAgent;

    move-result-object v6

    .line 71
    invoke-interface {v0, v3, v4, v5, v6}, Lo/BluetoothAvrcpPlayerSettings;->e(Ljava/lang/Object;IILo/FullBackupAgent;)Lo/BluetoothAvrcpPlayerSettings$Application;

    move-result-object v0

    iput-object v0, p0, Lo/MoveToDisplayItem;->f:Lo/BluetoothAvrcpPlayerSettings$Application;

    .line 73
    iget-object v0, p0, Lo/MoveToDisplayItem;->f:Lo/BluetoothAvrcpPlayerSettings$Application;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lo/MoveToDisplayItem;->b:Lo/ObjectPool;

    iget-object v3, p0, Lo/MoveToDisplayItem;->f:Lo/BluetoothAvrcpPlayerSettings$Application;

    iget-object v3, v3, Lo/BluetoothAvrcpPlayerSettings$Application;->e:Lo/RestoreSession;

    invoke-interface {v3}, Lo/RestoreSession;->a()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v0, v3}, Lo/ObjectPool;->a(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 75
    iget-object v0, p0, Lo/MoveToDisplayItem;->f:Lo/BluetoothAvrcpPlayerSettings$Application;

    iget-object v0, v0, Lo/BluetoothAvrcpPlayerSettings$Application;->e:Lo/RestoreSession;

    iget-object v1, p0, Lo/MoveToDisplayItem;->b:Lo/ObjectPool;

    invoke-virtual {v1}, Lo/ObjectPool;->c()Lcom/bumptech/glide/Priority;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Lo/RestoreSession;->a(Lcom/bumptech/glide/Priority;Lo/RestoreSession$Application;)V

    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    return v1

    .line 48
    :cond_4
    :goto_2
    iget v0, p0, Lo/MoveToDisplayItem;->c:I

    add-int/2addr v0, v2

    iput v0, p0, Lo/MoveToDisplayItem;->c:I

    .line 49
    iget v0, p0, Lo/MoveToDisplayItem;->c:I

    iget-object v2, p0, Lo/MoveToDisplayItem;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_5

    return v1

    .line 53
    :cond_5
    iget-object v0, p0, Lo/MoveToDisplayItem;->a:Ljava/util/List;

    iget v2, p0, Lo/MoveToDisplayItem;->c:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/FileBackupHelperBase;

    .line 57
    new-instance v2, Lo/LaunchActivityItem;

    iget-object v3, p0, Lo/MoveToDisplayItem;->b:Lo/ObjectPool;

    invoke-virtual {v3}, Lo/ObjectPool;->f()Lo/FileBackupHelperBase;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lo/LaunchActivityItem;-><init>(Lo/FileBackupHelperBase;Lo/FileBackupHelperBase;)V

    .line 58
    iget-object v3, p0, Lo/MoveToDisplayItem;->b:Lo/ObjectPool;

    invoke-virtual {v3}, Lo/ObjectPool;->e()Lo/StorageStatsManager;

    move-result-object v3

    invoke-interface {v3, v2}, Lo/StorageStatsManager;->c(Lo/FileBackupHelperBase;)Ljava/io/File;

    move-result-object v2

    iput-object v2, p0, Lo/MoveToDisplayItem;->i:Ljava/io/File;

    .line 59
    iget-object v2, p0, Lo/MoveToDisplayItem;->i:Ljava/io/File;

    if-eqz v2, :cond_0

    .line 60
    iput-object v0, p0, Lo/MoveToDisplayItem;->d:Lo/FileBackupHelperBase;

    .line 61
    iget-object v0, p0, Lo/MoveToDisplayItem;->b:Lo/ObjectPool;

    invoke-virtual {v0, v2}, Lo/ObjectPool;->b(Ljava/io/File;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lo/MoveToDisplayItem;->j:Ljava/util/List;

    .line 62
    iput v1, p0, Lo/MoveToDisplayItem;->h:I

    goto/16 :goto_0
.end method

.method public e()V
    .locals 1

    .line 87
    iget-object v0, p0, Lo/MoveToDisplayItem;->f:Lo/BluetoothAvrcpPlayerSettings$Application;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, v0, Lo/BluetoothAvrcpPlayerSettings$Application;->e:Lo/RestoreSession;

    invoke-interface {v0}, Lo/RestoreSession;->e()V

    :cond_0
    return-void
.end method
