.class public Lo/SliceManager;
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
.field private final a:Lo/ObjectPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/ObjectPool<",
            "*>;"
        }
    .end annotation
.end field

.field private b:Lo/FileBackupHelperBase;

.field private c:I

.field private final d:Lo/NewIntentItem$ActionBar;

.field private e:I

.field private f:Lo/DistroFormatVersion;

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/BluetoothAvrcpPlayerSettings<",
            "Ljava/io/File;",
            "*>;>;"
        }
    .end annotation
.end field

.field private h:Ljava/io/File;

.field private volatile i:Lo/BluetoothAvrcpPlayerSettings$Application;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/BluetoothAvrcpPlayerSettings$Application<",
            "*>;"
        }
    .end annotation
.end field

.field private j:I


# direct methods
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

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 24
    iput v0, p0, Lo/SliceManager;->c:I

    .line 36
    iput-object p1, p0, Lo/SliceManager;->a:Lo/ObjectPool;

    .line 37
    iput-object p2, p0, Lo/SliceManager;->d:Lo/NewIntentItem$ActionBar;

    return-void
.end method

.method private a()Z
    .locals 2

    .line 107
    iget v0, p0, Lo/SliceManager;->j:I

    iget-object v1, p0, Lo/SliceManager;->g:Ljava/util/List;

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

    .line 120
    iget-object v0, p0, Lo/SliceManager;->d:Lo/NewIntentItem$ActionBar;

    iget-object v1, p0, Lo/SliceManager;->b:Lo/FileBackupHelperBase;

    iget-object v2, p0, Lo/SliceManager;->i:Lo/BluetoothAvrcpPlayerSettings$Application;

    iget-object v3, v2, Lo/BluetoothAvrcpPlayerSettings$Application;->e:Lo/RestoreSession;

    sget-object v4, Lcom/bumptech/glide/load/DataSource;->d:Lcom/bumptech/glide/load/DataSource;

    iget-object v5, p0, Lo/SliceManager;->f:Lo/DistroFormatVersion;

    move-object v2, p1

    invoke-interface/range {v0 .. v5}, Lo/NewIntentItem$ActionBar;->e(Lo/FileBackupHelperBase;Ljava/lang/Object;Lo/RestoreSession;Lcom/bumptech/glide/load/DataSource;Lo/FileBackupHelperBase;)V

    return-void
.end method

.method public d(Ljava/lang/Exception;)V
    .locals 4

    .line 126
    iget-object v0, p0, Lo/SliceManager;->d:Lo/NewIntentItem$ActionBar;

    iget-object v1, p0, Lo/SliceManager;->f:Lo/DistroFormatVersion;

    iget-object v2, p0, Lo/SliceManager;->i:Lo/BluetoothAvrcpPlayerSettings$Application;

    iget-object v2, v2, Lo/BluetoothAvrcpPlayerSettings$Application;->e:Lo/RestoreSession;

    sget-object v3, Lcom/bumptech/glide/load/DataSource;->d:Lcom/bumptech/glide/load/DataSource;

    invoke-interface {v0, v1, p1, v2, v3}, Lo/NewIntentItem$ActionBar;->b(Lo/FileBackupHelperBase;Ljava/lang/Exception;Lo/RestoreSession;Lcom/bumptech/glide/load/DataSource;)V

    return-void
.end method

