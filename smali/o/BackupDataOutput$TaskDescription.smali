.class public final Lo/BackupDataOutput$TaskDescription;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/BackupDataOutput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "TaskDescription"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:[Ljava/io/File;

.field final synthetic c:Lo/BackupDataOutput;

.field private final d:[J

.field private final e:J


# direct methods
.method private constructor <init>(Lo/BackupDataOutput;Ljava/lang/String;J[Ljava/io/File;[J)V
    .locals 0

    .line 674
    iput-object p1, p0, Lo/BackupDataOutput$TaskDescription;->c:Lo/BackupDataOutput;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 675
    iput-object p2, p0, Lo/BackupDataOutput$TaskDescription;->a:Ljava/lang/String;

    .line 676
    iput-wide p3, p0, Lo/BackupDataOutput$TaskDescription;->e:J

    .line 677
    iput-object p5, p0, Lo/BackupDataOutput$TaskDescription;->b:[Ljava/io/File;

    .line 678
    iput-object p6, p0, Lo/BackupDataOutput$TaskDescription;->d:[J

    return-void
.end method

.method synthetic constructor <init>(Lo/BackupDataOutput;Ljava/lang/String;J[Ljava/io/File;[JLo/BackupDataOutput$4;)V
    .locals 0

    .line 668
    invoke-direct/range {p0 .. p6}, Lo/BackupDataOutput$TaskDescription;-><init>(Lo/BackupDataOutput;Ljava/lang/String;J[Ljava/io/File;[J)V

    return-void
.end method


# virtual methods
.method public a(I)Ljava/io/File;
    .locals 1

    .line 691
    iget-object v0, p0, Lo/BackupDataOutput$TaskDescription;->b:[Ljava/io/File;

    aget-object p1, v0, p1

    return-object p1
.end method
