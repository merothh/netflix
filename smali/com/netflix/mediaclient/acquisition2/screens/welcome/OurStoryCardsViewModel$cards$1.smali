.class public final Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryCardsViewModel$cards$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alA;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/AutofillManagerInternal;-><init>(Lo/InputBinding;Lo/Helper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alA<",
        "Lcom/google/gson/internal/LinkedTreeMap<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;",
        "Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryCard;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic e:Lo/AutofillManagerInternal;


# direct methods
.method public constructor <init>(Lo/AutofillManagerInternal;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryCardsViewModel$cards$1;->e:Lo/AutofillManagerInternal;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final c(Lcom/google/gson/internal/LinkedTreeMap;)Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryCard;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/internal/LinkedTreeMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryCard;"
        }
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    check-cast p1, Ljava/util/Map;

    .line 37
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryCardsViewModel$cards$1;->e:Lo/AutofillManagerInternal;

    invoke-static {v0, p1}, Lo/AutofillManagerInternal;->e(Lo/AutofillManagerInternal;Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryCardsViewModel$cards$1;->e:Lo/AutofillManagerInternal;

    invoke-static {v0, p1}, Lo/AutofillManagerInternal;->a(Lo/AutofillManagerInternal;Ljava/util/Map;)Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryCard;

    move-result-object p1

    goto :goto_0

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryCardsViewModel$cards$1;->e:Lo/AutofillManagerInternal;

    invoke-static {v0, p1}, Lo/AutofillManagerInternal;->b(Lo/AutofillManagerInternal;Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryCardsViewModel$cards$1;->e:Lo/AutofillManagerInternal;

    invoke-static {v0}, Lo/AutofillManagerInternal;->b(Lo/AutofillManagerInternal;)Lo/Helper;

    move-result-object v1

    invoke-virtual {v1}, Lo/Helper;->b()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryCardsViewModel$cards$1;->e:Lo/AutofillManagerInternal;

    invoke-static {v2}, Lo/AutofillManagerInternal;->b(Lo/AutofillManagerInternal;)Lo/Helper;

    move-result-object v2

    invoke-virtual {v2}, Lo/Helper;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, p1, v1, v2}, Lo/AutofillManagerInternal;->a(Lo/AutofillManagerInternal;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryCard;

    move-result-object p1

    goto :goto_0

    .line 39
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryCardsViewModel$cards$1;->e:Lo/AutofillManagerInternal;

    invoke-static {v0, p1}, Lo/AutofillManagerInternal;->d(Lo/AutofillManagerInternal;Ljava/util/Map;)Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryCard;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 28
    check-cast p1, Lcom/google/gson/internal/LinkedTreeMap;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryCardsViewModel$cards$1;->c(Lcom/google/gson/internal/LinkedTreeMap;)Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryCard;

    move-result-object p1

    return-object p1
.end method
