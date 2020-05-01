.class public final Lo/ZT$Application;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/ZT;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Lo/ZR;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic c:Lo/ZT;


# direct methods
.method constructor <init>(Lo/ZT;)V
    .locals 0

    iput-object p1, p0, Lo/ZT$Application;->c:Lo/ZT;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lo/ZR;)V
    .locals 5

    .line 51
    instance-of v0, p1, Lo/ZR$ComponentCallbacks;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/ZT$Application;->c:Lo/ZT;

    check-cast p1, Lo/ZR$ComponentCallbacks;

    invoke-virtual {p1}, Lo/ZR$ComponentCallbacks;->b()Lcom/netflix/mediaclient/android/app/Status;

    move-result-object p1

    invoke-static {v0, p1}, Lo/ZT;->d(Lo/ZT;Lcom/netflix/mediaclient/android/app/Status;)V

    goto/16 :goto_0

    .line 53
    :cond_0
    instance-of v0, p1, Lo/ZR$PendingIntent;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 54
    iget-object p1, p0, Lo/ZT$Application;->c:Lo/ZT;

    invoke-virtual {p1}, Lo/ZT;->h()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object p1

    instance-of v0, p1, Lcom/netflix/mediaclient/ui/search/SearchActivity;

    if-nez v0, :cond_1

    move-object p1, v1

    :cond_1
    check-cast p1, Lcom/netflix/mediaclient/ui/search/SearchActivity;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/search/SearchActivity;->j()V

    goto :goto_0

    .line 56
    :cond_2
    instance-of v0, p1, Lo/ZR$TaskDescription;

    if-eqz v0, :cond_3

    iget-object p1, p0, Lo/ZT$Application;->c:Lo/ZT;

    invoke-static {p1}, Lo/ZT;->c(Lo/ZT;)V

    goto :goto_0

    .line 58
    :cond_3
    instance-of v0, p1, Lo/ZR$BroadcastReceiver;

    if-eqz v0, :cond_4

    .line 59
    sget-object v0, Lo/Zu;->b:Lo/Zu$Application;

    check-cast p1, Lo/ZR$BroadcastReceiver;

    iget-object v1, p0, Lo/ZT$Application;->c:Lo/ZT;

    invoke-virtual {v1}, Lo/ZT;->h()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v1

    const-string v2, "preQuerySearch"

    invoke-virtual {v0, p1, v1, v2}, Lo/Zu$Application;->b(Lo/ZR$BroadcastReceiver;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 62
    :cond_4
    instance-of v0, p1, Lo/ZR$TaskStackBuilder;

    if-eqz v0, :cond_5

    .line 63
    move-object v0, p1

    check-cast v0, Lo/ZR$TaskStackBuilder;

    invoke-virtual {v0}, Lo/ZR$TaskStackBuilder;->a()Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    move-result-object v2

    .line 64
    invoke-virtual {v0}, Lo/ZR$TaskStackBuilder;->d()Lcom/netflix/model/leafs/SearchSectionSummary;

    .line 65
    invoke-virtual {v0}, Lo/ZR$TaskStackBuilder;->b()Lo/Bx;

    move-result-object v0

    .line 66
    iget-object v3, p0, Lo/ZT$Application;->c:Lo/ZT;

    invoke-virtual {v3}, Lo/ZT;->h()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v3

    new-instance v4, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchFragment_19052$onCreateView$1$1;

    invoke-direct {v4, v2, p1, v0}, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchFragment_19052$onCreateView$1$1;-><init>(Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;Lo/ZR;Lo/Bx;)V

    check-cast v4, Lo/alN;

    invoke-static {v3, v0, v4}, Lo/NfcA;->c(Ljava/lang/Object;Ljava/lang/Object;Lo/alN;)Ljava/lang/Object;

    .line 82
    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;->g()Lcom/netflix/mediaclient/ui/trackinginfo/CLListTrackingInfoBase;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 83
    sget-object p1, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->b:Lcom/netflix/mediaclient/ui/util/CLv2Utils;

    .line 84
    new-instance v0, Lcom/netflix/cl/model/event/session/Focus;

    .line 85
    sget-object v3, Lcom/netflix/cl/model/AppView;->searchResults:Lcom/netflix/cl/model/AppView;

    .line 86
    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;->a()Lcom/netflix/cl/model/TrackingInfo;

    move-result-object v2

    .line 84
    invoke-direct {v0, v3, v2}, Lcom/netflix/cl/model/event/session/Focus;-><init>(Lcom/netflix/cl/model/AppView;Lcom/netflix/cl/model/TrackingInfo;)V

    .line 87
    new-instance v2, Lcom/netflix/cl/model/event/session/command/PlayCommand;

    invoke-direct {v2, v1}, Lcom/netflix/cl/model/event/session/command/PlayCommand;-><init>(Ljava/lang/Long;)V

    check-cast v2, Lcom/netflix/cl/model/event/session/command/Command;

    const/4 v1, 0x1

    .line 83
    invoke-virtual {p1, v0, v2, v1}, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->d(Lcom/netflix/cl/model/event/session/Focus;Lcom/netflix/cl/model/event/session/command/Command;Z)V

    goto :goto_0

    .line 91
    :cond_5
    instance-of p1, p1, Lo/ZR$Fragment;

    if-eqz p1, :cond_6

    .line 92
    new-instance p1, Lcom/netflix/cl/model/event/session/command/ShowMoreCommand;

    invoke-direct {p1}, Lcom/netflix/cl/model/event/session/command/ShowMoreCommand;-><init>()V

    check-cast p1, Lcom/netflix/cl/model/event/session/command/Command;

    invoke-static {p1}, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->e(Lcom/netflix/cl/model/event/session/command/Command;)V

    :cond_6
    :goto_0
    return-void
.end method

.method public synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 27
    check-cast p1, Lo/ZR;

    invoke-virtual {p0, p1}, Lo/ZT$Application;->a(Lo/ZR;)V

    return-void
.end method
