.class public final Lcom/netflix/mediaclient/ui/extras/ExtrasFeedActivity$extrasNotificationsViewModel$2;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alB;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/GH;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alB<",
        "Lo/GN;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic c:Lo/GH;


# direct methods
.method public constructor <init>(Lo/GH;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedActivity$extrasNotificationsViewModel$2;->c:Lo/GH;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Lo/GN;
    .locals 2

    .line 63
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedActivity$extrasNotificationsViewModel$2;->c:Lo/GH;

    check-cast v0, Lo/Serializable;

    invoke-static {v0}, Lo/Exception;->e(Lo/Serializable;)Lo/Deprecated;

    move-result-object v0

    const-class v1, Lo/GN;

    invoke-virtual {v0, v1}, Lo/Deprecated;->b(Ljava/lang/Class;)Lo/Enum;

    move-result-object v0

    check-cast v0, Lo/GN;

    return-object v0
.end method

.method public synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 29
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedActivity$extrasNotificationsViewModel$2;->a()Lo/GN;

    move-result-object v0

    return-object v0
.end method
