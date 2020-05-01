.class final Lcom/netflix/mediaclient/ui/searchlite/SOALSearchResultsEpoxyController$buildModels$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alS;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/searchlite/SOALSearchResultsEpoxyController;->buildModels()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alS<",
        "Lo/Bs;",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "Lo/akj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/netflix/mediaclient/ui/searchlite/SOALSearchResultsEpoxyController;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/searchlite/SOALSearchResultsEpoxyController;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/searchlite/SOALSearchResultsEpoxyController$buildModels$1;->a:Lcom/netflix/mediaclient/ui/searchlite/SOALSearchResultsEpoxyController;

    const/4 p1, 0x4

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public synthetic a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 25
    check-cast p1, Lo/Bs;

    check-cast p2, Ljava/lang/String;

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p3

    check-cast p4, Ljava/lang/Number;

    invoke-virtual {p4}, Ljava/lang/Number;->intValue()I

    move-result p4

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/netflix/mediaclient/ui/searchlite/SOALSearchResultsEpoxyController$buildModels$1;->e(Lo/Bs;Ljava/lang/String;II)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method

.method public final e(Lo/Bs;Ljava/lang/String;II)V
    .locals 19

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    const-string v0, "results"

    invoke-static {v9, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "query"

    invoke-static {v10, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    invoke-interface/range {p1 .. p1}, Lo/Bs;->getResultsVideos()Ljava/util/List;

    move-result-object v0

    const/4 v11, 0x3

    const/4 v12, 0x0

    if-eqz v0, :cond_3

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-ne v0, v1, :cond_3

    .line 113
    iget-object v0, v8, Lcom/netflix/mediaclient/ui/searchlite/SOALSearchResultsEpoxyController$buildModels$1;->a:Lcom/netflix/mediaclient/ui/searchlite/SOALSearchResultsEpoxyController;

    .line 241
    new-instance v1, Lo/aaM;

    invoke-direct {v1}, Lo/aaM;-><init>()V

    .line 245
    move-object v2, v1

    check-cast v2, Lo/aaH;

    .line 114
    iget-object v3, v8, Lcom/netflix/mediaclient/ui/searchlite/SOALSearchResultsEpoxyController$buildModels$1;->a:Lcom/netflix/mediaclient/ui/searchlite/SOALSearchResultsEpoxyController;

    invoke-static {v3}, Lcom/netflix/mediaclient/ui/searchlite/SOALSearchResultsEpoxyController;->access$getTitleResultsLabel$p(Lcom/netflix/mediaclient/ui/searchlite/SOALSearchResultsEpoxyController;)Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-interface {v2, v3}, Lo/aaH;->b(Ljava/lang/CharSequence;)Lo/aaH;

    .line 115
    iget-object v3, v8, Lcom/netflix/mediaclient/ui/searchlite/SOALSearchResultsEpoxyController$buildModels$1;->a:Lcom/netflix/mediaclient/ui/searchlite/SOALSearchResultsEpoxyController;

    invoke-static {v3}, Lcom/netflix/mediaclient/ui/searchlite/SOALSearchResultsEpoxyController;->access$getTitleResultsLabel$p(Lcom/netflix/mediaclient/ui/searchlite/SOALSearchResultsEpoxyController;)Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-interface {v2, v3}, Lo/aaH;->d(Ljava/lang/CharSequence;)Lo/aaH;

    .line 244
    invoke-virtual {v1, v0}, Lo/aaM;->a(Lo/OfPrimitive;)V

    .line 118
    new-instance v0, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    sget-object v1, Lcom/netflix/cl/model/AppView;->searchResults:Lcom/netflix/cl/model/AppView;

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;-><init>(Lcom/netflix/cl/model/AppView;)V

    .line 119
    invoke-interface/range {p1 .. p1}, Lo/Bs;->getVideosListTrackable()Lo/Bz;

    move-result-object v1

    const-string v2, "results.videosListTrackable"

    invoke-static {v1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v10}, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;->d(Lo/Bz;Ljava/lang/String;)Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    move-result-object v14

    .line 121
    iget-object v0, v8, Lcom/netflix/mediaclient/ui/searchlite/SOALSearchResultsEpoxyController$buildModels$1;->a:Lcom/netflix/mediaclient/ui/searchlite/SOALSearchResultsEpoxyController;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/searchlite/SOALSearchResultsEpoxyController;->access$getSearchCLHelper$p(Lcom/netflix/mediaclient/ui/searchlite/SOALSearchResultsEpoxyController;)Lo/aaw;

    move-result-object v0

    .line 122
    sget-object v1, Lcom/netflix/cl/model/AppView;->searchTitleResults:Lcom/netflix/cl/model/AppView;

    .line 124
    invoke-interface/range {p1 .. p1}, Lo/Bs;->getVideosListTrackable()Lo/Bz;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2}, Lo/Bz;->getReferenceId()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v12

    .line 121
    :goto_0
    invoke-virtual {v0, v1, v14, v2}, Lo/aaw;->d(Lcom/netflix/cl/model/AppView;Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;Ljava/lang/String;)V

    .line 126
    invoke-interface/range {p1 .. p1}, Lo/Bs;->getResultsVideos()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    check-cast v0, Ljava/lang/Iterable;

    .line 250
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v15

    const/4 v6, 0x0

    :goto_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    add-int/lit8 v16, v6, 0x1

    if-gez v6, :cond_1

    invoke-static {}, Lo/akz;->c()V

    :cond_1
    move-object v7, v0

    check-cast v7, Lo/Bx;

    .line 127
    new-instance v5, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v5}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    move-object v0, v12

    check-cast v0, Lio/reactivex/SingleObserver;

    iput-object v0, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->d:Ljava/lang/Object;

    if-ge v6, v11, :cond_2

    .line 129
    new-instance v17, Lcom/netflix/mediaclient/ui/searchlite/SOALSearchResultsEpoxyController$buildModels$1$TaskDescription;

    move-object/from16 v0, v17

    move v1, v6

    move-object/from16 v2, p0

    move-object v3, v14

    move/from16 v4, p3

    move-object v12, v5

    move/from16 v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/netflix/mediaclient/ui/searchlite/SOALSearchResultsEpoxyController$buildModels$1$TaskDescription;-><init>(ILcom/netflix/mediaclient/ui/searchlite/SOALSearchResultsEpoxyController$buildModels$1;Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;II)V

    move-object/from16 v0, v17

    check-cast v0, Lio/reactivex/SingleObserver;

    iput-object v0, v12, Lkotlin/jvm/internal/Ref$ObjectRef;->d:Ljava/lang/Object;

    goto :goto_2

    :cond_2
    move-object v12, v5

    .line 142
    :goto_2
    iget-object v5, v8, Lcom/netflix/mediaclient/ui/searchlite/SOALSearchResultsEpoxyController$buildModels$1;->a:Lcom/netflix/mediaclient/ui/searchlite/SOALSearchResultsEpoxyController;

    .line 251
    new-instance v4, Lo/aaN;

    invoke-direct {v4}, Lo/aaN;-><init>()V

    .line 255
    move-object v3, v4

    check-cast v3, Lo/aaP;

    const-string v0, "searchVideo"

    .line 143
    invoke-static {v7, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v7}, Lo/Bx;->getId()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v3, v0}, Lo/aaP;->b(Ljava/lang/CharSequence;)Lo/aaP;

    .line 144
    move-object v0, v7

    check-cast v0, Lo/AR;

    invoke-interface {v3, v0}, Lo/aaP;->d(Lo/AR;)Lo/aaP;

    .line 145
    invoke-interface {v3, v6}, Lo/aaP;->b(I)Lo/aaP;

    .line 146
    move-object v0, v7

    check-cast v0, Lo/agg;

    invoke-interface {v0}, Lo/agg;->as_()Lo/AR;

    move-result-object v0

    const-string v1, "(searchVideo as FullVideoDetails).summary"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v14, v0, v6}, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;->b(Lo/AR;I)Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    move-result-object v0

    invoke-interface {v3, v0}, Lo/aaP;->d(Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;)Lo/aaP;

    move/from16 v2, p3

    .line 147
    invoke-interface {v3, v2}, Lo/aaP;->d(I)Lo/aaP;

    move/from16 v1, p4

    .line 148
    invoke-interface {v3, v1}, Lo/aaP;->e(I)Lo/aaP;

    .line 149
    iget-object v0, v12, Lkotlin/jvm/internal/Ref$ObjectRef;->d:Ljava/lang/Object;

    check-cast v0, Lio/reactivex/SingleObserver;

    invoke-interface {v3, v0}, Lo/aaP;->e(Lio/reactivex/SingleObserver;)Lo/aaP;

    .line 150
    new-instance v17, Lcom/netflix/mediaclient/ui/searchlite/SOALSearchResultsEpoxyController$buildModels$1$Application;

    move-object/from16 v0, v17

    move-object v1, v7

    move v2, v6

    move-object v7, v3

    move-object v3, v12

    move-object v12, v4

    move-object/from16 v4, p0

    move-object v6, v5

    move-object v5, v14

    move-object v13, v6

    move/from16 v6, p3

    move-object v11, v7

    move/from16 v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/netflix/mediaclient/ui/searchlite/SOALSearchResultsEpoxyController$buildModels$1$Application;-><init>(Lo/Bx;ILkotlin/jvm/internal/Ref$ObjectRef;Lcom/netflix/mediaclient/ui/searchlite/SOALSearchResultsEpoxyController$buildModels$1;Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;II)V

    move-object/from16 v0, v17

    check-cast v0, Lo/EncryptedPrivateKeyInfo;

    invoke-interface {v11, v0}, Lo/aaP;->b(Lo/EncryptedPrivateKeyInfo;)Lo/aaP;

    .line 254
    invoke-virtual {v12, v13}, Lo/aaN;->a(Lo/OfPrimitive;)V

    move/from16 v6, v16

    const/4 v11, 0x3

    const/4 v12, 0x0

    goto/16 :goto_1

    .line 158
    :cond_3
    invoke-interface/range {p1 .. p1}, Lo/Bs;->getResultsVideos()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v13

    goto :goto_3

    :cond_4
    const/4 v13, 0x0

    :goto_3
    const/4 v0, 0x3

    :goto_4
    if-ge v13, v0, :cond_6

    .line 159
    iget-object v1, v8, Lcom/netflix/mediaclient/ui/searchlite/SOALSearchResultsEpoxyController$buildModels$1;->a:Lcom/netflix/mediaclient/ui/searchlite/SOALSearchResultsEpoxyController;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/searchlite/SOALSearchResultsEpoxyController;->access$getOnSearchViewLoaded$p(Lcom/netflix/mediaclient/ui/searchlite/SOALSearchResultsEpoxyController;)Lo/alN;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v3, Lcom/netflix/android/imageloader/api/ImageDataSource;->a:Lcom/netflix/android/imageloader/api/ImageDataSource;

    invoke-interface {v1, v2, v3}, Lo/alN;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/akj;

    :cond_5
    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    .line 162
    :cond_6
    invoke-interface/range {p1 .. p1}, Lo/Bs;->getNumResultsSuggestions()I

    move-result v0

    if-lez v0, :cond_9

    .line 163
    iget-object v0, v8, Lcom/netflix/mediaclient/ui/searchlite/SOALSearchResultsEpoxyController$buildModels$1;->a:Lcom/netflix/mediaclient/ui/searchlite/SOALSearchResultsEpoxyController;

    .line 260
    new-instance v1, Lo/aaM;

    invoke-direct {v1}, Lo/aaM;-><init>()V

    .line 264
    move-object v2, v1

    check-cast v2, Lo/aaH;

    .line 164
    iget-object v3, v8, Lcom/netflix/mediaclient/ui/searchlite/SOALSearchResultsEpoxyController$buildModels$1;->a:Lcom/netflix/mediaclient/ui/searchlite/SOALSearchResultsEpoxyController;

    invoke-static {v3}, Lcom/netflix/mediaclient/ui/searchlite/SOALSearchResultsEpoxyController;->access$getSuggestedTitleResultsLabel$p(Lcom/netflix/mediaclient/ui/searchlite/SOALSearchResultsEpoxyController;)Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-interface {v2, v3}, Lo/aaH;->b(Ljava/lang/CharSequence;)Lo/aaH;

    .line 165
    iget-object v3, v8, Lcom/netflix/mediaclient/ui/searchlite/SOALSearchResultsEpoxyController$buildModels$1;->a:Lcom/netflix/mediaclient/ui/searchlite/SOALSearchResultsEpoxyController;

    invoke-static {v3}, Lcom/netflix/mediaclient/ui/searchlite/SOALSearchResultsEpoxyController;->access$getSuggestedTitleResultsLabel$p(Lcom/netflix/mediaclient/ui/searchlite/SOALSearchResultsEpoxyController;)Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-interface {v2, v3}, Lo/aaH;->d(Ljava/lang/CharSequence;)Lo/aaH;

    .line 263
    invoke-virtual {v1, v0}, Lo/aaM;->a(Lo/OfPrimitive;)V

    .line 168
    new-instance v0, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    sget-object v1, Lcom/netflix/cl/model/AppView;->searchSuggestionResults:Lcom/netflix/cl/model/AppView;

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;-><init>(Lcom/netflix/cl/model/AppView;)V

    .line 169
    invoke-interface/range {p1 .. p1}, Lo/Bs;->getSuggestionsListTrackable()Lo/Bz;

    move-result-object v1

    const-string v7, "results.suggestionsListTrackable"

    invoke-static {v1, v7}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v10}, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;->d(Lo/Bz;Ljava/lang/String;)Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    move-result-object v11

    .line 171
    iget-object v0, v8, Lcom/netflix/mediaclient/ui/searchlite/SOALSearchResultsEpoxyController$buildModels$1;->a:Lcom/netflix/mediaclient/ui/searchlite/SOALSearchResultsEpoxyController;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/searchlite/SOALSearchResultsEpoxyController;->access$getSearchCLHelper$p(Lcom/netflix/mediaclient/ui/searchlite/SOALSearchResultsEpoxyController;)Lo/aaw;

    move-result-object v0

    .line 172
    sget-object v1, Lcom/netflix/cl/model/AppView;->searchSuggestionResults:Lcom/netflix/cl/model/AppView;

    .line 174
    invoke-interface/range {p1 .. p1}, Lo/Bs;->getSuggestionsListTrackable()Lo/Bz;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-interface {v2}, Lo/Bz;->getReferenceId()Ljava/lang/String;

    move-result-object v12

    goto :goto_5

    :cond_7
    const/4 v12, 0x0

    .line 171
    :goto_5
    invoke-virtual {v0, v1, v11, v12}, Lo/aaw;->d(Lcom/netflix/cl/model/AppView;Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;Ljava/lang/String;)V

    .line 176
    invoke-interface/range {p1 .. p1}, Lo/Bs;->getNumResultsSuggestions()I

    move-result v12

    const/4 v13, 0x0

    :goto_6
    if-ge v13, v12, :cond_9

    .line 177
    invoke-interface {v9, v13}, Lo/Bs;->getResultsSuggestions(I)Lo/By;

    move-result-object v14

    if-eqz v14, :cond_8

    .line 178
    iget-object v15, v8, Lcom/netflix/mediaclient/ui/searchlite/SOALSearchResultsEpoxyController$buildModels$1;->a:Lcom/netflix/mediaclient/ui/searchlite/SOALSearchResultsEpoxyController;

    .line 268
    new-instance v6, Lo/aaJ;

    invoke-direct {v6}, Lo/aaJ;-><init>()V

    .line 272
    move-object v5, v6

    check-cast v5, Lo/aaG;

    const-string v0, "searchSuggestion"

    .line 179
    invoke-static {v14, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v14}, Lo/By;->getEntityId()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v5, v0}, Lo/aaG;->e(Ljava/lang/CharSequence;)Lo/aaG;

    .line 180
    invoke-interface {v14}, Lo/By;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0}, Lo/aaG;->d(Ljava/lang/String;)Lo/aaG;

    .line 181
    invoke-interface {v5, v14}, Lo/aaG;->d(Lo/By;)Lo/aaG;

    .line 182
    invoke-interface {v5, v13}, Lo/aaG;->e(I)Lo/aaG;

    .line 183
    invoke-interface {v5, v10}, Lo/aaG;->b(Ljava/lang/String;)Lo/aaG;

    .line 184
    new-instance v16, Lcom/netflix/mediaclient/ui/searchlite/SOALSearchResultsEpoxyController$ActionBar;

    iget-object v1, v8, Lcom/netflix/mediaclient/ui/searchlite/SOALSearchResultsEpoxyController$buildModels$1;->a:Lcom/netflix/mediaclient/ui/searchlite/SOALSearchResultsEpoxyController;

    .line 185
    invoke-interface {v14}, Lo/By;->getTitle()Ljava/lang/String;

    move-result-object v2

    const-string v0, "searchSuggestion.title"

    invoke-static {v2, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 186
    invoke-interface {v14}, Lo/By;->getEntityId()Ljava/lang/String;

    move-result-object v3

    const-string v0, "searchSuggestion.entityId"

    invoke-static {v3, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 188
    invoke-interface/range {p1 .. p1}, Lo/Bs;->getSuggestionsListTrackable()Lo/Bz;

    move-result-object v0

    invoke-static {v0, v7}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lo/Bz;->getReferenceId()Ljava/lang/String;

    move-result-object v4

    const-string v0, "results.suggestionsListTrackable.referenceId"

    invoke-static {v4, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 189
    invoke-virtual {v11, v14, v13}, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;->c(Lo/By;I)Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v18, v4

    move-object/from16 v4, p2

    move-object/from16 p3, v7

    move-object v7, v5

    move-object/from16 v5, v18

    move-object v8, v6

    move-object/from16 v6, v17

    .line 184
    invoke-direct/range {v0 .. v6}, Lcom/netflix/mediaclient/ui/searchlite/SOALSearchResultsEpoxyController$ActionBar;-><init>(Lcom/netflix/mediaclient/ui/searchlite/SOALSearchResultsEpoxyController;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;)V

    move-object/from16 v0, v16

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-interface {v7, v0}, Lo/aaG;->c(Landroid/view/View$OnClickListener;)Lo/aaG;

    .line 191
    new-instance v16, Lcom/netflix/mediaclient/ui/searchlite/SOALSearchResultsEpoxyController$buildModels$1$Activity;

    move-object/from16 v0, v16

    move-object v1, v14

    move-object/from16 v2, p0

    move v3, v13

    move-object/from16 v5, p1

    move-object v6, v11

    invoke-direct/range {v0 .. v6}, Lcom/netflix/mediaclient/ui/searchlite/SOALSearchResultsEpoxyController$buildModels$1$Activity;-><init>(Lo/By;Lcom/netflix/mediaclient/ui/searchlite/SOALSearchResultsEpoxyController$buildModels$1;ILjava/lang/String;Lo/Bs;Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;)V

    move-object/from16 v0, v16

    check-cast v0, Lo/EncryptedPrivateKeyInfo;

    invoke-interface {v7, v0}, Lo/aaG;->b(Lo/EncryptedPrivateKeyInfo;)Lo/aaG;

    .line 271
    invoke-virtual {v8, v15}, Lo/aaJ;->a(Lo/OfPrimitive;)V

    goto :goto_7

    :cond_8
    move-object/from16 p3, v7

    :goto_7
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v8, p0

    move-object/from16 v7, p3

    goto/16 :goto_6

    :cond_9
    return-void
.end method
