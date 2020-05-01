.class public final Lcom/netflix/mediaclient/ui/notifications/multititle/MultiTitleNotificationsActivity$viewModel$2;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alB;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/OM;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alB<",
        "Lo/OJ;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic d:Lo/OM;


# direct methods
.method public constructor <init>(Lo/OM;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/notifications/multititle/MultiTitleNotificationsActivity$viewModel$2;->d:Lo/OM;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final b()Lo/OJ;
    .locals 2

    .line 36
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/notifications/multititle/MultiTitleNotificationsActivity$viewModel$2;->d:Lo/OM;

    check-cast v0, Lo/Serializable;

    invoke-static {v0}, Lo/Exception;->e(Lo/Serializable;)Lo/Deprecated;

    move-result-object v0

    const-class v1, Lo/OJ;

    invoke-virtual {v0, v1}, Lo/Deprecated;->b(Ljava/lang/Class;)Lo/Enum;

    move-result-object v0

    check-cast v0, Lo/OJ;

    return-object v0
.end method

.method public synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/notifications/multititle/MultiTitleNotificationsActivity$viewModel$2;->b()Lo/OJ;

    move-result-object v0

    return-object v0
.end method
