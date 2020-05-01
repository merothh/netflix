.class public final Lcom/netflix/mediaclient/ui/notifications/multititle/MultiTitleNotificationViewModel$updateRows$4;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alB;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/OJ;->c(Ljava/util/List;Ljava/util/List;Lo/Am;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alB<",
        "Lo/akj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lo/OJ;

.field final synthetic e:Ljava/util/List;


# direct methods
.method public constructor <init>(Lo/OJ;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/notifications/multititle/MultiTitleNotificationViewModel$updateRows$4;->a:Lo/OJ;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/notifications/multititle/MultiTitleNotificationViewModel$updateRows$4;->e:Ljava/util/List;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final e()V
    .locals 2

    .line 189
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/notifications/multititle/MultiTitleNotificationViewModel$updateRows$4;->a:Lo/OJ;

    invoke-virtual {v0}, Lo/OJ;->b()Lo/Cloneable;

    move-result-object v0

    invoke-virtual {v0}, Lo/Cloneable;->d()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lo/amk;->a(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/notifications/multititle/MultiTitleNotificationViewModel$updateRows$4;->e:Ljava/util/List;

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 190
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/notifications/multititle/MultiTitleNotificationViewModel$updateRows$4;->a:Lo/OJ;

    invoke-virtual {v0}, Lo/OJ;->b()Lo/Cloneable;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/notifications/multititle/MultiTitleNotificationViewModel$updateRows$4;->a:Lo/OJ;

    invoke-virtual {v1}, Lo/OJ;->b()Lo/Cloneable;

    move-result-object v1

    invoke-virtual {v1}, Lo/Cloneable;->d()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/Cloneable;->b(Ljava/lang/Object;)V

    return-void

    .line 189
    :cond_0
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type kotlin.collections.MutableList<com.netflix.mediaclient.ui.notifications.multititle.MultiTitleNotificationsRow>"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/notifications/multititle/MultiTitleNotificationViewModel$updateRows$4;->e()V

    sget-object v0, Lo/akj;->a:Lo/akj;

    return-object v0
.end method
