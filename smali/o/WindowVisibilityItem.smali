.class Lo/WindowVisibilityItem;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/Slice;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/WindowVisibilityItem$TaskDescription;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Z:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/Slice<",
        "TZ;>;"
    }
.end annotation


# instance fields
.field private a:Lo/WindowVisibilityItem$TaskDescription;

.field private final b:Z

.field private c:Lo/FileBackupHelperBase;

.field private final d:Lo/Slice;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/Slice<",
            "TZ;>;"
        }
    .end annotation
.end field

.field private final e:Z

.field private g:Z

.field private i:I


# direct methods
.method constructor <init>(Lo/Slice;ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/Slice<",
            "TZ;>;ZZ)V"
        }
    .end annotation

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-static {p1}, Lo/FeatureInfo;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/Slice;

    iput-object p1, p0, Lo/WindowVisibilityItem;->d:Lo/Slice;

    .line 29
    iput-boolean p2, p0, Lo/WindowVisibilityItem;->e:Z

    .line 30
    iput-boolean p3, p0, Lo/WindowVisibilityItem;->b:Z

    return-void
.end method


# virtual methods
.method a()Lo/Slice;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/Slice<",
            "TZ;>;"
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lo/WindowVisibilityItem;->d:Lo/Slice;

    return-object v0
.end method

.method b()Z
    .locals 1

    .line 43
    iget-boolean v0, p0, Lo/WindowVisibilityItem;->e:Z

    return v0
.end method

.method public c()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TZ;>;"
        }
    .end annotation

    .line 49
    iget-object v0, p0, Lo/WindowVisibilityItem;->d:Lo/Slice;

    invoke-interface {v0}, Lo/Slice;->c()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method declared-synchronized c(Lo/FileBackupHelperBase;Lo/WindowVisibilityItem$TaskDescription;)V
    .locals 0

    monitor-enter p0

    .line 34
    :try_start_0
    iput-object p1, p0, Lo/WindowVisibilityItem;->c:Lo/FileBackupHelperBase;

    .line 35
    iput-object p2, p0, Lo/WindowVisibilityItem;->a:Lo/WindowVisibilityItem$TaskDescription;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public d()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TZ;"
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lo/WindowVisibilityItem;->d:Lo/Slice;

    invoke-interface {v0}, Lo/Slice;->d()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public e()I
    .locals 1

    .line 60
    iget-object v0, p0, Lo/WindowVisibilityItem;->d:Lo/Slice;

    invoke-interface {v0}, Lo/Slice;->e()I

    move-result v0

    return v0
.end method

.method declared-synchronized h()V
    .locals 2

    monitor-enter p0

    .line 87
    :try_start_0
    iget-boolean v0, p0, Lo/WindowVisibilityItem;->g:Z

    if-nez v0, :cond_0

    .line 90
    iget v0, p0, Lo/WindowVisibilityItem;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lo/WindowVisibilityItem;->i:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    monitor-exit p0

    return-void

    .line 88
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot acquire a recycled resource"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method i()V
    .locals 3

    .line 107
    iget-object v0, p0, Lo/WindowVisibilityItem;->a:Lo/WindowVisibilityItem$TaskDescription;

    monitor-enter v0

    .line 108
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 109
    :try_start_1
    iget v1, p0, Lo/WindowVisibilityItem;->i:I

    if-lez v1, :cond_1

    .line 112
    iget v1, p0, Lo/WindowVisibilityItem;->i:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lo/WindowVisibilityItem;->i:I

    if-nez v1, :cond_0

    .line 113
    iget-object v1, p0, Lo/WindowVisibilityItem;->a:Lo/WindowVisibilityItem$TaskDescription;

    iget-object v2, p0, Lo/WindowVisibilityItem;->c:Lo/FileBackupHelperBase;

    invoke-interface {v1, v2, p0}, Lo/WindowVisibilityItem$TaskDescription;->a(Lo/FileBackupHelperBase;Lo/WindowVisibilityItem;)V

    .line 115
    :cond_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 116
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    .line 110
    :cond_1
    :try_start_3
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot release a recycled or not yet acquired resource"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    .line 115
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1

    :catchall_1
    move-exception v1

    .line 116
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method

.method public declared-synchronized j()V
    .locals 2

    monitor-enter p0

    .line 65
    :try_start_0
    iget v0, p0, Lo/WindowVisibilityItem;->i:I

    if-gtz v0, :cond_2

    .line 68
    iget-boolean v0, p0, Lo/WindowVisibilityItem;->g:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 71
    iput-boolean v0, p0, Lo/WindowVisibilityItem;->g:Z

    .line 72
    iget-boolean v0, p0, Lo/WindowVisibilityItem;->b:Z

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lo/WindowVisibilityItem;->d:Lo/Slice;

    invoke-interface {v0}, Lo/Slice;->j()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    :cond_0
    monitor-exit p0

    return-void

    .line 69
    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot recycle a resource that has already been recycled"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot recycle a resource while it is still acquired"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .locals 2

    monitor-enter p0

    .line 121
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EngineResource{isCacheable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lo/WindowVisibilityItem;->e:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", listener="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/WindowVisibilityItem;->a:Lo/WindowVisibilityItem$TaskDescription;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/WindowVisibilityItem;->c:Lo/FileBackupHelperBase;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", acquired="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo/WindowVisibilityItem;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isRecycled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lo/WindowVisibilityItem;->g:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", resource="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/WindowVisibilityItem;->d:Lo/Slice;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
