.class public final Lo/NegationValidator;
.super Lo/SyncConstValue;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/NegationValidator$ActionBar;
    }
.end annotation


# static fields
.field public static final b:Lo/NegationValidator$ActionBar;


# instance fields
.field private a:Lo/TextInputTimePickerView;

.field private final c:Lo/TextInputTimePickerView;

.field private d:Lo/TextInputTimePickerView;

.field private e:Lo/TextInputTimePickerView;

.field private final f:I

.field private final g:I

.field private final i:Lcom/netflix/mediaclient/browse/api/task/TaskMode;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/NegationValidator$ActionBar;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/NegationValidator$ActionBar;-><init>(Lo/amc;)V

    sput-object v0, Lo/NegationValidator;->b:Lo/NegationValidator$ActionBar;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x7

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lo/NegationValidator;-><init>(Lcom/netflix/mediaclient/browse/api/task/TaskMode;IIILo/amc;)V

    return-void
.end method

.method public constructor <init>(Lcom/netflix/mediaclient/browse/api/task/TaskMode;II)V
    .locals 5

    const-string v0, "taskMode"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "PreFetchPreQueryV3SectionsTask"

    .line 26
    invoke-direct {p0, v0}, Lo/SyncConstValue;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lo/NegationValidator;->i:Lcom/netflix/mediaclient/browse/api/task/TaskMode;

    iput p2, p0, Lo/NegationValidator;->g:I

    iput p3, p0, Lo/NegationValidator;->f:I

    const/4 p1, 0x3

    new-array p2, p1, [Ljava/lang/Object;

    const-string p3, "preQuerySearchV3"

    const/4 v0, 0x0

    aput-object p3, p2, v0

    .line 30
    iget v1, p0, Lo/NegationValidator;->g:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-static {v1}, Lo/SearchIndexableResource;->d(I)Ljava/util/Map;

    move-result-object v1

    aput-object v1, p2, v2

    const-string v1, "summary"

    const/4 v3, 0x2

    aput-object v1, p2, v3

    .line 28
    invoke-static {p2}, Lo/SearchIndexableResource;->b([Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object p2

    const-string v4, "PQLHelper.create(\n      \u2026,\n        \"summary\"\n    )"

    invoke-static {p2, v4}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lo/NegationValidator;->c:Lo/TextInputTimePickerView;

    new-array p1, p1, [Ljava/lang/Object;

    aput-object p3, p1, v0

    .line 36
    iget p2, p0, Lo/NegationValidator;->g:I

    sub-int/2addr p2, v2

    invoke-static {p2}, Lo/SearchIndexableResource;->d(I)Ljava/util/Map;

    move-result-object p2

    aput-object p2, p1, v2

    .line 37
    iget p2, p0, Lo/NegationValidator;->f:I

    sub-int/2addr p2, v2

    invoke-static {p2}, Lo/SearchIndexableResource;->d(I)Ljava/util/Map;

    move-result-object p2

    aput-object p2, p1, v3

    .line 34
    invoke-static {p1}, Lo/SearchIndexableResource;->b([Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object p1

    const-string p2, "PQLHelper.create(\n      \u2026ItemsInSection - 1)\n    )"

    invoke-static {p1, p2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lo/NegationValidator;->a:Lo/TextInputTimePickerView;

    .line 41
    iget-object p1, p0, Lo/NegationValidator;->a:Lo/TextInputTimePickerView;

    const-string p2, "preQueryItem"

    invoke-interface {p1, p2}, Lo/TextInputTimePickerView;->b(Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object p1

    const-string p2, "pQSV3Path.append(\"preQueryItem\")"

    invoke-static {p1, p2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lo/NegationValidator;->e:Lo/TextInputTimePickerView;

    .line 43
    iget-object p1, p0, Lo/NegationValidator;->a:Lo/TextInputTimePickerView;

    invoke-interface {p1, v1}, Lo/TextInputTimePickerView;->b(Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object p1

    const-string p2, "pQSV3Path.append(\"summary\")"

    invoke-static {p1, p2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lo/NegationValidator;->d:Lo/TextInputTimePickerView;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/netflix/mediaclient/browse/api/task/TaskMode;IIILo/amc;)V
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    .line 22
    sget-object p1, Lcom/netflix/mediaclient/browse/api/task/TaskMode;->d:Lcom/netflix/mediaclient/browse/api/task/TaskMode;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    const/4 p2, 0x3

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    const/16 p3, 0x32

    .line 24
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lo/NegationValidator;-><init>(Lcom/netflix/mediaclient/browse/api/task/TaskMode;II)V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
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

    .line 46
    iget-object v0, p0, Lo/NegationValidator;->c:Lo/TextInputTimePickerView;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    sget-object v0, Lo/SEService;->e:Lo/TextInputTimePickerView;

    iget-object v1, p0, Lo/NegationValidator;->e:Lo/TextInputTimePickerView;

    invoke-interface {v0, v1}, Lo/TextInputTimePickerView;->c(Lo/TextInputTimePickerView;)Lo/TextInputTimePickerView;

    move-result-object v0

    const-string v1, "CmpUtils.PRE_QUERY_SEARC\u2026E_PQL.prepend(videosPath)"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    iget-object v0, p0, Lo/NegationValidator;->e:Lo/TextInputTimePickerView;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "summary"

    aput-object v3, v1, v2

    invoke-static {v1}, Lo/SearchIndexableResource;->b([Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object v1

    invoke-interface {v0, v1}, Lo/TextInputTimePickerView;->d(Lo/TextInputTimePickerView;)Lo/TextInputTimePickerView;

    move-result-object v0

    const-string v1, "videosPath.append(PQLHelper.create(\"summary\"))"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lo/NegationValidator;->e:Lo/TextInputTimePickerView;

    .line 49
    iget-object v0, p0, Lo/NegationValidator;->e:Lo/TextInputTimePickerView;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    iget-object v0, p0, Lo/NegationValidator;->d:Lo/TextInputTimePickerView;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Lo/ConfirmationAlreadyPresentingException;Lo/ci;Lo/TextClock;)V
    .locals 5

    const-string p3, "cmpTask"

    invoke-static {p1, p3}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "callbackOnMain"

    invoke-static {p2, p3}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    iget-object p1, p1, Lo/ConfirmationAlreadyPresentingException;->a:Lo/FontRequest;

    const-string p3, "cmpTask.modelProxy"

    invoke-static {p1, p3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    iget-object p3, p0, Lo/NegationValidator;->c:Lo/TextInputTimePickerView;

    invoke-virtual {p1, p3}, Lo/FontRequest;->e(Lo/TextInputTimePickerView;)Ljava/util/List;

    move-result-object p1

    const-string p3, "modelProxy.getItemsAsLis\u2026Impl>(sectionSummaryPath)"

    invoke-static {p1, p3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Iterable;

    .line 97
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    check-cast p3, Ljava/util/Collection;

    .line 104
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lcom/netflix/model/leafs/SearchSectionSummaryImpl;

    if-eqz v1, :cond_0

    invoke-interface {p3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 105
    :cond_1
    check-cast p3, Ljava/util/List;

    .line 61
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_9

    const/4 p1, 0x0

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/model/leafs/SearchSectionSummaryImpl;

    invoke-virtual {v0}, Lcom/netflix/model/leafs/SearchSectionSummaryImpl;->getDisplayString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/model/leafs/SearchSectionSummaryImpl;

    invoke-virtual {v0}, Lcom/netflix/model/leafs/SearchSectionSummaryImpl;->getListType()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_5

    .line 64
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 65
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    :goto_1
    if-ge p1, v1, :cond_8

    .line 66
    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/netflix/model/leafs/SearchSectionSummaryImpl;

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    .line 68
    invoke-virtual {v2}, Lcom/netflix/model/leafs/SearchSectionSummaryImpl;->getRequestId()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_3
    move-object v4, v3

    :goto_2
    if-eqz v4, :cond_7

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/netflix/model/leafs/SearchSectionSummaryImpl;->getListType()Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    :cond_4
    move-object v4, v3

    :goto_3
    if-eqz v4, :cond_7

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/netflix/model/leafs/SearchSectionSummaryImpl;->getDisplayString()Ljava/lang/String;

    move-result-object v3

    :cond_5
    if-nez v3, :cond_6

    goto :goto_4

    .line 71
    :cond_6
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    :goto_4
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 73
    :cond_8
    check-cast v0, Ljava/util/List;

    sget-object p1, Lo/LegacyErrorStrings;->b:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    check-cast p1, Lcom/netflix/mediaclient/android/app/Status;

    invoke-interface {p2, v0, p1}, Lo/ci;->l(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_6

    .line 62
    :cond_9
    :goto_5
    sget-object p1, Lo/LegacyErrorStrings;->V:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    check-cast p1, Lcom/netflix/mediaclient/android/app/Status;

    invoke-interface {p2, p3, p1}, Lo/ci;->l(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    :goto_6
    return-void
.end method

.method public a()Z
    .locals 2

    .line 89
    iget-object v0, p0, Lo/NegationValidator;->i:Lcom/netflix/mediaclient/browse/api/task/TaskMode;

    sget-object v1, Lcom/netflix/mediaclient/browse/api/task/TaskMode;->b:Lcom/netflix/mediaclient/browse/api/task/TaskMode;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public d()Z
    .locals 2

    .line 93
    iget-object v0, p0, Lo/NegationValidator;->i:Lcom/netflix/mediaclient/browse/api/task/TaskMode;

    sget-object v1, Lcom/netflix/mediaclient/browse/api/task/TaskMode;->a:Lcom/netflix/mediaclient/browse/api/task/TaskMode;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public e(Lo/ci;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 78
    invoke-interface {p1, v0, p2}, Lo/ci;->l(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    :cond_0
    return-void
.end method
