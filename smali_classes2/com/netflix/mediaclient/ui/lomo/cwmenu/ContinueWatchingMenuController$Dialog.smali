.class final Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuController$Dialog;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuController;->onRemoveFromRowClicked()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lkotlin/jvm/internal/Ref$BooleanRef;

.field final synthetic b:Ljava/lang/Long;

.field final synthetic c:Ljava/lang/Long;

.field final synthetic d:Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuController;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuController;Lkotlin/jvm/internal/Ref$BooleanRef;Ljava/lang/Long;Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuController$Dialog;->d:Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuController;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuController$Dialog;->a:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-object p3, p0, Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuController$Dialog;->c:Ljava/lang/Long;

    iput-object p4, p0, Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuController$Dialog;->b:Ljava/lang/Long;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 239
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuController$Dialog;->a:Lkotlin/jvm/internal/Ref$BooleanRef;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lkotlin/jvm/internal/Ref$BooleanRef;->d:Z

    .line 241
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuController$Dialog;->d:Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuController;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuController;->getItemClickSubject()Lio/reactivex/subjects/PublishSubject;

    move-result-object p1

    sget-object p2, Lo/Lz$Application;->a:Lo/Lz$Application;

    invoke-virtual {p1, p2}, Lio/reactivex/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    .line 244
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuController$Dialog;->d:Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuController;

    invoke-static {p1}, Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuController;->access$getNetflixActivity$p(Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuController;)Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lo/Am;

    move-result-object p1

    const-string p2, "netflixActivity.serviceManager"

    invoke-static {p1, p2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lo/Am;->w()Lo/zG;

    move-result-object p1

    .line 245
    new-instance p2, Lo/Sanitizer;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuController$Dialog;->d:Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuController;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuController;->access$getVideo$p(Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuController;)Lo/agg;

    move-result-object v0

    invoke-interface {v0}, Lo/agg;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "video.id"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, v0}, Lo/Sanitizer;-><init>(Ljava/lang/String;)V

    check-cast p2, Lo/ConfirmationCallback;

    .line 246
    new-instance v0, Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuController$Dialog$1;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuController$Dialog$1;-><init>(Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuController$Dialog;)V

    check-cast v0, Lo/zU;

    .line 244
    invoke-interface {p1, p2, v0}, Lo/zG;->a(Lo/ConfirmationCallback;Lo/zU;)V

    return-void
.end method
