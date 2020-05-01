.class public Lo/DestroyActivityItem;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/StorageStatsManager$ActionBar;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<DataType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/StorageStatsManager$ActionBar;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TDataType;"
        }
    .end annotation
.end field

.field private final b:Lo/FullBackupAgent;

.field private final e:Lo/BlobBackupHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/BlobBackupHelper<",
            "TDataType;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo/BlobBackupHelper;Ljava/lang/Object;Lo/FullBackupAgent;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/BlobBackupHelper<",
            "TDataType;>;TDataType;",
            "Lo/FullBackupAgent;",
            ")V"
        }
    .end annotation

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lo/DestroyActivityItem;->e:Lo/BlobBackupHelper;

    .line 25
    iput-object p2, p0, Lo/DestroyActivityItem;->a:Ljava/lang/Object;

    .line 26
    iput-object p3, p0, Lo/DestroyActivityItem;->b:Lo/FullBackupAgent;

    return-void
.end method


# virtual methods
.method public e(Ljava/io/File;)Z
    .locals 3

    .line 31
    iget-object v0, p0, Lo/DestroyActivityItem;->e:Lo/BlobBackupHelper;

    iget-object v1, p0, Lo/DestroyActivityItem;->a:Ljava/lang/Object;

    iget-object v2, p0, Lo/DestroyActivityItem;->b:Lo/FullBackupAgent;

    invoke-interface {v0, v1, p1, v2}, Lo/BlobBackupHelper;->c(Ljava/lang/Object;Ljava/io/File;Lo/FullBackupAgent;)Z

    move-result p1

    return p1
.end method
