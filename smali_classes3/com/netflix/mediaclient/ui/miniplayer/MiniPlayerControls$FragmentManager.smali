.class final Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls$FragmentManager;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls;-><init>(Landroid/view/View;Lo/alA;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls$FragmentManager;->a:Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 192
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls$FragmentManager;->a:Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls;

    invoke-static {p1}, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls;->w(Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls;)Lio/reactivex/subjects/PublishSubject;

    move-result-object p1

    sget-object v0, Lo/akj;->a:Lo/akj;

    invoke-virtual {p1, v0}, Lio/reactivex/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    return-void
.end method
