.class public final Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveTemplateChoicePoint$loadTemplateStandardChoice$$inlined$let$lambda$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alO;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Vm;->a(ILcom/netflix/model/leafs/originals/interactive/UiDefinition$Layout$Choice;Lcom/netflix/model/leafs/originals/interactive/Choice;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alO<",
        "Lo/ImageSwitcher;",
        "Lcom/netflix/model/leafs/originals/interactive/template/SimpleElement;",
        "Ljava/lang/String;",
        "Lo/akj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lo/Vm;

.field final synthetic c:Lcom/netflix/model/leafs/originals/interactive/Choice;

.field final synthetic e:Lo/Vn;


# direct methods
.method public constructor <init>(Lo/Vm;Lo/Vn;Lcom/netflix/model/leafs/originals/interactive/Choice;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveTemplateChoicePoint$loadTemplateStandardChoice$$inlined$let$lambda$1;->a:Lo/Vm;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveTemplateChoicePoint$loadTemplateStandardChoice$$inlined$let$lambda$1;->e:Lo/Vn;

    iput-object p3, p0, Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveTemplateChoicePoint$loadTemplateStandardChoice$$inlined$let$lambda$1;->c:Lcom/netflix/model/leafs/originals/interactive/Choice;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final c(Lo/ImageSwitcher;Lcom/netflix/model/leafs/originals/interactive/template/SimpleElement;Ljava/lang/String;)V
    .locals 7

    const-string v0, "v"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "labelLayoutElement"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "text"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 537
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveTemplateChoicePoint$loadTemplateStandardChoice$$inlined$let$lambda$1;->a:Lo/Vm;

    move-object v2, p1

    check-cast v2, Landroid/view/View;

    move-object v3, p2

    check-cast v3, Lcom/netflix/model/leafs/originals/interactive/template/Element;

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lo/Ve;->setupElement$default(Lo/Ve;Landroid/view/View;Lcom/netflix/model/leafs/originals/interactive/template/Element;Ljava/lang/String;ILjava/lang/Object;)V

    .line 538
    check-cast p3, Ljava/lang/CharSequence;

    invoke-virtual {p1, p3}, Lo/ImageSwitcher;->setText(Ljava/lang/CharSequence;)V

    .line 539
    iget-object p2, p0, Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveTemplateChoicePoint$loadTemplateStandardChoice$$inlined$let$lambda$1;->a:Lo/Vm;

    invoke-virtual {p2}, Lo/Vm;->j()Lo/UX;

    move-result-object p2

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Lo/UX;->b(Landroid/widget/TextView;)V

    .line 540
    sget-object p1, Lo/Vf;->h:Lo/Vf$Activity;

    check-cast p1, Lo/MessagePdu;

    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 32
    check-cast p1, Lo/ImageSwitcher;

    check-cast p2, Lcom/netflix/model/leafs/originals/interactive/template/SimpleElement;

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3}, Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveTemplateChoicePoint$loadTemplateStandardChoice$$inlined$let$lambda$1;->c(Lo/ImageSwitcher;Lcom/netflix/model/leafs/originals/interactive/template/SimpleElement;Ljava/lang/String;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
