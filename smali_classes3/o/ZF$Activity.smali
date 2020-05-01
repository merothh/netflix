.class final Lo/ZF$Activity;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/ZF;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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
.field final synthetic c:Lo/ZF;


# direct methods
.method constructor <init>(Lo/ZF;)V
    .locals 0

    iput-object p1, p0, Lo/ZF$Activity;->c:Lo/ZF;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lo/ZR;)V
    .locals 3

    .line 89
    instance-of v0, p1, Lo/ZR$ClipData;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lo/ZF$Activity;->c:Lo/ZF;

    check-cast p1, Lo/ZR$ClipData;

    invoke-virtual {p1}, Lo/ZR$ClipData;->c()Lcom/netflix/mediaclient/android/app/Status;

    move-result-object p1

    invoke-static {v0, p1}, Lo/ZF;->d(Lo/ZF;Lcom/netflix/mediaclient/android/app/Status;)V

    goto/16 :goto_0

    .line 93
    :cond_0
    instance-of v0, p1, Lo/ZR$PictureInPictureParams;

    if-eqz v0, :cond_1

    .line 94
    iget-object p1, p0, Lo/ZF$Activity;->c:Lo/ZF;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lo/ZF;->d(Lo/ZF;Z)V

    .line 95
    iget-object p1, p0, Lo/ZF$Activity;->c:Lo/ZF;

    invoke-static {p1, v0}, Lo/ZF;->e(Lo/ZF;Z)V

    goto/16 :goto_0

    .line 98
    :cond_1
    instance-of v0, p1, Lo/ZR$TaskDescription;

    if-eqz v0, :cond_2

    iget-object p1, p0, Lo/ZF$Activity;->c:Lo/ZF;

    invoke-static {p1}, Lo/ZF;->b(Lo/ZF;)V

    goto/16 :goto_0

    .line 100
    :cond_2
    instance-of v0, p1, Lo/ZR$BroadcastReceiver;

    if-eqz v0, :cond_3

    .line 101
    sget-object v0, Lo/Zu;->b:Lo/Zu$Application;

    check-cast p1, Lo/ZR$BroadcastReceiver;

    iget-object v1, p0, Lo/ZF$Activity;->c:Lo/ZF;

    invoke-virtual {v1}, Lo/ZF;->h()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v1

    const-string v2, "searchResults"

    invoke-virtual {v0, p1, v1, v2}, Lo/Zu$Application;->b(Lo/ZR$BroadcastReceiver;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 104
    :cond_3
    instance-of v0, p1, Lo/ZR$FragmentManager;

    if-eqz v0, :cond_4

    .line 105
    iget-object p1, p0, Lo/ZF$Activity;->c:Lo/ZF;

    invoke-static {p1}, Lo/ZF;->d(Lo/ZF;)Lo/UpdateEngine;

    move-result-object p1

    .line 106
    const-class v0, Lo/ZR;

    .line 107
    sget-object v1, Lo/ZR$FragmentManager;->d:Lo/ZR$FragmentManager;

    check-cast v1, Lo/VintfObject;

    .line 105
    invoke-virtual {p1, v0, v1}, Lo/UpdateEngine;->c(Ljava/lang/Class;Lo/VintfObject;)V

    goto :goto_0

    .line 111
    :cond_4
    instance-of v0, p1, Lo/ZR$AssistContent;

    if-eqz v0, :cond_6

    .line 112
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lo/ZF$Activity;->c:Lo/ZF;

    invoke-virtual {v1}, Lo/ZF;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lo/ZM;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 113
    check-cast p1, Lo/ZR$AssistContent;

    invoke-virtual {p1}, Lo/ZR$AssistContent;->a()I

    move-result v1

    const-string v2, "EntityId"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 114
    invoke-virtual {p1}, Lo/ZR$AssistContent;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Title"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 115
    invoke-virtual {p1}, Lo/ZR$AssistContent;->e()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SuggestionType"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 117
    iget-object v1, p0, Lo/ZF$Activity;->c:Lo/ZF;

    invoke-virtual {v1}, Lo/ZF;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 119
    :cond_5
    invoke-virtual {p1}, Lo/ZR$AssistContent;->d()Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;->e(Lorg/json/JSONObject;)Lcom/netflix/cl/model/TrackingInfo;

    move-result-object p1

    .line 120
    sget-object v0, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->b:Lcom/netflix/mediaclient/ui/util/CLv2Utils;

    .line 121
    new-instance v1, Lcom/netflix/cl/model/event/session/Focus;

    .line 122
    sget-object v2, Lcom/netflix/cl/model/AppView;->searchSuggestionResults:Lcom/netflix/cl/model/AppView;

    .line 121
    invoke-direct {v1, v2, p1}, Lcom/netflix/cl/model/event/session/Focus;-><init>(Lcom/netflix/cl/model/AppView;Lcom/netflix/cl/model/TrackingInfo;)V

    .line 124
    new-instance p1, Lcom/netflix/cl/model/event/session/command/SelectCommand;

    invoke-direct {p1}, Lcom/netflix/cl/model/event/session/command/SelectCommand;-><init>()V

    check-cast p1, Lcom/netflix/cl/model/event/session/command/Command;

    const/4 v2, 0x1

    .line 120
    invoke-virtual {v0, v1, p1, v2}, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->d(Lcom/netflix/cl/model/event/session/Focus;Lcom/netflix/cl/model/event/session/command/Command;Z)V

    :cond_6
    :goto_0
    return-void
.end method

.method public synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 36
    check-cast p1, Lo/ZR;

    invoke-virtual {p0, p1}, Lo/ZF$Activity;->a(Lo/ZR;)V

    return-void
.end method
