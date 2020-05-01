.class public Lo/KeymasterIntArgument;
.super Lo/SyncConstValue;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/KeymasterIntArgument$StateListAnimator;
    }
.end annotation


# static fields
.field public static final a:Lo/KeymasterIntArgument$StateListAnimator;

.field private static final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final b:I

.field private final c:I

.field private final d:Z

.field private final e:Ljava/lang/String;

.field private final g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lo/KeymasterIntArgument$StateListAnimator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/KeymasterIntArgument$StateListAnimator;-><init>(Lo/amc;)V

    sput-object v0, Lo/KeymasterIntArgument;->a:Lo/KeymasterIntArgument$StateListAnimator;

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "summary"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "inRemindMeQueue"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "artworkColors"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "inQueue"

    aput-object v2, v0, v1

    .line 29
    invoke-static {v0}, Lo/SearchIndexableResource;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lo/KeymasterIntArgument;->i:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;ZZ)V
    .locals 1

    const-string v0, "FetchExtrasFeed"

    .line 22
    invoke-direct {p0, v0}, Lo/SyncConstValue;-><init>(Ljava/lang/String;)V

    iput p1, p0, Lo/KeymasterIntArgument;->c:I

    iput p2, p0, Lo/KeymasterIntArgument;->b:I

    iput-object p3, p0, Lo/KeymasterIntArgument;->e:Ljava/lang/String;

    iput-boolean p4, p0, Lo/KeymasterIntArgument;->d:Z

    iput-boolean p5, p0, Lo/KeymasterIntArgument;->g:Z

    return-void
.end method

.method public static final synthetic m()Ljava/util/List;
    .locals 1

    .line 16
    sget-object v0, Lo/KeymasterIntArgument;->i:Ljava/util/List;

    return-object v0
.end method

