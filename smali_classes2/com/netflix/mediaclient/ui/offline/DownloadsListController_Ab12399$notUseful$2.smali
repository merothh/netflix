.class final Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab12399$notUseful$2;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alA;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab12399;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/BC;Lo/RP;ZLo/Rr$Activity;Lo/Rq;Lcom/netflix/mediaclient/ui/offline/CachingSelectableController$TaskDescription;Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver;Lio/reactivex/Observable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alA<",
        "Ljava/lang/Throwable;",
        "Lo/akj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic d:Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab12399;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab12399;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab12399$notUseful$2;->d:Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab12399;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    sget-object p1, Lcom/netflix/mediaclient/ui/offline/DownloadsListController;->Companion:Lcom/netflix/mediaclient/ui/offline/DownloadsListController$StateListAnimator;

    check-cast p1, Lo/MessagePdu;

    .line 65
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab12399$notUseful$2;->d:Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab12399;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab12399;->access$setRenewalInProgress$p(Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab12399;Z)V

    .line 66
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab12399$notUseful$2;->d:Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab12399;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab12399;->requestModelBuild()V

    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 15
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab12399$notUseful$2;->b(Ljava/lang/Throwable;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
