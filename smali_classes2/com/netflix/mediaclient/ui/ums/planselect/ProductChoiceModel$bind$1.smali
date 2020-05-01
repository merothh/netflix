.class public final Lcom/netflix/mediaclient/ui/ums/planselect/ProductChoiceModel$bind$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alA;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/acw;->c(Lo/acw$Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alA<",
        "Ljava/lang/Integer;",
        "Lo/akj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lo/acw;

.field final synthetic b:Lo/acw$Activity;


# direct methods
.method public constructor <init>(Lo/acw;Lo/acw$Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/ums/planselect/ProductChoiceModel$bind$1;->a:Lo/acw;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/ums/planselect/ProductChoiceModel$bind$1;->b:Lo/acw$Activity;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Integer;)V
    .locals 5

    .line 51
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/ums/planselect/ProductChoiceModel$bind$1;->b:Lo/acw$Activity;

    invoke-virtual {v0}, Lo/acw$Activity;->g()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/ums/planselect/ProductChoiceModel$bind$1;->a:Lo/acw;

    invoke-virtual {v1}, Lo/acw;->h()Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice;->getLatestPlanID()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 52
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/ums/planselect/ProductChoiceModel$bind$1;->b:Lo/acw$Activity;

    invoke-virtual {v0}, Lo/acw$Activity;->d()Landroid/widget/RadioButton;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/ums/planselect/ProductChoiceModel$bind$1;->a:Lo/acw;

    invoke-virtual {v1}, Lo/acw;->h()Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice;->getLatestPlanID()I

    move-result v1

    if-nez p1, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v1, :cond_3

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v2, 0x0

    :goto_3
    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 26
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/ums/planselect/ProductChoiceModel$bind$1;->b(Ljava/lang/Integer;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
