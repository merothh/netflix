.class public final Lcom/netflix/mediaclient/ui/lomo/CwView_Ab23560$update$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alN;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Lh;->c(Lo/Az;Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alN<",
        "Landroid/widget/ImageView;",
        "Lo/Az;",
        "Lo/akj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic e:Lo/Lh;


# direct methods
.method public constructor <init>(Lo/Lh;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/lomo/CwView_Ab23560$update$1;->e:Lo/Lh;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final e(Landroid/widget/ImageView;Lo/Az;)Lo/akj;
    .locals 4

    const-string v0, "view"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cwVideo"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    sget-object v0, Lo/amj;->c:Lo/amj;

    .line 73
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/CwView_Ab23560$update$1;->e:Lo/Lh;

    invoke-virtual {v0}, Lo/Lh;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->r:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "resources.getString(R.st\u2026lity_more_cw_options_for)"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 74
    invoke-interface {p2}, Lo/Az;->getTitle()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 72
    array-length v2, v1

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "java.lang.String.format(format, *args)"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 77
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/CwView_Ab23560$update$1;->e:Lo/Lh;

    invoke-static {v0}, Lo/Lh;->b(Lo/Lh;)Lo/LH;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast p1, Landroid/view/View;

    check-cast p2, Lo/AR;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/CwView_Ab23560$update$1;->e:Lo/Lh;

    iget-object v1, v1, Lo/Lh;->j:Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    invoke-virtual {v0, p1, p2, v1}, Lo/LH;->b(Landroid/view/View;Lo/AR;Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 25
    check-cast p1, Landroid/widget/ImageView;

    check-cast p2, Lo/Az;

    invoke-virtual {p0, p1, p2}, Lcom/netflix/mediaclient/ui/lomo/CwView_Ab23560$update$1;->e(Landroid/widget/ImageView;Lo/Az;)Lo/akj;

    move-result-object p1

    return-object p1
.end method
