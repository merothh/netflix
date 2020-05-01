.class public Lo/Tf;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/Bc;
.implements Lo/Bi;
.implements Lo/AK;


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/Cb;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/google/gson/Gson;

.field private final c:Lo/BY;

.field private final d:Lo/BY;

.field private final e:Lo/Bi;


# direct methods
.method public constructor <init>(Lo/BY;Lo/Bi;Lo/BY;)V
    .locals 1

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 68
    iput-object v0, p0, Lo/Tf;->a:Ljava/util/List;

    .line 75
    iput-object p1, p0, Lo/Tf;->c:Lo/BY;

    .line 76
    iput-object p2, p0, Lo/Tf;->e:Lo/Bi;

    .line 77
    iput-object p3, p0, Lo/Tf;->d:Lo/BY;

    .line 78
    const-class p1, Lcom/google/gson/Gson;

    invoke-static {p1}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/gson/Gson;

    iput-object p1, p0, Lo/Tf;->b:Lcom/google/gson/Gson;

    return-void
.end method

.method private aA()Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil;
    .locals 1

    .line 787
    const-class v0, Landroid/content/Context;

    invoke-static {v0}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil;->b(Landroid/content/Context;)Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil;

    move-result-object v0

    return-object v0
.end method

.method private aB()V
    .locals 4

    .line 685
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/Tf;->a:Ljava/util/List;

    .line 687
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    iget-object v1, p0, Lo/Tf;->c:Lo/BY;

    iget-object v1, v1, Lo/BY;->B:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 688
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 689
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 690
    invoke-static {v2}, Lo/Cb;->d(Lorg/json/JSONObject;)Lo/Cb;

    move-result-object v2

    .line 691
    iget-object v3, p0, Lo/Tf;->a:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    :cond_0
    return-void
.end method


# virtual methods
.method public A()Z
    .locals 1

    .line 647
    iget-object v0, p0, Lo/Tf;->e:Lo/Bi;

    invoke-interface {v0}, Lo/Bi;->A()Z

    move-result v0

    return v0
.end method

.method public B()Z
    .locals 1

    .line 652
    iget-object v0, p0, Lo/Tf;->e:Lo/Bi;

    invoke-interface {v0}, Lo/Bi;->B()Z

    move-result v0

    return v0
.end method

.method public C()J
    .locals 2

    .line 637
    iget-object v0, p0, Lo/Tf;->e:Lo/Bi;

    invoke-interface {v0}, Lo/Bi;->C()J

    move-result-wide v0

    return-wide v0
.end method

.method public D()Z
    .locals 1

    .line 642
    iget-object v0, p0, Lo/Tf;->e:Lo/Bi;

    invoke-interface {v0}, Lo/Bi;->D()Z

    move-result v0

    return v0
.end method

.method public E()I
    .locals 1

    .line 657
    iget-object v0, p0, Lo/Tf;->e:Lo/Bi;

    invoke-interface {v0}, Lo/Bi;->E()I

    move-result v0

    return v0
.end method

.method public F()Z
    .locals 1

    .line 662
    iget-object v0, p0, Lo/Tf;->e:Lo/Bi;

    invoke-interface {v0}, Lo/Bi;->F()Z

    move-result v0

    return v0
.end method

.method public G()Lcom/netflix/mediaclient/android/app/Status;
    .locals 1

    .line 627
    iget-object v0, p0, Lo/Tf;->e:Lo/Bi;

    invoke-interface {v0}, Lo/Bi;->G()Lcom/netflix/mediaclient/android/app/Status;

    move-result-object v0

    return-object v0
.end method

.method public H()Z
    .locals 1

    .line 405
    iget-object v0, p0, Lo/Tf;->c:Lo/BY;

    iget-boolean v0, v0, Lo/BY;->al:Z

    return v0
.end method

.method public I()Z
    .locals 1

    .line 400
    iget-object v0, p0, Lo/Tf;->c:Lo/BY;

    iget-boolean v0, v0, Lo/BY;->am:Z

    return v0
