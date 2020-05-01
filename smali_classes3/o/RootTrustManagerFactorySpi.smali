.class public final Lo/RootTrustManagerFactorySpi;
.super Lo/FillContext;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/RootTrustManagerFactorySpi$Application;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/FillContext<",
        "Lkotlin/Pair<",
        "+",
        "Lo/Br;",
        "+",
        "Lcom/netflix/mediaclient/android/app/Status;",
        ">;>;"
    }
.end annotation


# static fields
.field public static final b:Lo/RootTrustManagerFactorySpi$Application;


# instance fields
.field private a:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/Integer;

.field private f:Lo/TextInputTimePickerView;

.field private g:Ljava/lang/String;

.field private h:Lo/TextInputTimePickerView;

.field private i:Lo/TextInputTimePickerView;

.field private final j:J

.field private final k:I

.field private final l:I

.field private final m:I

.field private final n:Lcom/netflix/mediaclient/browse/api/task/TaskMode;

.field private final o:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/RootTrustManagerFactorySpi$Application;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/RootTrustManagerFactorySpi$Application;-><init>(Lo/amc;)V

    sput-object v0, Lo/RootTrustManagerFactorySpi;->b:Lo/RootTrustManagerFactorySpi$Application;

    return-void
.end method

.method public constructor <init>(JIIIILcom/netflix/mediaclient/browse/api/task/TaskMode;)V
    .locals 3

    const-string v0, "taskMode"

    invoke-static {p7, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const-string v1, "FetchSearchPageTask"

    const/4 v2, 0x2

    .line 116
    invoke-direct {p0, v1, v0, v2, v0}, Lo/FillContext;-><init>(Ljava/lang/String;Lcom/netflix/mediaclient/browse/api/task/TaskMode;ILo/amc;)V

    iput-wide p1, p0, Lo/RootTrustManagerFactorySpi;->j:J

    iput p3, p0, Lo/RootTrustManagerFactorySpi;->l:I

    iput p4, p0, Lo/RootTrustManagerFactorySpi;->m:I

    iput p5, p0, Lo/RootTrustManagerFactorySpi;->o:I

    iput p6, p0, Lo/RootTrustManagerFactorySpi;->k:I

    iput-object p7, p0, Lo/RootTrustManagerFactorySpi;->n:Lcom/netflix/mediaclient/browse/api/task/TaskMode;

    const-string p1, "preQueryType"

    .line 126
    iput-object p1, p0, Lo/RootTrustManagerFactorySpi;->c:Ljava/lang/String;

    const-string p1, "empty_session_id"

    .line 131
    iput-object p1, p0, Lo/RootTrustManagerFactorySpi;->g:Ljava/lang/String;

    .line 132
    invoke-direct {p0}, Lo/RootTrustManagerFactorySpi;->m()Lo/TextInputTimePickerView;

    move-result-object p1

    iput-object p1, p0, Lo/RootTrustManagerFactorySpi;->f:Lo/TextInputTimePickerView;

    .line 133
    invoke-direct {p0}, Lo/RootTrustManagerFactorySpi;->o()Lo/TextInputTimePickerView;

    move-result-object p1

    iput-object p1, p0, Lo/RootTrustManagerFactorySpi;->i:Lo/TextInputTimePickerView;

    .line 134
    iget-object p1, p0, Lo/RootTrustManagerFactorySpi;->f:Lo/TextInputTimePickerView;

    const-string p2, "summary"

    invoke-interface {p1, p2}, Lo/TextInputTimePickerView;->b(Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object p1

    const-string p2, "searchPageBasePath.append(\"summary\")"

    invoke-static {p1, p2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lo/RootTrustManagerFactorySpi;->h:Lo/TextInputTimePickerView;

    return-void
.end method

.method public synthetic constructor <init>(JIIIILcom/netflix/mediaclient/browse/api/task/TaskMode;ILo/amc;)V
    .locals 9

    and-int/lit8 v0, p8, 0x20

    if-eqz v0, :cond_0

    .line 114
    sget-object v0, Lcom/netflix/mediaclient/browse/api/task/TaskMode;->d:Lcom/netflix/mediaclient/browse/api/task/TaskMode;

    move-object v8, v0

    goto :goto_0

    :cond_0
    move-object/from16 v8, p7

    :goto_0
    move-object v1, p0

    move-wide v2, p1

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v1 .. v8}, Lo/RootTrustManagerFactorySpi;-><init>(JIIIILcom/netflix/mediaclient/browse/api/task/TaskMode;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/String;JIIIILjava/lang/String;)V
    .locals 12

    move-object v10, p0

    move-object/from16 v11, p9

    const-string v0, "sessionId"

    invoke-static {v11, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v7, 0x0

    const/16 v8, 0x20

    const/4 v9, 0x0

    move-object v0, p0

    move-wide v1, p3

    move/from16 v3, p5

    move/from16 v4, p6

    move/from16 v5, p7

    move/from16 v6, p8

    .line 172
    invoke-direct/range {v0 .. v9}, Lo/RootTrustManagerFactorySpi;-><init>(JIIIILcom/netflix/mediaclient/browse/api/task/TaskMode;ILo/amc;)V

    const-string v0, "searchByEntity"

    .line 173
    iput-object v0, v10, Lo/RootTrustManagerFactorySpi;->c:Ljava/lang/String;

    move-object v0, p1

    .line 174
    iput-object v0, v10, Lo/RootTrustManagerFactorySpi;->e:Ljava/lang/Integer;

    move-object v0, p2

    .line 175
    iput-object v0, v10, Lo/RootTrustManagerFactorySpi;->a:Ljava/lang/String;

    .line 176
    move-object v0, v11

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 177
    iput-object v11, v10, Lo/RootTrustManagerFactorySpi;->g:Ljava/lang/String;

    .line 179
    :cond_1
    invoke-direct {p0}, Lo/RootTrustManagerFactorySpi;->m()Lo/TextInputTimePickerView;

    move-result-object v0

    iput-object v0, v10, Lo/RootTrustManagerFactorySpi;->f:Lo/TextInputTimePickerView;

    .line 180
    invoke-direct {p0}, Lo/RootTrustManagerFactorySpi;->o()Lo/TextInputTimePickerView;

    move-result-object v0

    iput-object v0, v10, Lo/RootTrustManagerFactorySpi;->i:Lo/TextInputTimePickerView;

    .line 181
    iget-object v0, v10, Lo/RootTrustManagerFactorySpi;->f:Lo/TextInputTimePickerView;

    const-string v1, "summary"

    invoke-interface {v0, v1}, Lo/TextInputTimePickerView;->b(Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object v0

    const-string v1, "searchPageBasePath.append(\"summary\")"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, v10, Lo/RootTrustManagerFactorySpi;->h:Lo/TextInputTimePickerView;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JIIIILjava/lang/String;Lcom/netflix/mediaclient/browse/api/task/TaskMode;)V
    .locals 11

    move-object v8, p0

    move-object/from16 v9, p8

    const-string v0, "rawQuery"

    move-object v10, p1

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sessionId"

    invoke-static {v9, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "taskMode"

    move-object/from16 v7, p9

    invoke-static {v7, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p0

    move-wide v1, p2

    move v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    .line 145
    invoke-direct/range {v0 .. v7}, Lo/RootTrustManagerFactorySpi;-><init>(JIIIILcom/netflix/mediaclient/browse/api/task/TaskMode;)V

    const-string v0, "searchType"

    .line 153
    iput-object v0, v8, Lo/RootTrustManagerFactorySpi;->c:Ljava/lang/String;

    .line 154
    invoke-static {p1}, Lo/ia;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lo/RootTrustManagerFactorySpi;->d:Ljava/lang/String;

    .line 155
    move-object v0, v9

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 156
    iput-object v9, v8, Lo/RootTrustManagerFactorySpi;->g:Ljava/lang/String;

    .line 158
    :cond_1
    invoke-direct {p0}, Lo/RootTrustManagerFactorySpi;->m()Lo/TextInputTimePickerView;

    move-result-object v0

    iput-object v0, v8, Lo/RootTrustManagerFactorySpi;->f:Lo/TextInputTimePickerView;

    .line 159
    invoke-direct {p0}, Lo/RootTrustManagerFactorySpi;->o()Lo/TextInputTimePickerView;

    move-result-object v0

    iput-object v0, v8, Lo/RootTrustManagerFactorySpi;->i:Lo/TextInputTimePickerView;

    .line 160
    iget-object v0, v8, Lo/RootTrustManagerFactorySpi;->f:Lo/TextInputTimePickerView;

    const-string v1, "summary"

    invoke-interface {v0, v1}, Lo/TextInputTimePickerView;->b(Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object v0

    const-string v1, "searchPageBasePath.append(\"summary\")"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, v8, Lo/RootTrustManagerFactorySpi;->h:Lo/TextInputTimePickerView;

    return-void
.end method

.method private final b(I)Lo/TextInputTimePickerView;
    .locals 1

    .line 307
    invoke-direct {p0, p1}, Lo/RootTrustManagerFactorySpi;->e(I)Lo/TextInputTimePickerView;

    move-result-object p1

    const-string v0, "resultItem"

    invoke-interface {p1, v0}, Lo/TextInputTimePickerView;->b(Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object p1

    const-string v0, "summary"

    invoke-interface {p1, v0}, Lo/TextInputTimePickerView;->b(Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object p1

    const-string v0, "createSearchResultPerSec\u2026tItem\").append(\"summary\")"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final c(I)Lo/TextInputTimePickerView;
    .locals 1

    .line 300
    invoke-direct {p0, p1}, Lo/RootTrustManagerFactorySpi;->e(I)Lo/TextInputTimePickerView;

    move-result-object p1

    const-string v0, "summary"

    invoke-interface {p1, v0}, Lo/TextInputTimePickerView;->b(Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object p1

    const-string v0, "createSearchResultPerSec\u2026nIndex).append(\"summary\")"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final e(I)Lo/TextInputTimePickerView;
    .locals 2

    .line 293
    invoke-direct {p0}, Lo/RootTrustManagerFactorySpi;->h()Lo/TextInputTimePickerView;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Lo/TextInputTimePickerView;->b(Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object p1

    iget v0, p0, Lo/RootTrustManagerFactorySpi;->o:I

    iget v1, p0, Lo/RootTrustManagerFactorySpi;->k:I

    invoke-static {v0, v1}, Lo/SearchIndexableResource;->e(II)Ljava/util/Map;

    move-result-object v0

    invoke-interface {p1, v0}, Lo/TextInputTimePickerView;->b(Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object p1

    const-string v0, "createBaseForRequestType\u2026ideoIndex, toVideoIndex))"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final h()Lo/TextInputTimePickerView;
    .locals 10

    .line 247
    iget-object v0, p0, Lo/RootTrustManagerFactorySpi;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x3e6f5f1e

    const/4 v3, 0x4

    const-string v4, "PQLHelper.create(\n      \u2026chSessionId\n            )"

    const/4 v5, 0x2

    const/4 v6, 0x1

    const-string v7, "searchPage"

    const/4 v8, 0x0

    const/4 v9, 0x3

    if-eq v1, v2, :cond_1

    const v2, -0x2a58aafe

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "searchType"

    .line 248
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-array v0, v3, [Ljava/lang/Object;

    aput-object v7, v0, v8

    const-string v1, "search"

    aput-object v1, v0, v6

    .line 251
    iget-object v1, p0, Lo/RootTrustManagerFactorySpi;->d:Ljava/lang/String;

    aput-object v1, v0, v5

    .line 252
    iget-object v1, p0, Lo/RootTrustManagerFactorySpi;->g:Ljava/lang/String;

    aput-object v1, v0, v9

    .line 248
    invoke-static {v0}, Lo/SearchIndexableResource;->b([Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object v0

    invoke-static {v0, v4}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    :cond_1
    const-string v1, "searchByEntity"

    .line 254
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v7, v0, v8

    const-string v1, "searchForEntity"

    aput-object v1, v0, v6

    .line 257
    iget-object v1, p0, Lo/RootTrustManagerFactorySpi;->e:Ljava/lang/Integer;

    aput-object v1, v0, v5

    .line 258
    iget-object v1, p0, Lo/RootTrustManagerFactorySpi;->a:Ljava/lang/String;

    aput-object v1, v0, v9

    .line 259
    iget-object v1, p0, Lo/RootTrustManagerFactorySpi;->g:Ljava/lang/String;

    aput-object v1, v0, v3

    .line 254
    invoke-static {v0}, Lo/SearchIndexableResource;->b([Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object v0

    invoke-static {v0, v4}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    :cond_2
    :goto_0
    new-array v0, v9, [Ljava/lang/Object;

    aput-object v7, v0, v8

    const-string v1, "preQuery"

    aput-object v1, v0, v6

    .line 264
    iget-object v1, p0, Lo/RootTrustManagerFactorySpi;->g:Ljava/lang/String;

    aput-object v1, v0, v5

    .line 261
    invoke-static {v0}, Lo/SearchIndexableResource;->b([Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object v0

    invoke-static {v0, v4}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method private final m()Lo/TextInputTimePickerView;
    .locals 3

    .line 285
    invoke-direct {p0}, Lo/RootTrustManagerFactorySpi;->h()Lo/TextInputTimePickerView;

    move-result-object v0

    iget v1, p0, Lo/RootTrustManagerFactorySpi;->l:I

    iget v2, p0, Lo/RootTrustManagerFactorySpi;->m:I

    invoke-static {v1, v2}, Lo/SearchIndexableResource;->e(II)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Lo/TextInputTimePickerView;->b(Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object v0

    .line 286
    iget v1, p0, Lo/RootTrustManagerFactorySpi;->o:I

    iget v2, p0, Lo/RootTrustManagerFactorySpi;->k:I

    invoke-static {v1, v2}, Lo/SearchIndexableResource;->e(II)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Lo/TextInputTimePickerView;->b(Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object v0

    const-string v1, "createBaseForRequestType\u2026ideoIndex, toVideoIndex))"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method private final o()Lo/TextInputTimePickerView;
    .locals 3

    .line 275
    invoke-direct {p0}, Lo/RootTrustManagerFactorySpi;->h()Lo/TextInputTimePickerView;

    move-result-object v0

    iget v1, p0, Lo/RootTrustManagerFactorySpi;->l:I

    iget v2, p0, Lo/RootTrustManagerFactorySpi;->m:I

    invoke-static {v1, v2}, Lo/SearchIndexableResource;->e(II)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Lo/TextInputTimePickerView;->b(Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object v0

    const-string v1, "summary"

    invoke-interface {v0, v1}, Lo/TextInputTimePickerView;->b(Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object v0

    const-string v1, "createBaseForRequestType\u2026ction)).append(\"summary\")"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public synthetic a(Lo/TableLayout;Lo/TextClock;)Ljava/lang/Object;
    .locals 0

    .line 108
    invoke-virtual {p0, p1, p2}, Lo/RootTrustManagerFactorySpi;->d(Lo/TableLayout;Lo/TextClock;)Lkotlin/Pair;

    move-result-object p1

    return-object p1
.end method

.method public a()Z
    .locals 2

    .line 310
    iget-object v0, p0, Lo/RootTrustManagerFactorySpi;->n:Lcom/netflix/mediaclient/browse/api/task/TaskMode;

    sget-object v1, Lcom/netflix/mediaclient/browse/api/task/TaskMode;->b:Lcom/netflix/mediaclient/browse/api/task/TaskMode;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public b(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/TextInputTimePickerView;",
            ">;)V"
        }
    .end annotation

    const-string v0, "pqls"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 228
    iget-object v0, p0, Lo/RootTrustManagerFactorySpi;->i:Lo/TextInputTimePickerView;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 236
    iget-object v0, p0, Lo/RootTrustManagerFactorySpi;->f:Lo/TextInputTimePickerView;

    const-string v1, "resultItem"

    invoke-interface {v0, v1}, Lo/TextInputTimePickerView;->b(Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "summary"

    aput-object v3, v1, v2

    invoke-static {v1}, Lo/SearchIndexableResource;->b([Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object v1

    invoke-interface {v0, v1}, Lo/TextInputTimePickerView;->d(Lo/TextInputTimePickerView;)Lo/TextInputTimePickerView;

    move-result-object v0

    const-string v1, "searchPageBasePath.appen\u2026Helper.create(\"summary\"))"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 238
    iget-object v0, p0, Lo/RootTrustManagerFactorySpi;->h:Lo/TextInputTimePickerView;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public c()Z
    .locals 2

    .line 312
    iget-object v0, p0, Lo/RootTrustManagerFactorySpi;->n:Lcom/netflix/mediaclient/browse/api/task/TaskMode;

    sget-object v1, Lcom/netflix/mediaclient/browse/api/task/TaskMode;->a:Lcom/netflix/mediaclient/browse/api/task/TaskMode;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public d(Lo/TableLayout;Lo/TextClock;)Lkotlin/Pair;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/TableLayout<",
            "*>;",
            "Lo/TextClock;",
            ")",
            "Lkotlin/Pair<",
            "Lcom/netflix/model/leafs/NAPASearchPageResultsImpl;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ">;"
        }
    .end annotation

    const-string v0, "modelProxy"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "result"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 188
    new-instance p2, Lcom/netflix/model/leafs/NAPASearchPageResultsImpl$Builder;

    new-instance v0, Lcom/netflix/model/leafs/NAPASearchPageResultsImpl;

    invoke-direct {v0}, Lcom/netflix/model/leafs/NAPASearchPageResultsImpl;-><init>()V

    invoke-direct {p2, v0}, Lcom/netflix/model/leafs/NAPASearchPageResultsImpl$Builder;-><init>(Lcom/netflix/model/leafs/NAPASearchPageResultsImpl;)V

    .line 190
    iget-object v0, p0, Lo/RootTrustManagerFactorySpi;->i:Lo/TextInputTimePickerView;

    invoke-interface {p1, v0}, Lo/TableLayout;->e(Lo/TextInputTimePickerView;)Ljava/util/List;

    move-result-object v0

    const-string v1, "modelProxy.getItemsAsLis\u2026Impl>(sectionSummaryPath)"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Iterable;

    .line 315
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/Collection;

    .line 322
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Lcom/netflix/model/leafs/SearchSectionSummaryImpl;

    if-eqz v3, :cond_0

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 323
    :cond_1
    check-cast v1, Ljava/util/List;

    .line 192
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/netflix/model/leafs/SearchSectionSummaryImpl;

    invoke-virtual {v2}, Lcom/netflix/model/leafs/SearchSectionSummaryImpl;->getDisplayString()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_a

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/netflix/model/leafs/SearchSectionSummaryImpl;

    invoke-virtual {v2}, Lcom/netflix/model/leafs/SearchSectionSummaryImpl;->getListType()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    goto/16 :goto_5

    .line 198
    :cond_2
    move-object v2, v1

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    :goto_1
    if-ge v0, v2, :cond_9

    .line 202
    new-instance v3, Lcom/netflix/model/leafs/NAPASearchPageResultImpl$Builder;

    new-instance v4, Lcom/netflix/model/leafs/NAPASearchPageResultImpl;

    invoke-direct {v4}, Lcom/netflix/model/leafs/NAPASearchPageResultImpl;-><init>()V

    invoke-direct {v3, v4}, Lcom/netflix/model/leafs/NAPASearchPageResultImpl$Builder;-><init>(Lcom/netflix/model/leafs/NAPASearchPageResultImpl;)V

    .line 203
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/netflix/model/leafs/SearchSectionSummaryImpl;

    .line 205
    invoke-virtual {v4}, Lcom/netflix/model/leafs/SearchSectionSummaryImpl;->getRequestId()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_8

    invoke-virtual {v4}, Lcom/netflix/model/leafs/SearchSectionSummaryImpl;->getListType()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_8

    invoke-virtual {v4}, Lcom/netflix/model/leafs/SearchSectionSummaryImpl;->getDisplayString()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_3

    goto/16 :goto_4

    .line 209
    :cond_3
    iget v5, p0, Lo/RootTrustManagerFactorySpi;->l:I

    add-int/2addr v5, v0

    invoke-direct {p0, v5}, Lo/RootTrustManagerFactorySpi;->c(I)Lo/TextInputTimePickerView;

    move-result-object v5

    invoke-interface {p1, v5}, Lo/TableLayout;->e(Lo/TextInputTimePickerView;)Ljava/util/List;

    move-result-object v5

    const-string v6, "modelProxy.getItemsAsLis\u2026ath(index + fromSection))"

    invoke-static {v5, v6}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Ljava/lang/Iterable;

    .line 324
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    check-cast v7, Ljava/util/Collection;

    .line 331
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    instance-of v9, v8, Lcom/netflix/model/leafs/SearchCollectionEntityImpl;

    if-eqz v9, :cond_4

    invoke-interface {v7, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 332
    :cond_5
    check-cast v7, Ljava/util/List;

    .line 211
    check-cast v7, Ljava/util/Collection;

    invoke-virtual {v3, v7}, Lcom/netflix/model/leafs/NAPASearchPageResultImpl$Builder;->addVideoEntities(Ljava/util/Collection;)V

    .line 213
    iget v5, p0, Lo/RootTrustManagerFactorySpi;->l:I

    add-int/2addr v5, v0

    invoke-direct {p0, v5}, Lo/RootTrustManagerFactorySpi;->b(I)Lo/TextInputTimePickerView;

    move-result-object v5

    invoke-interface {p1, v5}, Lo/TableLayout;->e(Lo/TextInputTimePickerView;)Ljava/util/List;

    move-result-object v5

    invoke-static {v5, v6}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Ljava/lang/Iterable;

    .line 333
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    check-cast v6, Ljava/util/Collection;

    .line 340
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_6
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    instance-of v8, v7, Lo/agp;

    if-eqz v8, :cond_6

    invoke-interface {v6, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 341
    :cond_7
    check-cast v6, Ljava/util/List;

    .line 215
    check-cast v6, Ljava/util/Collection;

    invoke-virtual {v3, v6}, Lcom/netflix/model/leafs/NAPASearchPageResultImpl$Builder;->addVideos(Ljava/util/Collection;)V

    .line 216
    iget v5, p0, Lo/RootTrustManagerFactorySpi;->l:I

    add-int/2addr v5, v0

    invoke-virtual {v3, v5}, Lcom/netflix/model/leafs/NAPASearchPageResultImpl$Builder;->setSectionIndex(I)V

    .line 217
    check-cast v4, Lcom/netflix/model/leafs/SearchSectionSummary;

    invoke-virtual {v3, v4}, Lcom/netflix/model/leafs/NAPASearchPageResultImpl$Builder;->setSearchSectionSummary(Lcom/netflix/model/leafs/SearchSectionSummary;)V

    .line 218
    invoke-virtual {v3}, Lcom/netflix/model/leafs/NAPASearchPageResultImpl$Builder;->getResults()Lcom/netflix/model/leafs/NAPASearchPageResultImpl;

    move-result-object v3

    check-cast v3, Lo/Bt;

    invoke-virtual {p2, v3}, Lcom/netflix/model/leafs/NAPASearchPageResultsImpl$Builder;->addSearchSection(Lo/Bt;)V

    .line 219
    iget-wide v3, p0, Lo/RootTrustManagerFactorySpi;->j:J

    invoke-virtual {p2, v3, v4}, Lcom/netflix/model/leafs/NAPASearchPageResultsImpl$Builder;->setRequestId(J)V

    :cond_8
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 222
    :cond_9
    new-instance p1, Lkotlin/Pair;

    invoke-virtual {p2}, Lcom/netflix/model/leafs/NAPASearchPageResultsImpl$Builder;->getResults()Lcom/netflix/model/leafs/NAPASearchPageResultsImpl;

    move-result-object p2

    sget-object v0, Lo/LegacyErrorStrings;->b:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-direct {p1, p2, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    .line 195
    :cond_a
    :goto_5
    iget-wide v0, p0, Lo/RootTrustManagerFactorySpi;->j:J

    invoke-virtual {p2, v0, v1}, Lcom/netflix/model/leafs/NAPASearchPageResultsImpl$Builder;->setRequestId(J)V

    .line 196
    new-instance p1, Lkotlin/Pair;

    invoke-virtual {p2}, Lcom/netflix/model/leafs/NAPASearchPageResultsImpl$Builder;->getResults()Lcom/netflix/model/leafs/NAPASearchPageResultsImpl;

    move-result-object p2

    sget-object v0, Lo/LegacyErrorStrings;->b:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-direct {p1, p2, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method
