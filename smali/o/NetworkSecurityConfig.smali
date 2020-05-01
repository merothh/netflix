.class public final Lo/NetworkSecurityConfig;
.super Lo/VoicemailContract;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/NetworkSecurityConfig$Application;
    }
.end annotation


# static fields
.field public static final d:Lo/NetworkSecurityConfig$Application;


# instance fields
.field private e:Lo/TextInputTimePickerView;

.field private final f:I

.field private final g:Ljava/lang/String;

.field private final h:I

.field private final i:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/NetworkSecurityConfig$Application;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/NetworkSecurityConfig$Application;-><init>(Lo/amc;)V

    sput-object v0, Lo/NetworkSecurityConfig;->d:Lo/NetworkSecurityConfig$Application;

    return-void
.end method

.method public constructor <init>(Lo/FontRequest;IILjava/lang/String;Lo/ci;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/FontRequest<",
            "*>;II",
            "Ljava/lang/String;",
            "Lo/ci;",
            "Z)V"
        }
    .end annotation

    const-string v0, "netflixModelProxy"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listId"

    invoke-static {p4, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cb"

    invoke-static {p5, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "FetchPreviews"

    .line 35
    invoke-direct {p0, v0, p1, p5}, Lo/VoicemailContract;-><init>(Ljava/lang/String;Lo/FontRequest;Lo/ci;)V

    iput p2, p0, Lo/NetworkSecurityConfig;->h:I

    iput p3, p0, Lo/NetworkSecurityConfig;->f:I

    iput-object p4, p0, Lo/NetworkSecurityConfig;->g:Ljava/lang/String;

    iput-boolean p6, p0, Lo/NetworkSecurityConfig;->i:Z

    return-void
.end method

.method private final d(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lo/agp;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Lcom/netflix/model/leafs/SupplementalSummary;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/netflix/model/leafs/PreviewSummary;",
            ">;"
        }
    .end annotation

    .line 123
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 124
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v1, Ljava/util/Map;

    .line 126
    check-cast p2, Ljava/lang/Iterable;

    .line 144
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/netflix/model/leafs/SupplementalSummary;

    .line 127
    iget-object v3, v2, Lcom/netflix/model/leafs/SupplementalSummary;->parentVideoId:Ljava/lang/String;

    if-eqz v3, :cond_0

    const-string v4, "it"

    .line 128
    invoke-static {v3, v4}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 132
    :cond_1
    check-cast p1, Ljava/lang/Iterable;

    .line 146
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lo/agp;

    .line 133
    invoke-virtual {p2}, Lo/agp;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/netflix/model/leafs/SupplementalSummary;

    if-eqz v2, :cond_2

    .line 136
    new-instance v3, Lcom/netflix/model/leafs/PreviewSummaryImpl;

    check-cast p2, Lo/agg;

    sget-object v4, Lo/ep;->d:Lo/ep$ActionBar;

    invoke-virtual {v4}, Lo/ep$ActionBar;->c()Z

    move-result v4

    invoke-direct {v3, p2, v2, v4}, Lcom/netflix/model/leafs/PreviewSummaryImpl;-><init>(Lo/agg;Lcom/netflix/model/leafs/SupplementalSummary;Z)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    return-object v0
.end method


# virtual methods
.method protected b()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/adt$Activity;",
            ">;"
        }
    .end annotation

    .line 96
    invoke-super {p0}, Lo/VoicemailContract;->b()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 101
    :cond_0
    invoke-static {}, Lo/ady;->b()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 102
    new-instance v1, Lo/adt$Activity;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    const-string v4, "previewsEnabled"

    invoke-direct {v1, v4, v3}, Lo/adt$Activity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    :cond_1
    sget-object v1, Lo/gS;->b:Lo/gS$StateListAnimator;

    invoke-virtual {v1}, Lo/gS$StateListAnimator;->b()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 107
    new-instance v1, Lo/adt$Activity;

    .line 109
    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    const-string v3, "includePreviewsOriginalBrandingUrl"

    .line 107
    invoke-direct {v1, v3, v2}, Lo/adt$Activity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return-object v0
.end method

.method protected b(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lo/TextInputTimePickerView;",
            ">;)V"
        }
    .end annotation

    const-string v0, "pqls"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    iget-object v0, p0, Lo/NetworkSecurityConfig;->a:Lo/FontRequest;

    const-string v1, "modelProxy"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lo/FontRequest;->h()Ljava/lang/String;

    move-result-object v0

    .line 48
    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->h:Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->b()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lo/NetworkSecurityConfig;->g:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3}, Lo/SEService;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lo/TextInputTimePickerView;

    move-result-object v0

    const-string v1, "CmpUtils.getListContextB\u2026, listId, lolomoId, null)"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lo/NetworkSecurityConfig;->e:Lo/TextInputTimePickerView;

    .line 50
    sget-object v0, Lo/ep;->d:Lo/ep$ActionBar;

    invoke-virtual {v0}, Lo/ep$ActionBar;->c()Z

    move-result v6

    xor-int/lit8 v7, v6, 0x1

    .line 54
    iget-object v2, p0, Lo/NetworkSecurityConfig;->e:Lo/TextInputTimePickerView;

    if-nez v2, :cond_0

    const-string v0, "basePath"

    invoke-static {v0}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    iget v3, p0, Lo/NetworkSecurityConfig;->h:I

    iget v4, p0, Lo/NetworkSecurityConfig;->f:I

    const/4 v5, 0x1

    move-object v1, p1

    .line 53
    invoke-static/range {v1 .. v7}, Lo/SEService;->c(Ljava/util/List;Lo/TextInputTimePickerView;IIZZZ)V

    return-void