.end method

.method public J()Z
    .locals 1

    .line 415
    iget-object v0, p0, Lo/Tf;->c:Lo/BY;

    iget-boolean v0, v0, Lo/BY;->an:Z

    return v0
.end method

.method public K()J
    .locals 2

    .line 470
    iget-object v0, p0, Lo/Tf;->c:Lo/BY;

    iget-wide v0, v0, Lo/BY;->w:J

    return-wide v0
.end method

.method public L()Z
    .locals 1

    .line 410
    iget-object v0, p0, Lo/Tf;->c:Lo/BY;

    iget-boolean v0, v0, Lo/BY;->ak:Z

    return v0
.end method

.method public M()Z
    .locals 1

    .line 420
    iget-object v0, p0, Lo/Tf;->c:Lo/BY;

    iget-boolean v0, v0, Lo/BY;->aq:Z

    return v0
.end method

.method public N()Ljava/lang/String;
    .locals 1

    .line 460
    iget-object v0, p0, Lo/Tf;->c:Lo/BY;

    iget-object v0, v0, Lo/BY;->e:Ljava/lang/String;

    return-object v0
.end method

.method public O()Ljava/lang/String;
    .locals 1

    .line 480
    iget-object v0, p0, Lo/Tf;->d:Lo/BY;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lo/Tf;->c:Lo/BY;

    :goto_0
    iget-object v0, v0, Lo/BY;->e:Ljava/lang/String;

    return-object v0
.end method

.method public P()I
    .locals 1

    .line 475
    iget-object v0, p0, Lo/Tf;->c:Lo/BY;

    iget v0, v0, Lo/BY;->u:I

    return v0
.end method

.method public Q()Ljava/lang/String;
    .locals 1

    .line 485
    iget-object v0, p0, Lo/Tf;->c:Lo/BY;

    iget-object v0, v0, Lo/BY;->b:Ljava/lang/String;

    return-object v0
.end method

.method public R()I
    .locals 1

    .line 495
    iget-object v0, p0, Lo/Tf;->c:Lo/BY;

    iget v0, v0, Lo/BY;->y:I

    return v0
.end method

.method public S()I
    .locals 1

    .line 490
    iget-object v0, p0, Lo/Tf;->c:Lo/BY;

    iget v0, v0, Lo/BY;->s:I

    return v0
.end method

.method public T()I
    .locals 1

    .line 500
    iget-object v0, p0, Lo/Tf;->c:Lo/BY;

    iget v0, v0, Lo/BY;->t:I

    return v0
.end method

.method public U()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public V()I
    .locals 1

    .line 505
    iget-object v0, p0, Lo/Tf;->c:Lo/BY;

    iget v0, v0, Lo/BY;->q:I

    return v0
.end method

.method public W()Z
    .locals 1

    .line 520
    iget-object v0, p0, Lo/Tf;->c:Lo/BY;

    iget-boolean v0, v0, Lo/BY;->g:Z

    return v0
.end method

.method public X()I
    .locals 1

    .line 510
    iget-object v0, p0, Lo/Tf;->c:Lo/BY;

    iget v0, v0, Lo/BY;->p:I

    return v0
.end method

.method public Y()I
    .locals 1

    .line 525
    iget-object v0, p0, Lo/Tf;->c:Lo/BY;

    iget v0, v0, Lo/BY;->x:I

    return v0
.end method

.method public Z()Z
    .locals 1

    .line 535
    iget-object v0, p0, Lo/Tf;->c:Lo/BY;

    iget-boolean v0, v0, Lo/BY;->l:Z

    return v0
.end method

