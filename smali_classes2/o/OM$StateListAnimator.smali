.class public final Lo/OM$StateListAnimator;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/zT;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/OM;->createManagerStatusListener()Lo/zT;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/OM;

.field final synthetic b:Lo/OM;


# direct methods
.method constructor <init>(Lo/OM;Lo/OM;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/OM;",
            ")V"
        }
    .end annotation

    .line 89
    iput-object p1, p0, Lo/OM$StateListAnimator;->a:Lo/OM;

    iput-object p2, p0, Lo/OM$StateListAnimator;->b:Lo/OM;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onManagerReady(Lo/Am;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    const-string v0, "svcManager"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "res"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    iget-object p2, p0, Lo/OM$StateListAnimator;->a:Lo/OM;

    check-cast p2, Landroid/content/Context;

    invoke-static {p2}, Lo/adk;->b(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 92
    invoke-static {}, Lo/ady;->o()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 93
    iget-object p2, p0, Lo/OM$StateListAnimator;->a:Lo/OM;

    invoke-virtual {p2}, Lo/OM;->j()Lo/OJ;

    move-result-object p2

    iget-object v0, p0, Lo/OM$StateListAnimator;->a:Lo/OM;

    invoke-virtual {v0}, Lo/OM;->g()Lcom/netflix/model/leafs/social/multititle/NotificationLandingPage;

    move-result-object v0

    iget-object v1, p0, Lo/OM$StateListAnimator;->a:Lo/OM;

    invoke-virtual {v1}, Lo/OM;->k()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {p2, v0, p1, v1}, Lo/OJ;->e(Lcom/netflix/model/leafs/social/multititle/NotificationLandingPage;Lo/Am;Ljava/util/HashMap;)V

    goto :goto_0

    .line 95
    :cond_0
    iget-object p2, p0, Lo/OM$StateListAnimator;->a:Lo/OM;

    invoke-virtual {p2}, Lo/OM;->j()Lo/OJ;

    move-result-object p2

    iget-object v0, p0, Lo/OM$StateListAnimator;->a:Lo/OM;

    invoke-virtual {v0}, Lo/OM;->g()Lcom/netflix/model/leafs/social/multititle/NotificationLandingPage;

    move-result-object v0

    invoke-virtual {p2, v0, p1}, Lo/OJ;->d(Lcom/netflix/model/leafs/social/multititle/NotificationLandingPage;Lo/Am;)V

    .line 98
    :goto_0
    iget-object p1, p0, Lo/OM$StateListAnimator;->a:Lo/OM;

    invoke-virtual {p1}, Lo/OM;->j()Lo/OJ;

    move-result-object p1

    invoke-virtual {p1}, Lo/OJ;->b()Lo/Cloneable;

    move-result-object p1

    iget-object p2, p0, Lo/OM$StateListAnimator;->b:Lo/OM;

    check-cast p2, Lo/UnicodeScript;

    new-instance v0, Lo/OM$StateListAnimator$Activity;

    invoke-direct {v0, p0}, Lo/OM$StateListAnimator$Activity;-><init>(Lo/OM$StateListAnimator;)V

    check-cast v0, Lo/ClassFormatError;

    invoke-virtual {p1, p2, v0}, Lo/Cloneable;->a(Lo/UnicodeScript;Lo/ClassFormatError;)V

    :cond_1
    return-void
.end method

.method public onManagerUnavailable(Lo/Am;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    const-string v0, "res"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lo/OM$StateListAnimator;->a:Lo/OM;

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lo/adk;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 108
    iget-object v0, p0, Lo/OM$StateListAnimator;->a:Lo/OM;

    invoke-virtual {v0}, Lo/OM;->h()Landroidx/fragment/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lo/OK;

    if-eqz v0, :cond_1

    .line 109
    iget-object v0, p0, Lo/OM$StateListAnimator;->a:Lo/OM;

    invoke-virtual {v0}, Lo/OM;->h()Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Lo/OK;

    invoke-virtual {v0, p1, p2}, Lo/OK;->onManagerUnavailable(Lo/Am;Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0

    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type com.netflix.mediaclient.ui.notifications.multititle.MultiTitleNotificationsFrag"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method
