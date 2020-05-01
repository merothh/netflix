.class public final Lo/FieldClassification;
.super Lo/Session;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lo/Session;"
    }
.end annotation


# instance fields
.field private final d:Lo/cm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/cm<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final e:Lo/DateTransformation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/DateTransformation<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo/FontRequest;Lo/SearchIndexablesContract;Lo/DateTransformation;Lo/cm;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/FontRequest<",
            "*>;",
            "Lo/SearchIndexablesContract;",
            "Lo/DateTransformation<",
            "TT;>;",
            "Lo/cm<",
            "TT;>;)V"
        }
    .end annotation

    .line 31
    invoke-interface {p3}, Lo/DateTransformation;->j()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2, p4}, Lo/Session;-><init>(Ljava/lang/String;Lo/FontRequest;Lo/SearchIndexablesContract;Lo/ci;)V

    .line 32
    iput-object p3, p0, Lo/FieldClassification;->e:Lo/DateTransformation;

    .line 33
    iget-object p2, p0, Lo/FieldClassification;->e:Lo/DateTransformation;

    invoke-interface {p2, p1}, Lo/DateTransformation;->a(Lo/TableLayout;)V

    .line 34
    iput-object p4, p0, Lo/FieldClassification;->d:Lo/cm;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/util/Map;)V
    .locals 0

    .line 23
    invoke-super {p0, p1}, Lo/Session;->a(Ljava/util/Map;)V

    return-void
.end method

.method protected a()Z
    .locals 1

    .line 81
    iget-object v0, p0, Lo/FieldClassification;->e:Lo/DateTransformation;

    invoke-interface {v0}, Lo/DateTransformation;->b()Z

    move-result v0

    return v0
.end method

.method protected a(Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/TextInputTimePickerView;",
            ">;)Z"
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lo/FieldClassification;->e:Lo/DateTransformation;

    invoke-interface {v0, p1}, Lo/DateTransformation;->d(Ljava/util/List;)Z

    move-result p1

    return p1
.end method

.method protected b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/adt$Activity;",
            ">;"
        }
    .end annotation

    .line 71
    iget-object v0, p0, Lo/FieldClassification;->e:Lo/DateTransformation;

    invoke-interface {v0}, Lo/DateTransformation;->e()Ljava/util/List;

    move-result-object v0

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

    .line 39
    iget-object v0, p0, Lo/FieldClassification;->e:Lo/DateTransformation;

    invoke-interface {v0, p1}, Lo/DateTransformation;->b(Ljava/util/List;)V

    return-void
.end method

.method protected b(Lo/ci;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .line 66
    iget-object p1, p0, Lo/FieldClassification;->e:Lo/DateTransformation;

    iget-object v0, p0, Lo/FieldClassification;->a:Lo/FontRequest;

    invoke-virtual {v0}, Lo/FontRequest;->j()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lo/FieldClassification;->d:Lo/cm;

    invoke-interface {p1, v0, v1, p2}, Lo/DateTransformation;->e(Landroid/os/Handler;Lo/cm;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method protected c()Lcom/android/volley/Request$Priority;
    .locals 3

    .line 102
    iget-object v0, p0, Lo/FieldClassification;->e:Lo/DateTransformation;

    invoke-interface {v0}, Lo/DateTransformation;->g()Lcom/netflix/mediaclient/browse/api/task/NetworkPriority;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 106
    :cond_0
    sget-object v0, Lo/FieldClassification$1;->e:[I

    iget-object v2, p0, Lo/FieldClassification;->e:Lo/DateTransformation;

    invoke-interface {v2}, Lo/DateTransformation;->g()Lcom/netflix/mediaclient/browse/api/task/NetworkPriority;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/mediaclient/browse/api/task/NetworkPriority;->ordinal()I

    move-result v2

    aget v0, v0, v2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_4

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    return-object v1

    .line 114
    :cond_1
    sget-object v0, Lcom/android/volley/Request$Priority;->d:Lcom/android/volley/Request$Priority;

    return-object v0

    .line 112
    :cond_2
    sget-object v0, Lcom/android/volley/Request$Priority;->a:Lcom/android/volley/Request$Priority;

    return-object v0

    .line 110
    :cond_3
    sget-object v0, Lcom/android/volley/Request$Priority;->c:Lcom/android/volley/Request$Priority;

    return-object v0

    .line 108
    :cond_4
    sget-object v0, Lcom/android/volley/Request$Priority;->b:Lcom/android/volley/Request$Priority;

    return-object v0
.end method

.method public bridge synthetic c(Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;)V
    .locals 0

    .line 23
    invoke-super {p0, p1}, Lo/Session;->c(Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;)V

    return-void
.end method

.method public bridge synthetic d()Ljava/lang/String;
    .locals 1

    .line 23
    invoke-super {p0}, Lo/Session;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected d(Lo/RecommendationInfo;)V
    .locals 1

    .line 127
    iget-object v0, p0, Lo/FieldClassification;->e:Lo/DateTransformation;

    invoke-interface {v0, p1}, Lo/DateTransformation;->b(Lo/RecommendationInfo;)V

    return-void
.end method

.method protected d(Lo/ci;Lo/TextClock;)V
    .locals 2

    .line 55
    iget-object p1, p0, Lo/FieldClassification;->e:Lo/DateTransformation;

    iget-object v0, p0, Lo/FieldClassification;->a:Lo/FontRequest;

    invoke-virtual {v0}, Lo/FontRequest;->j()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lo/FieldClassification;->d:Lo/cm;

    invoke-interface {p1, v0, v1, p2}, Lo/DateTransformation;->b(Landroid/os/Handler;Lo/cm;Lo/TextClock;)V

    return-void
.end method

.method protected j()V
    .locals 1

    .line 44
    iget-object v0, p0, Lo/FieldClassification;->e:Lo/DateTransformation;

    invoke-interface {v0}, Lo/DateTransformation;->d()V

    return-void
.end method

.method protected k()Z
    .locals 1

    .line 96
    iget-object v0, p0, Lo/FieldClassification;->e:Lo/DateTransformation;

    invoke-interface {v0}, Lo/DateTransformation;->c()Z

    move-result v0

    return v0
.end method

.method protected m()Z
    .locals 1

    .line 91
    iget-object v0, p0, Lo/FieldClassification;->e:Lo/DateTransformation;

    invoke-interface {v0}, Lo/DateTransformation;->a()Z

    move-result v0

    return v0
.end method

.method protected o()Z
    .locals 1

    .line 86
    iget-object v0, p0, Lo/FieldClassification;->e:Lo/DateTransformation;

    invoke-interface {v0}, Lo/DateTransformation;->i()Z

    move-result v0

    return v0
.end method

.method protected t()Z
    .locals 1

    .line 122
    iget-object v0, p0, Lo/FieldClassification;->e:Lo/DateTransformation;

    invoke-interface {v0}, Lo/DateTransformation;->f()Z

    move-result v0

    return v0
.end method
