.class final Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuController$ActionBar;
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
.field final synthetic d:Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuController;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuController;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuController$ActionBar;->d:Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 162
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuController$ActionBar;->d:Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuController;

    invoke-static {p1}, Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuController;->access$onRemoveFromRowClicked(Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuController;)V

    return-void
.end method
