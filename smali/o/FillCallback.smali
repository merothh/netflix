.class public Lo/FillCallback;
.super Lo/VoicemailContract;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/FillCallback$Activity;
    }
.end annotation


# static fields
.field private static final g:Lo/FillCallback$Activity;


# instance fields
.field private final d:Lcom/netflix/mediaclient/servicemgr/BillboardInteractionType;

.field private final e:Lo/AR;

.field private final h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    new-instance v0, Lo/FillCallback$Activity;

    invoke-direct {v0}, Lo/FillCallback$Activity;-><init>()V

    sput-object v0, Lo/FillCallback;->g:Lo/FillCallback$Activity;

    return-void
.end method

.method public constructor <init>(Lo/FontRequest;Lo/AR;Lcom/netflix/mediaclient/servicemgr/BillboardInteractionType;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/FontRequest<",
            "*>;",
            "Lo/AR;",
            "Lcom/netflix/mediaclient/servicemgr/BillboardInteractionType;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 43
    invoke-static {}, Lo/cq;->d()Lo/cq;

    move-result-object v0

    const-string v1, "LogBillboardActivity"

    invoke-direct {p0, v1, p1, v0}, Lo/VoicemailContract;-><init>(Ljava/lang/String;Lo/FontRequest;Lo/ci;)V

    .line 44
    iput-object p2, p0, Lo/FillCallback;->e:Lo/AR;

    .line 45
    iput-object p3, p0, Lo/FillCallback;->d:Lcom/netflix/mediaclient/servicemgr/BillboardInteractionType;

    .line 46
    iput-object p4, p0, Lo/FillCallback;->h:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/util/Map;)V
    .locals 0

    .line 31
    invoke-super {p0, p1}, Lo/VoicemailContract;->a(Ljava/util/Map;)V

    return-void
.end method

.method protected b(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/TextInputTimePickerView;",
            ">;)V"
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lo/FillCallback;->h:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 55
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "{}"

    .line 57
    :goto_0
    sget-object v1, Lo/FillCallback;->g:Lo/FillCallback$Activity;

    iget-object v2, p0, Lo/FillCallback;->a:Lo/FontRequest;

    invoke-virtual {v2}, Lo/FontRequest;->h()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lo/FillCallback;->e:Lo/AR;

    invoke-interface {v3}, Lo/AR;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lo/FillCallback$Activity;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "logBillboardActivity"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    .line 58
    iget-object v3, p0, Lo/FillCallback;->e:Lo/AR;

    invoke-interface {v3}, Lo/AR;->getId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lo/FillCallback;->d:Lcom/netflix/mediaclient/servicemgr/BillboardInteractionType;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/servicemgr/BillboardInteractionType;->d()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object v0, v1, v2

    invoke-static {v1}, Lo/SearchIndexableResource;->b([Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 61
    :cond_1
    invoke-virtual {p0}, Lo/FillCallback;->f()V

    :goto_1
    return-void
.end method

.method protected b(Lo/ci;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic c(Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;)V
    .locals 0

    .line 31
    invoke-super {p0, p1}, Lo/VoicemailContract;->c(Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;)V

    return-void
.end method

.method public bridge synthetic d()Ljava/lang/String;
    .locals 1

    .line 31
    invoke-super {p0}, Lo/VoicemailContract;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected d(Lo/RecommendationInfo;)V
    .locals 1

    .line 76
    invoke-virtual {p1}, Lo/RecommendationInfo;->o_()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lo/RecommendationInfo;->r_()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lo/RecommendationInfo;->n()Lo/PrintJob;

    move-result-object p1

    invoke-virtual {p1}, Lo/PrintJob;->size()I

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    return-void

    .line 77
    :cond_1
    new-instance p1, Lcom/netflix/falkor/FalkorException;

    const-string v0, "Empty value"

    invoke-direct {p1, v0}, Lcom/netflix/falkor/FalkorException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected d(Lo/ci;Lo/TextClock;)V
    .locals 0

    return-void
.end method

.method protected t()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
