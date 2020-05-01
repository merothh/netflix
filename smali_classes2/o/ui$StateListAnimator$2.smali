.class Lo/ui$StateListAnimator$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/ui$StateListAnimator;->a(Lcom/netflix/mediaclient/servicemgr/PrepareManager$PrepareResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lo/ui$StateListAnimator;

.field final synthetic e:Lcom/netflix/mediaclient/servicemgr/PrepareManager$PrepareResult;


# direct methods
.method constructor <init>(Lo/ui$StateListAnimator;Lcom/netflix/mediaclient/servicemgr/PrepareManager$PrepareResult;)V
    .locals 0

    .line 491
    iput-object p1, p0, Lo/ui$StateListAnimator$2;->d:Lo/ui$StateListAnimator;

    iput-object p2, p0, Lo/ui$StateListAnimator$2;->e:Lcom/netflix/mediaclient/servicemgr/PrepareManager$PrepareResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 494
    iget-object v0, p0, Lo/ui$StateListAnimator$2;->d:Lo/ui$StateListAnimator;

    iget-object v0, v0, Lo/ui$StateListAnimator;->e:Lcom/netflix/mediaclient/servicemgr/PrepareManager$Application;

    iget-object v1, p0, Lo/ui$StateListAnimator$2;->d:Lo/ui$StateListAnimator;

    iget-object v1, v1, Lo/ui$StateListAnimator;->c:Lo/Ae;

    iget-object v2, p0, Lo/ui$StateListAnimator$2;->e:Lcom/netflix/mediaclient/servicemgr/PrepareManager$PrepareResult;

    invoke-interface {v0, v1, v2}, Lcom/netflix/mediaclient/servicemgr/PrepareManager$Application;->d(Lo/Ae;Lcom/netflix/mediaclient/servicemgr/PrepareManager$PrepareResult;)V

    return-void
.end method
