.class public final Lo/Pin;
.super Lo/VoicemailContract;
.source ""


# instance fields
.field private final d:I

.field private final e:Ljava/lang/String;

.field private final h:I


# direct methods
.method public constructor <init>(Lo/FontRequest;Ljava/lang/String;IILo/ci;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/FontRequest<",
            "*>;",
            "Ljava/lang/String;",
            "II",
            "Lo/ci;",
            ")V"
        }
    .end annotation

    const-string v0, "netflixModelProxy"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "slolomoId"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cb"

    invoke-static {p5, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "FetchSearchLoMos"

    .line 28
    invoke-direct {p0, v0, p1, p5}, Lo/VoicemailContract;-><init>(Ljava/lang/String;Lo/FontRequest;Lo/ci;)V

    iput-object p2, p0, Lo/Pin;->e:Ljava/lang/String;

    iput p3, p0, Lo/Pin;->d:I

    iput p4, p0, Lo/Pin;->h:I

    return-void
.end method


# virtual methods
.method protected b(Ljava/util/List;)V
    .locals 8
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

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "searchLolomos"

    aput-object v2, v0, v1

    .line 33
    iget-object v2, p0, Lo/Pin;->e:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v0, v3

    .line 34
    iget v2, p0, Lo/Pin;->d:I

    iget v4, p0, Lo/Pin;->h:I

    invoke-static {v2, v4}, Lo/SearchIndexableResource;->e(II)Ljava/util/Map;

    move-result-object v2

    const/4 v4, 0x2

    aput-object v2, v0, v4

    .line 31
    invoke-static {v0}, Lo/SearchIndexableResource;->b([Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object v0

    const-string v2, "PQLHelper.create(\n      \u2026omLomo, toLomo)\n        )"

    invoke-static {v0, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-static {}, Lo/bU;->a()Lo/bO;

    move-result-object v2

    invoke-virtual {p0}, Lo/Pin;->s()Landroid/content/Context;

    move-result-object v5

    sget-object v6, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->m:Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    invoke-interface {v2, v5, v6}, Lo/bO;->c(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;)I

    move-result v2

    const-string v5, "summary"

    .line 38
    invoke-interface {v0, v5}, Lo/TextInputTimePickerView;->b(Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object v6

    const-string v7, "basePath.append(\"summary\")"

    invoke-static {v6, v7}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-array v4, v4, [Ljava/lang/Object;

    sub-int/2addr v2, v3

    .line 41
    invoke-static {v2}, Lo/SearchIndexableResource;->d(I)Ljava/util/Map;

    move-result-object v2

    aput-object v2, v4, v1

    aput-object v5, v4, v3

    .line 40
    invoke-static {v4}, Lo/SearchIndexableResource;->b([Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object v1

    .line 39
    invoke-interface {v0, v1}, Lo/TextInputTimePickerView;->d(Lo/TextInputTimePickerView;)Lo/TextInputTimePickerView;

    move-result-object v0

    const-string v1, "basePath.append(\n       \u2026\"\n            )\n        )"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected b(Lo/ci;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    const-string v0, "callbackOnMain"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "res"

    invoke-static {p2, p1}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    iget-object p1, p0, Lo/Pin;->b:Lo/ci;

    invoke-static {}, Lo/akz;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0, p2}, Lo/ci;->a(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method protected d(Lo/ci;Lo/TextClock;)V
    .locals 3

    const-string v0, "callbackOnMain"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "result"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Lo/Pin;->a:Lo/FontRequest;

    iget v1, p0, Lo/Pin;->d:I

    iget-object p2, p2, Lo/TextClock;->d:Ljava/util/Collection;

    invoke-virtual {v0, v1, p2}, Lo/FontRequest;->d(ILjava/util/Collection;)Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_2

    check-cast p2, Ljava/lang/Iterable;

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/Collection;

    .line 65
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;

    if-eqz v2, :cond_0

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 66
    :cond_1
    check-cast v0, Ljava/util/List;

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 50
    :goto_1
    sget-object p2, Lo/LegacyErrorStrings;->b:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    check-cast p2, Lcom/netflix/mediaclient/android/app/Status;

    invoke-interface {p1, v0, p2}, Lo/ci;->a(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method