.method public d()Z
    .locals 14

    .line 44
    iget-object v0, p0, Lo/SliceManager;->a:Lo/ObjectPool;

    invoke-virtual {v0}, Lo/ObjectPool;->n()Ljava/util/List;

    move-result-object v0

    .line 45
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    .line 48
    :cond_0
    iget-object v1, p0, Lo/SliceManager;->a:Lo/ObjectPool;

    invoke-virtual {v1}, Lo/ObjectPool;->k()Ljava/util/List;

    move-result-object v1

    .line 49
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 50
    const-class v0, Ljava/io/File;

    iget-object v1, p0, Lo/SliceManager;->a:Lo/ObjectPool;

    invoke-virtual {v1}, Lo/ObjectPool;->h()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    .line 53
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to find any load path from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lo/SliceManager;->a:Lo/ObjectPool;

    .line 54
    invoke-virtual {v2}, Lo/ObjectPool;->o()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lo/SliceManager;->a:Lo/ObjectPool;

    .line 55
    invoke-virtual {v2}, Lo/ObjectPool;->h()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_2
    :goto_0
    iget-object v3, p0, Lo/SliceManager;->g:Ljava/util/List;

    const/4 v4, 0x1

    if-eqz v3, :cond_6

    invoke-direct {p0}, Lo/SliceManager;->a()Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    .line 91
    iput-object v0, p0, Lo/SliceManager;->i:Lo/BluetoothAvrcpPlayerSettings$Application;

    :cond_4
    :goto_1
    if-nez v2, :cond_5

    .line 93
    invoke-direct {p0}, Lo/SliceManager;->a()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 94
    iget-object v0, p0, Lo/SliceManager;->g:Ljava/util/List;

    iget v1, p0, Lo/SliceManager;->j:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lo/SliceManager;->j:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/BluetoothAvrcpPlayerSettings;

    .line 95
    iget-object v1, p0, Lo/SliceManager;->h:Ljava/io/File;

    iget-object v3, p0, Lo/SliceManager;->a:Lo/ObjectPool;

    .line 96
    invoke-virtual {v3}, Lo/ObjectPool;->i()I

    move-result v3

    iget-object v5, p0, Lo/SliceManager;->a:Lo/ObjectPool;

    invoke-virtual {v5}, Lo/ObjectPool;->j()I

    move-result v5

    iget-object v6, p0, Lo/SliceManager;->a:Lo/ObjectPool;

    invoke-virtual {v6}, Lo/ObjectPool;->b()Lo/FullBackupAgent;

    move-result-object v6

    .line 95
    invoke-interface {v0, v1, v3, v5, v6}, Lo/BluetoothAvrcpPlayerSettings;->e(Ljava/lang/Object;IILo/FullBackupAgent;)Lo/BluetoothAvrcpPlayerSettings$Application;

    move-result-object v0

    iput-object v0, p0, Lo/SliceManager;->i:Lo/BluetoothAvrcpPlayerSettings$Application;

    .line 97
    iget-object v0, p0, Lo/SliceManager;->i:Lo/BluetoothAvrcpPlayerSettings$Application;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lo/SliceManager;->a:Lo/ObjectPool;

    iget-object v1, p0, Lo/SliceManager;->i:Lo/BluetoothAvrcpPlayerSettings$Application;

    iget-object v1, v1, Lo/BluetoothAvrcpPlayerSettings$Application;->e:Lo/RestoreSession;

    invoke-interface {v1}, Lo/RestoreSession;->a()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/ObjectPool;->a(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 99
    iget-object v0, p0, Lo/SliceManager;->i:Lo/BluetoothAvrcpPlayerSettings$Application;

    iget-object v0, v0, Lo/BluetoothAvrcpPlayerSettings$Application;->e:Lo/RestoreSession;

    iget-object v1, p0, Lo/SliceManager;->a:Lo/ObjectPool;

    invoke-virtual {v1}, Lo/ObjectPool;->c()Lcom/bumptech/glide/Priority;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Lo/RestoreSession;->a(Lcom/bumptech/glide/Priority;Lo/RestoreSession$Application;)V

    const/4 v2, 0x1

    goto :goto_1

    :cond_5
    return v2

    .line 58
    :cond_6
    :goto_2
    iget v3, p0, Lo/SliceManager;->c:I

    add-int/2addr v3, v4

    iput v3, p0, Lo/SliceManager;->c:I

    .line 59
    iget v3, p0, Lo/SliceManager;->c:I

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-lt v3, v5, :cond_8

    .line 60
    iget v3, p0, Lo/SliceManager;->e:I

    add-int/2addr v3, v4

    iput v3, p0, Lo/SliceManager;->e:I

    .line 61
    iget v3, p0, Lo/SliceManager;->e:I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-lt v3, v4, :cond_7

    return v2

    .line 64
    :cond_7
    iput v2, p0, Lo/SliceManager;->c:I

    .line 67
    :cond_8
    iget v3, p0, Lo/SliceManager;->e:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/FileBackupHelperBase;

    .line 68
    iget v4, p0, Lo/SliceManager;->c:I

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v11, v4

    check-cast v11, Ljava/lang/Class;

    .line 69
    iget-object v4, p0, Lo/SliceManager;->a:Lo/ObjectPool;

    invoke-virtual {v4, v11}, Lo/ObjectPool;->e(Ljava/lang/Class;)Lo/RestoreObserver;

    move-result-object v10

    .line 73
    new-instance v13, Lo/DistroFormatVersion;

    iget-object v4, p0, Lo/SliceManager;->a:Lo/ObjectPool;

    .line 75
    invoke-virtual {v4}, Lo/ObjectPool;->g()Lo/RulesManager;

    move-result-object v5

    iget-object v4, p0, Lo/SliceManager;->a:Lo/ObjectPool;

    .line 77
    invoke-virtual {v4}, Lo/ObjectPool;->f()Lo/FileBackupHelperBase;

    move-result-object v7

    iget-object v4, p0, Lo/SliceManager;->a:Lo/ObjectPool;

    .line 78
    invoke-virtual {v4}, Lo/ObjectPool;->i()I

    move-result v8

    iget-object v4, p0, Lo/SliceManager;->a:Lo/ObjectPool;

    .line 79
    invoke-virtual {v4}, Lo/ObjectPool;->j()I

    move-result v9

    iget-object v4, p0, Lo/SliceManager;->a:Lo/ObjectPool;

    .line 82
    invoke-virtual {v4}, Lo/ObjectPool;->b()Lo/FullBackupAgent;

    move-result-object v12

    move-object v4, v13

    move-object v6, v3

    invoke-direct/range {v4 .. v12}, Lo/DistroFormatVersion;-><init>(Lo/RulesManager;Lo/FileBackupHelperBase;Lo/FileBackupHelperBase;IILo/RestoreObserver;Ljava/lang/Class;Lo/FullBackupAgent;)V

    iput-object v13, p0, Lo/SliceManager;->f:Lo/DistroFormatVersion;

    .line 83
    iget-object v4, p0, Lo/SliceManager;->a:Lo/ObjectPool;

    invoke-virtual {v4}, Lo/ObjectPool;->e()Lo/StorageStatsManager;

    move-result-object v4

    iget-object v5, p0, Lo/SliceManager;->f:Lo/DistroFormatVersion;

    invoke-interface {v4, v5}, Lo/StorageStatsManager;->c(Lo/FileBackupHelperBase;)Ljava/io/File;

    move-result-object v4

    iput-object v4, p0, Lo/SliceManager;->h:Ljava/io/File;

    .line 84
    iget-object v4, p0, Lo/SliceManager;->h:Ljava/io/File;

    if-eqz v4, :cond_2

    .line 85
    iput-object v3, p0, Lo/SliceManager;->b:Lo/FileBackupHelperBase;

    .line 86
    iget-object v3, p0, Lo/SliceManager;->a:Lo/ObjectPool;

    invoke-virtual {v3, v4}, Lo/ObjectPool;->b(Ljava/io/File;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lo/SliceManager;->g:Ljava/util/List;

    .line 87
    iput v2, p0, Lo/SliceManager;->j:I

    goto/16 :goto_0
.end method

.method public e()V
    .locals 1

    .line 112
    iget-object v0, p0, Lo/SliceManager;->i:Lo/BluetoothAvrcpPlayerSettings$Application;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, v0, Lo/BluetoothAvrcpPlayerSettings$Application;->e:Lo/RestoreSession;

    invoke-interface {v0}, Lo/RestoreSession;->e()V

    :cond_0
    return-void
.end method