.method private final n()Lo/TextInputTimePickerView;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 138
    invoke-virtual {p0}, Lo/KeymasterIntArgument;->h()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "summary"

    aput-object v2, v0, v1

    invoke-static {v0}, Lo/SearchIndexableResource;->b([Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object v0

    const-string v1, "PQLHelper.create(getFeedName(), \"summary\")"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method private final o()Z
    .locals 2

    .line 43
    invoke-virtual {p0}, Lo/KeymasterIntArgument;->h()Ljava/lang/String;

    move-result-object v0

    const-string v1, "extrasFeed"

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 9
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

    .line 47
    invoke-virtual {p0}, Lo/KeymasterIntArgument;->h()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    .line 52
    iget v4, p0, Lo/KeymasterIntArgument;->c:I

    iget v5, p0, Lo/KeymasterIntArgument;->b:I

    invoke-static {v4, v5}, Lo/SearchIndexableResource;->e(II)Ljava/util/Map;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v2, v5

    const/4 v4, 0x2

    const-string v6, "video"

    aput-object v6, v2, v4

    .line 54
    sget-object v6, Lo/KeymasterIntArgument;->i:Ljava/util/List;

    const/4 v7, 0x3

    aput-object v6, v2, v7

    .line 50
    invoke-static {v2}, Lo/SearchIndexableResource;->b([Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object v2

    const-string v6, "PQLHelper.create(\n      \u2026eVideoLeafs\n            )"

    invoke-static {v2, v6}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-array v2, v1, [Ljava/lang/Object;

    aput-object v0, v2, v3

    .line 61
    iget v6, p0, Lo/KeymasterIntArgument;->c:I

    iget v8, p0, Lo/KeymasterIntArgument;->b:I

    invoke-static {v6, v8}, Lo/SearchIndexableResource;->e(II)Ljava/util/Map;

    move-result-object v6

    aput-object v6, v2, v5

    const-string v6, "tagsVideo"

    aput-object v6, v2, v4

    const-string v6, "tags"

    aput-object v6, v2, v7

    .line 59
    invoke-static {v2}, Lo/SearchIndexableResource;->b([Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object v2

    const-string v6, "PQLHelper.create(\n      \u2026     \"tags\"\n            )"

    invoke-static {v2, v6}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v3

    .line 69
    iget v2, p0, Lo/KeymasterIntArgument;->c:I

    iget v6, p0, Lo/KeymasterIntArgument;->b:I

    invoke-static {v2, v6}, Lo/SearchIndexableResource;->e(II)Ljava/util/Map;

    move-result-object v2

    aput-object v2, v1, v5

    const-string v2, "supplemental"

    aput-object v2, v1, v4

    new-array v2, v4, [Ljava/lang/Object;

    const-string v6, "summary"

    aput-object v6, v2, v3

    const-string v6, "detail"

    aput-object v6, v2, v5

    .line 71
    invoke-static {v2}, Lo/SearchIndexableResource;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    aput-object v2, v1, v7

    .line 67
    invoke-static {v1}, Lo/SearchIndexableResource;->b([Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object v1

    const-string v2, "PQLHelper.create(\n      \u2026, \"detail\")\n            )"

    invoke-static {v1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-array v1, v7, [Ljava/lang/Object;

    aput-object v0, v1, v3

    .line 77
    iget v0, p0, Lo/KeymasterIntArgument;->c:I

    iget v2, p0, Lo/KeymasterIntArgument;->b:I

    invoke-static {v0, v2}, Lo/SearchIndexableResource;->e(II)Ljava/util/Map;

    move-result-object v0

    aput-object v0, v1, v5

    aput-object v6, v1, v4

    .line 75
    invoke-static {v1}, Lo/SearchIndexableResource;->b([Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object v0

    const-string v1, "PQLHelper.create(\n      \u2026   \"detail\"\n            )"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    invoke-direct {p0}, Lo/KeymasterIntArgument;->n()Lo/TextInputTimePickerView;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Lo/ConfirmationAlreadyPresentingException;Lo/ci;Lo/TextClock;)V
    .locals 5

    const-string p3, "cmpTask"

    invoke-static {p1, p3}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    iget-object p3, p1, Lo/ConfirmationAlreadyPresentingException;->a:Lo/FontRequest;

    invoke-direct {p0}, Lo/KeymasterIntArgument;->n()Lo/TextInputTimePickerView;

    move-result-object v0

    invoke-virtual {p3, v0}, Lo/FontRequest;->b(Lo/TextInputTimePickerView;)Lo/agi;

    move-result-object p3

    check-cast p3, Lcom/netflix/model/leafs/ExtrasFeedItemSummaryImpl;

    if-eqz p3, :cond_1

    .line 117
    invoke-virtual {p3}, Lcom/netflix/model/leafs/ExtrasFeedItemSummaryImpl;->getLength()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 120
    :cond_0
    iget v0, p0, Lo/KeymasterIntArgument;->b:I

    iget v1, p0, Lo/KeymasterIntArgument;->c:I

    invoke-virtual {p3}, Lcom/netflix/model/leafs/ExtrasFeedItemSummaryImpl;->getLength()I

    move-result v2

    add-int/2addr v1, v2

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 121
    iget-object p1, p1, Lo/ConfirmationAlreadyPresentingException;->a:Lo/FontRequest;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 123
    invoke-virtual {p0}, Lo/KeymasterIntArgument;->h()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    .line 124
    iget v3, p0, Lo/KeymasterIntArgument;->c:I

    invoke-static {v3, v0}, Lo/SearchIndexableResource;->e(II)Ljava/util/Map;

    move-result-object v0

    aput-object v0, v1, v2

    .line 122
    invoke-static {v1}, Lo/SearchIndexableResource;->b([Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object v0

    .line 121
    invoke-virtual {p1, v0}, Lo/FontRequest;->e(Lo/TextInputTimePickerView;)Ljava/util/List;

    move-result-object p1

    const-string v0, "cmpTask.modelProxy.getIt\u2026      )\n                )"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 118
    :cond_1
    :goto_0
    invoke-static {}, Lo/akz;->e()Ljava/util/List;

    move-result-object p1

    :goto_1
    if-eqz p2, :cond_2

    .line 128
    check-cast p3, Lcom/netflix/model/leafs/ExtrasFeedItemSummary;

    sget-object v0, Lo/LegacyErrorStrings;->b:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    check-cast v0, Lcom/netflix/mediaclient/android/app/Status;

    invoke-interface {p2, p3, p1, v0}, Lo/ci;->b(Lcom/netflix/model/leafs/ExtrasFeedItemSummary;Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    :cond_2
    return-void
.end method

.method public d()Z
    .locals 1

    .line 84
    iget-boolean v0, p0, Lo/KeymasterIntArgument;->d:Z

    return v0
.end method

.method public e(Lo/ci;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 132
    invoke-static {}, Lo/akz;->e()Ljava/util/List;

    move-result-object v1

    invoke-interface {p1, v0, v1, p2}, Lo/ci;->b(Lcom/netflix/model/leafs/ExtrasFeedItemSummary;Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    :cond_0
    return-void
.end method

.method public e(Ljava/util/List;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/TextInputTimePickerView;",
            ">;)Z"
        }
    .end annotation

    const/4 p1, 0x1

    return p1
.end method

.method public h()Ljava/lang/String;
    .locals 1

    const-string v0, "extrasFeed"

    return-object v0
.end method

.method public i()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/adt$Activity;",
            ">;"
        }
    .end annotation

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 88
    iget-object v1, p0, Lo/KeymasterIntArgument;->e:Ljava/lang/String;

    check-cast v1, Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    invoke-static {v1}, Lo/anv;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-nez v1, :cond_2

    .line 89
    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Lo/adt$Activity;

    iget-object v3, p0, Lo/KeymasterIntArgument;->e:Ljava/lang/String;

    const-string v4, "featuredSupplementalVideoId"

    invoke-direct {v2, v4, v3}, Lo/adt$Activity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 91
    :cond_2
    iget-boolean v1, p0, Lo/KeymasterIntArgument;->g:Z

    if-eqz v1, :cond_3

    .line 92
    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Lo/adt$Activity;

    const-string v3, "forceRefresh"

    const-string v4, "true"

    invoke-direct {v2, v3, v4}, Lo/adt$Activity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 94
    :cond_3
    invoke-direct {p0}, Lo/KeymasterIntArgument;->o()Z

    move-result v1

    if-nez v1, :cond_4

    .line 95
    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-virtual {p0}, Lo/KeymasterIntArgument;->k()Lo/adt$Activity;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 97
    :cond_4
    sget-object v1, Lo/et;->e:Lo/et$ActionBar;

    invoke-virtual {v1}, Lo/et$ActionBar;->a()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 98
    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Lo/adt$Activity;

    .line 100
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    const-string v4, "kidsDark"

    .line 98
    invoke-direct {v2, v4, v3}, Lo/adt$Activity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_5
    return-object v0
.end method

.method public k()Lo/adt$Activity;
    .locals 2

    .line 107
    new-instance v0, Lo/adt$Activity;

    const-string v1, ""

    invoke-direct {v0, v1, v1}, Lo/adt$Activity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
