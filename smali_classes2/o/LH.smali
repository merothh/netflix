.class public final Lo/LH;
.super Lo/ResourceCursorAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/LH$Activity;
    }
.end annotation


# static fields
.field public static final e:Lo/LH$Activity;


# instance fields
.field private final a:Lcom/netflix/mediaclient/android/activity/NetflixActivity;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/LH$Activity;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/LH$Activity;-><init>(Lo/amc;)V

    sput-object v0, Lo/LH;->e:Lo/LH$Activity;

    return-void
.end method

.method public constructor <init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/CY;)V
    .locals 1

    const-string v0, "playContextProvider"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-direct {p0, p1, p2}, Lo/ResourceCursorAdapter;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/CY;)V

    iput-object p1, p0, Lo/LH;->a:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    const-string v0, "v"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->uT:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    .line 30
    sget-object p1, Lo/LH;->e:Lo/LH$Activity;

    check-cast p1, Lo/MessagePdu;

    goto :goto_0

    .line 32
    :cond_0
    check-cast p1, Lo/agg;

    .line 34
    sget-object v0, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->b:Lcom/netflix/mediaclient/ui/util/CLv2Utils;

    .line 35
    new-instance v1, Lcom/netflix/cl/model/event/session/Focus;

    sget-object v2, Lcom/netflix/cl/model/AppView;->moreInfoButton:Lcom/netflix/cl/model/AppView;

    invoke-virtual {p0}, Lo/LH;->c()Lcom/netflix/cl/model/TrackingInfo;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/netflix/cl/model/event/session/Focus;-><init>(Lcom/netflix/cl/model/AppView;Lcom/netflix/cl/model/TrackingInfo;)V

    .line 36
    new-instance v2, Lcom/netflix/cl/model/event/session/command/ViewDetailsCommand;

    invoke-direct {v2}, Lcom/netflix/cl/model/event/session/command/ViewDetailsCommand;-><init>()V

    check-cast v2, Lcom/netflix/cl/model/event/session/command/Command;

    const/4 v3, 0x0

    .line 34
    invoke-virtual {v0, v1, v2, v3}, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->d(Lcom/netflix/cl/model/event/session/Focus;Lcom/netflix/cl/model/event/session/command/Command;Z)V

    .line 40
    new-instance v0, Lo/Lv;

    invoke-direct {v0}, Lo/Lv;-><init>()V

    .line 41
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "DismissOnSelection"

    .line 42
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 43
    invoke-interface {p1}, Lo/agg;->getId()Ljava/lang/String;

    move-result-object p1

    const-string v2, "extra_cw_item_video_id"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    iget-object p1, p0, Lo/LH;->c:Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    check-cast p1, Landroid/os/Parcelable;

    const-string v2, "extra_tracking_info_holder"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 45
    invoke-virtual {v0, v1}, Lo/Lv;->setArguments(Landroid/os/Bundle;)V

    .line 47
    iget-object p1, p0, Lo/LH;->a:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    if-eqz p1, :cond_1

    check-cast v0, Lo/WebChromeClient;

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->showFullScreenDialog(Lo/WebChromeClient;)Z

    :cond_1
    :goto_0
    return-void
.end method
