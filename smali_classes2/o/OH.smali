.class public final Lo/OH;
.super Landroid/widget/RelativeLayout;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/OH$ActionBar;
    }
.end annotation


# static fields
.field public static final b:Lo/OH$ActionBar;

.field static final synthetic e:[Lo/amT;


# instance fields
.field private final a:Lo/ams;

.field private final c:Lo/ams;

.field private final d:Lo/ams;

.field private f:Lo/Oc;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-class v0, Lo/OH;

    const/4 v1, 0x3

    new-array v1, v1, [Lo/amT;

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "playButton"

    const-string v5, "getPlayButton()Lcom/netflix/mediaclient/android/widget/NetflixTextButton;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "downloadButton"

    const-string v5, "getDownloadButton()Lcom/netflix/mediaclient/ui/offline/DownloadButton;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v0

    const-string v3, "addToMyListButton"

    const-string v4, "getAddToMyListButton()Lcom/netflix/mediaclient/android/widget/NetflixToggleButton;"

    invoke-direct {v2, v0, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v0

    check-cast v0, Lo/amT;

    const/4 v2, 0x2

    aput-object v0, v1, v2

    sput-object v1, Lo/OH;->e:[Lo/amT;

    new-instance v0, Lo/OH$ActionBar;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/OH$ActionBar;-><init>(Lo/amc;)V

    sput-object v0, Lo/OH;->b:Lo/OH$ActionBar;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 42
    sget p1, Lcom/netflix/mediaclient/ui/R$Fragment;->kS:I

    invoke-static {p0, p1}, Lo/NfcV;->a(Landroid/view/View;I)Lo/ams;

    move-result-object p1

    iput-object p1, p0, Lo/OH;->c:Lo/ams;

    .line 43
    sget p1, Lcom/netflix/mediaclient/ui/R$Fragment;->fc:I

    invoke-static {p0, p1}, Lo/NfcV;->a(Landroid/view/View;I)Lo/ams;

    move-result-object p1

    iput-object p1, p0, Lo/OH;->d:Lo/ams;

    .line 45
    sget p1, Lcom/netflix/mediaclient/ui/R$Fragment;->j:I

    invoke-static {p0, p1}, Lo/NfcV;->a(Landroid/view/View;I)Lo/ams;

    move-result-object p1

    iput-object p1, p0, Lo/OH;->a:Lo/ams;

    .line 55
    invoke-virtual {p0}, Lo/OH;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-virtual {p0}, Lo/OH;->a()I

    move-result v0

    move-object v1, p0

    check-cast v1, Landroid/view/ViewGroup;

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attrs"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    sget p1, Lcom/netflix/mediaclient/ui/R$Fragment;->kS:I

    invoke-static {p0, p1}, Lo/NfcV;->a(Landroid/view/View;I)Lo/ams;

    move-result-object p1

    iput-object p1, p0, Lo/OH;->c:Lo/ams;

    .line 43
    sget p1, Lcom/netflix/mediaclient/ui/R$Fragment;->fc:I

    invoke-static {p0, p1}, Lo/NfcV;->a(Landroid/view/View;I)Lo/ams;

    move-result-object p1

    iput-object p1, p0, Lo/OH;->d:Lo/ams;

    .line 45
    sget p1, Lcom/netflix/mediaclient/ui/R$Fragment;->j:I

    invoke-static {p0, p1}, Lo/NfcV;->a(Landroid/view/View;I)Lo/ams;

    move-result-object p1

    iput-object p1, p0, Lo/OH;->a:Lo/ams;

    .line 55
    invoke-virtual {p0}, Lo/OH;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-virtual {p0}, Lo/OH;->a()I

    move-result p2

    move-object v0, p0

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x1

    invoke-virtual {p1, p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attrs"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    sget p1, Lcom/netflix/mediaclient/ui/R$Fragment;->kS:I

    invoke-static {p0, p1}, Lo/NfcV;->a(Landroid/view/View;I)Lo/ams;

    move-result-object p1

    iput-object p1, p0, Lo/OH;->c:Lo/ams;

    .line 43
    sget p1, Lcom/netflix/mediaclient/ui/R$Fragment;->fc:I

    invoke-static {p0, p1}, Lo/NfcV;->a(Landroid/view/View;I)Lo/ams;

    move-result-object p1

    iput-object p1, p0, Lo/OH;->d:Lo/ams;

    .line 45
    sget p1, Lcom/netflix/mediaclient/ui/R$Fragment;->j:I

    invoke-static {p0, p1}, Lo/NfcV;->a(Landroid/view/View;I)Lo/ams;

    move-result-object p1

    iput-object p1, p0, Lo/OH;->a:Lo/ams;

    .line 55
    invoke-virtual {p0}, Lo/OH;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-virtual {p0}, Lo/OH;->a()I

    move-result p2

    move-object p3, p0

    check-cast p3, Landroid/view/ViewGroup;

    const/4 v0, 0x1

    invoke-virtual {p1, p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    return-void
.end method

.method private final b(Landroid/view/View;Lcom/netflix/cl/model/TrackingInfo;Lcom/netflix/cl/model/event/session/command/Command;Z)V
    .locals 1

    .line 104
    new-instance v0, Lo/OH$StateListAnimator;

    invoke-direct {v0, p2, p3, p4}, Lo/OH$StateListAnimator;-><init>(Lcom/netflix/cl/model/TrackingInfo;Lcom/netflix/cl/model/event/session/command/Command;Z)V

    check-cast v0, Landroid/view/View$OnTouchListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private final c()Lcom/netflix/mediaclient/ui/offline/DownloadButton;
    .locals 3

    iget-object v0, p0, Lo/OH;->d:Lo/ams;

    sget-object v1, Lo/OH;->e:[Lo/amT;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/offline/DownloadButton;

    return-object v0
.end method

.method private final d()Lo/ListView;
    .locals 3

    iget-object v0, p0, Lo/OH;->a:Lo/ams;

    sget-object v1, Lo/OH;->e:[Lo/amT;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ListView;

    return-object v0
.end method

.method private final d(Ljava/lang/String;)V
    .locals 3

    .line 71
    invoke-virtual {p0}, Lo/OH;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0, v1}, Lo/TagTechnology;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    if-eqz v0, :cond_0

    .line 74
    sget-object v1, Lo/ON;->e:Lo/ON$Application;

    invoke-direct {p0}, Lo/OH;->e()Lo/HorizontalScrollView;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v1, v0, v2, p1}, Lo/ON$Application;->e(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Landroid/view/View;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private final d(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/cl/model/TrackingInfo;)V
    .locals 4

    .line 79
    iget-object v0, p0, Lo/OH;->f:Lo/Oc;

    if-eqz v0, :cond_0

    .line 84
    new-instance v1, Lcom/netflix/mediaclient/servicemgr/EmptyPlayContext;

    const/16 v2, -0x213

    const-string v3, "MultiTitleHeroButtonsViewGroup"

    invoke-direct {v1, v3, v2}, Lcom/netflix/mediaclient/servicemgr/EmptyPlayContext;-><init>(Ljava/lang/String;I)V

    check-cast v1, Lcom/netflix/mediaclient/servicemgr/PlayContext;

    .line 81
    invoke-virtual {v0, p1, p2, v1, p3}, Lo/Oc;->d(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/servicemgr/PlayContext;Lcom/netflix/cl/model/TrackingInfo;)V

    return-void

    .line 79
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method private final e()Lo/HorizontalScrollView;
    .locals 3

    iget-object v0, p0, Lo/OH;->c:Lo/ams;

    sget-object v1, Lo/OH;->e:[Lo/amT;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/HorizontalScrollView;

    return-object v0
.end method

.method private final e(Lo/Bc;)V
    .locals 2

    .line 90
    invoke-virtual {p0}, Lo/OH;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0, v1}, Lo/TagTechnology;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    if-eqz v0, :cond_0

    .line 93
    invoke-direct {p0}, Lo/OH;->c()Lcom/netflix/mediaclient/ui/offline/DownloadButton;

    move-result-object v1

    invoke-interface {p1}, Lo/Bc;->bb()Lo/AK;

    move-result-object p1

    check-cast p1, Lo/As;

    invoke-virtual {v1, p1, v0}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->setStateFromPlayable(Lo/As;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    .line 96
    :cond_0
    invoke-direct {p0}, Lo/OH;->c()Lcom/netflix/mediaclient/ui/offline/DownloadButton;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->d()Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;

    move-result-object p1

    sget-object v0, Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;->d:Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;

    if-eq p1, v0, :cond_1

    .line 97
    invoke-direct {p0}, Lo/OH;->h()V

    :cond_1
    return-void
.end method

.method private final h()V
    .locals 2

    .line 101
    invoke-direct {p0}, Lo/OH;->c()Lcom/netflix/mediaclient/ui/offline/DownloadButton;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/ViewUtils;->e(Landroid/view/View;Z)V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 68
    sget v0, Lcom/netflix/mediaclient/ui/R$Dialog;->cW:I

    return v0
.end method

.method public final a(Lcom/netflix/model/leafs/social/multititle/NotificationHeroTitleAction;Lo/Bc;)V
    .locals 6

    const-string v0, "action"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoDetails"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    invoke-virtual {p1}, Lcom/netflix/model/leafs/social/multititle/NotificationHeroTitleAction;->action()Ljava/lang/String;

    move-result-object v0

    .line 119
    invoke-virtual {p1}, Lcom/netflix/model/leafs/social/multititle/NotificationHeroTitleAction;->trackingInfo()Lcom/netflix/model/leafs/social/UserNotificationActionTrackingInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/model/leafs/social/UserNotificationActionTrackingInfo;->titleId()Ljava/lang/String;

    move-result-object v1

    .line 121
    invoke-virtual {p1}, Lcom/netflix/model/leafs/social/multititle/NotificationHeroTitleAction;->actionType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "action.actionType()"

    invoke-static {v2, v3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "(this as java.lang.String).toLowerCase()"

    invoke-static {v2, v3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, 0x178a1

    const/4 v5, 0x0

    if-eq v3, v4, :cond_2

    const v1, 0x6bac4cf

    if-eq v3, v1, :cond_1

    const v0, 0x551ac888

    if-eq v3, v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const-string v0, "download"

    .line 134
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 135
    invoke-direct {p0, p2}, Lo/OH;->e(Lo/Bc;)V

    .line 136
    invoke-direct {p0}, Lo/OH;->c()Lcom/netflix/mediaclient/ui/offline/DownloadButton;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    invoke-virtual {p1}, Lcom/netflix/model/leafs/social/multititle/NotificationHeroTitleAction;->trackingInfo()Lcom/netflix/model/leafs/social/UserNotificationActionTrackingInfo;

    move-result-object p1

    check-cast p1, Lo/zR;

    invoke-static {p1}, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->d(Lo/zR;)Lcom/netflix/cl/model/TrackingInfo;

    move-result-object p1

    new-instance v0, Lcom/netflix/cl/model/event/session/command/SelectCommand;

    invoke-direct {v0}, Lcom/netflix/cl/model/event/session/command/SelectCommand;-><init>()V

    check-cast v0, Lcom/netflix/cl/model/event/session/command/Command;

    invoke-direct {p0, p2, p1, v0, v5}, Lo/OH;->b(Landroid/view/View;Lcom/netflix/cl/model/TrackingInfo;Lcom/netflix/cl/model/event/session/command/Command;Z)V

    goto :goto_0

    :cond_1
    const-string p2, "watch"

    .line 122
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    const-string p2, "url"

    .line 123
    invoke-static {v0, p2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lo/OH;->d(Ljava/lang/String;)V

    .line 124
    invoke-direct {p0}, Lo/OH;->e()Lo/HorizontalScrollView;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    invoke-virtual {p1}, Lcom/netflix/model/leafs/social/multititle/NotificationHeroTitleAction;->trackingInfo()Lcom/netflix/model/leafs/social/UserNotificationActionTrackingInfo;

    move-result-object p1

    check-cast p1, Lo/zR;

    invoke-static {p1}, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->d(Lo/zR;)Lcom/netflix/cl/model/TrackingInfo;

    move-result-object p1

    new-instance v0, Lcom/netflix/cl/model/event/session/command/PlayCommand;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/netflix/cl/model/event/session/command/PlayCommand;-><init>(Ljava/lang/Long;)V

    check-cast v0, Lcom/netflix/cl/model/event/session/command/Command;

    const/4 v1, 0x1

    invoke-direct {p0, p2, p1, v0, v1}, Lo/OH;->b(Landroid/view/View;Lcom/netflix/cl/model/TrackingInfo;Lcom/netflix/cl/model/event/session/command/Command;Z)V

    goto :goto_0

    :cond_2
    const-string p2, "add"

    .line 126
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 127
    invoke-direct {p0}, Lo/OH;->d()Lo/ListView;

    move-result-object p2

    invoke-virtual {p2, v5}, Lo/ListView;->setVisibility(I)V

    const-string p2, "titleId"

    .line 129
    invoke-static {v1, p2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    invoke-virtual {p1}, Lcom/netflix/model/leafs/social/multititle/NotificationHeroTitleAction;->videoType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object p2

    const-string v0, "action.videoType()"

    invoke-static {p2, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    invoke-virtual {p1}, Lcom/netflix/model/leafs/social/multititle/NotificationHeroTitleAction;->trackingInfo()Lcom/netflix/model/leafs/social/UserNotificationActionTrackingInfo;

    move-result-object p1

    check-cast p1, Lo/zR;

    invoke-static {p1}, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->d(Lo/zR;)Lcom/netflix/cl/model/TrackingInfo;

    move-result-object p1

    .line 128
    invoke-direct {p0, v1, p2, p1}, Lo/OH;->d(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/cl/model/TrackingInfo;)V

    :cond_3
    :goto_0
    return-void

    .line 121
    :cond_4
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final b()V
    .locals 5

    .line 60
    invoke-virtual {p0}, Lo/OH;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "context"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 149
    const-class v2, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0, v2}, Lo/TagTechnology;->d(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    .line 61
    new-instance v2, Lo/Oh;

    invoke-direct {p0}, Lo/OH;->d()Lo/ListView;

    move-result-object v3

    check-cast v3, Landroid/widget/CompoundButton;

    invoke-direct {v2, v3}, Lo/Oh;-><init>(Landroid/widget/CompoundButton;)V

    check-cast v2, Lo/Od;

    .line 62
    sget-object v3, Lo/UpdateEngine;->e:Lo/UpdateEngine$TaskDescription;

    invoke-virtual {p0}, Lo/OH;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 150
    const-class v1, Lo/UnicodeScript;

    invoke-static {v4, v1}, Lo/TagTechnology;->d(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/UnicodeScript;

    .line 62
    invoke-virtual {v3, v1}, Lo/UpdateEngine$TaskDescription;->d(Lo/UnicodeScript;)Lo/UpdateEngine;

    move-result-object v1

    invoke-virtual {v1}, Lo/UpdateEngine;->e()Lio/reactivex/Observable;

    move-result-object v1

    .line 59
    new-instance v3, Lo/Oc;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v2, v1, v4}, Lo/Oc;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/Od;Lio/reactivex/Observable;Lcom/netflix/cl/model/AppView;)V

    iput-object v3, p0, Lo/OH;->f:Lo/Oc;

    return-void
.end method

.method public final b(Z)V
    .locals 1

    .line 114
    iget-object v0, p0, Lo/OH;->f:Lo/Oc;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lo/Oc;->d(Z)V

    :cond_0
    return-void
.end method

.method public final d(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 6

    .line 142
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_2

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_2

    .line 143
    invoke-direct {p0}, Lo/OH;->e()Lo/HorizontalScrollView;

    move-result-object v0

    invoke-virtual {p0}, Lo/OH;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/netflix/mediaclient/ui/R$AssistContent;->jy:I

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v1

    aput-object p2, v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Lo/HorizontalScrollView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method
