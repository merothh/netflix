.class public Lo/SessionExpiredException;
.super Lo/VoicemailContract;
.source ""


# instance fields
.field private final d:Lo/TextInputTimePickerView;

.field private final e:Lo/TextInputTimePickerView;

.field private final g:Lcom/netflix/mediaclient/browse/api/task/TaskMode;

.field private final h:Lo/TextInputTimePickerView;

.field private final i:Lo/TextInputTimePickerView;

.field private final j:Lo/TextInputTimePickerView;


# direct methods
.method public constructor <init>(Lo/FontRequest;Ljava/lang/String;Lcom/netflix/mediaclient/browse/api/task/TaskMode;ZLo/ci;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/FontRequest<",
            "*>;",
            "Ljava/lang/String;",
            "Lcom/netflix/mediaclient/browse/api/task/TaskMode;",
            "Z",
            "Lo/ci;",
            ")V"
        }
    .end annotation

    const-string p4, "FetchNewSearchResults"

    .line 59
    invoke-direct {p0, p4, p1, p5}, Lo/VoicemailContract;-><init>(Ljava/lang/String;Lo/FontRequest;Lo/ci;)V

    .line 61
    iput-object p3, p0, Lo/SessionExpiredException;->g:Lcom/netflix/mediaclient/browse/api/task/TaskMode;

    .line 62
    invoke-static {p2}, Lo/ia;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x4

    new-array p3, p2, [Ljava/lang/Object;

    const-string p4, "newSearch"

    const/4 p5, 0x0

    aput-object p4, p3, p5

    const/4 v0, 0x1

    aput-object p1, p3, v0

    const-string v1, "titles"

    const/4 v2, 0x2

    aput-object v1, p3, v2

    const/4 v3, 0x3

    const-string v4, "summary"

    aput-object v4, p3, v3

    .line 64
    invoke-static {p3}, Lo/SearchIndexableResource;->b([Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object p3

    iput-object p3, p0, Lo/SessionExpiredException;->e:Lo/TextInputTimePickerView;

    new-array p3, p2, [Ljava/lang/Object;

    aput-object p4, p3, p5

    aput-object p1, p3, v0

    const-string v5, "titleSuggestions"

    aput-object v5, p3, v2

    aput-object v4, p3, v3

    .line 65
    invoke-static {p3}, Lo/SearchIndexableResource;->b([Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object p3

    iput-object p3, p0, Lo/SessionExpiredException;->d:Lo/TextInputTimePickerView;

    .line 66
    invoke-static {}, Lo/ady;->g()I

    move-result p3

    sub-int/2addr p3, v0

    const/4 v6, 0x5

    new-array v7, v6, [Ljava/lang/Object;

    aput-object p4, v7, p5

    aput-object p1, v7, v0

    aput-object v1, v7, v2

    .line 67
    invoke-static {p3}, Lo/SearchIndexableResource;->d(I)Ljava/util/Map;

    move-result-object v8

    aput-object v8, v7, v3

    aput-object v4, v7, p2

    invoke-static {v7}, Lo/SearchIndexableResource;->b([Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object v7

    iput-object v7, p0, Lo/SessionExpiredException;->h:Lo/TextInputTimePickerView;

    const/4 v7, 0x6

    new-array v7, v7, [Ljava/lang/Object;

    aput-object p4, v7, p5

    aput-object p1, v7, v0

    aput-object v1, v7, v2

    .line 69
    invoke-static {p3}, Lo/SearchIndexableResource;->d(I)Ljava/util/Map;

    move-result-object p3

    aput-object p3, v7, v3

    const-string p3, "item"

    aput-object p3, v7, p2

    .line 70
    invoke-static {}, Lo/ady;->i()Z

    move-result p3

    if-eqz p3, :cond_0

    new-array p3, v2, [Ljava/lang/Object;

    aput-object v4, p3, p5

    const-string v1, "volatileBitmaskedDetails"

    aput-object v1, p3, v0

    invoke-static {p3}, Lo/SearchIndexableResource;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    goto :goto_0

    :cond_0
    move-object p3, v4

    :goto_0
    aput-object p3, v7, v6

    .line 68
    invoke-static {v7}, Lo/SearchIndexableResource;->b([Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object p3

    iput-object p3, p0, Lo/SessionExpiredException;->i:Lo/TextInputTimePickerView;

    new-array p3, v6, [Ljava/lang/Object;

    aput-object p4, p3, p5

    aput-object p1, p3, v0

    aput-object v5, p3, v2

    const/16 p1, 0x13

    .line 73
    invoke-static {p1}, Lo/SearchIndexableResource;->d(I)Ljava/util/Map;

    move-result-object p1

    aput-object p1, p3, v3

    aput-object v4, p3, p2

    .line 72
    invoke-static {p3}, Lo/SearchIndexableResource;->b([Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object p1

    iput-object p1, p0, Lo/SessionExpiredException;->j:Lo/TextInputTimePickerView;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/util/Map;)V
    .locals 0

    .line 34
    invoke-super {p0, p1}, Lo/VoicemailContract;->a(Ljava/util/Map;)V

    return-void
.end method

.method protected b()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/adt$Activity;",
            ">;"
        }
    .end annotation

    .line 87
    invoke-static {}, Lo/ady;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 89
    new-instance v1, Lo/adt$Activity;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "includeBookmark"

    invoke-direct {v1, v3, v2}, Lo/adt$Activity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected b(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/TextInputTimePickerView;",
            ">;)V"
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lo/SessionExpiredException;->e:Lo/TextInputTimePickerView;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    iget-object v0, p0, Lo/SessionExpiredException;->d:Lo/TextInputTimePickerView;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    iget-object v0, p0, Lo/SessionExpiredException;->h:Lo/TextInputTimePickerView;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    iget-object v0, p0, Lo/SessionExpiredException;->i:Lo/TextInputTimePickerView;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    iget-object v0, p0, Lo/SessionExpiredException;->j:Lo/TextInputTimePickerView;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected b(Lo/ci;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .line 132
    new-instance v0, Lcom/netflix/model/leafs/SearchResults$Builder;

    invoke-direct {v0}, Lcom/netflix/model/leafs/SearchResults$Builder;-><init>()V

    .line 133
    invoke-virtual {v0}, Lcom/netflix/model/leafs/SearchResults$Builder;->getResults()Lcom/netflix/model/leafs/SearchResults;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p1, v0, p2, v1}, Lo/ci;->a(Lo/Bs;Lcom/netflix/mediaclient/android/app/Status;Z)V

    return-void
.end method

.method public bridge synthetic c(Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;)V
    .locals 0

    .line 34
    invoke-super {p0, p1}, Lo/VoicemailContract;->c(Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;)V

    return-void
.end method

.method public bridge synthetic d()Ljava/lang/String;
    .locals 1

    .line 34
    invoke-super {p0}, Lo/VoicemailContract;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected d(Lo/ci;Lo/TextClock;)V
    .locals 5

    .line 97
    new-instance v0, Lcom/netflix/model/leafs/SearchResults$Builder;

    invoke-direct {v0}, Lcom/netflix/model/leafs/SearchResults$Builder;-><init>()V

    .line 99
    iget-object v1, p0, Lo/SessionExpiredException;->a:Lo/FontRequest;

    iget-object v2, p0, Lo/SessionExpiredException;->e:Lo/TextInputTimePickerView;

    invoke-virtual {v1, v2}, Lo/FontRequest;->b(Lo/TextInputTimePickerView;)Lo/agi;

    move-result-object v1

    check-cast v1, Lcom/netflix/model/leafs/SearchTrackableListSummary;

    .line 100
    invoke-virtual {v0, v1}, Lcom/netflix/model/leafs/SearchResults$Builder;->setVideoListSummary(Lo/Bz;)V

    .line 102
    iget-object v1, p0, Lo/SessionExpiredException;->a:Lo/FontRequest;

    iget-object v2, p0, Lo/SessionExpiredException;->d:Lo/TextInputTimePickerView;

    invoke-virtual {v1, v2}, Lo/FontRequest;->b(Lo/TextInputTimePickerView;)Lo/agi;

    move-result-object v1

    check-cast v1, Lcom/netflix/model/leafs/SearchTrackableListSummary;

    .line 103
    invoke-virtual {v0, v1}, Lcom/netflix/model/leafs/SearchResults$Builder;->setSuggestionsListSummary(Lo/Bz;)V

    .line 105
    iget-object v1, p0, Lo/SessionExpiredException;->a:Lo/FontRequest;

    iget-object v2, p0, Lo/SessionExpiredException;->i:Lo/TextInputTimePickerView;

    invoke-virtual {v1, v2}, Lo/FontRequest;->e(Lo/TextInputTimePickerView;)Ljava/util/List;

    move-result-object v1

    .line 106
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 107
    invoke-virtual {v0, v1}, Lcom/netflix/model/leafs/SearchResults$Builder;->addVideos(Ljava/util/Collection;)V

    .line 110
    :cond_0
    iget-object v1, p0, Lo/SessionExpiredException;->a:Lo/FontRequest;

    iget-object v2, p0, Lo/SessionExpiredException;->h:Lo/TextInputTimePickerView;

    invoke-virtual {v1, v2}, Lo/FontRequest;->e(Lo/TextInputTimePickerView;)Ljava/util/List;

    move-result-object v1

    .line 111
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 112
    invoke-virtual {v0, v1}, Lcom/netflix/model/leafs/SearchResults$Builder;->addVideoEntities(Ljava/util/Collection;)V

    .line 115
    :cond_1
    iget-object v1, p0, Lo/SessionExpiredException;->a:Lo/FontRequest;

    iget-object v2, p0, Lo/SessionExpiredException;->j:Lo/TextInputTimePickerView;

    invoke-virtual {v1, v2}, Lo/FontRequest;->e(Lo/TextInputTimePickerView;)Ljava/util/List;

    move-result-object v1

    .line 116
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 118
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 119
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/agj;

    .line 120
    instance-of v4, v3, Lo/By;

    if-eqz v4, :cond_2

    check-cast v3, Lo/By;

    invoke-interface {v3}, Lo/By;->getEntityId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 121
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 124
    :cond_3
    invoke-virtual {v0, v2}, Lcom/netflix/model/leafs/SearchResults$Builder;->addSuggestions(Ljava/util/Collection;)V

    .line 127
    :cond_4
    invoke-virtual {v0}, Lcom/netflix/model/leafs/SearchResults$Builder;->getResults()Lcom/netflix/model/leafs/SearchResults;

    move-result-object v0

    sget-object v1, Lo/LegacyErrorStrings;->b:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-virtual {p2}, Lo/TextClock;->a()Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    invoke-interface {p1, v0, v1, p2}, Lo/ci;->a(Lo/Bs;Lcom/netflix/mediaclient/android/app/Status;Z)V

    return-void
.end method

.method protected k()Z
    .locals 2

    .line 143
    iget-object v0, p0, Lo/SessionExpiredException;->g:Lcom/netflix/mediaclient/browse/api/task/TaskMode;

    sget-object v1, Lcom/netflix/mediaclient/browse/api/task/TaskMode;->a:Lcom/netflix/mediaclient/browse/api/task/TaskMode;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected m()Z
    .locals 2

    .line 138
    iget-object v0, p0, Lo/SessionExpiredException;->g:Lcom/netflix/mediaclient/browse/api/task/TaskMode;

    sget-object v1, Lcom/netflix/mediaclient/browse/api/task/TaskMode;->b:Lcom/netflix/mediaclient/browse/api/task/TaskMode;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
