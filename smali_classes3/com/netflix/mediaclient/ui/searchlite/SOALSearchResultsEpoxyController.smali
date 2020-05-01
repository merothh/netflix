.class public Lcom/netflix/mediaclient/ui/searchlite/SOALSearchResultsEpoxyController;
.super Lcom/airbnb/epoxy/AsyncEpoxyController;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/mediaclient/ui/searchlite/SOALSearchResultsEpoxyController$ActionBar;,
        Lcom/netflix/mediaclient/ui/searchlite/SOALSearchResultsEpoxyController$Application;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/netflix/mediaclient/ui/searchlite/SOALSearchResultsEpoxyController$Application;


# instance fields
.field private imgHeight:Ljava/lang/Integer;

.field private imgWidth:Ljava/lang/Integer;

.field private final interceptor:Lo/OfPrimitive$Application;

.field private final onSearchViewLoaded:Lo/alN;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/alN<",
            "Ljava/lang/Integer;",
            "Lcom/netflix/android/imageloader/api/ImageDataSource;",
            "Lo/akj;",
            ">;"
        }
    .end annotation
.end field

.field private prevResults:Lo/Bs;

.field private query:Ljava/lang/String;

.field private results:Lo/Bs;

.field private final searchCLHelper:Lo/aaw;

.field private final suggestedTitleResultsLabel:Ljava/lang/String;

.field private final titleResultsLabel:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/netflix/mediaclient/ui/searchlite/SOALSearchResultsEpoxyController$Application;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/ui/searchlite/SOALSearchResultsEpoxyController$Application;-><init>(Lo/amc;)V

    sput-object v0, Lcom/netflix/mediaclient/ui/searchlite/SOALSearchResultsEpoxyController;->Companion:Lcom/netflix/mediaclient/ui/searchlite/SOALSearchResultsEpoxyController$Application;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lo/alN;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lo/alN<",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Lcom/netflix/android/imageloader/api/ImageDataSource;",
            "Lo/akj;",
            ">;)V"
        }
    .end annotation

    const-string v0, "titleResultsLabel"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "suggestedTitleResultsLabel"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-direct {p0}, Lcom/airbnb/epoxy/AsyncEpoxyController;-><init>()V

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/searchlite/SOALSearchResultsEpoxyController;->titleResultsLabel:Ljava/lang/String;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/searchlite/SOALSearchResultsEpoxyController;->suggestedTitleResultsLabel:Ljava/lang/String;

    iput-object p3, p0, Lcom/netflix/mediaclient/ui/searchlite/SOALSearchResultsEpoxyController;->onSearchViewLoaded:Lo/alN;

    .line 41
    new-instance p1, Lo/aaw;

    invoke-direct {p1}, Lo/aaw;-><init>()V

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/searchlite/SOALSearchResultsEpoxyController;->searchCLHelper:Lo/aaw;

    .line 45
    new-instance p1, Lcom/netflix/mediaclient/ui/searchlite/SOALSearchResultsEpoxyController$StateListAnimator;

    invoke-direct {p1, p0}, Lcom/netflix/mediaclient/ui/searchlite/SOALSearchResultsEpoxyController$StateListAnimator;-><init>(Lcom/netflix/mediaclient/ui/searchlite/SOALSearchResultsEpoxyController;)V

    check-cast p1, Lo/OfPrimitive$Application;

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/searchlite/SOALSearchResultsEpoxyController;->interceptor:Lo/OfPrimitive$Application;

    .line 50
    new-instance p1, Lcom/netflix/mediaclient/ui/searchlite/SOALSearchResultsEpoxyController$4;

    invoke-direct {p1, p0}, Lcom/netflix/mediaclient/ui/searchlite/SOALSearchResultsEpoxyController$4;-><init>(Lcom/netflix/mediaclient/ui/searchlite/SOALSearchResultsEpoxyController;)V

    check-cast p1, Lo/BadPaddingException;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/searchlite/SOALSearchResultsEpoxyController;->addModelBuildListener(Lo/BadPaddingException;)V

    return-void
