.class final Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerVideoPresenter_Ab12543$3$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerVideoPresenter_Ab12543$3;->b(Lo/UP;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerVideoPresenter_Ab12543$3;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerVideoPresenter_Ab12543$3;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerVideoPresenter_Ab12543$3$1;->d:Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerVideoPresenter_Ab12543$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerVideoPresenter_Ab12543$3$1;->d:Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerVideoPresenter_Ab12543$3;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerVideoPresenter_Ab12543$3;->e:Lo/VX;

    invoke-static {v0}, Lo/VX;->d(Lo/VX;)Lo/WK;

    move-result-object v0

    invoke-interface {v0}, Lo/WK;->e()V

    return-void
.end method
