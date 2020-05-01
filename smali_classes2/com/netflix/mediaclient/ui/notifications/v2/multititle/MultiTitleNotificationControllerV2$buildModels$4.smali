.class final Lcom/netflix/mediaclient/ui/notifications/v2/multititle/MultiTitleNotificationControllerV2$buildModels$4;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alO;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/notifications/v2/multititle/MultiTitleNotificationControllerV2;->buildModels(Lo/PI;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alO<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        "Lcom/netflix/cl/model/TrackingInfo;",
        "Lo/akj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Lcom/netflix/mediaclient/ui/notifications/v2/multititle/MultiTitleNotificationControllerV2;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/notifications/v2/multititle/MultiTitleNotificationControllerV2;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/notifications/v2/multititle/MultiTitleNotificationControllerV2$buildModels$4;->b:Lcom/netflix/mediaclient/ui/notifications/v2/multititle/MultiTitleNotificationControllerV2;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/cl/model/TrackingInfo;)V
    .locals 3

    const-string v0, "buttonText"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "url"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "trackingInfo"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    iget-object p3, p0, Lcom/netflix/mediaclient/ui/notifications/v2/multititle/MultiTitleNotificationControllerV2$buildModels$4;->b:Lcom/netflix/mediaclient/ui/notifications/v2/multititle/MultiTitleNotificationControllerV2;

    .line 103
    new-instance v0, Lo/Ps;

    invoke-direct {v0}, Lo/Ps;-><init>()V

    .line 107
    move-object v1, v0

    check-cast v1, Lo/Pt;

    const-string v2, "call_to_action"

    .line 90
    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {v1, v2}, Lo/Pt;->a(Ljava/lang/CharSequence;)Lo/Pt;

    .line 91
    move-object v2, p1

    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {v1, v2}, Lo/Pt;->e(Ljava/lang/CharSequence;)Lo/Pt;

    .line 92
    new-instance v2, Lcom/netflix/mediaclient/ui/notifications/v2/multititle/MultiTitleNotificationControllerV2$buildModels$4$StateListAnimator;

    invoke-direct {v2, p0, p1, p2}, Lcom/netflix/mediaclient/ui/notifications/v2/multititle/MultiTitleNotificationControllerV2$buildModels$4$StateListAnimator;-><init>(Lcom/netflix/mediaclient/ui/notifications/v2/multititle/MultiTitleNotificationControllerV2$buildModels$4;Ljava/lang/String;Ljava/lang/String;)V

    check-cast v2, Landroid/view/View$OnClickListener;

    invoke-interface {v1, v2}, Lo/Pt;->d(Landroid/view/View$OnClickListener;)Lo/Pt;

    .line 106
    invoke-virtual {v0, p3}, Lo/Ps;->a(Lo/OfPrimitive;)V

    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 17
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    check-cast p3, Lcom/netflix/cl/model/TrackingInfo;

    invoke-virtual {p0, p1, p2, p3}, Lcom/netflix/mediaclient/ui/notifications/v2/multititle/MultiTitleNotificationControllerV2$buildModels$4;->d(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/cl/model/TrackingInfo;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
