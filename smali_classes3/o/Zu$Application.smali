.class public final Lo/Zu$Application;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Zu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Application"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lo/amc;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Lo/Zu$Application;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Lo/ZR$BroadcastReceiver;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/lang/String;)V
    .locals 9

    const-string v0, "event"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "source"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-virtual {p1}, Lo/ZR$BroadcastReceiver;->b()Lo/Bx;

    move-result-object v3

    .line 24
    invoke-virtual {p1}, Lo/ZR$BroadcastReceiver;->d()Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    move-result-object v4

    .line 25
    invoke-virtual {p1}, Lo/ZR$BroadcastReceiver;->c()Lcom/netflix/mediaclient/servicemgr/PlayContext;

    move-result-object v6

    .line 26
    invoke-virtual {p1}, Lo/ZR$BroadcastReceiver;->a()Z

    move-result v2

    .line 28
    invoke-virtual {v4}, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;->g()Lcom/netflix/mediaclient/ui/trackinginfo/CLListTrackingInfoBase;

    move-result-object p1

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getHandler()Landroid/os/Handler;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-instance v8, Lcom/netflix/mediaclient/ui/search/SearchEventHandler$Companion$handleSearchItemClickEvent$1;

    move-object v1, v8

    move-object v5, p2

    move-object v7, p3

    invoke-direct/range {v1 .. v7}, Lcom/netflix/mediaclient/ui/search/SearchEventHandler$Companion$handleSearchItemClickEvent$1;-><init>(ZLo/Bx;Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/PlayContext;Ljava/lang/String;)V

    check-cast v8, Lo/alN;

    invoke-static {p1, v0, v8}, Lo/NfcA;->c(Ljava/lang/Object;Ljava/lang/Object;Lo/alN;)Ljava/lang/Object;

    return-void
.end method