.method public a(I)I
    .locals 3

    .line 698
    iget-object v0, p0, Lo/Tf;->a:Ljava/util/List;

    if-nez v0, :cond_0

    .line 699
    invoke-direct {p0}, Lo/Tf;->aB()V

    .line 701
    :cond_0
    iget-object v0, p0, Lo/Tf;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/Cb;

    .line 702
    iget v2, v1, Lo/Cb;->number:I

    if-ne v2, p1, :cond_1

    .line 703
    iget p1, v1, Lo/Cb;->totalEpisodeCount:I

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .line 450
    iget-object v0, p0, Lo/Tf;->c:Lo/BY;

    iget-object v0, v0, Lo/BY;->a:Ljava/lang/String;

    return-object v0
.end method

.method public aH()Ljava/lang/String;
    .locals 1

    .line 98
    iget-object v0, p0, Lo/Tf;->c:Lo/BY;

    iget-object v0, v0, Lo/BY;->K:Ljava/lang/String;

    return-object v0
.end method

.method public aI()I
    .locals 1

    .line 83
    iget-object v0, p0, Lo/Tf;->c:Lo/BY;

    iget v0, v0, Lo/BY;->H:I

    return v0
.end method

.method public aK()Ljava/lang/String;
    .locals 1

    .line 93
    iget-object v0, p0, Lo/Tf;->c:Lo/BY;

    iget-object v0, v0, Lo/BY;->I:Ljava/lang/String;

    return-object v0
.end method

.method public aM()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public aN()I
    .locals 1

    .line 113
    iget-object v0, p0, Lo/Tf;->c:Lo/BY;

    iget v0, v0, Lo/BY;->G:I

    return v0
.end method

.method public aO()Ljava/lang/String;
    .locals 1

    .line 103
    iget-object v0, p0, Lo/Tf;->c:Lo/BY;

    iget-object v0, v0, Lo/BY;->N:Ljava/lang/String;

    return-object v0
.end method

.method public aP()Ljava/lang/String;
    .locals 1

    .line 118
    iget-object v0, p0, Lo/Tf;->c:Lo/BY;

    iget-object v0, v0, Lo/BY;->M:Ljava/lang/String;

    return-object v0
.end method

.method public aQ()Ljava/lang/String;
    .locals 1

    .line 108
    iget-object v0, p0, Lo/Tf;->c:Lo/BY;

    iget-object v0, v0, Lo/BY;->L:Ljava/lang/String;

    return-object v0
.end method

.method public aR()Ljava/lang/String;
    .locals 1

    .line 206
    iget-object v0, p0, Lo/Tf;->c:Lo/BY;

    iget-object v0, v0, Lo/BY;->J:Ljava/lang/String;

    return-object v0
.end method

.method public aS()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public aT()Z
    .locals 1

    .line 186
    iget-object v0, p0, Lo/Tf;->c:Lo/BY;

    iget-boolean v0, v0, Lo/BY;->ad:Z

    return v0
.end method

.method public aU()Ljava/lang/String;
    .locals 1

    .line 211
    iget-object v0, p0, Lo/Tf;->c:Lo/BY;

    iget-object v0, v0, Lo/BY;->O:Ljava/lang/String;

    return-object v0
.end method

.method public aV()Z
    .locals 1

    .line 191
    iget-object v0, p0, Lo/Tf;->c:Lo/BY;

    iget-boolean v0, v0, Lo/BY;->ai:Z

    return v0
.end method

.method public aW()Z
    .locals 1

    .line 216
    iget-object v0, p0, Lo/Tf;->c:Lo/BY;

    iget-boolean v0, v0, Lo/BY;->aj:Z

    return v0
.end method

.method public aX()Ljava/lang/String;
    .locals 1

    .line 259
    iget-object v0, p0, Lo/Tf;->c:Lo/BY;

    iget-object v0, v0, Lo/BY;->W:Ljava/lang/String;

    return-object v0
.end method

.method public aY()Ljava/lang/String;
    .locals 1

    .line 234
    iget-object v0, p0, Lo/Tf;->c:Lo/BY;

    iget-object v0, v0, Lo/BY;->R:Ljava/lang/String;

    return-object v0
.end method

.method public aZ()Ljava/lang/String;
    .locals 1

    .line 254
    iget-object v0, p0, Lo/Tf;->c:Lo/BY;

    iget-object v0, v0, Lo/BY;->T:Ljava/lang/String;

    return-object v0
