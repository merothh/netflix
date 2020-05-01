.class final Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab12399$Application;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab12399;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/BC;Lo/RP;ZLo/Rr$Activity;Lo/Rq;Lcom/netflix/mediaclient/ui/offline/CachingSelectableController$TaskDescription;Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver;Lio/reactivex/Observable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic c:Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab12399;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab12399;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab12399$Application;->c:Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab12399;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 40
    sget-object p1, Lcom/netflix/mediaclient/ui/offline/DownloadsListController;->Companion:Lcom/netflix/mediaclient/ui/offline/DownloadsListController$StateListAnimator;

    check-cast p1, Lo/MessagePdu;

    .line 41
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab12399$Application;->c:Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab12399;

    invoke-static {p1}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab12399;->access$getErrorResolver$p(Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab12399;)Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver;

    move-result-object p1

    invoke-interface {p1}, Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver;->d()Z

    return-void
.end method
