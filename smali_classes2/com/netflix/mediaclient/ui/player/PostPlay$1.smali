.class Lcom/netflix/mediaclient/ui/player/PostPlay$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/player/PostPlay;->a(Lcom/netflix/mediaclient/servicemgr/PlayLocationType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/netflix/mediaclient/ui/player/PostPlay;

.field final synthetic c:Lo/Uh;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/player/PostPlay;Lo/Uh;)V
    .locals 0

    .line 614
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/PostPlay$1;->b:Lcom/netflix/mediaclient/ui/player/PostPlay;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/player/PostPlay$1;->c:Lo/Uh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 617
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay$1;->b:Lcom/netflix/mediaclient/ui/player/PostPlay;

    iget-boolean v0, v0, Lcom/netflix/mediaclient/ui/player/PostPlay;->q:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay$1;->b:Lcom/netflix/mediaclient/ui/player/PostPlay;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/player/PostPlay;->c(Lcom/netflix/mediaclient/ui/player/PostPlay;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay$1;->c:Lo/Uh;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 618
    invoke-virtual {v0, v1}, Lo/Uh;->c(Z)V

    :cond_0
    return-void
.end method
