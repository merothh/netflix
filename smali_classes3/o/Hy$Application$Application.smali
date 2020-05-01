.class final Lo/Hy$Application$Application;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Hy$Application;->c(Landroid/view/View;)V
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
        "Lo/Pe;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Lcom/netflix/mediaclient/android/activity/NetflixActivity;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
    .locals 0

    iput-object p1, p0, Lo/Hy$Application$Application;->b:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lo/Pe;)V
    .locals 6

    .line 111
    instance-of v0, p1, Lo/Pe$Activity;

    if-eqz v0, :cond_0

    .line 112
    sget-object v0, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->b:Lcom/netflix/mediaclient/ui/util/CLv2Utils;

    .line 113
    new-instance v1, Lcom/netflix/cl/model/event/session/Focus;

    .line 114
    sget-object v2, Lcom/netflix/cl/model/AppView;->notificationItem:Lcom/netflix/cl/model/AppView;

    .line 115
    check-cast p1, Lo/Pe$Activity;

    invoke-virtual {p1}, Lo/Pe$Activity;->c()Lo/Pa;

    move-result-object v3

    invoke-virtual {v3}, Lo/Pa;->trackingInfo()Lcom/netflix/model/leafs/social/UserNotificationLandingTrackingInfo;

    move-result-object v3

    check-cast v3, Lo/zR;

    invoke-static {v3}, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->d(Lo/zR;)Lcom/netflix/cl/model/TrackingInfo;

    move-result-object v3

    .line 113
    invoke-direct {v1, v2, v3}, Lcom/netflix/cl/model/event/session/Focus;-><init>(Lcom/netflix/cl/model/AppView;Lcom/netflix/cl/model/TrackingInfo;)V

    .line 117
    new-instance v2, Lcom/netflix/cl/model/event/session/command/ViewDetailsCommand;

    invoke-direct {v2}, Lcom/netflix/cl/model/event/session/command/ViewDetailsCommand;-><init>()V

    check-cast v2, Lcom/netflix/cl/model/event/session/command/Command;

    .line 112
    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->b(Lcom/netflix/cl/model/event/session/Focus;Lcom/netflix/cl/model/event/session/command/Command;)V

    .line 120
    iget-object v0, p0, Lo/Hy$Application$Application;->b:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    .line 121
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p1}, Lo/Pe$Activity;->b()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 119
    invoke-static {v0, v1}, Lo/az;->a(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Landroid/content/Intent;)Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;

    goto :goto_0

    .line 124
    :cond_0
    instance-of v0, p1, Lo/Pe$ActionBar;

    if-eqz v0, :cond_2

    .line 125
    sget-object v0, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->b:Lcom/netflix/mediaclient/ui/util/CLv2Utils;

    .line 126
    new-instance v1, Lcom/netflix/cl/model/event/session/Focus;

    .line 127
    sget-object v2, Lcom/netflix/cl/model/AppView;->notificationItem:Lcom/netflix/cl/model/AppView;

    .line 128
    check-cast p1, Lo/Pe$ActionBar;

    invoke-virtual {p1}, Lo/Pe$ActionBar;->d()Lo/Pa;

    move-result-object v3

    invoke-virtual {v3}, Lo/Pa;->trackingInfo()Lcom/netflix/model/leafs/social/UserNotificationLandingTrackingInfo;

    move-result-object v3

    check-cast v3, Lo/zR;

    invoke-static {v3}, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->d(Lo/zR;)Lcom/netflix/cl/model/TrackingInfo;

    move-result-object v3

    .line 126
    invoke-direct {v1, v2, v3}, Lcom/netflix/cl/model/event/session/Focus;-><init>(Lcom/netflix/cl/model/AppView;Lcom/netflix/cl/model/TrackingInfo;)V

    .line 130
    new-instance v2, Lcom/netflix/cl/model/event/session/command/ViewDetailsCommand;

    invoke-direct {v2}, Lcom/netflix/cl/model/event/session/command/ViewDetailsCommand;-><init>()V

    check-cast v2, Lcom/netflix/cl/model/event/session/command/Command;

    .line 125
    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->b(Lcom/netflix/cl/model/event/session/Focus;Lcom/netflix/cl/model/event/session/command/Command;)V

    .line 132
    sget-object v0, Lo/dJ;->b:Lo/dJ$TaskDescription;

    invoke-virtual {v0}, Lo/dJ$TaskDescription;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 133
    iget-object v0, p0, Lo/Hy$Application$Application;->b:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    .line 134
    sget-object v1, Lo/PD;->b:Lo/PD$TaskDescription;

    .line 135
    iget-object v2, p0, Lo/Hy$Application$Application;->b:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    check-cast v2, Landroid/content/Context;

    .line 136
    invoke-virtual {p1}, Lo/Pe$ActionBar;->e()Ljava/lang/String;

    move-result-object p1

    .line 134
    invoke-virtual {v1, v2, p1}, Lo/PD$TaskDescription;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 133
    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 140
    :cond_1
    invoke-virtual {p1}, Lo/Pe$ActionBar;->d()Lo/Pa;

    move-result-object p1

    invoke-virtual {p1}, Lo/Pa;->landingPage()Lcom/netflix/model/leafs/social/multititle/NotificationLandingPage;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 141
    iget-object p1, p0, Lo/Hy$Application$Application;->b:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    .line 142
    sget-object v0, Lo/OM;->b:Lo/OM$Application;

    .line 143
    iget-object v1, p0, Lo/Hy$Application$Application;->b:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    check-cast v1, Landroid/content/Context;

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    .line 142
    invoke-static/range {v0 .. v5}, Lo/OM$Application;->c(Lo/OM$Application;Landroid/content/Context;Lcom/netflix/model/leafs/social/multititle/NotificationLandingPage;Ljava/util/HashMap;ILjava/lang/Object;)Landroid/content/Intent;

    move-result-object v0

    .line 141
    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->startActivity(Landroid/content/Intent;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 78
    check-cast p1, Lo/Pe;

    invoke-virtual {p0, p1}, Lo/Hy$Application$Application;->a(Lo/Pe;)V

    return-void
.end method
