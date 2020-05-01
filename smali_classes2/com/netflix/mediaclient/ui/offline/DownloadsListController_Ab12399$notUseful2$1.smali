.class final Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab12399$notUseful2$1;
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
        "Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$ActionStatus;",
        "Lo/akj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic e:Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab12399;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab12399;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab12399$notUseful2$1;->e:Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab12399;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$ActionStatus;)V
    .locals 2

    .line 74
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab12399$notUseful2$1;->e:Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab12399;

    sget-object v1, Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$ActionStatus;->b:Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$ActionStatus;

    if-ne p1, v1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {v0, p1}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab12399;->access$setDeleteInProgress$p(Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab12399;Z)V

    .line 75
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab12399$notUseful2$1;->e:Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab12399;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab12399;->requestModelBuild()V

    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 15
    check-cast p1, Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$ActionStatus;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab12399$notUseful2$1;->a(Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$ActionStatus;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
