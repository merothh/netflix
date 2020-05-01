.class public final Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionViewModel$planPrices$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alA;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/InputChannel;->z()Ljava/util/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alA<",
        "Lo/GhostView;",
        "Lkotlin/Pair<",
        "+",
        "Ljava/lang/String;",
        "+",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# static fields
.field public static final b:Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionViewModel$planPrices$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionViewModel$planPrices$1;

    invoke-direct {v0}, Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionViewModel$planPrices$1;-><init>()V

    sput-object v0, Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionViewModel$planPrices$1;->b:Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionViewModel$planPrices$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final b(Lo/GhostView;)Lkotlin/Pair;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/GhostView;",
            ")",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 181
    invoke-virtual {p1}, Lo/GhostView;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lo/GhostView;->b()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionViewModel$planPrices$1$1;->c:Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionViewModel$planPrices$1$1;

    check-cast v1, Lo/alN;

    invoke-static {v0, p1, v1}, Lo/NfcA;->c(Ljava/lang/Object;Ljava/lang/Object;Lo/alN;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/Pair;

    return-object p1
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 23
    check-cast p1, Lo/GhostView;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionViewModel$planPrices$1;->b(Lo/GhostView;)Lkotlin/Pair;

    move-result-object p1

    return-object p1
.end method
