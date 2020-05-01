.class public Lo/FileBackupHelper;
.super Ljava/lang/Object;
.source ""


# instance fields
.field a:[I

.field b:Lo/BackupHelperDispatcher;

.field c:I

.field final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/BackupHelperDispatcher;",
            ">;"
        }
    .end annotation
.end field

.field e:I

.field f:I

.field g:I

.field h:I

.field i:I

.field j:Z

.field l:I

.field n:I

.field o:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 22
    iput-object v0, p0, Lo/FileBackupHelper;->a:[I

    const/4 v0, 0x0

    .line 24
    iput v0, p0, Lo/FileBackupHelper;->e:I

    .line 26
    iput v0, p0, Lo/FileBackupHelper;->c:I

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/FileBackupHelper;->d:Ljava/util/List;

    const/4 v0, -0x1

    .line 51
    iput v0, p0, Lo/FileBackupHelper;->n:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 54
    iget v0, p0, Lo/FileBackupHelper;->f:I

    return v0
.end method

.method public b()I
    .locals 1

    .line 70
    iget v0, p0, Lo/FileBackupHelper;->e:I

    return v0
.end method

.method public d()I
    .locals 1

    .line 58
    iget v0, p0, Lo/FileBackupHelper;->g:I

    return v0
.end method

.method public e()I
    .locals 1

    .line 62
    iget v0, p0, Lo/FileBackupHelper;->c:I

    return v0
.end method
