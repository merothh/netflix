.class public final Lcom/netflix/mediaclient/ui/search/SearchEventHandler$Companion$handleSearchItemClickEvent$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alN;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Zu$Application;->b(Lo/ZR$BroadcastReceiver;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alN<",
        "Lcom/netflix/mediaclient/ui/trackinginfo/CLListTrackingInfoBase;",
        "Landroid/os/Handler;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

.field final synthetic c:Lo/Bx;

.field final synthetic d:Lcom/netflix/mediaclient/servicemgr/PlayContext;

.field final synthetic e:Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

.field final synthetic i:Ljava/lang/String;


# direct methods
.method public constructor <init>(ZLo/Bx;Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/PlayContext;Ljava/lang/String;)V
    .locals 0

    iput-boolean p1, p0, Lcom/netflix/mediaclient/ui/search/SearchEventHandler$Companion$handleSearchItemClickEvent$1;->a:Z

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/search/SearchEventHandler$Companion$handleSearchItemClickEvent$1;->c:Lo/Bx;

    iput-object p3, p0, Lcom/netflix/mediaclient/ui/search/SearchEventHandler$Companion$handleSearchItemClickEvent$1;->e:Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    iput-object p4, p0, Lcom/netflix/mediaclient/ui/search/SearchEventHandler$Companion$handleSearchItemClickEvent$1;->b:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    iput-object p5, p0, Lcom/netflix/mediaclient/ui/search/SearchEventHandler$Companion$handleSearchItemClickEvent$1;->d:Lcom/netflix/mediaclient/servicemgr/PlayContext;

    iput-object p6, p0, Lcom/netflix/mediaclient/ui/search/SearchEventHandler$Companion$handleSearchItemClickEvent$1;->i:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final e(Lcom/netflix/mediaclient/ui/trackinginfo/CLListTrackingInfoBase;Landroid/os/Handler;)Z
    .locals 3

    const-string v0, "trackableList"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "handler"

    invoke-static {p2, p1}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-static {}, Lo/ady;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/netflix/mediaclient/ui/search/SearchEventHandler$Companion$handleSearchItemClickEvent$1;->a:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/netflix/mediaclient/ui/search/SearchEventHandler$Companion$handleSearchItemClickEvent$1;->c:Lo/Bx;

    instance-of p1, p1, Lo/agg;

    if-eqz p1, :cond_0

    .line 30
    sget-object p1, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->b:Lcom/netflix/mediaclient/ui/util/CLv2Utils;

    .line 31
    new-instance v0, Lcom/netflix/cl/model/event/session/Focus;

    sget-object v1, Lcom/netflix/cl/model/AppView;->boxArt:Lcom/netflix/cl/model/AppView;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/search/SearchEventHandler$Companion$handleSearchItemClickEvent$1;->e:Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;->a()Lcom/netflix/cl/model/TrackingInfo;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/netflix/cl/model/event/session/Focus;-><init>(Lcom/netflix/cl/model/AppView;Lcom/netflix/cl/model/TrackingInfo;)V

    .line 32
    new-instance v1, Lcom/netflix/cl/model/event/session/command/ViewDetailsCommand;

    invoke-direct {v1}, Lcom/netflix/cl/model/event/session/command/ViewDetailsCommand;-><init>()V

    check-cast v1, Lcom/netflix/cl/model/event/session/command/Command;

    const/4 v2, 0x0

    .line 30
    invoke-virtual {p1, v0, v1, v2}, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->d(Lcom/netflix/cl/model/event/session/Focus;Lcom/netflix/cl/model/event/session/command/Command;Z)V

    .line 35
    new-instance p1, Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag;

    invoke-direct {p1}, Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag;-><init>()V

    .line 36
    new-instance v0, Lcom/netflix/mediaclient/ui/search/SearchEventHandler$Companion$handleSearchItemClickEvent$1$5;

    invoke-direct {v0, p0, p1}, Lcom/netflix/mediaclient/ui/search/SearchEventHandler$Companion$handleSearchItemClickEvent$1$5;-><init>(Lcom/netflix/mediaclient/ui/search/SearchEventHandler$Companion$handleSearchItemClickEvent$1;Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag;)V

    check-cast v0, Ljava/lang/Runnable;

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result p1

    goto :goto_0

    .line 40
    :cond_0
    sget-object p1, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->b:Lcom/netflix/mediaclient/ui/util/CLv2Utils;

    .line 41
    new-instance v0, Lcom/netflix/cl/model/event/session/Focus;

    .line 42
    sget-object v1, Lcom/netflix/cl/model/AppView;->searchResults:Lcom/netflix/cl/model/AppView;

    .line 43
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/search/SearchEventHandler$Companion$handleSearchItemClickEvent$1;->e:Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;->a()Lcom/netflix/cl/model/TrackingInfo;

    move-result-object v2

    .line 41
    invoke-direct {v0, v1, v2}, Lcom/netflix/cl/model/event/session/Focus;-><init>(Lcom/netflix/cl/model/AppView;Lcom/netflix/cl/model/TrackingInfo;)V

    .line 44
    new-instance v1, Lcom/netflix/cl/model/event/session/command/SelectCommand;

    invoke-direct {v1}, Lcom/netflix/cl/model/event/session/command/SelectCommand;-><init>()V

    check-cast v1, Lcom/netflix/cl/model/event/session/command/Command;

    const/4 v2, 0x1

    .line 40
    invoke-virtual {p1, v0, v1, v2}, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->d(Lcom/netflix/cl/model/event/session/Focus;Lcom/netflix/cl/model/event/session/command/Command;Z)V

    .line 46
    new-instance p1, Lcom/netflix/mediaclient/ui/search/SearchEventHandler$Companion$handleSearchItemClickEvent$1$3;

    invoke-direct {p1, p0}, Lcom/netflix/mediaclient/ui/search/SearchEventHandler$Companion$handleSearchItemClickEvent$1$3;-><init>(Lcom/netflix/mediaclient/ui/search/SearchEventHandler$Companion$handleSearchItemClickEvent$1;)V

    check-cast p1, Ljava/lang/Runnable;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result p1

    :goto_0
    return p1
.end method

.method public synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 17
    check-cast p1, Lcom/netflix/mediaclient/ui/trackinginfo/CLListTrackingInfoBase;

    check-cast p2, Landroid/os/Handler;

    invoke-virtual {p0, p1, p2}, Lcom/netflix/mediaclient/ui/search/SearchEventHandler$Companion$handleSearchItemClickEvent$1;->e(Lcom/netflix/mediaclient/ui/trackinginfo/CLListTrackingInfoBase;Landroid/os/Handler;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
