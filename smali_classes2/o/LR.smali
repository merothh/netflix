.class public final Lo/LR;
.super Lo/ResourceCursorAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/LR$StateListAnimator;
    }
.end annotation


# static fields
.field public static final b:Lo/LR$StateListAnimator;


# instance fields
.field private final a:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

.field private final d:Lo/CY;

.field private final e:Lo/Df;

.field private final g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/LR$StateListAnimator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/LR$StateListAnimator;-><init>(Lo/amc;)V

    sput-object v0, Lo/LR;->b:Lo/LR$StateListAnimator;

    return-void
.end method

.method public constructor <init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/CY;Lo/Df;Z)V
    .locals 1

    const-string v0, "playContextProvider"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "trackingInfoHolderProvider"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-direct {p0, p1, p2}, Lo/ResourceCursorAdapter;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/CY;)V

    iput-object p1, p0, Lo/LR;->a:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    iput-object p2, p0, Lo/LR;->d:Lo/CY;

    iput-object p3, p0, Lo/LR;->e:Lo/Df;

    iput-boolean p4, p0, Lo/LR;->g:Z

    return-void
.end method

.method public static final synthetic d(Lo/LR;)Lo/Df;
    .locals 0

    .line 19
    iget-object p0, p0, Lo/LR;->e:Lo/Df;

    return-object p0
.end method

.method public static final synthetic e(Lo/LR;)Lcom/netflix/mediaclient/android/activity/NetflixActivity;
    .locals 0

    .line 19
    iget-object p0, p0, Lo/LR;->a:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    return-object p0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    const-string v0, "v"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    iget-boolean v0, p0, Lo/LR;->g:Z

    if-eqz v0, :cond_1

    .line 31
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0, v1}, Lo/adk;->c(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    if-eqz v0, :cond_1

    const-string v1, "activity"

    .line 32
    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    instance-of v2, v1, Landroid/widget/EditText;

    if-nez v2, :cond_0

    const/4 v1, 0x0

    :cond_0
    check-cast v1, Landroid/widget/EditText;

    if-eqz v1, :cond_1

    .line 33
    check-cast v0, Landroid/app/Activity;

    invoke-static {v0, v1}, Lo/adq;->d(Landroid/app/Activity;Landroid/widget/EditText;)V

    .line 34
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->requestLayout()V

    .line 39
    :cond_1
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->uT:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_2

    .line 41
    sget-object p1, Lo/LR;->b:Lo/LR$StateListAnimator;

    check-cast p1, Lo/MessagePdu;

    goto :goto_0

    .line 43
    :cond_2
    check-cast p1, Lo/agg;

    .line 44
    iget-object v0, p0, Lo/LR;->d:Lo/CY;

    invoke-interface {v0}, Lo/CY;->o()Lcom/netflix/mediaclient/servicemgr/PlayContext;

    move-result-object v0

    const-string v1, "playContextProvider.playContext"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    sget-object v0, Lo/LR;->b:Lo/LR$StateListAnimator;

    check-cast v0, Lo/MessagePdu;

    .line 47
    sget-object v0, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->b:Lcom/netflix/mediaclient/ui/util/CLv2Utils;

    .line 48
    new-instance v1, Lcom/netflix/cl/model/event/session/Focus;

    sget-object v2, Lcom/netflix/cl/model/AppView;->boxArt:Lcom/netflix/cl/model/AppView;

    invoke-virtual {p0}, Lo/LR;->c()Lcom/netflix/cl/model/TrackingInfo;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/netflix/cl/model/event/session/Focus;-><init>(Lcom/netflix/cl/model/AppView;Lcom/netflix/cl/model/TrackingInfo;)V

    .line 49
    new-instance v2, Lcom/netflix/cl/model/event/session/command/ViewDetailsCommand;

    invoke-direct {v2}, Lcom/netflix/cl/model/event/session/command/ViewDetailsCommand;-><init>()V

    check-cast v2, Lcom/netflix/cl/model/event/session/command/Command;

    const/4 v3, 0x0

    .line 47
    invoke-virtual {v0, v1, v2, v3}, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->d(Lcom/netflix/cl/model/event/session/Focus;Lcom/netflix/cl/model/event/session/command/Command;Z)V

    .line 53
    new-instance v0, Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag;

    invoke-direct {v0}, Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag;-><init>()V

    .line 54
    iget-object v1, p0, Lo/LR;->a:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getHandler()Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_3

    new-instance v2, Lo/LR$TaskDescription;

    invoke-direct {v2, p0, v0, p1}, Lo/LR$TaskDescription;-><init>(Lo/LR;Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag;Lo/agg;)V

    check-cast v2, Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_3
    :goto_0
    return-void
.end method
