.class public Lo/ResourceCursorAdapter;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field private final a:Lo/CY;

.field protected c:Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

.field private final d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/CY;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lo/ResourceCursorAdapter;->d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    .line 49
    iput-object p2, p0, Lo/ResourceCursorAdapter;->a:Lo/CY;

    return-void
.end method


# virtual methods
.method public b(Landroid/view/View;Lo/AR;Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;)V
    .locals 0

    .line 116
    iput-object p3, p0, Lo/ResourceCursorAdapter;->c:Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    .line 117
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 120
    sget p3, Lcom/netflix/mediaclient/ui/R$Fragment;->uT:I

    invoke-virtual {p1, p3, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method protected c()Lcom/netflix/cl/model/TrackingInfo;
    .locals 2

    .line 125
    iget-object v0, p0, Lo/ResourceCursorAdapter;->c:Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 126
    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;->e(Lorg/json/JSONObject;)Lcom/netflix/cl/model/TrackingInfo;

    move-result-object v0

    return-object v0

    .line 128
    :cond_0
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v0

    const-string v1, "getBoxartTrackingInfo() with missing trackingInfoHolder"

    invoke-interface {v0, v1}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    .line 129
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 130
    invoke-static {v0}, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->b(Ljava/util/Map;)Lcom/netflix/cl/model/TrackingInfo;

    move-result-object v0

    return-object v0
.end method

.method public d(Landroid/view/View;)V
    .locals 2

    const-string v0, "VideoDetailsClickListener"

    const-string v1, "Removing click listeners"

    .line 106
    invoke-static {v0, v1}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 107
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 109
    sget v1, Lcom/netflix/mediaclient/ui/R$Fragment;->uT:I

    invoke-virtual {p1, v1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method protected e(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/AR;Lcom/netflix/mediaclient/servicemgr/PlayContext;)V
    .locals 1

    const-string v0, "DeetsClickListener"

    .line 87
    invoke-static {p1, p2, p3, v0}, Lo/Dw;->e(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/AR;Lcom/netflix/mediaclient/servicemgr/PlayContext;Ljava/lang/String;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 54
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->uT:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "VideoDetailsClickListener"

    if-nez p1, :cond_0

    const-string p1, "No video details for click listener to use"

    .line 56
    invoke-static {v0, p1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 59
    :cond_0
    check-cast p1, Lo/AR;

    .line 61
    iget-object v1, p0, Lo/ResourceCursorAdapter;->c:Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    if-eqz v1, :cond_1

    .line 62
    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;->j()Lcom/netflix/mediaclient/ui/common/PlayContextImp;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v1, "Using deprecated playContextProvider.getPlayContext()"

    .line 64
    invoke-static {v0, v1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    iget-object v0, p0, Lo/ResourceCursorAdapter;->a:Lo/CY;

    invoke-interface {v0}, Lo/CY;->o()Lcom/netflix/mediaclient/servicemgr/PlayContext;

    move-result-object v0

    .line 77
    :goto_0
    sget-object v1, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->b:Lcom/netflix/mediaclient/ui/util/CLv2Utils;

    new-instance v2, Lcom/netflix/cl/model/event/session/Focus;

    sget-object v3, Lcom/netflix/cl/model/AppView;->boxArt:Lcom/netflix/cl/model/AppView;

    .line 78
    invoke-virtual {p0}, Lo/ResourceCursorAdapter;->c()Lcom/netflix/cl/model/TrackingInfo;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/netflix/cl/model/event/session/Focus;-><init>(Lcom/netflix/cl/model/AppView;Lcom/netflix/cl/model/TrackingInfo;)V

    new-instance v3, Lcom/netflix/cl/model/event/session/command/ViewDetailsCommand;

    invoke-direct {v3}, Lcom/netflix/cl/model/event/session/command/ViewDetailsCommand;-><init>()V

    const/4 v4, 0x1

    .line 77
    invoke-virtual {v1, v2, v3, v4}, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->d(Lcom/netflix/cl/model/event/session/Focus;Lcom/netflix/cl/model/event/session/command/Command;Z)V

    .line 83
    iget-object v1, p0, Lo/ResourceCursorAdapter;->d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {p0, v1, p1, v0}, Lo/ResourceCursorAdapter;->e(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/AR;Lcom/netflix/mediaclient/servicemgr/PlayContext;)V

    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 1

    .line 92
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->uT:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 100
    :cond_0
    check-cast p1, Lo/AR;

    .line 101
    invoke-interface {p1}, Lo/AR;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lo/adk;->a(Ljava/lang/String;I)V

    const/4 p1, 0x1

    return p1
.end method
