.class final Lo/BackupDataOutput$ActionBar;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/BackupDataOutput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ActionBar"
.end annotation


# instance fields
.field a:[Ljava/io/File;

.field private final b:Ljava/lang/String;

.field final synthetic c:Lo/BackupDataOutput;

.field d:[Ljava/io/File;

.field private final e:[J

.field private f:Lo/BackupDataOutput$Activity;

.field private h:Z

.field private i:J


# direct methods
.method private constructor <init>(Lo/BackupDataOutput;Ljava/lang/String;)V
    .locals 6

    .line 824
    iput-object p1, p0, Lo/BackupDataOutput$ActionBar;->c:Lo/BackupDataOutput;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 825
    iput-object p2, p0, Lo/BackupDataOutput$ActionBar;->b:Ljava/lang/String;

    .line 826
    invoke-static {p1}, Lo/BackupDataOutput;->c(Lo/BackupDataOutput;)I

    move-result v0

    new-array v0, v0, [J

    iput-object v0, p0, Lo/BackupDataOutput$ActionBar;->e:[J

    .line 827
    invoke-static {p1}, Lo/BackupDataOutput;->c(Lo/BackupDataOutput;)I

    move-result v0

    new-array v0, v0, [Ljava/io/File;

    iput-object v0, p0, Lo/BackupDataOutput$ActionBar;->a:[Ljava/io/File;

    .line 828
    invoke-static {p1}, Lo/BackupDataOutput;->c(Lo/BackupDataOutput;)I

    move-result v0

    new-array v0, v0, [Ljava/io/File;

    iput-object v0, p0, Lo/BackupDataOutput$ActionBar;->d:[Ljava/io/File;

    .line 831
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 p2, 0x2e

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 832
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    const/4 v1, 0x0

    .line 833
    :goto_0
    invoke-static {p1}, Lo/BackupDataOutput;->c(Lo/BackupDataOutput;)I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 834
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 835
    iget-object v2, p0, Lo/BackupDataOutput$ActionBar;->a:[Ljava/io/File;

    new-instance v3, Ljava/io/File;

    invoke-static {p1}, Lo/BackupDataOutput;->h(Lo/BackupDataOutput;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v3, v2, v1

    const-string v2, ".tmp"

    .line 836
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 837
    iget-object v2, p0, Lo/BackupDataOutput$ActionBar;->d:[Ljava/io/File;

    new-instance v3, Ljava/io/File;

    invoke-static {p1}, Lo/BackupDataOutput;->h(Lo/BackupDataOutput;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v3, v2, v1

    .line 838
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->setLength(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Lo/BackupDataOutput;Ljava/lang/String;Lo/BackupDataOutput$4;)V
    .locals 0

    .line 805
    invoke-direct {p0, p1, p2}, Lo/BackupDataOutput$ActionBar;-><init>(Lo/BackupDataOutput;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lo/BackupDataOutput$ActionBar;J)J
    .locals 0

    .line 805
    iput-wide p1, p0, Lo/BackupDataOutput$ActionBar;->i:J

    return-wide p1
.end method

.method static synthetic a(Lo/BackupDataOutput$ActionBar;)Ljava/lang/String;
    .locals 0

    .line 805
    iget-object p0, p0, Lo/BackupDataOutput$ActionBar;->b:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic a(Lo/BackupDataOutput$ActionBar;[Ljava/lang/String;)V
    .locals 0

    .line 805
    invoke-direct {p0, p1}, Lo/BackupDataOutput$ActionBar;->c([Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lo/BackupDataOutput$ActionBar;)J
    .locals 2

    .line 805
    iget-wide v0, p0, Lo/BackupDataOutput$ActionBar;->i:J

    return-wide v0
.end method

.method private b([Ljava/lang/String;)Ljava/io/IOException;
    .locals 3

    .line 866
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected journal line: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private c([Ljava/lang/String;)V
    .locals 4

    .line 852
    array-length v0, p1

    iget-object v1, p0, Lo/BackupDataOutput$ActionBar;->c:Lo/BackupDataOutput;

    invoke-static {v1}, Lo/BackupDataOutput;->c(Lo/BackupDataOutput;)I

    move-result v1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    .line 857
    :goto_0
    :try_start_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 858
    iget-object v1, p0, Lo/BackupDataOutput$ActionBar;->e:[J

    aget-object v2, p1, v0

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    aput-wide v2, v1, v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    .line 861
    :catch_0
    invoke-direct {p0, p1}, Lo/BackupDataOutput$ActionBar;->b([Ljava/lang/String;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    .line 853
    :cond_1
    invoke-direct {p0, p1}, Lo/BackupDataOutput$ActionBar;->b([Ljava/lang/String;)Ljava/io/IOException;

    move-result-object p1

    throw p1
.end method

.method static synthetic c(Lo/BackupDataOutput$ActionBar;)Z
    .locals 0

    .line 805
    iget-boolean p0, p0, Lo/BackupDataOutput$ActionBar;->h:Z

    return p0
.end method

.method static synthetic d(Lo/BackupDataOutput$ActionBar;Z)Z
    .locals 0

    .line 805
    iput-boolean p1, p0, Lo/BackupDataOutput$ActionBar;->h:Z

    return p1
.end method

.method static synthetic d(Lo/BackupDataOutput$ActionBar;)[J
    .locals 0

    .line 805
    iget-object p0, p0, Lo/BackupDataOutput$ActionBar;->e:[J

    return-object p0
.end method

.method static synthetic e(Lo/BackupDataOutput$ActionBar;)Lo/BackupDataOutput$Activity;
    .locals 0

    .line 805
    iget-object p0, p0, Lo/BackupDataOutput$ActionBar;->f:Lo/BackupDataOutput$Activity;

    return-object p0
.end method

.method static synthetic e(Lo/BackupDataOutput$ActionBar;Lo/BackupDataOutput$Activity;)Lo/BackupDataOutput$Activity;
    .locals 0

    .line 805
    iput-object p1, p0, Lo/BackupDataOutput$ActionBar;->f:Lo/BackupDataOutput$Activity;

    return-object p1
.end method


# virtual methods
.method public b(I)Ljava/io/File;
    .locals 1

    .line 874
    iget-object v0, p0, Lo/BackupDataOutput$ActionBar;->d:[Ljava/io/File;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public b()Ljava/lang/String;
    .locals 7

    .line 843
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 844
    iget-object v1, p0, Lo/BackupDataOutput$ActionBar;->e:[J

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-wide v4, v1, v3

    const/16 v6, 0x20

    .line 845
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 847
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c(I)Ljava/io/File;
    .locals 1

    .line 870
    iget-object v0, p0, Lo/BackupDataOutput$ActionBar;->a:[Ljava/io/File;

    aget-object p1, v0, p1

    return-object p1
.end method
