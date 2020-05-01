.class Lo/Un$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Un;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lo/Un;


# direct methods
.method constructor <init>(Lo/Un;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lo/Un$3;->d:Lo/Un;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 70
    iget-object v0, p0, Lo/Un$3;->d:Lo/Un;

    iget-object v0, v0, Lo/Un;->a:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 71
    iget-object p1, p0, Lo/Un$3;->d:Lo/Un;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lo/Un;->c(Lo/Un;Z)Z

    .line 74
    iget-object p1, p0, Lo/Un$3;->d:Lo/Un;

    iget-object p1, p1, Lo/Un;->d:Lcom/netflix/mediaclient/ui/player/IPlayerFragment;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lo/Un$3;->d:Lo/Un;

    iget-object p1, p1, Lo/Un;->d:Lcom/netflix/mediaclient/ui/player/IPlayerFragment;

    invoke-interface {p1}, Lcom/netflix/mediaclient/ui/player/IPlayerFragment;->aa_()Lio/reactivex/subjects/Subject;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 75
    iget-object p1, p0, Lo/Un$3;->d:Lo/Un;

    iget-object p1, p1, Lo/Un;->d:Lcom/netflix/mediaclient/ui/player/IPlayerFragment;

    invoke-interface {p1}, Lcom/netflix/mediaclient/ui/player/IPlayerFragment;->aa_()Lio/reactivex/subjects/Subject;

    move-result-object p1

    sget-object v0, Lo/UU$ComponentCallbacks;->d:Lo/UU$ComponentCallbacks;

    invoke-virtual {p1, v0}, Lio/reactivex/subjects/Subject;->onNext(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
