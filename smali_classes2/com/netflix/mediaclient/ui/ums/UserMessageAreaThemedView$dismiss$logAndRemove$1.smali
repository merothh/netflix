.class public final Lcom/netflix/mediaclient/ui/ums/UserMessageAreaThemedView$dismiss$logAndRemove$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alB;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/abU;->c(Z)V
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
.field final synthetic d:Lo/abU;


# direct methods
.method public constructor <init>(Lo/abU;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/ums/UserMessageAreaThemedView$dismiss$logAndRemove$1;->d:Lo/abU;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final c()V
    .locals 2

    .line 137
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/ums/UserMessageAreaThemedView$dismiss$logAndRemove$1;->d:Lo/abU;

    invoke-virtual {v0}, Lo/abU;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/ums/UserMessageAreaThemedView$dismiss$logAndRemove$1;->d:Lo/abU;

    check-cast v1, Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 138
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/ums/UserMessageAreaThemedView$dismiss$logAndRemove$1;->d:Lo/abU;

    invoke-virtual {v0}, Lo/abU;->n()V

    return-void
.end method

.method public synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/ums/UserMessageAreaThemedView$dismiss$logAndRemove$1;->c()V

    sget-object v0, Lo/akj;->a:Lo/akj;

    return-object v0
.end method
