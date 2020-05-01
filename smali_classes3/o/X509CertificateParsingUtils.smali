.class public Lo/X509CertificateParsingUtils;
.super Lo/SyncConstValue;
.source ""


# instance fields
.field private final a:Lo/TextInputTimePickerView;

.field private final c:Lo/TextInputTimePickerView;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 9

    const-string v0, "FetchNewSearchQueryCompletionResultsTask"

    .line 36
    invoke-direct {p0, v0}, Lo/SyncConstValue;-><init>(Ljava/lang/String;)V

    .line 38
    invoke-static {p1}, Lo/ia;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x4

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "newSearch"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v4, 0x1

    aput-object p1, v1, v4

    const-string v5, "queryCompletions"

    const/4 v6, 0x2

    aput-object v5, v1, v6

    const-string v7, "summary"

    const/4 v8, 0x3

    aput-object v7, v1, v8

    .line 39
    invoke-static {v1}, Lo/SearchIndexableResource;->b([Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object v1

    iput-object v1, p0, Lo/X509CertificateParsingUtils;->c:Lo/TextInputTimePickerView;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v2, v1, v3

    aput-object p1, v1, v4

    aput-object v5, v1, v6

    const/16 p1, 0x13

    .line 40
    invoke-static {p1}, Lo/SearchIndexableResource;->d(I)Ljava/util/Map;

    move-result-object p1

    aput-object p1, v1, v8

    aput-object v7, v1, v0

    invoke-static {v1}, Lo/SearchIndexableResource;->b([Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object p1

    iput-object p1, p0, Lo/X509CertificateParsingUtils;->a:Lo/TextInputTimePickerView;

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/TextInputTimePickerView;",
            ">;)V"
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lo/X509CertificateParsingUtils;->c:Lo/TextInputTimePickerView;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    iget-object v0, p0, Lo/X509CertificateParsingUtils;->a:Lo/TextInputTimePickerView;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FetchNewSearchQueryCompletionResultsTask"

    invoke-static {v0, p1}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public a(Lo/ConfirmationAlreadyPresentingException;Lo/ci;Lo/TextClock;)V
    .locals 6

    .line 52
    new-instance v0, Lcom/netflix/model/leafs/SearchResults$Builder;

    invoke-direct {v0}, Lcom/netflix/model/leafs/SearchResults$Builder;-><init>()V

    const-string v1, "FetchNewSearchQueryCompletionResultsTask"

    const-string v2, "fetchResultsAndCallbackForSuccess"

    .line 53
    invoke-static {v1, v2}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    iget-object v2, p1, Lo/ConfirmationAlreadyPresentingException;->a:Lo/FontRequest;

    iget-object v3, p0, Lo/X509CertificateParsingUtils;->c:Lo/TextInputTimePickerView;

    invoke-virtual {v2, v3}, Lo/FontRequest;->b(Lo/TextInputTimePickerView;)Lo/agi;

    move-result-object v2

    check-cast v2, Lcom/netflix/model/leafs/SearchTrackableListSummary;

    .line 55
    invoke-virtual {v0, v2}, Lcom/netflix/model/leafs/SearchResults$Builder;->setQueryCompletionListSummary(Lo/Bz;)V

    .line 56
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "qcsummary = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/netflix/model/leafs/SearchTrackableListSummary;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const-string v2, "null"

    :goto_0
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    iget-object p1, p1, Lo/ConfirmationAlreadyPresentingException;->a:Lo/FontRequest;

    iget-object v2, p0, Lo/X509CertificateParsingUtils;->a:Lo/TextInputTimePickerView;

    invoke-virtual {p1, v2}, Lo/FontRequest;->e(Lo/TextInputTimePickerView;)Ljava/util/List;

    move-result-object p1

    .line 58
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "!queryCompletions.isEmpty()"

    .line 59
    invoke-static {v1, v2}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 62
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/agj;

    .line 63
    instance-of v4, v3, Lcom/netflix/model/leafs/SearchCollectionEntity;

    if-eqz v4, :cond_1

    move-object v4, v3

    check-cast v4, Lcom/netflix/model/leafs/SearchCollectionEntity;

    invoke-interface {v4}, Lcom/netflix/model/leafs/SearchCollectionEntity;->getEntityId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 64
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    check-cast v3, Lcom/netflix/model/leafs/SearchCollectionEntity;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 68
    :cond_2
    invoke-virtual {v0, v2}, Lcom/netflix/model/leafs/SearchResults$Builder;->addQueryCompletions(Ljava/util/Collection;)V

    .line 71
    :cond_3
    invoke-virtual {v0}, Lcom/netflix/model/leafs/SearchResults$Builder;->getResults()Lcom/netflix/model/leafs/SearchResults;

    move-result-object p1

    sget-object v0, Lo/LegacyErrorStrings;->b:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-virtual {p3}, Lo/TextClock;->a()Z

    move-result p3

    xor-int/lit8 p3, p3, 0x1

    invoke-interface {p2, p1, v0, p3}, Lo/ci;->a(Lo/Bs;Lcom/netflix/mediaclient/android/app/Status;Z)V

    return-void
.end method

.method public e(Lo/ci;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 3

    .line 76
    new-instance v0, Lcom/netflix/model/leafs/SearchResults$Builder;

    invoke-direct {v0}, Lcom/netflix/model/leafs/SearchResults$Builder;-><init>()V

    const-string v1, "FetchNewSearchQueryCompletionResultsTask"

    const-string v2, "callbackForFailure"

    .line 77
    invoke-static {v1, v2}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    invoke-virtual {v0}, Lcom/netflix/model/leafs/SearchResults$Builder;->getResults()Lcom/netflix/model/leafs/SearchResults;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p1, v0, p2, v1}, Lo/ci;->a(Lo/Bs;Lcom/netflix/mediaclient/android/app/Status;Z)V

    return-void
.end method
