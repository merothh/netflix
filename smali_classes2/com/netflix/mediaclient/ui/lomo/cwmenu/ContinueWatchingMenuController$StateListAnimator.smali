.class final Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuController$StateListAnimator;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuController;->addItems()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuController;

.field final synthetic c:Lo/LI;


# direct methods
.method constructor <init>(Lo/LI;Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuController;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuController$StateListAnimator;->c:Lo/LI;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuController$StateListAnimator;->a:Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 144
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuController$StateListAnimator;->a:Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuController;

    .line 145
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuController$StateListAnimator;->c:Lo/LI;

    invoke-virtual {v0}, Lo/LI;->q()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v1, 0x0

    .line 144
    :cond_0
    invoke-static {p1, v1}, Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuController;->access$onThumbsRatingClicked(Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuController;I)V

    return-void
.end method