.end method

.method public aa()Z
    .locals 1

    .line 545
    iget-object v0, p0, Lo/Tf;->c:Lo/BY;

    iget-boolean v0, v0, Lo/BY;->o:Z

    return v0
.end method

.method public ab()Z
    .locals 1

    .line 540
    iget-object v0, p0, Lo/Tf;->c:Lo/BY;

    iget-boolean v0, v0, Lo/BY;->m:Z

    return v0
.end method

.method public ac()Z
    .locals 1

    .line 530
    iget-object v0, p0, Lo/Tf;->c:Lo/BY;

    iget-boolean v0, v0, Lo/BY;->j:Z

    return v0
.end method

.method public ad()Z
    .locals 1

    .line 229
    iget-object v0, p0, Lo/Tf;->c:Lo/BY;

    iget-boolean v0, v0, Lo/BY;->ar:Z

    return v0
.end method

.method public ae()Z
    .locals 1

    .line 315
    iget-object v0, p0, Lo/Tf;->c:Lo/BY;

    iget-boolean v0, v0, Lo/BY;->n:Z

    return v0
.end method

.method public af()Z
    .locals 1

    .line 176
    iget-object v0, p0, Lo/Tf;->c:Lo/BY;

    iget-boolean v0, v0, Lo/BY;->h:Z

    return v0
.end method

.method public ag()Ljava/lang/String;
    .locals 1

    .line 320
    iget-object v0, p0, Lo/Tf;->c:Lo/BY;

    iget-object v0, v0, Lo/BY;->d:Ljava/lang/String;

    return-object v0
.end method

.method public ah()Z
    .locals 1

    .line 305
    iget-object v0, p0, Lo/Tf;->c:Lo/BY;

    iget-boolean v0, v0, Lo/BY;->k:Z

    return v0
.end method

.method public ai()Z
    .locals 1

    .line 181
    iget-object v0, p0, Lo/Tf;->c:Lo/BY;

    iget-boolean v0, v0, Lo/BY;->C:Z

    return v0
.end method

.method public aj()Lcom/netflix/model/leafs/VideoInfo$TimeCodes;
    .locals 2

    .line 331
    invoke-static {}, Lo/eI;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 332
    const-class v0, Lo/hW;

    invoke-static {v0}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/hW;

    invoke-interface {v0}, Lo/hW;->b()Lo/hZ;

    move-result-object v0

    iget-object v1, p0, Lo/Tf;->c:Lo/BY;

    iget-object v1, v1, Lo/BY;->at:Ljava/lang/String;

    invoke-interface {v0, v1}, Lo/hZ;->c(Ljava/lang/String;)Lcom/netflix/model/leafs/VideoInfo$TimeCodes;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public ak()Z
    .locals 1

    .line 196
    iget-object v0, p0, Lo/Tf;->c:Lo/BY;

    iget-boolean v0, v0, Lo/BY;->r:Z

    return v0
.end method

.method public al()Lcom/netflix/model/leafs/blades/CreditMarks;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public am()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public an()Lo/Bi;
    .locals 1

    .line 58
    iget-object v0, p0, Lo/Tf;->e:Lo/Bi;

    return-object v0
.end method

.method public ao()Ljava/lang/Integer;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public ap()Lcom/netflix/model/leafs/originals/interactive/InteractiveFeatures;
    .locals 2

    .line 346
    const-class v0, Lo/hW;

    invoke-static {v0}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/hW;

    invoke-interface {v0}, Lo/hW;->b()Lo/hZ;

    move-result-object v0

    iget-object v1, p0, Lo/Tf;->c:Lo/BY;

    iget-object v1, v1, Lo/BY;->ap:Ljava/lang/String;

    invoke-interface {v0, v1}, Lo/hZ;->d(Ljava/lang/String;)Lcom/netflix/model/leafs/originals/interactive/InteractiveFeatures;

    move-result-object v0

    return-object v0
