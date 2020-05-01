.class final Lo/ZI$ActionBar;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/ZI;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
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
.field final synthetic a:Lo/ZI;


# direct methods
.method constructor <init>(Lo/ZI;)V
    .locals 0

    iput-object p1, p0, Lo/ZI$ActionBar;->a:Lo/ZI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 23
    check-cast p1, Lo/ZR;

    invoke-virtual {p0, p1}, Lo/ZI$ActionBar;->e(Lo/ZR;)V

    return-void
.end method

.method public final e(Lo/ZR;)V
    .locals 9

    .line 81
    instance-of v0, p1, Lo/ZR$ClipData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/ZI$ActionBar;->a:Lo/ZI;

    check-cast p1, Lo/ZR$ClipData;

    invoke-virtual {p1}, Lo/ZR$ClipData;->c()Lcom/netflix/mediaclient/android/app/Status;

    move-result-object p1

    invoke-static {v0, p1}, Lo/ZI;->b(Lo/ZI;Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0

    .line 83
    :cond_0
    instance-of v0, p1, Lo/ZR$BroadcastReceiver;

    if-eqz v0, :cond_2

    .line 84
    check-cast p1, Lo/ZR$BroadcastReceiver;

    invoke-virtual {p1}, Lo/ZR$BroadcastReceiver;->e()Lcom/netflix/model/leafs/SearchSectionSummary;

    .line 85
    invoke-virtual {p1}, Lo/ZR$BroadcastReceiver;->b()Lo/Bx;

    move-result-object v0

    .line 86
    invoke-virtual {p1}, Lo/ZR$BroadcastReceiver;->d()Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    move-result-object v1

    .line 87
    invoke-virtual {p1}, Lo/ZR$BroadcastReceiver;->c()Lcom/netflix/mediaclient/servicemgr/PlayContext;

    move-result-object v6

    .line 89
    iget-object p1, p0, Lo/ZI$ActionBar;->a:Lo/ZI;

    invoke-virtual {p1}, Lo/ZI;->h()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 92
    invoke-interface {v0}, Lo/Bx;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v3

    .line 93
    invoke-interface {v0}, Lo/Bx;->getId()Ljava/lang/String;

    move-result-object v4

    .line 94
    invoke-interface {v0}, Lo/Bx;->getTitle()Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x0

    const-string v7, "searchResults"

    .line 90
    invoke-static/range {v2 .. v8}, Lo/Dw;->d(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/PlayContext;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 101
    :cond_1
    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;->g()Lcom/netflix/mediaclient/ui/trackinginfo/CLListTrackingInfoBase;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 102
    sget-object p1, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->b:Lcom/netflix/mediaclient/ui/util/CLv2Utils;

    .line 103
    new-instance v0, Lcom/netflix/cl/model/event/session/Focus;

    .line 104
    sget-object v2, Lcom/netflix/cl/model/AppView;->searchResults:Lcom/netflix/cl/model/AppView;

    .line 105
    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;->a()Lcom/netflix/cl/model/TrackingInfo;

    move-result-object v1

    .line 103
    invoke-direct {v0, v2, v1}, Lcom/netflix/cl/model/event/session/Focus;-><init>(Lcom/netflix/cl/model/AppView;Lcom/netflix/cl/model/TrackingInfo;)V

    .line 106
    new-instance v1, Lcom/netflix/cl/model/event/session/command/SelectCommand;

    invoke-direct {v1}, Lcom/netflix/cl/model/event/session/command/SelectCommand;-><init>()V

    check-cast v1, Lcom/netflix/cl/model/event/session/command/Command;

    const/4 v2, 0x1

    .line 102
    invoke-virtual {p1, v0, v1, v2}, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->d(Lcom/netflix/cl/model/event/session/Focus;Lcom/netflix/cl/model/event/session/command/Command;Z)V

    goto :goto_0

    .line 111
    :cond_2
    instance-of p1, p1, Lo/ZR$PictureInPictureParams;

    if-eqz p1, :cond_3

    .line 112
    iget-object p1, p0, Lo/ZI$ActionBar;->a:Lo/ZI;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lo/ZI;->c(Lo/ZI;Z)V

    :cond_3
    :goto_0
    return-void
.end method
