.class public final Lcom/netflix/mediaclient/ui/notifications/v2/multititle/MultiTitleNotificationUIPresenterV2$fetchNotificationSummary$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alA;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/PP;->e(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alA<",
        "Lo/Ph;",
        "Lo/akj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Lo/PP;


# direct methods
.method public constructor <init>(Lo/PP;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/notifications/v2/multititle/MultiTitleNotificationUIPresenterV2$fetchNotificationSummary$1;->b:Lo/PP;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final b(Lo/Ph;)V
    .locals 1

    const-string v0, "event"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    instance-of v0, p1, Lo/Ph$StateListAnimator;

    if-eqz v0, :cond_0

    .line 47
    check-cast p1, Lo/Ph$StateListAnimator;

    invoke-virtual {p1}, Lo/Ph$StateListAnimator;->c()Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;

    move-result-object p1

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;->landingPage()Lcom/netflix/model/leafs/social/multititle/NotificationLandingPage;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/netflix/model/leafs/social/multititle/NotificationLandingPage;->template()Lcom/netflix/model/leafs/social/multititle/NotificationTemplate;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 48
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/notifications/v2/multititle/MultiTitleNotificationUIPresenterV2$fetchNotificationSummary$1;->b:Lo/PP;

    invoke-static {v0, p1}, Lo/PP;->e(Lo/PP;Lcom/netflix/model/leafs/social/multititle/NotificationTemplate;)V

    goto :goto_0

    .line 52
    :cond_0
    instance-of p1, p1, Lo/Ph$TaskDescription;

    :cond_1
    :goto_0
    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 14
    check-cast p1, Lo/Ph;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/notifications/v2/multititle/MultiTitleNotificationUIPresenterV2$fetchNotificationSummary$1;->b(Lo/Ph;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
