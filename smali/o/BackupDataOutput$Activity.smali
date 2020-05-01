.class public final Lo/BackupDataOutput$Activity;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/BackupDataOutput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Activity"
.end annotation


# instance fields
.field final synthetic a:Lo/BackupDataOutput;

.field private final b:[Z

.field private final c:Lo/BackupDataOutput$ActionBar;

.field private e:Z


# direct methods
.method private constructor <init>(Lo/BackupDataOutput;Lo/BackupDataOutput$ActionBar;)V
    .locals 0

    .line 712
    iput-object p1, p0, Lo/BackupDataOutput$Activity;->a:Lo/BackupDataOutput;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 713
    iput-object p2, p0, Lo/BackupDataOutput$Activity;->c:Lo/BackupDataOutput$ActionBar;

    .line 714
    invoke-static {p2}, Lo/BackupDataOutput$ActionBar;->c(Lo/BackupDataOutput$ActionBar;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lo/BackupDataOutput;->c(Lo/BackupDataOutput;)I

    move-result p1

    new-array p1, p1, [Z

    :goto_0
    iput-object p1, p0, Lo/BackupDataOutput$Activity;->b:[Z

    return-void
.end method

.method synthetic constructor <init>(Lo/BackupDataOutput;Lo/BackupDataOutput$ActionBar;Lo/BackupDataOutput$4;)V
    .locals 0

    .line 707
    invoke-direct {p0, p1, p2}, Lo/BackupDataOutput$Activity;-><init>(Lo/BackupDataOutput;Lo/BackupDataOutput$ActionBar;)V

    return-void
.end method

.method static synthetic b(Lo/BackupDataOutput$Activity;)[Z
    .locals 0

    .line 707
    iget-object p0, p0, Lo/BackupDataOutput$Activity;->b:[Z

    return-object p0
.end method

.method static synthetic c(Lo/BackupDataOutput$Activity;)Lo/BackupDataOutput$ActionBar;
    .locals 0

    .line 707
    iget-object p0, p0, Lo/BackupDataOutput$Activity;->c:Lo/BackupDataOutput$ActionBar;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 796
    iget-boolean v0, p0, Lo/BackupDataOutput$Activity;->e:Z

    if-nez v0, :cond_0

    .line 798
    :try_start_0
    invoke-virtual {p0}, Lo/BackupDataOutput$Activity;->e()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public b()V
    .locals 2

    .line 783
    iget-object v0, p0, Lo/BackupDataOutput$Activity;->a:Lo/BackupDataOutput;

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Lo/BackupDataOutput;->a(Lo/BackupDataOutput;Lo/BackupDataOutput$Activity;Z)V

    .line 784
    iput-boolean v1, p0, Lo/BackupDataOutput$Activity;->e:Z

    return-void
.end method

.method public e(I)Ljava/io/File;
    .locals 3

    .line 747
    iget-object v0, p0, Lo/BackupDataOutput$Activity;->a:Lo/BackupDataOutput;

    monitor-enter v0

    .line 748
    :try_start_0
    iget-object v1, p0, Lo/BackupDataOutput$Activity;->c:Lo/BackupDataOutput$ActionBar;

    invoke-static {v1}, Lo/BackupDataOutput$ActionBar;->e(Lo/BackupDataOutput$ActionBar;)Lo/BackupDataOutput$Activity;

    move-result-object v1

    if-ne v1, p0, :cond_2

    .line 751
    iget-object v1, p0, Lo/BackupDataOutput$Activity;->c:Lo/BackupDataOutput$ActionBar;

    invoke-static {v1}, Lo/BackupDataOutput$ActionBar;->c(Lo/BackupDataOutput$ActionBar;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 752
    iget-object v1, p0, Lo/BackupDataOutput$Activity;->b:[Z

    const/4 v2, 0x1

    aput-boolean v2, v1, p1

    .line 754
    :cond_0
    iget-object v1, p0, Lo/BackupDataOutput$Activity;->c:Lo/BackupDataOutput$ActionBar;

    invoke-virtual {v1, p1}, Lo/BackupDataOutput$ActionBar;->b(I)Ljava/io/File;

    move-result-object p1

    .line 755
    iget-object v1, p0, Lo/BackupDataOutput$Activity;->a:Lo/BackupDataOutput;

    invoke-static {v1}, Lo/BackupDataOutput;->h(Lo/BackupDataOutput;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 756
    iget-object v1, p0, Lo/BackupDataOutput$Activity;->a:Lo/BackupDataOutput;

    invoke-static {v1}, Lo/BackupDataOutput;->h(Lo/BackupDataOutput;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 758
    :cond_1
    monitor-exit v0

    return-object p1

    .line 749
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :catchall_0
    move-exception p1

    .line 759
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public e()V
    .locals 2

    .line 792
    iget-object v0, p0, Lo/BackupDataOutput$Activity;->a:Lo/BackupDataOutput;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lo/BackupDataOutput;->a(Lo/BackupDataOutput;Lo/BackupDataOutput$Activity;Z)V

    return-void
.end method
