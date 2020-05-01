.class final Lo/of$Activity;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/of;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic b:Lo/of;


# direct methods
.method constructor <init>(Lo/of;)V
    .locals 0

    iput-object p1, p0, Lo/of$Activity;->b:Lo/of;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    const-string v0, "SmartDownloadController"

    const-string v1, "onAllPlayableDeleted, will delete all SmartDownloads records"

    .line 552
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    iget-object v0, p0, Lo/of$Activity;->b:Lo/of;

    invoke-virtual {v0}, Lo/of;->j()Lo/BG;

    move-result-object v0

    invoke-virtual {v0}, Lo/BG;->a()V

    return-void
.end method
