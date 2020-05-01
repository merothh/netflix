.class public final Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuDialogFragment$processArguments$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alN;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Lv;->d(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alN<",
        "Ljava/lang/String;",
        "Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;",
        "Lo/akj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic c:Lo/Lv;


# direct methods
.method public constructor <init>(Lo/Lv;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuDialogFragment$processArguments$1;->c:Lo/Lv;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final c(Ljava/lang/String;Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;)V
    .locals 2

    const-string v0, "requireVideoId"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "trackingInfoHolder"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuDialogFragment$processArguments$1;->c:Lo/Lv;

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;->e(Lorg/json/JSONObject;)Lcom/netflix/cl/model/TrackingInfo;

    move-result-object v1

    invoke-static {v0, v1}, Lo/Lv;->b(Lo/Lv;Lcom/netflix/cl/model/TrackingInfo;)V

    .line 63
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuDialogFragment$processArguments$1;->c:Lo/Lv;

    new-instance v1, Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuDialogFragment$processArguments$1$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuDialogFragment$processArguments$1$1;-><init>(Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuDialogFragment$processArguments$1;Ljava/lang/String;Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;)V

    check-cast v1, Lio/reactivex/ObservableOnSubscribe;

    invoke-static {v1}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lo/Lv;->c(Lio/reactivex/Observable;)V

    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 35
    check-cast p1, Ljava/lang/String;

    check-cast p2, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    invoke-virtual {p0, p1, p2}, Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuDialogFragment$processArguments$1;->c(Ljava/lang/String;Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
