.class public final Lo/ZN$Application;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/ZN;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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
.field final synthetic e:Lo/ZN;


# direct methods
.method constructor <init>(Lo/ZN;)V
    .locals 0

    iput-object p1, p0, Lo/ZN$Application;->e:Lo/ZN;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 36
    check-cast p1, Lo/ZR;

    invoke-virtual {p0, p1}, Lo/ZN$Application;->d(Lo/ZR;)V

    return-void
.end method

.method public final d(Lo/ZR;)V
    .locals 11

    .line 73
    instance-of v0, p1, Lo/ZR$ComponentCallbacks;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/ZN$Application;->e:Lo/ZN;

    check-cast p1, Lo/ZR$ComponentCallbacks;

    invoke-virtual {p1}, Lo/ZR$ComponentCallbacks;->b()Lcom/netflix/mediaclient/android/app/Status;

    move-result-object p1

    invoke-static {v0, p1}, Lo/ZN;->c(Lo/ZN;Lcom/netflix/mediaclient/android/app/Status;)V

    goto/16 :goto_0

    .line 75
    :cond_0
    instance-of v0, p1, Lo/ZR$PendingIntent;

    if-eqz v0, :cond_2

    iget-object p1, p0, Lo/ZN$Application;->e:Lo/ZN;

    invoke-virtual {p1}, Lo/ZN;->h()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object p1

    instance-of p1, p1, Lcom/netflix/mediaclient/ui/search/SearchActivity;

    if-eqz p1, :cond_9

    .line 76
    iget-object p1, p0, Lo/ZN$Application;->e:Lo/ZN;

    invoke-virtual {p1}, Lo/ZN;->h()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object p1

    if-eqz p1, :cond_1

    check-cast p1, Lcom/netflix/mediaclient/ui/search/SearchActivity;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/search/SearchActivity;->j()V

    goto/16 :goto_0

    :cond_1
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.netflix.mediaclient.ui.search.SearchActivity"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 78
    :cond_2
    instance-of v0, p1, Lo/ZR$TaskDescription;

    if-eqz v0, :cond_3

    iget-object p1, p0, Lo/ZN$Application;->e:Lo/ZN;

    invoke-virtual {p1}, Lo/ZN;->d()V

    goto/16 :goto_0

    .line 80
    :cond_3
    instance-of v0, p1, Lo/ZR$ComponentCallbacks2;

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    .line 81
    check-cast p1, Lo/ZR$ComponentCallbacks2;

    invoke-virtual {p1}, Lo/ZR$ComponentCallbacks2;->a()Lcom/netflix/model/leafs/SearchCollectionEntity;

    move-result-object v0

    .line 82
    invoke-virtual {p1}, Lo/ZR$ComponentCallbacks2;->b()Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    move-result-object v2

    .line 84
    iget-object v3, p0, Lo/ZN$Application;->e:Lo/ZN;

    invoke-virtual {v3}, Lo/ZN;->h()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 86
    move-object v3, v0

    check-cast v3, Lo/By;

    invoke-virtual {p1}, Lo/ZR$ComponentCallbacks2;->e()I

    move-result p1

    invoke-virtual {v2, v3, p1}, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;->c(Lo/By;I)Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    move-result-object p1

    .line 87
    sget-object v3, Lcom/netflix/mediaclient/servicemgr/PlayLocationType;->l:Lcom/netflix/mediaclient/servicemgr/PlayLocationType;

    invoke-virtual {p1, v3}, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;->b(Lcom/netflix/mediaclient/servicemgr/PlayLocationType;)Lcom/netflix/mediaclient/ui/common/PlayContextImp;

    move-result-object p1

    .line 91
    invoke-interface {v0}, Lcom/netflix/model/leafs/SearchCollectionEntity;->getVideoType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v5

    .line 92
    invoke-interface {v0}, Lcom/netflix/model/leafs/SearchCollectionEntity;->getVideoId()Ljava/lang/String;

    move-result-object v6

    .line 93
    invoke-interface {v0}, Lcom/netflix/model/leafs/SearchCollectionEntity;->getTitle()Ljava/lang/String;

    move-result-object v7

    .line 94
    move-object v8, p1

    check-cast v8, Lcom/netflix/mediaclient/servicemgr/PlayContext;

    const/4 v10, 0x0

    const-string v9, "preQuerySearch"

    .line 89
    invoke-static/range {v4 .. v10}, Lo/Dw;->d(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/PlayContext;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 100
    :cond_4
    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;->g()Lcom/netflix/mediaclient/ui/trackinginfo/CLListTrackingInfoBase;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 101
    sget-object p1, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->b:Lcom/netflix/mediaclient/ui/util/CLv2Utils;

    .line 102
    new-instance v0, Lcom/netflix/cl/model/event/session/Focus;

    .line 103
    sget-object v3, Lcom/netflix/cl/model/AppView;->searchResults:Lcom/netflix/cl/model/AppView;

    .line 104
    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;->a()Lcom/netflix/cl/model/TrackingInfo;

    move-result-object v2

    .line 102
    invoke-direct {v0, v3, v2}, Lcom/netflix/cl/model/event/session/Focus;-><init>(Lcom/netflix/cl/model/AppView;Lcom/netflix/cl/model/TrackingInfo;)V

    .line 105
    new-instance v2, Lcom/netflix/cl/model/event/session/command/SelectCommand;

    invoke-direct {v2}, Lcom/netflix/cl/model/event/session/command/SelectCommand;-><init>()V

    check-cast v2, Lcom/netflix/cl/model/event/session/command/Command;

    .line 101
    invoke-virtual {p1, v0, v2, v1}, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->d(Lcom/netflix/cl/model/event/session/Focus;Lcom/netflix/cl/model/event/session/command/Command;Z)V

    goto/16 :goto_0

    .line 110
    :cond_5
    instance-of v0, p1, Lo/ZR$LoaderManager;

    const/4 v2, 0x0

    if-eqz v0, :cond_6

    .line 111
    move-object v0, p1

    check-cast v0, Lo/ZR$LoaderManager;

    invoke-virtual {v0}, Lo/ZR$LoaderManager;->d()Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    move-result-object v3

    .line 113
    iget-object v4, p0, Lo/ZN$Application;->e:Lo/ZN;

    invoke-virtual {v4}, Lo/ZN;->h()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v4

    invoke-virtual {v0}, Lo/ZR$LoaderManager;->b()Lo/Bx;

    move-result-object v0

    new-instance v5, Lcom/netflix/mediaclient/ui/search/prequery/PreQuerySearchFragment$onCreateView$2$3;

    invoke-direct {v5, v3, p1}, Lcom/netflix/mediaclient/ui/search/prequery/PreQuerySearchFragment$onCreateView$2$3;-><init>(Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;Lo/ZR;)V

    check-cast v5, Lo/alN;

    invoke-static {v4, v0, v5}, Lo/NfcA;->c(Ljava/lang/Object;Ljava/lang/Object;Lo/alN;)Ljava/lang/Object;

    .line 128
    invoke-virtual {v3}, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;->g()Lcom/netflix/mediaclient/ui/trackinginfo/CLListTrackingInfoBase;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 129
    sget-object p1, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->b:Lcom/netflix/mediaclient/ui/util/CLv2Utils;

    .line 130
    new-instance v0, Lcom/netflix/cl/model/event/session/Focus;

    .line 131
    sget-object v4, Lcom/netflix/cl/model/AppView;->searchResults:Lcom/netflix/cl/model/AppView;

    .line 132
    invoke-virtual {v3}, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;->a()Lcom/netflix/cl/model/TrackingInfo;

    move-result-object v3

    .line 130
    invoke-direct {v0, v4, v3}, Lcom/netflix/cl/model/event/session/Focus;-><init>(Lcom/netflix/cl/model/AppView;Lcom/netflix/cl/model/TrackingInfo;)V

    .line 133
    new-instance v3, Lcom/netflix/cl/model/event/session/command/PlayCommand;

    invoke-direct {v3, v2}, Lcom/netflix/cl/model/event/session/command/PlayCommand;-><init>(Ljava/lang/Long;)V

    check-cast v3, Lcom/netflix/cl/model/event/session/command/Command;

    .line 129
    invoke-virtual {p1, v0, v3, v1}, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->d(Lcom/netflix/cl/model/event/session/Focus;Lcom/netflix/cl/model/event/session/command/Command;Z)V

    goto :goto_0

    .line 138
    :cond_6
    instance-of v0, p1, Lo/ZR$Application;

    if-eqz v0, :cond_9

    .line 139
    check-cast p1, Lo/ZR$Application;

    invoke-virtual {p1}, Lo/ZR$Application;->d()Lcom/netflix/model/leafs/SearchCollectionEntity;

    move-result-object v0

    .line 140
    invoke-virtual {p1}, Lo/ZR$Application;->b()Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    move-result-object p1

    .line 142
    new-instance v3, Landroid/content/Intent;

    .line 143
    iget-object v4, p0, Lo/ZN$Application;->e:Lo/ZN;

    invoke-virtual {v4}, Lo/ZN;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 144
    invoke-static {}, Lo/ZD;->j()Ljava/lang/Class;

    move-result-object v5

    .line 142
    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 146
    invoke-interface {v0}, Lcom/netflix/model/leafs/SearchCollectionEntity;->getEntityId()Ljava/lang/String;

    move-result-object v4

    const-string v5, "EntityId"

    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 147
    invoke-interface {v0}, Lcom/netflix/model/leafs/SearchCollectionEntity;->getTitle()Ljava/lang/String;

    move-result-object v0

    const-string v4, "Title"

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 149
    sget-object v0, Lcom/netflix/cl/model/AppView;->searchSuggestionTitleResults:Lcom/netflix/cl/model/AppView;

    invoke-virtual {v0}, Lcom/netflix/cl/model/AppView;->name()Ljava/lang/String;

    move-result-object v0

    const-string v4, "SearchResultType"

    .line 148
    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 152
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;->g()Lcom/netflix/mediaclient/ui/trackinginfo/CLListTrackingInfoBase;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/trackinginfo/CLListTrackingInfoBase;->c()Ljava/lang/String;

    move-result-object v2

    :cond_7
    const-string v0, "ParentRefId"

    .line 151
    invoke-virtual {v3, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 155
    iget-object v0, p0, Lo/ZN$Application;->e:Lo/ZN;

    invoke-virtual {v0}, Lo/ZN;->h()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v0, v3}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->startActivity(Landroid/content/Intent;)V

    .line 157
    :cond_8
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;->g()Lcom/netflix/mediaclient/ui/trackinginfo/CLListTrackingInfoBase;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 158
    sget-object v0, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->b:Lcom/netflix/mediaclient/ui/util/CLv2Utils;

    .line 159
    new-instance v2, Lcom/netflix/cl/model/event/session/Focus;

    .line 160
    sget-object v3, Lcom/netflix/cl/model/AppView;->suggestionItem:Lcom/netflix/cl/model/AppView;

    .line 161
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;->a()Lcom/netflix/cl/model/TrackingInfo;

    move-result-object p1

    .line 159
    invoke-direct {v2, v3, p1}, Lcom/netflix/cl/model/event/session/Focus;-><init>(Lcom/netflix/cl/model/AppView;Lcom/netflix/cl/model/TrackingInfo;)V

    .line 162
    new-instance p1, Lcom/netflix/cl/model/event/session/command/SelectCommand;

    invoke-direct {p1}, Lcom/netflix/cl/model/event/session/command/SelectCommand;-><init>()V

    check-cast p1, Lcom/netflix/cl/model/event/session/command/Command;

    .line 158
    invoke-virtual {v0, v2, p1, v1}, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->d(Lcom/netflix/cl/model/event/session/Focus;Lcom/netflix/cl/model/event/session/command/Command;Z)V

    :cond_9
    :goto_0
    return-void
.end method
