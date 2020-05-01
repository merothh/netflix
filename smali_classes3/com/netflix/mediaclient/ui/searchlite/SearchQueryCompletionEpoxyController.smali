.class public Lcom/netflix/mediaclient/ui/searchlite/SearchQueryCompletionEpoxyController;
.super Lcom/airbnb/epoxy/AsyncEpoxyController;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/mediaclient/ui/searchlite/SearchQueryCompletionEpoxyController$Activity;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/netflix/mediaclient/ui/searchlite/SearchQueryCompletionEpoxyController$Activity;


# instance fields
.field private final onQuerySuggestionItemClicked:Lo/alO;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/alO<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Lo/akj;",
            ">;"
        }
    .end annotation
.end field

.field private final onTapToCompleteSearchQueryClicked:Lo/alO;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/alO<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Lo/akj;",
            ">;"
        }
    .end annotation
.end field

.field private query:Ljava/lang/String;

.field private results:Lo/Bs;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/netflix/mediaclient/ui/searchlite/SearchQueryCompletionEpoxyController$Activity;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/ui/searchlite/SearchQueryCompletionEpoxyController$Activity;-><init>(Lo/amc;)V

    sput-object v0, Lcom/netflix/mediaclient/ui/searchlite/SearchQueryCompletionEpoxyController;->Companion:Lcom/netflix/mediaclient/ui/searchlite/SearchQueryCompletionEpoxyController$Activity;

    return-void
.end method

.method public constructor <init>(Lo/alO;Lo/alO;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/alO<",
            "-",
            "Ljava/lang/String;",
            "-",
            "Ljava/lang/String;",
            "-",
            "Ljava/lang/Integer;",
            "Lo/akj;",
            ">;",
            "Lo/alO<",
            "-",
            "Ljava/lang/String;",
            "-",
            "Ljava/lang/String;",
            "-",
            "Ljava/lang/Integer;",
            "Lo/akj;",
            ">;)V"
        }
    .end annotation

    .line 13
    invoke-direct {p0}, Lcom/airbnb/epoxy/AsyncEpoxyController;-><init>()V

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/searchlite/SearchQueryCompletionEpoxyController;->onQuerySuggestionItemClicked:Lo/alO;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/searchlite/SearchQueryCompletionEpoxyController;->onTapToCompleteSearchQueryClicked:Lo/alO;

    return-void
.end method

.method public static final synthetic access$getOnQuerySuggestionItemClicked$p(Lcom/netflix/mediaclient/ui/searchlite/SearchQueryCompletionEpoxyController;)Lo/alO;
    .locals 0

    .line 10
    iget-object p0, p0, Lcom/netflix/mediaclient/ui/searchlite/SearchQueryCompletionEpoxyController;->onQuerySuggestionItemClicked:Lo/alO;

    return-object p0
.end method

.method public static final synthetic access$getOnTapToCompleteSearchQueryClicked$p(Lcom/netflix/mediaclient/ui/searchlite/SearchQueryCompletionEpoxyController;)Lo/alO;
    .locals 0

    .line 10
    iget-object p0, p0, Lcom/netflix/mediaclient/ui/searchlite/SearchQueryCompletionEpoxyController;->onTapToCompleteSearchQueryClicked:Lo/alO;

    return-object p0
.end method

.method public static final synthetic access$getQuery$p(Lcom/netflix/mediaclient/ui/searchlite/SearchQueryCompletionEpoxyController;)Ljava/lang/String;
    .locals 0

    .line 10
    iget-object p0, p0, Lcom/netflix/mediaclient/ui/searchlite/SearchQueryCompletionEpoxyController;->query:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$setQuery$p(Lcom/netflix/mediaclient/ui/searchlite/SearchQueryCompletionEpoxyController;Ljava/lang/String;)V
    .locals 0

    .line 10
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/searchlite/SearchQueryCompletionEpoxyController;->query:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public buildModels()V
    .locals 3

    .line 28
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/searchlite/SearchQueryCompletionEpoxyController;->results:Lo/Bs;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/searchlite/SearchQueryCompletionEpoxyController;->query:Ljava/lang/String;

    new-instance v2, Lcom/netflix/mediaclient/ui/searchlite/SearchQueryCompletionEpoxyController$buildModels$1;

    invoke-direct {v2, p0}, Lcom/netflix/mediaclient/ui/searchlite/SearchQueryCompletionEpoxyController$buildModels$1;-><init>(Lcom/netflix/mediaclient/ui/searchlite/SearchQueryCompletionEpoxyController;)V

    check-cast v2, Lo/alN;

    invoke-static {v0, v1, v2}, Lo/NfcA;->c(Ljava/lang/Object;Ljava/lang/Object;Lo/alN;)Ljava/lang/Object;

    return-void
.end method

.method public final setData(Lo/Bs;Ljava/lang/String;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/searchlite/SearchQueryCompletionEpoxyController;->results:Lo/Bs;

    .line 23
    iput-object p2, p0, Lcom/netflix/mediaclient/ui/searchlite/SearchQueryCompletionEpoxyController;->query:Ljava/lang/String;

    .line 24
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/searchlite/SearchQueryCompletionEpoxyController;->requestModelBuild()V

    return-void
.end method
