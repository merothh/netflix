.class public Lo/InternalTransformation;
.super Lo/VoicemailContract;
.source ""


# static fields
.field private static i:J


# instance fields
.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private g:Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

.field private final h:Ljava/lang/String;

.field private final j:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lo/FontRequest;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/FontRequest<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 60
    invoke-static {}, Lo/cq;->d()Lo/cq;

    move-result-object v0

    const-string v1, "RefreshLomo"

    invoke-direct {p0, v1, p1, v0}, Lo/VoicemailContract;-><init>(Ljava/lang/String;Lo/FontRequest;Lo/ci;)V

    .line 54
    sget-object p1, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->m:Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    iput-object p1, p0, Lo/InternalTransformation;->g:Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    .line 62
    iput-object p2, p0, Lo/InternalTransformation;->d:Ljava/lang/String;

    .line 63
    iput-object p3, p0, Lo/InternalTransformation;->e:Ljava/lang/String;

    .line 64
    iput-object p4, p0, Lo/InternalTransformation;->j:Ljava/lang/String;

    .line 65
    iput-object p5, p0, Lo/InternalTransformation;->h:Ljava/lang/String;

    .line 66
    iput-object p6, p0, Lo/InternalTransformation;->f:Ljava/lang/String;

    .line 68
    iget-object p1, p0, Lo/InternalTransformation;->h:Ljava/lang/String;

    invoke-static {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->a(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    move-result-object p1

    iput-object p1, p0, Lo/InternalTransformation;->g:Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    return-void
.end method

.method static synthetic a(Lo/InternalTransformation;[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lo/InternalTransformation;->e([Ljava/lang/String;)V

    return-void
.end method

.method private c(Lo/TextClock;)V
    .locals 7

    .line 208
    invoke-direct {p0}, Lo/InternalTransformation;->w()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 210
    iget-object p1, p0, Lo/InternalTransformation;->a:Lo/FontRequest;

    iget-object v0, p0, Lo/InternalTransformation;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lo/FontRequest;->d(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 213
    iget-object v0, p0, Lo/InternalTransformation;->a:Lo/FontRequest;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "lists"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;->getId()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v2, v6

    invoke-static {v2}, Lo/SearchIndexableResource;->b([Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object v2

    invoke-virtual {v0, v2}, Lo/FontRequest;->b(Lo/TextInputTimePickerView;)Lo/agi;

    move-result-object v0

    check-cast v0, Lcom/netflix/model/branches/FalkorList;

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lo/InternalTransformation;->a:Lo/FontRequest;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v3, v2, v4

    .line 220
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;->getId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    .line 221
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;->getNumVideos()I

    move-result p1

    invoke-static {p1}, Lo/SearchIndexableResource;->d(I)Ljava/util/Map;

    move-result-object p1

    aput-object p1, v2, v1

    const/4 p1, 0x3

    const-string v1, "summary"

    aput-object v1, v2, p1

    .line 218
    invoke-static {v2}, Lo/SearchIndexableResource;->b([Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object p1

    .line 217
    invoke-virtual {v0, p1}, Lo/FontRequest;->e(Lo/TextInputTimePickerView;)Ljava/util/List;

    move-result-object p1

    .line 227
    invoke-virtual {p0}, Lo/InternalTransformation;->s()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lo/Dataset;->e(Landroid/content/Context;Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method private synthetic e([Ljava/lang/String;)V
    .locals 2

    .line 253
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.netflix.mediaclient.intent.action.RELOAD_VIDEOS_FROM_NETWORK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "video_ids"

    .line 254
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 255
    invoke-virtual {p0}, Lo/InternalTransformation;->s()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lo/IllegalMonitorStateException;->b(Landroid/content/Context;)Lo/IllegalMonitorStateException;

    move-result-object p1

    invoke-virtual {p1, v0}, Lo/IllegalMonitorStateException;->a(Landroid/content/Intent;)Z

    return-void
.end method

.method private p()V
    .locals 0

    return-void
.end method

.method private w()Z
    .locals 2

    .line 262
    iget-object v0, p0, Lo/InternalTransformation;->a:Lo/FontRequest;

    invoke-virtual {v0}, Lo/FontRequest;->h()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lo/InternalTransformation;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/InternalTransformation;->g:Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->k:Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private y()V
    .locals 6

    .line 241
    invoke-direct {p0}, Lo/InternalTransformation;->w()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 243
    iget-object v0, p0, Lo/InternalTransformation;->a:Lo/FontRequest;

    iget-object v1, p0, Lo/InternalTransformation;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lo/FontRequest;->d(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;

    move-result-object v0

    .line 244
    iget-object v1, p0, Lo/InternalTransformation;->a:Lo/FontRequest;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "lists"

    aput-object v4, v2, v3

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;->getId()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v2, v5

    const/4 v4, 0x2

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;->getNumVideos()I

    move-result v0

    invoke-static {v0}, Lo/SearchIndexableResource;->d(I)Ljava/util/Map;

    move-result-object v0

    aput-object v0, v2, v4

    const/4 v0, 0x3

    const-string v4, "summary"

    aput-object v4, v2, v0

    invoke-static {v2}, Lo/SearchIndexableResource;->b([Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object v0

    invoke-virtual {v1, v0}, Lo/FontRequest;->e(Lo/TextInputTimePickerView;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 246
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    .line 248
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/AR;

    add-int/lit8 v4, v3, 0x1

    .line 249
    invoke-interface {v2}, Lo/AR;->getId()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    move v3, v4

    goto :goto_0

    .line 251
    :cond_0
    new-instance v0, Lo/InternalValidator;

    invoke-direct {v0, p0, v1}, Lo/InternalValidator;-><init>(Lo/InternalTransformation;[Ljava/lang/String;)V

    invoke-static {v0}, Lo/adX;->d(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method


# virtual methods
.method protected a(ZLcom/netflix/mediaclient/servicemgr/interface_/LoMoType;)Ljava/util/Map;
    .locals 3

    .line 277
    iget-object v0, p0, Lo/InternalTransformation;->a:Lo/FontRequest;

    invoke-virtual {v0}, Lo/FontRequest;->d()I

    move-result v0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    if-gez v0, :cond_0

    .line 279
    invoke-static {}, Lo/bU;->a()Lo/bO;

    move-result-object p1

    invoke-virtual {p0}, Lo/InternalTransformation;->s()Landroid/content/Context;

    move-result-object v0

    invoke-interface {p1, v0, p2}, Lo/bO;->c(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;)I

    move-result p1

    const/4 p2, 0x1

    add-int/lit8 v0, p1, -0x1

    new-array p1, p2, [Ljava/lang/Object;

    .line 280
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v1

    const-string p2, "RefreshLomoTask"

    const-string v2, "getLastPrefetchToVideo was unset. Defaulting to=%d"

    invoke-static {p2, v2, p1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 283
    :cond_0
    invoke-static {v1, v0}, Lo/SearchIndexableResource;->e(II)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 289
    invoke-static {}, Lo/ep;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 290
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lo/ep;->h()Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;->getCellId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ";;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "X-Netflix.Request.AB15161NqTracking"

    .line 291
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method protected a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected b()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/adt$Activity;",
            ">;"
        }
    .end annotation

    .line 117
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    .line 119
    iget-object v3, p0, Lo/InternalTransformation;->e:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "\"%s\""

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v5, v1, [Ljava/lang/Object;

    .line 120
    iget-object v6, p0, Lo/InternalTransformation;->h:Ljava/lang/String;

    aput-object v6, v5, v4

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 121
    new-instance v6, Lo/adt$Activity;

    const-string v7, "param"

    invoke-direct {v6, v7, v2}, Lo/adt$Activity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    new-instance v2, Lo/adt$Activity;

    iget-object v6, p0, Lo/InternalTransformation;->j:Ljava/lang/String;

    invoke-direct {v2, v7, v6}, Lo/adt$Activity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    new-instance v2, Lo/adt$Activity;

    invoke-direct {v2, v7, v5}, Lo/adt$Activity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    iget-object v2, p0, Lo/InternalTransformation;->f:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 125
    new-instance v2, Lo/adt$Activity;

    new-array v5, v1, [Ljava/lang/Object;

    iget-object v6, p0, Lo/InternalTransformation;->f:Ljava/lang/String;

    aput-object v6, v5, v4

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v7, v3}, Lo/adt$Activity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    :cond_0
    iget-object v2, p0, Lo/InternalTransformation;->g:Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    invoke-virtual {p0, v1, v2}, Lo/InternalTransformation;->a(ZLcom/netflix/mediaclient/servicemgr/interface_/LoMoType;)Ljava/util/Map;

    move-result-object v2

    const/4 v3, 0x2

    new-array v5, v3, [Ljava/lang/Object;

    aput-object v2, v5, v4

    const-string v6, "summary"

    aput-object v6, v5, v1

    .line 129
    invoke-static {v5}, Lo/SearchIndexableResource;->b([Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 132
    iget-object v7, p0, Lo/InternalTransformation;->g:Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    sget-object v8, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->d:Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    const-string v9, "pathSuffix"

    if-ne v7, v8, :cond_1

    new-array v3, v1, [Ljava/lang/Object;

    aput-object v2, v3, v4

    .line 133
    invoke-static {v3}, Lo/SearchIndexableResource;->b([Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object v3

    invoke-static {}, Lo/ady;->i()Z

    move-result v5

    invoke-static {v1, v4, v5}, Lo/SEService;->a(ZZZ)Lo/TextInputTimePickerView;

    move-result-object v5

    invoke-interface {v3, v5}, Lo/TextInputTimePickerView;->d(Lo/TextInputTimePickerView;)Lo/TextInputTimePickerView;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v2, v1, v4

    .line 134
    invoke-static {v1}, Lo/SearchIndexableResource;->b([Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object v1

    sget-object v2, Lo/SEService;->d:Lo/TextInputTimePickerView;

    invoke-interface {v1, v2}, Lo/TextInputTimePickerView;->d(Lo/TextInputTimePickerView;)Lo/TextInputTimePickerView;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 135
    new-instance v2, Lo/adt$Activity;

    invoke-direct {v2, v9, v1}, Lo/adt$Activity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 136
    :cond_1
    iget-object v7, p0, Lo/InternalTransformation;->g:Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    sget-object v8, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->a:Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    if-ne v7, v8, :cond_2

    .line 137
    invoke-static {v1}, Lo/SEService;->e(Z)Lo/TextInputTimePickerView;

    move-result-object v1

    invoke-static {v2, v1}, Lo/SEService;->a(Ljava/util/Map;Lo/TextInputTimePickerView;)Lo/TextInputTimePickerView;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 138
    new-instance v3, Lo/adt$Activity;

    invoke-direct {v3, v9, v1}, Lo/adt$Activity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    sget-object v1, Lo/SEService;->j:Lo/TextInputTimePickerView;

    invoke-static {v2, v1}, Lo/SEService;->a(Ljava/util/Map;Lo/TextInputTimePickerView;)Lo/TextInputTimePickerView;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 141
    new-instance v3, Lo/adt$Activity;

    invoke-direct {v3, v9, v1}, Lo/adt$Activity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    invoke-static {v2}, Lo/SEService;->c(Ljava/util/Map;)Lo/TextInputTimePickerView;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 144
    new-instance v2, Lo/adt$Activity;

    invoke-direct {v2, v9, v1}, Lo/adt$Activity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 145
    :cond_2
    iget-object v7, p0, Lo/InternalTransformation;->g:Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    sget-object v8, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->k:Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    if-ne v7, v8, :cond_3

    new-array v5, v1, [Ljava/lang/Object;

    aput-object v2, v5, v4

    .line 146
    invoke-static {v5}, Lo/SearchIndexableResource;->b([Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v6, v3, v4

    const-string v4, "topTenBoxart"

    aput-object v4, v3, v1

    invoke-static {v3}, Lo/SearchIndexableResource;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v2, v1}, Lo/TextInputTimePickerView;->b(Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 149
    :cond_3
    :goto_0
    new-instance v1, Lo/adt$Activity;

    invoke-direct {v1, v9, v5}, Lo/adt$Activity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    new-instance v1, Lo/adt$Activity;

    const-string v2, "[\"summary\"]"

    invoke-direct {v1, v9, v2}, Lo/adt$Activity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 152
    invoke-static {}, Lo/ady;->d()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 153
    new-instance v1, Lo/adt$Activity;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "includeBookmark"

    invoke-direct {v1, v3, v2}, Lo/adt$Activity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    return-object v0
.end method

.method protected b(Lcom/netflix/mediaclient/android/app/Status;Lo/TextClock;)V
    .locals 2

    .line 193
    invoke-virtual {p0}, Lo/InternalTransformation;->s()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lo/InternalTransformation;->h:Ljava/lang/String;

    iget-object v1, p0, Lo/InternalTransformation;->f:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lo/ia;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    iget-object p1, p0, Lo/InternalTransformation;->g:Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->d:Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    if-ne p1, v0, :cond_0

    .line 195
    invoke-virtual {p0}, Lo/InternalTransformation;->q()V

    .line 196
    invoke-virtual {p0}, Lo/InternalTransformation;->s()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lo/ia;->b(Landroid/content/Context;)V

    goto :goto_0

    .line 197
    :cond_0
    iget-object p1, p0, Lo/InternalTransformation;->g:Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->c:Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    if-ne p1, v0, :cond_1

    .line 198
    invoke-virtual {p0}, Lo/InternalTransformation;->s()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lo/ia;->c(Landroid/content/Context;)V

    goto :goto_0

    .line 199
    :cond_1
    iget-object p1, p0, Lo/InternalTransformation;->g:Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->k:Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    if-ne p1, v0, :cond_2

    .line 200
    invoke-direct {p0, p2}, Lo/InternalTransformation;->c(Lo/TextClock;)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected b(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/TextInputTimePickerView;",
            ">;)V"
        }
    .end annotation

    .line 73
    invoke-direct {p0}, Lo/InternalTransformation;->p()V

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "lolomos"

    aput-object v2, v0, v1

    .line 74
    iget-object v1, p0, Lo/InternalTransformation;->d:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    const-string v2, "refreshList"

    aput-object v2, v0, v1

    invoke-static {v0}, Lo/SearchIndexableResource;->b([Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    invoke-direct {p0}, Lo/InternalTransformation;->w()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 76
    invoke-direct {p0}, Lo/InternalTransformation;->y()V

    :cond_0
    return-void
.end method

.method protected b(Lo/ci;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 5

    .line 169
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "RefreshLomoTask finished onFailure statusCode="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "RefreshLomoTask"

    invoke-static {v0, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->g()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 175
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->g()Ljava/lang/String;

    move-result-object p1

    const-string p2, "FAILED_PRECONDITION"

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lo/gW;->c:Lo/gW$Activity;

    .line 176
    invoke-virtual {p1}, Lo/gW$Activity;->d()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 179
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    .line 180
    sget-wide v0, Lo/InternalTransformation;->i:J

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x5

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    add-long/2addr v0, v2

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    .line 181
    sput-wide p1, Lo/InternalTransformation;->i:J

    .line 182
    invoke-virtual {p0}, Lo/InternalTransformation;->s()Landroid/content/Context;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lo/ia;->b(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic c(Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;)V
    .locals 0

    .line 42
    invoke-super {p0, p1}, Lo/VoicemailContract;->c(Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;)V

    return-void
.end method

.method public bridge synthetic d()Ljava/lang/String;
    .locals 1

    .line 42
    invoke-super {p0}, Lo/VoicemailContract;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected d(Lo/ci;Lo/TextClock;)V
    .locals 2

    const-string p1, "RefreshLomoTask"

    const-string v0, "RefreshLomoTask finished onSuccess"

    .line 161
    invoke-static {p1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, 0x0

    .line 163
    sput-wide v0, Lo/InternalTransformation;->i:J

    .line 164
    sget-object p1, Lo/LegacyErrorStrings;->b:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-virtual {p0, p1, p2}, Lo/InternalTransformation;->b(Lcom/netflix/mediaclient/android/app/Status;Lo/TextClock;)V

    return-void
.end method
