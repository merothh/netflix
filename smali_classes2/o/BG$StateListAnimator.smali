.class final Lo/BG$StateListAnimator;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/BG;->c(Lo/BZ;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic d:Lo/BG;

.field final synthetic e:Lo/BZ;


# direct methods
.method constructor <init>(Lo/BG;Lo/BZ;)V
    .locals 0

    iput-object p1, p0, Lo/BG$StateListAnimator;->d:Lo/BG;

    iput-object p2, p0, Lo/BG$StateListAnimator;->e:Lo/BZ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 58
    iget-object v0, p0, Lo/BG$StateListAnimator;->d:Lo/BG;

    invoke-static {v0}, Lo/BG;->d(Lo/BG;)Lcom/netflix/mediaclient/storage/db/OfflineDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/storage/db/OfflineDatabase;->g()Lo/BR;

    move-result-object v0

    iget-object v1, p0, Lo/BG$StateListAnimator;->e:Lo/BZ;

    invoke-interface {v0, v1}, Lo/BR;->c(Lo/BZ;)V

    return-void
.end method
