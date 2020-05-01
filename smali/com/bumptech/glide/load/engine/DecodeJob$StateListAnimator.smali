.class Lcom/bumptech/glide/load/engine/DecodeJob$StateListAnimator;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/DecodeJob;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "StateListAnimator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Z:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private a:Lo/RestoreDescription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/RestoreDescription<",
            "TZ;>;"
        }
    .end annotation
.end field

.field private c:Lo/SliceItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/SliceItem<",
            "TZ;>;"
        }
    .end annotation
.end field

.field private e:Lo/FileBackupHelperBase;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 663
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method c()V
    .locals 1

    const/4 v0, 0x0

    .line 689
    iput-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob$StateListAnimator;->e:Lo/FileBackupHelperBase;

    .line 690
    iput-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob$StateListAnimator;->a:Lo/RestoreDescription;

    .line 691
    iput-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob$StateListAnimator;->c:Lo/SliceItem;

    return-void
.end method

.method c(Lcom/bumptech/glide/load/engine/DecodeJob$Activity;Lo/FullBackupAgent;)V
    .locals 4

    const-string v0, "DecodeJob.encode"

    .line 674
    invoke-static {v0}, Lo/KeySet;->c(Ljava/lang/String;)V

    .line 676
    :try_start_0
    invoke-interface {p1}, Lcom/bumptech/glide/load/engine/DecodeJob$Activity;->b()Lo/StorageStatsManager;

    move-result-object p1

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob$StateListAnimator;->e:Lo/FileBackupHelperBase;

    new-instance v1, Lo/DestroyActivityItem;

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/DecodeJob$StateListAnimator;->a:Lo/RestoreDescription;

    iget-object v3, p0, Lcom/bumptech/glide/load/engine/DecodeJob$StateListAnimator;->c:Lo/SliceItem;

    invoke-direct {v1, v2, v3, p2}, Lo/DestroyActivityItem;-><init>(Lo/BlobBackupHelper;Ljava/lang/Object;Lo/FullBackupAgent;)V

    invoke-interface {p1, v0, v1}, Lo/StorageStatsManager;->c(Lo/FileBackupHelperBase;Lo/StorageStatsManager$ActionBar;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 679
    iget-object p1, p0, Lcom/bumptech/glide/load/engine/DecodeJob$StateListAnimator;->c:Lo/SliceItem;

    invoke-virtual {p1}, Lo/SliceItem;->a()V

    .line 680
    invoke-static {}, Lo/KeySet;->e()V

    return-void

    :catchall_0
    move-exception p1

    .line 679
    iget-object p2, p0, Lcom/bumptech/glide/load/engine/DecodeJob$StateListAnimator;->c:Lo/SliceItem;

    invoke-virtual {p2}, Lo/SliceItem;->a()V

    .line 680
    invoke-static {}, Lo/KeySet;->e()V

    throw p1
.end method

.method d(Lo/FileBackupHelperBase;Lo/RestoreDescription;Lo/SliceItem;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            ">(",
            "Lo/FileBackupHelperBase;",
            "Lo/RestoreDescription<",
            "TX;>;",
            "Lo/SliceItem<",
            "TX;>;)V"
        }
    .end annotation

    .line 668
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/DecodeJob$StateListAnimator;->e:Lo/FileBackupHelperBase;

    .line 669
    iput-object p2, p0, Lcom/bumptech/glide/load/engine/DecodeJob$StateListAnimator;->a:Lo/RestoreDescription;

    .line 670
    iput-object p3, p0, Lcom/bumptech/glide/load/engine/DecodeJob$StateListAnimator;->c:Lo/SliceItem;

    return-void
.end method

.method d()Z
    .locals 1

    .line 685
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob$StateListAnimator;->c:Lo/SliceItem;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