.end method

.method public aq()Lo/BY;
    .locals 1

    .line 62
    iget-object v0, p0, Lo/Tf;->d:Lo/BY;

    return-object v0
.end method

.method public ar()[Ljava/lang/String;
    .locals 1

    .line 369
    iget-object v0, p0, Lo/Tf;->c:Lo/BY;

    iget-object v0, v0, Lo/BY;->ao:Ljava/lang/String;

    invoke-static {v0}, Lo/aev;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public as()Ljava/lang/String;
    .locals 1

    .line 710
    iget-object v0, p0, Lo/Tf;->c:Lo/BY;

    iget-object v0, v0, Lo/BY;->z:Ljava/lang/String;

    return-object v0
.end method

.method public at()Ljava/lang/String;
    .locals 3

    .line 728
    invoke-direct {p0}, Lo/Tf;->aA()Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil;

    move-result-object v0

    invoke-virtual {p0}, Lo/Tf;->getId()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil$ImageType;->a:Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil$ImageType;

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil;->c(Ljava/lang/String;Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil$ImageType;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 729
    iget-object v0, p0, Lo/Tf;->c:Lo/BY;

    iget-object v0, v0, Lo/BY;->P:Ljava/lang/String;

    return-object v0

    .line 731
    :cond_0
    invoke-direct {p0}, Lo/Tf;->aA()Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil;

    move-result-object v0

    invoke-virtual {p0}, Lo/Tf;->getId()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil$ImageType;->a:Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil$ImageType;

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil;->d(Ljava/lang/String;Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil$ImageType;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public au()Ljava/lang/String;
    .locals 1

    .line 765
    iget-object v0, p0, Lo/Tf;->c:Lo/BY;

    iget-object v0, v0, Lo/BY;->ae:Ljava/lang/String;

    return-object v0
.end method

.method public av()Ljava/lang/String;
    .locals 3

    .line 749
    invoke-direct {p0}, Lo/Tf;->aA()Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil;

    move-result-object v0

    invoke-virtual {p0}, Lo/Tf;->getId()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil$ImageType;->b:Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil$ImageType;

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil;->c(Ljava/lang/String;Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil$ImageType;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 750
    iget-object v0, p0, Lo/Tf;->c:Lo/BY;

    iget-object v0, v0, Lo/BY;->ac:Ljava/lang/String;

    return-object v0

    .line 752
    :cond_0
    invoke-direct {p0}, Lo/Tf;->aA()Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil;

    move-result-object v0

    invoke-virtual {p0}, Lo/Tf;->getId()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil$ImageType;->b:Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil$ImageType;

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil;->d(Ljava/lang/String;Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil$ImageType;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public aw()Ljava/lang/String;
    .locals 3

    .line 757
    invoke-direct {p0}, Lo/Tf;->aA()Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil;

    move-result-object v0

    invoke-virtual {p0}, Lo/Tf;->getId()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil$ImageType;->c:Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil$ImageType;

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil;->c(Ljava/lang/String;Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil$ImageType;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 758
    iget-object v0, p0, Lo/Tf;->c:Lo/BY;

    iget-object v0, v0, Lo/BY;->ab:Ljava/lang/String;

    return-object v0

    .line 760
    :cond_0
    invoke-direct {p0}, Lo/Tf;->aA()Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil;

    move-result-object v0

    invoke-virtual {p0}, Lo/Tf;->getId()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil$ImageType;->c:Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil$ImageType;

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil;->d(Ljava/lang/String;Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil$ImageType;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 239
    iget-object v0, p0, Lo/Tf;->c:Lo/BY;

    iget-object v0, v0, Lo/BY;->P:Ljava/lang/String;

    return-object v0
.end method

.method public ba()Ljava/lang/String;
    .locals 1

    .line 139
    iget-object v0, p0, Lo/Tf;->c:Lo/BY;

    iget-object v0, v0, Lo/BY;->ab:Ljava/lang/String;

    return-object v0
.end method

.method public bb()Lo/AK;
    .locals 0

    return-object p0
.end method

.method public bc()Ljava/lang/String;
    .locals 1

    .line 145
    iget-object v0, p0, Lo/Tf;->c:Lo/BY;

    iget-object v0, v0, Lo/BY;->aa:Ljava/lang/String;

    return-object v0
.end method

.method public bd()Ljava/lang/String;
    .locals 1

    .line 264
    iget-object v0, p0, Lo/Tf;->c:Lo/BY;

    iget-object v0, v0, Lo/BY;->X:Ljava/lang/String;

    return-object v0
.end method

.method public be()Ljava/lang/String;
    .locals 1

    .line 269
    iget-object v0, p0, Lo/Tf;->c:Lo/BY;

    iget-object v0, v0, Lo/BY;->Z:Ljava/lang/String;

    return-object v0
.end method

.method public bf()Ljava/lang/String;
    .locals 1

    .line 151
    iget-object v0, p0, Lo/Tf;->c:Lo/BY;

    iget-object v0, v0, Lo/BY;->Y:Ljava/lang/String;

    return-object v0
.end method

.method public bg()Ljava/lang/String;
    .locals 1

    .line 290
    iget-object v0, p0, Lo/Tf;->c:Lo/BY;

    iget-object v0, v0, Lo/BY;->ah:Ljava/lang/String;

    return-object v0
.end method

.method public bh()Ljava/lang/String;
    .locals 1

    .line 279
    iget-object v0, p0, Lo/Tf;->c:Lo/BY;

    iget-object v0, v0, Lo/BY;->ac:Ljava/lang/String;

    return-object v0
.end method

.method public bi()Ljava/lang/String;
    .locals 1

    .line 285
    iget-object v0, p0, Lo/Tf;->c:Lo/BY;

    iget-object v0, v0, Lo/BY;->W:Ljava/lang/String;

    return-object v0
.end method

.method public bj()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/netflix/model/leafs/advisory/Advisory;",
            ">;"
        }
    .end annotation

    .line 310
    const-class v0, Lo/hW;

    invoke-static {v0}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/hW;

    invoke-interface {v0}, Lo/hW;->b()Lo/hZ;

    move-result-object v0

    iget-object v1, p0, Lo/Tf;->c:Lo/BY;

    iget-object v1, v1, Lo/BY;->f:Ljava/lang/String;

    invoke-interface {v0, v1}, Lo/hZ;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bk()Lcom/netflix/model/leafs/VideoInfo$Sharing;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public bl()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public bn()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/netflix/model/leafs/originals/ListOfTagSummary;",
            ">;"
        }
    .end annotation

    .line 364
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Use stripped-down version getTagsAsStrings() instead for offline"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bo()Lcom/netflix/model/leafs/originals/ContentWarning;
    .locals 2

    .line 358
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "ContentWarning not supported in offline"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bp()Lcom/netflix/model/leafs/SupportedMediaTracks;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public c()I
    .locals 1

    .line 395
    iget-object v0, p0, Lo/Tf;->c:Lo/BY;

    iget v0, v0, Lo/BY;->F:I

    return v0
.end method

.method public d()Z
    .locals 1

    .line 465
    iget-object v0, p0, Lo/Tf;->c:Lo/BY;

    iget-boolean v0, v0, Lo/BY;->i:Z

    return v0
.end method

.method public d(I)Z
    .locals 1

    .line 667
    iget-object v0, p0, Lo/Tf;->e:Lo/Bi;

    invoke-interface {v0, p1}, Lo/Bi;->d(I)Z

    move-result p1

    return p1
.end method

.method public e(I)Ljava/lang/String;
    .locals 3

    .line 672
    iget-object v0, p0, Lo/Tf;->a:Ljava/util/List;

    if-nez v0, :cond_0

    .line 673
    invoke-direct {p0}, Lo/Tf;->aB()V

    .line 675
    :cond_0
    iget-object v0, p0, Lo/Tf;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/Cb;

    .line 676
    iget v2, v1, Lo/Cb;->number:I

    if-ne v2, p1, :cond_1

    .line 677
    iget-object p1, v1, Lo/Cb;->title:Ljava/lang/String;

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public e()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 771
    :cond_0
    instance-of v1, p1, Lo/Tf;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 772
    :cond_1
    check-cast p1, Lo/Tf;

    .line 773
    iget-object v1, p0, Lo/Tf;->c:Lo/BY;

    iget-object v3, p1, Lo/Tf;->c:Lo/BY;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lo/Tf;->e:Lo/Bi;

    iget-object v3, p1, Lo/Tf;->e:Lo/Bi;

    .line 774
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lo/Tf;->d:Lo/BY;

    iget-object v3, p1, Lo/Tf;->d:Lo/BY;

    .line 775
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lo/Tf;->b:Lcom/google/gson/Gson;

    iget-object v3, p1, Lo/Tf;->b:Lcom/google/gson/Gson;

    .line 776
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lo/Tf;->a:Ljava/util/List;

    iget-object p1, p1, Lo/Tf;->a:Ljava/util/List;

    .line 777
    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .line 244
    iget-object v0, p0, Lo/Tf;->c:Lo/BY;

    iget-object v0, v0, Lo/BY;->U:Ljava/lang/String;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .line 249
    iget-object v0, p0, Lo/Tf;->c:Lo/BY;

    iget-object v0, v0, Lo/BY;->V:Ljava/lang/String;

    return-object v0
.end method

.method public getBoxartId()Ljava/lang/String;
    .locals 1

    .line 133
    iget-object v0, p0, Lo/Tf;->c:Lo/BY;

    iget-object v0, v0, Lo/BY;->S:Ljava/lang/String;

    return-object v0
.end method

.method public getBoxshotUrl()Ljava/lang/String;
    .locals 1

    .line 128
    iget-object v0, p0, Lo/Tf;->c:Lo/BY;

    iget-object v0, v0, Lo/BY;->Q:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 381
    iget-object v0, p0, Lo/Tf;->c:Lo/BY;

    iget-object v0, v0, Lo/BY;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getMatchPercentage()I
    .locals 2

    .line 438
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "not supported in offline"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 386
    iget-object v0, p0, Lo/Tf;->c:Lo/BY;

    iget-object v0, v0, Lo/BY;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;
    .locals 1

    .line 391
    iget-object v0, p0, Lo/Tf;->c:Lo/BY;

    iget v0, v0, Lo/BY;->F:I

    invoke-static {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->create(I)Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v0

    return-object v0
.end method

.method public getUserThumbRating()I
    .locals 2

    .line 426
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "not supported in offline"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public h()I
    .locals 1

    .line 455
    iget-object v0, p0, Lo/Tf;->e:Lo/Bi;

    invoke-interface {v0}, Lo/Bi;->h()I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    .line 782
    iget-object v1, p0, Lo/Tf;->c:Lo/BY;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lo/Tf;->e:Lo/Bi;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lo/Tf;->d:Lo/BY;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lo/Tf;->b:Lcom/google/gson/Gson;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lo/Tf;->a:Ljava/util/List;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public i()Lo/BY;
    .locals 1

    .line 54
    iget-object v0, p0, Lo/Tf;->c:Lo/BY;

    return-object v0
.end method

.method public isAvailableForDownload()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isNewForPvr()Z
    .locals 2

    .line 444
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "not supported in offline"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isOriginal()Z
    .locals 1

    .line 156
    iget-object v0, p0, Lo/Tf;->c:Lo/BY;

    iget-boolean v0, v0, Lo/BY;->ag:Z

    return v0
.end method

.method public isPreRelease()Z
    .locals 1

    .line 161
    iget-object v0, p0, Lo/Tf;->c:Lo/BY;

    iget-boolean v0, v0, Lo/BY;->af:Z

    return v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .line 88
    iget-object v0, p0, Lo/Tf;->c:Lo/BY;

    iget-object v0, v0, Lo/BY;->E:Ljava/lang/String;

    return-object v0
.end method

.method public k()Ljava/lang/String;
    .locals 1

    .line 561
    iget-object v0, p0, Lo/Tf;->e:Lo/Bi;

    invoke-interface {v0}, Lo/Bi;->o()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public l()I
    .locals 1

    .line 571
    iget-object v0, p0, Lo/Tf;->e:Lo/Bi;

    invoke-interface {v0}, Lo/Bi;->l()I

    move-result v0

    return v0
.end method

.method public m()I
    .locals 1

    .line 566
    iget-object v0, p0, Lo/Tf;->e:Lo/Bi;

    invoke-interface {v0}, Lo/Bi;->m()I

    move-result v0

    return v0
.end method

.method public n()Lcom/netflix/mediaclient/service/offline/agent/CreateRequest$DownloadRequestType;
    .locals 1

    .line 556
    iget-object v0, p0, Lo/Tf;->e:Lo/Bi;

    invoke-interface {v0}, Lo/Bi;->n()Lcom/netflix/mediaclient/service/offline/agent/CreateRequest$DownloadRequestType;

    move-result-object v0

    return-object v0
.end method

.method public o()Ljava/lang/String;
    .locals 1

    .line 550
    iget-object v0, p0, Lo/Tf;->e:Lo/Bi;

    invoke-interface {v0}, Lo/Bi;->o()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public p()I
    .locals 1

    .line 591
    iget-object v0, p0, Lo/Tf;->e:Lo/Bi;

    invoke-interface {v0}, Lo/Bi;->p()I

    move-result v0

    return v0
.end method

.method public q()I
    .locals 1

    .line 586
    iget-object v0, p0, Lo/Tf;->e:Lo/Bi;

    invoke-interface {v0}, Lo/Bi;->q()I

    move-result v0

    return v0
.end method

.method public r()J
    .locals 2

    .line 581
    iget-object v0, p0, Lo/Tf;->e:Lo/Bi;

    invoke-interface {v0}, Lo/Bi;->r()J

    move-result-wide v0

    return-wide v0
.end method

.method public s()Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;
    .locals 1

    .line 596
    iget-object v0, p0, Lo/Tf;->e:Lo/Bi;

    invoke-interface {v0}, Lo/Bi;->s()Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;

    move-result-object v0

    return-object v0
.end method

.method public t()Ljava/lang/String;
    .locals 1

    .line 576
    iget-object v0, p0, Lo/Tf;->e:Lo/Bi;

    invoke-interface {v0}, Lo/Bi;->t()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()Ljava/lang/String;
    .locals 1

    .line 621
    iget-object v0, p0, Lo/Tf;->e:Lo/Bi;

    invoke-interface {v0}, Lo/Bi;->u()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public v()Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;
    .locals 1

    .line 601
    iget-object v0, p0, Lo/Tf;->e:Lo/Bi;

    invoke-interface {v0}, Lo/Bi;->v()Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    move-result-object v0

    return-object v0
.end method

.method public w()J
    .locals 2

    .line 616
    iget-object v0, p0, Lo/Tf;->e:Lo/Bi;

    invoke-interface {v0}, Lo/Bi;->w()J

    move-result-wide v0

    return-wide v0
.end method

.method public x()J
    .locals 2

    .line 611
    iget-object v0, p0, Lo/Tf;->e:Lo/Bi;

    invoke-interface {v0}, Lo/Bi;->x()J

    move-result-wide v0

    return-wide v0
.end method

.method public y()Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;
    .locals 1

    .line 606
    iget-object v0, p0, Lo/Tf;->e:Lo/Bi;

    invoke-interface {v0}, Lo/Bi;->y()Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    move-result-object v0

    return-object v0
.end method

.method public z()J
    .locals 2

    .line 632
    iget-object v0, p0, Lo/Tf;->e:Lo/Bi;

    invoke-interface {v0}, Lo/Bi;->z()J

    move-result-wide v0

    return-wide v0
.end method