.end method

.method public static final synthetic access$getInterceptor$p(Lcom/netflix/mediaclient/ui/searchlite/SOALSearchResultsEpoxyController;)Lo/OfPrimitive$Application;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/netflix/mediaclient/ui/searchlite/SOALSearchResultsEpoxyController;->interceptor:Lo/OfPrimitive$Application;

    return-object p0
.end method

.method public static final synthetic access$getOnSearchViewLoaded$p(Lcom/netflix/mediaclient/ui/searchlite/SOALSearchResultsEpoxyController;)Lo/alN;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/netflix/mediaclient/ui/searchlite/SOALSearchResultsEpoxyController;->onSearchViewLoaded:Lo/alN;

    return-object p0
.end method

.method public static final synthetic access$getSearchCLHelper$p(Lcom/netflix/mediaclient/ui/searchlite/SOALSearchResultsEpoxyController;)Lo/aaw;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/netflix/mediaclient/ui/searchlite/SOALSearchResultsEpoxyController;->searchCLHelper:Lo/aaw;

    return-object p0
.end method

.method public static final synthetic access$getSuggestedTitleResultsLabel$p(Lcom/netflix/mediaclient/ui/searchlite/SOALSearchResultsEpoxyController;)Ljava/lang/String;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/netflix/mediaclient/ui/searchlite/SOALSearchResultsEpoxyController;->suggestedTitleResultsLabel:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getTitleResultsLabel$p(Lcom/netflix/mediaclient/ui/searchlite/SOALSearchResultsEpoxyController;)Ljava/lang/String;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/netflix/mediaclient/ui/searchlite/SOALSearchResultsEpoxyController;->titleResultsLabel:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$handleLoggingUpdatesForUnchangedItems(Lcom/netflix/mediaclient/ui/searchlite/SOALSearchResultsEpoxyController;Ljava/util/List;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/searchlite/SOALSearchResultsEpoxyController;->handleLoggingUpdatesForUnchangedItems(Ljava/util/List;)V

    return-void
.end method

.method private final handleLoggingUpdatesForUnchangedItems(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lo/BiConsumer<",
            "*>;>;)V"
        }
    .end annotation

    .line 72
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/searchlite/SOALSearchResultsEpoxyController;->prevResults:Lo/Bs;

    if-eqz v0, :cond_4

    .line 73
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/searchlite/SOALSearchResultsEpoxyController;->results:Lo/Bs;

    if-eqz v1, :cond_4

    .line 75
    invoke-interface {v0}, Lo/Bs;->getResultsVideos()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v2, "prevResults.resultsVideos ?: return"

    invoke-static {v0, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    invoke-interface {v1}, Lo/Bs;->getResultsVideos()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_4

    const-string v2, "currResults.resultsVideos ?: return"

    invoke-static {v1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    check-cast v2, Ljava/util/Set;

    const/4 v3, 0x5

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-gt v5, v3, :cond_1

    .line 82
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_0

    .line 83
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    const-string v7, "prevResultsVideos[i]"

    invoke-static {v6, v7}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Lo/Bx;

    invoke-interface {v6}, Lo/Bx;->getId()Ljava/lang/String;

    move-result-object v6

    const-string v7, "prevResultsVideos[i].id"

    invoke-static {v6, v7}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    :goto_1
    if-ge v4, v0, :cond_4

    .line 92
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v4, v3, :cond_3

    .line 93
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/Bx;

    const-string v5, "searchVideo"

    .line 94
    invoke-static {v3, v5}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v3}, Lo/Bx;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    add-int/lit8 v3, v4, 0x1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_3

    .line 95
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/BiConsumer;

    .line 96
    instance-of v5, v3, Lo/aaN;

    if-eqz v5, :cond_3

    .line 97
    sget-object v5, Lcom/netflix/mediaclient/ui/searchlite/SOALSearchResultsEpoxyController;->Companion:Lcom/netflix/mediaclient/ui/searchlite/SOALSearchResultsEpoxyController$Application;

    check-cast v5, Lo/MessagePdu;

    .line 98
    iget-object v5, p0, Lcom/netflix/mediaclient/ui/searchlite/SOALSearchResultsEpoxyController;->onSearchViewLoaded:Lo/alN;

    if-eqz v5, :cond_2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    sget-object v7, Lcom/netflix/android/imageloader/api/ImageDataSource;->a:Lcom/netflix/android/imageloader/api/ImageDataSource;

    invoke-interface {v5, v6, v7}, Lo/alN;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lo/akj;

    .line 99
    :cond_2
    iget-object v5, p0, Lcom/netflix/mediaclient/ui/searchlite/SOALSearchResultsEpoxyController;->searchCLHelper:Lo/aaw;

    check-cast v3, Lo/aaN;

    const/high16 v6, 0x42c80000    # 100.0f

    invoke-virtual {v5, v3, v6}, Lo/aaw;->d(Lo/aaN;F)V

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method


# virtual methods
.method public buildModels()V
    .locals 5

    .line 108
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/searchlite/SOALSearchResultsEpoxyController;->interceptor:Lo/OfPrimitive$Application;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/searchlite/SOALSearchResultsEpoxyController;->addInterceptor(Lo/OfPrimitive$Application;)V

    .line 110
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/searchlite/SOALSearchResultsEpoxyController;->results:Lo/Bs;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/searchlite/SOALSearchResultsEpoxyController;->query:Ljava/lang/String;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/searchlite/SOALSearchResultsEpoxyController;->imgWidth:Ljava/lang/Integer;

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/searchlite/SOALSearchResultsEpoxyController;->imgHeight:Ljava/lang/Integer;

    new-instance v4, Lcom/netflix/mediaclient/ui/searchlite/SOALSearchResultsEpoxyController$buildModels$1;

    invoke-direct {v4, p0}, Lcom/netflix/mediaclient/ui/searchlite/SOALSearchResultsEpoxyController$buildModels$1;-><init>(Lcom/netflix/mediaclient/ui/searchlite/SOALSearchResultsEpoxyController;)V

    check-cast v4, Lo/alS;

    invoke-static {v0, v1, v2, v3, v4}, Lo/NfcA;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lo/alS;)Ljava/lang/Object;

    return-void
.end method

.method public final cleanupLogging()V
    .locals 1

    .line 212
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/searchlite/SOALSearchResultsEpoxyController;->searchCLHelper:Lo/aaw;

    invoke-virtual {v0}, Lo/aaw;->d()V

    return-void
.end method

.method public final onHiddenChanged(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 206
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/searchlite/SOALSearchResultsEpoxyController;->searchCLHelper:Lo/aaw;

    invoke-virtual {p1}, Lo/aaw;->d()V

    goto :goto_0

    .line 208
    :cond_0
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/searchlite/SOALSearchResultsEpoxyController;->searchCLHelper:Lo/aaw;

    invoke-virtual {p1}, Lo/aaw;->b()V

    :goto_0
    return-void
.end method

.method public final setData(Lo/Bs;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/searchlite/SOALSearchResultsEpoxyController;->results:Lo/Bs;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/searchlite/SOALSearchResultsEpoxyController;->prevResults:Lo/Bs;

    .line 58
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/searchlite/SOALSearchResultsEpoxyController;->results:Lo/Bs;

    .line 59
    iput-object p2, p0, Lcom/netflix/mediaclient/ui/searchlite/SOALSearchResultsEpoxyController;->query:Ljava/lang/String;

    .line 60
    iput-object p3, p0, Lcom/netflix/mediaclient/ui/searchlite/SOALSearchResultsEpoxyController;->imgWidth:Ljava/lang/Integer;

    .line 61
    iput-object p4, p0, Lcom/netflix/mediaclient/ui/searchlite/SOALSearchResultsEpoxyController;->imgHeight:Ljava/lang/Integer;

    .line 62
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/searchlite/SOALSearchResultsEpoxyController;->requestModelBuild()V

    return-void
.end method
