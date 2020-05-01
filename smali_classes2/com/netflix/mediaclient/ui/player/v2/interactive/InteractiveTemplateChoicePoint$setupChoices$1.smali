.class public final Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveTemplateChoicePoint$setupChoices$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alN;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Vm;->B()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alN<",
        "Lcom/netflix/model/leafs/originals/interactive/Choice;",
        "Ljava/util/List<",
        "Lcom/netflix/model/leafs/originals/interactive/UiDefinition$Layout$Choice;",
        ">;",
        "Lo/akj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lo/Vm;

.field final synthetic b:I


# direct methods
.method public constructor <init>(Lo/Vm;I)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveTemplateChoicePoint$setupChoices$1;->a:Lo/Vm;

    iput p2, p0, Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveTemplateChoicePoint$setupChoices$1;->b:I

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/netflix/model/leafs/originals/interactive/Choice;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/model/leafs/originals/interactive/Choice;",
            "Ljava/util/List<",
            "Lcom/netflix/model/leafs/originals/interactive/UiDefinition$Layout$Choice;",
            ">;)V"
        }
    .end annotation

    const-string v0, "choiceDetail"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "choicesLayout"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 386
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveTemplateChoicePoint$setupChoices$1;->b:I

    if-le v0, v1, :cond_4

    .line 387
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/netflix/model/leafs/originals/interactive/UiDefinition$Layout$Choice;

    .line 388
    invoke-virtual {p2}, Lcom/netflix/model/leafs/originals/interactive/UiDefinition$Layout$Choice;->type()Ljava/lang/String;

    move-result-object v0

    const-string v1, "choiceLayout"

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0xe809394

    if-eq v2, v3, :cond_2

    const v3, 0x18d04fc9

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    const-string v2, "GenericButton"

    .line 389
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_2
    const-string v2, "creditsButton"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 391
    :goto_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveTemplateChoicePoint$setupChoices$1;->a:Lo/Vm;

    iget v2, p0, Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveTemplateChoicePoint$setupChoices$1;->b:I

    invoke-static {p2, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v2, p1, p2}, Lo/Vm;->b(Lo/Vm;ILcom/netflix/model/leafs/originals/interactive/Choice;Lcom/netflix/model/leafs/originals/interactive/UiDefinition$Layout$Choice;)V

    goto :goto_2

    .line 395
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveTemplateChoicePoint$setupChoices$1;->a:Lo/Vm;

    .line 396
    iget v2, p0, Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveTemplateChoicePoint$setupChoices$1;->b:I

    .line 397
    invoke-static {p2, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 395
    invoke-static {v0, v2, p2, p1}, Lo/Vm;->c(Lo/Vm;ILcom/netflix/model/leafs/originals/interactive/UiDefinition$Layout$Choice;Lcom/netflix/model/leafs/originals/interactive/Choice;)V

    :cond_4
    :goto_2
    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 32
    check-cast p1, Lcom/netflix/model/leafs/originals/interactive/Choice;

    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveTemplateChoicePoint$setupChoices$1;->a(Lcom/netflix/model/leafs/originals/interactive/Choice;Ljava/util/List;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