.end method

.method protected b(Lo/ci;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    const-string v0, "callbackOnMain"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "res"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0, p2}, Lo/ci;->b(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method protected d(Lo/ci;Lo/TextClock;)V
    .locals 5

    const-string v0, "callbackOnMain"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "result"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    sget-object p2, Lo/ep;->d:Lo/ep$ActionBar;

    invoke-virtual {p2}, Lo/ep$ActionBar;->c()Z

    move-result p2

    if-eqz p2, :cond_0

    sget-object p2, Lo/SEService;->f:Lo/TextInputTimePickerView;

    goto :goto_0

    :cond_0
    sget-object p2, Lo/SEService;->a:Lo/TextInputTimePickerView;

    :goto_0
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    .line 68
    iget v2, p0, Lo/NetworkSecurityConfig;->h:I

    iget v3, p0, Lo/NetworkSecurityConfig;->f:I

    invoke-static {v2, v3}, Lo/SearchIndexableResource;->e(II)Ljava/util/Map;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 67
    invoke-static {v1}, Lo/SearchIndexableResource;->b([Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object v1

    .line 66
    invoke-interface {p2, v1}, Lo/TextInputTimePickerView;->c(Lo/TextInputTimePickerView;)Lo/TextInputTimePickerView;

    move-result-object p2

    .line 70
    iget-object v1, p0, Lo/NetworkSecurityConfig;->e:Lo/TextInputTimePickerView;

    const-string v2, "basePath"

    if-nez v1, :cond_1

    invoke-static {v2}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_1
    invoke-interface {p2, v1}, Lo/TextInputTimePickerView;->c(Lo/TextInputTimePickerView;)Lo/TextInputTimePickerView;

    move-result-object p2

    const-string v1, "pql.prepend(\n           \u2026      ).prepend(basePath)"

    invoke-static {p2, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    iget-object v1, p0, Lo/NetworkSecurityConfig;->e:Lo/TextInputTimePickerView;

    if-nez v1, :cond_2

    invoke-static {v2}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_2
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const-string v4, "thirtySecondPreviewData"

    aput-object v4, v2, v3

    .line 76
    iget v3, p0, Lo/NetworkSecurityConfig;->h:I

    iget v4, p0, Lo/NetworkSecurityConfig;->f:I

    invoke-static {v3, v4}, Lo/SearchIndexableResource;->e(II)Ljava/util/Map;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x2

    const-string v3, "supplementalSummary"

    aput-object v3, v2, v0

    .line 74
    invoke-static {v2}, Lo/SearchIndexableResource;->b([Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object v0

    .line 73
    invoke-interface {v1, v0}, Lo/TextInputTimePickerView;->d(Lo/TextInputTimePickerView;)Lo/TextInputTimePickerView;

    move-result-object v0

    const-string v1, "basePath.append(\n       \u2026\"\n            )\n        )"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    iget-object v1, p0, Lo/NetworkSecurityConfig;->a:Lo/FontRequest;

    invoke-virtual {v1, p2}, Lo/FontRequest;->e(Lo/TextInputTimePickerView;)Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 83
    iget-object v1, p0, Lo/NetworkSecurityConfig;->a:Lo/FontRequest;

    invoke-virtual {v1, v0}, Lo/FontRequest;->e(Lo/TextInputTimePickerView;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 86
    invoke-direct {p0, p2, v0}, Lo/NetworkSecurityConfig;->d(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    .line 87
    sget-object v0, Lo/LegacyErrorStrings;->b:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-virtual {p0}, Lo/NetworkSecurityConfig;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lo/NetworkSecurityConfig;->n()Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/service/falkor/FalkorAgentStatus;->d(Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;Ljava/lang/String;Z)Lcom/netflix/mediaclient/android/app/Status;

    move-result-object v0

    .line 85
    invoke-interface {p1, p2, v0}, Lo/ci;->b(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void

    .line 83
    :cond_3
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type kotlin.collections.List<com.netflix.model.leafs.SupplementalSummary>"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 81
    :cond_4
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type kotlin.collections.List<com.netflix.model.branches.FalkorVideo>"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected k()Z
    .locals 1

    .line 43
    iget-boolean v0, p0, Lo/NetworkSecurityConfig;->i:Z

    return v0
.end method
