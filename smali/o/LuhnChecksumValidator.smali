.class public Lo/LuhnChecksumValidator;
.super Lo/VoicemailContract;
.source ""


# static fields
.field private static h:J


# instance fields
.field private final d:I

.field private final e:I

.field private final f:Z

.field private final g:I

.field private final i:I

.field private final j:Z

.field private final k:I

.field private final l:Ljava/lang/String;

.field private final m:Lo/TextInputTimePickerView;

.field private final n:Z

.field private final o:Ljava/lang/String;

.field private final p:I

.field private s:Lcom/netflix/model/leafs/LoLoMoSummaryImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lo/FontRequest;Ljava/lang/String;IIIIZZLo/ci;IIZLjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/FontRequest<",
            "*>;",
            "Ljava/lang/String;",
            "IIIIZZ",
            "Lo/ci;",
            "IIZ",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 84
    invoke-static {p12}, Lo/LuhnChecksumValidator;->e(Z)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1, p9}, Lo/VoicemailContract;-><init>(Ljava/lang/String;Lo/FontRequest;Lo/ci;)V

    .line 85
    iput p3, p0, Lo/LuhnChecksumValidator;->e:I

    .line 86
    iput p4, p0, Lo/LuhnChecksumValidator;->d:I

    .line 87
    iput p5, p0, Lo/LuhnChecksumValidator;->i:I

    .line 88
    iput p6, p0, Lo/LuhnChecksumValidator;->g:I

    .line 89
    iput-boolean p7, p0, Lo/LuhnChecksumValidator;->j:Z

    .line 90
    iput-boolean p8, p0, Lo/LuhnChecksumValidator;->f:Z

    .line 91
    iput-boolean p12, p0, Lo/LuhnChecksumValidator;->n:Z

    .line 92
    iput-object p13, p0, Lo/LuhnChecksumValidator;->l:Ljava/lang/String;

    .line 93
    iput p10, p0, Lo/LuhnChecksumValidator;->k:I

    .line 94
    iput p11, p0, Lo/LuhnChecksumValidator;->p:I

    .line 95
    iput-object p2, p0, Lo/LuhnChecksumValidator;->o:Ljava/lang/String;

    const/4 p1, 0x1

    const/4 p3, 0x0

    if-nez p2, :cond_0

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "lolomo"

    aput-object p2, p1, p3

    .line 98
    invoke-static {p1}, Lo/SearchIndexableResource;->b([Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object p1

    iput-object p1, p0, Lo/LuhnChecksumValidator;->m:Lo/TextInputTimePickerView;

    goto :goto_0

    :cond_0
    const/4 p4, 0x2

    new-array p4, p4, [Ljava/lang/Object;

    const-string p5, "topCategories"

    aput-object p5, p4, p3

    .line 100
    invoke-static {p2}, Lo/SEService;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    aput-object p2, p4, p1

    invoke-static {p4}, Lo/SearchIndexableResource;->b([Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object p1

    iput-object p1, p0, Lo/LuhnChecksumValidator;->m:Lo/TextInputTimePickerView;

    :goto_0
    return-void
.end method

.method private a(Lcom/netflix/model/leafs/LoLoMoSummaryImpl;Z)Z
    .locals 9

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    const-string v3, "PrefetchLoLoMoTask"

    const/4 v4, 0x1

    if-nez p1, :cond_2

    if-eqz p2, :cond_1

    const-string p1, "LolomoSummary is null, checking PreferenceKey"

    .line 111
    invoke-static {v3, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    invoke-virtual {p0}, Lo/LuhnChecksumValidator;->s()Landroid/content/Context;

    move-result-object p1

    const-string p2, "prefs_cache_installed_lolomo_expiry_time_stamp"

    invoke-static {p1, p2, v0, v1}, Lo/aer;->a(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide p1

    .line 114
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    cmp-long v3, v0, p1

    if-lez v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2

    :cond_1
    const-string p1, "LolomoSummary is null for genre lolomo, expiring"

    .line 117
    invoke-static {v3, p1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    .line 122
    :cond_2
    invoke-virtual {p1}, Lcom/netflix/model/leafs/LoLoMoSummaryImpl;->getExpiryTimeStamp()J

    move-result-wide p1

    .line 123
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, p1

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    .line 131
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v7, v2

    sget-wide p1, Lo/LuhnChecksumValidator;->h:J

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v7, v4

    const/4 p1, 0x2

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    aput-object p2, v7, p1

    const-string p1, "lolomo expiry time stamp = %d, FORCE_EXP_DELTA PLT = %d, Lolomo\'s time to expiry = %d"

    invoke-static {v3, p1, v7}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    cmp-long p1, v5, v0

    if-lez p1, :cond_3

    const/4 v2, 0x1

    :cond_3
    return v2
.end method

.method private static e(Z)Ljava/lang/String;
    .locals 2

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PrefetchLoLoMo"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p0, :cond_0

    const-string p0, ":prefetch"

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
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

    .line 323
    invoke-static {}, Lo/ep;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 324
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lo/ep;->h()Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;->getCellId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ";;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo/LuhnChecksumValidator;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "X-Netflix.Request.AB15161NqTracking"

    .line 325
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
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

    .line 144
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/16 v0, 0x19

    if-le p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected b()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/adt$Activity;",
            ">;"
        }
    .end annotation

    .line 234
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 235
    iget-boolean v1, p0, Lo/LuhnChecksumValidator;->n:Z

    if-eqz v1, :cond_0

    .line 236
    new-instance v1, Lo/adt$Activity;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "bgFetch"

    invoke-direct {v1, v3, v2}, Lo/adt$Activity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 239
    :cond_0
    iget-object v1, p0, Lo/LuhnChecksumValidator;->l:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 240
    new-instance v1, Lo/adt$Activity;

    iget-object v2, p0, Lo/LuhnChecksumValidator;->l:Ljava/lang/String;

    const-string v3, "renoId"

    invoke-direct {v1, v3, v2}, Lo/adt$Activity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 243
    :cond_1
    invoke-static {}, Lo/ady;->b()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 244
    new-instance v1, Lo/adt$Activity;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "previewsEnabled"

    invoke-direct {v1, v3, v2}, Lo/adt$Activity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 252
    :cond_2
    iget-object v1, p0, Lo/LuhnChecksumValidator;->o:Ljava/lang/String;

    if-nez v1, :cond_4

    iget-object v1, p0, Lo/LuhnChecksumValidator;->a:Lo/FontRequest;

    invoke-virtual {v1}, Lo/FontRequest;->i()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_5

    .line 254
    sget-object v1, Lo/gu;->c:Lo/gu$ActionBar;

    invoke-virtual {v1}, Lo/gu$ActionBar;->c()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 255
    new-instance v1, Lo/adt$Activity;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "enableLolomoCacheResponse"

    invoke-direct {v1, v3, v2}, Lo/adt$Activity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 258
    :cond_5
    invoke-static {}, Lo/dK;->g()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 259
    new-instance v1, Lo/adt$Activity;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "enableLolomoDownloadableRow"

    invoke-direct {v1, v3, v2}, Lo/adt$Activity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 262
    :cond_6
    sget-object v1, Lo/gS;->b:Lo/gS$StateListAnimator;

    invoke-virtual {v1}, Lo/gS$StateListAnimator;->b()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 263
    new-instance v1, Lo/adt$Activity;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "includePreviewsOriginalBrandingUrl"

    invoke-direct {v1, v3, v2}, Lo/adt$Activity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 266
    :cond_7
    invoke-static {}, Lo/et;->i()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 267
    new-instance v1, Lo/adt$Activity;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "enableKidsBillboard"

    invoke-direct {v1, v3, v2}, Lo/adt$Activity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 270
    :cond_8
    invoke-static {}, Lo/ady;->d()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 271
    new-instance v1, Lo/adt$Activity;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "includeBookmark"

    invoke-direct {v1, v3, v2}, Lo/adt$Activity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    return-object v0
.end method

.method protected b(Ljava/util/List;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/TextInputTimePickerView;",
            ">;)V"
        }
    .end annotation

    .line 167
    iget-object v0, p0, Lo/LuhnChecksumValidator;->m:Lo/TextInputTimePickerView;

    const-string v1, "summary"

    invoke-interface {v0, v1}, Lo/TextInputTimePickerView;->b(Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 168
    iget-object v0, p0, Lo/LuhnChecksumValidator;->m:Lo/TextInputTimePickerView;

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    iget v4, p0, Lo/LuhnChecksumValidator;->e:I

    invoke-static {v4}, Lo/SearchIndexableResource;->d(I)Ljava/util/Map;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x1

    aput-object v1, v3, v4

    invoke-static {v3}, Lo/SearchIndexableResource;->b([Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object v3

    invoke-interface {v0, v3}, Lo/TextInputTimePickerView;->d(Lo/TextInputTimePickerView;)Lo/TextInputTimePickerView;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 170
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 171
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 172
    invoke-static {}, Lo/eU;->j()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "topTenBoxart"

    .line 173
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 176
    :cond_0
    invoke-static {}, Lo/ady;->i()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "volatileBitmaskedDetails"

    .line 177
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 179
    :cond_1
    iget-object v3, p0, Lo/LuhnChecksumValidator;->m:Lo/TextInputTimePickerView;

    const/4 v6, 0x3

    new-array v7, v6, [Ljava/lang/Object;

    iget v8, p0, Lo/LuhnChecksumValidator;->e:I

    invoke-static {v8}, Lo/SearchIndexableResource;->d(I)Ljava/util/Map;

    move-result-object v8

    aput-object v8, v7, v5

    iget v8, p0, Lo/LuhnChecksumValidator;->d:I

    invoke-static {v8}, Lo/SearchIndexableResource;->d(I)Ljava/util/Map;

    move-result-object v8

    aput-object v8, v7, v4

    aput-object v0, v7, v2

    invoke-static {v7}, Lo/SearchIndexableResource;->b([Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object v0

    invoke-interface {v3, v0}, Lo/TextInputTimePickerView;->d(Lo/TextInputTimePickerView;)Lo/TextInputTimePickerView;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    iget-object v0, p0, Lo/LuhnChecksumValidator;->m:Lo/TextInputTimePickerView;

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->d:Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->b()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lo/TextInputTimePickerView;->b(Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object v8

    const/4 v9, 0x0

    iget v10, p0, Lo/LuhnChecksumValidator;->i:I

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v7, p1

    invoke-static/range {v7 .. v13}, Lo/SEService;->a(Ljava/util/List;Lo/TextInputTimePickerView;IIZZZ)V

    .line 184
    invoke-static {}, Lo/dK;->D_()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 186
    iget-object v0, p0, Lo/LuhnChecksumValidator;->o:Ljava/lang/String;

    if-nez v0, :cond_2

    invoke-static {}, Lo/dK;->h()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 187
    iget-object v0, p0, Lo/LuhnChecksumValidator;->m:Lo/TextInputTimePickerView;

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->j:Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->b()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lo/TextInputTimePickerView;->b(Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object v0

    iget v3, p0, Lo/LuhnChecksumValidator;->d:I

    invoke-static {p1, v0, v5, v3, v5}, Lo/SEService;->b(Ljava/util/List;Lo/TextInputTimePickerView;IIZ)V

    .line 190
    :cond_2
    iget-object v0, p0, Lo/LuhnChecksumValidator;->o:Ljava/lang/String;

    const-string v3, "downloadable"

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 191
    iget-object v0, p0, Lo/LuhnChecksumValidator;->m:Lo/TextInputTimePickerView;

    iget v3, p0, Lo/LuhnChecksumValidator;->e:I

    invoke-static {v3}, Lo/SearchIndexableResource;->d(I)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v0, v3}, Lo/TextInputTimePickerView;->b(Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object v0

    iget v3, p0, Lo/LuhnChecksumValidator;->d:I

    invoke-static {p1, v0, v5, v3, v5}, Lo/SEService;->b(Ljava/util/List;Lo/TextInputTimePickerView;IIZ)V

    .line 195
    :cond_3
    iget-object v0, p0, Lo/LuhnChecksumValidator;->m:Lo/TextInputTimePickerView;

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->a:Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->b()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lo/TextInputTimePickerView;->b(Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object v0

    iget v3, p0, Lo/LuhnChecksumValidator;->g:I

    invoke-static {p1, v0, v5, v3, v5}, Lo/SEService;->d(Ljava/util/List;Lo/TextInputTimePickerView;IIZ)V

    .line 197
    invoke-static {}, Lo/ady;->f()Z

    move-result v0

    if-nez v0, :cond_5

    .line 198
    invoke-static {}, Lo/ia;->e()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 199
    iget-object v0, p0, Lo/LuhnChecksumValidator;->m:Lo/TextInputTimePickerView;

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->e:Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->b()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lo/TextInputTimePickerView;->b(Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object v0

    iget v3, p0, Lo/LuhnChecksumValidator;->d:I

    invoke-static {p1, v0, v5, v3}, Lo/SEService;->b(Ljava/util/List;Lo/TextInputTimePickerView;II)V

    .line 202
    :cond_4
    iget-object v0, p0, Lo/LuhnChecksumValidator;->m:Lo/TextInputTimePickerView;

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->g:Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->b()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lo/TextInputTimePickerView;->b(Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object v0

    invoke-static {p1, v0, v5, v4, v5}, Lo/SEService;->c(Ljava/util/List;Lo/TextInputTimePickerView;IIZ)V

    .line 206
    :cond_5
    invoke-static {}, Lo/ady;->b()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 207
    invoke-static {}, Lo/ep;->i()Z

    move-result v12

    xor-int/lit8 v13, v12, 0x1

    .line 209
    iget-object v0, p0, Lo/LuhnChecksumValidator;->m:Lo/TextInputTimePickerView;

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->h:Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->b()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lo/TextInputTimePickerView;->b(Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object v8

    const/4 v9, 0x0

    iget v10, p0, Lo/LuhnChecksumValidator;->d:I

    const/4 v11, 0x1

    move-object v7, p1

    invoke-static/range {v7 .. v13}, Lo/SEService;->c(Ljava/util/List;Lo/TextInputTimePickerView;IIZZZ)V

    .line 213
    :cond_6
    iget-object v0, p0, Lo/LuhnChecksumValidator;->m:Lo/TextInputTimePickerView;

    new-array v3, v2, [Ljava/lang/Object;

    const-string v7, "queue"

    aput-object v7, v3, v5

    aput-object v1, v3, v4

    invoke-static {v3}, Lo/SearchIndexableResource;->b([Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object v3

    invoke-interface {v0, v3}, Lo/TextInputTimePickerView;->d(Lo/TextInputTimePickerView;)Lo/TextInputTimePickerView;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 215
    iget-boolean v0, p0, Lo/LuhnChecksumValidator;->j:Z

    if-eqz v0, :cond_7

    .line 216
    iget v0, p0, Lo/LuhnChecksumValidator;->d:I

    add-int/lit8 v3, v0, 0x1

    add-int/2addr v0, v3

    .line 218
    iget-object v7, p0, Lo/LuhnChecksumValidator;->m:Lo/TextInputTimePickerView;

    new-array v6, v6, [Ljava/lang/Object;

    const-string v8, "characters"

    aput-object v8, v6, v5

    invoke-static {v3, v0}, Lo/SearchIndexableResource;->e(II)Ljava/util/Map;

    move-result-object v0

    aput-object v0, v6, v4

    aput-object v1, v6, v2

    invoke-static {v6}, Lo/SearchIndexableResource;->b([Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object v0

    invoke-interface {v7, v0}, Lo/TextInputTimePickerView;->d(Lo/TextInputTimePickerView;)Lo/TextInputTimePickerView;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    return-void
.end method

.method protected b(Lo/ci;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 3

    .line 309
    iget-object v0, p0, Lo/LuhnChecksumValidator;->a:Lo/FontRequest;

    iget-object v1, p0, Lo/LuhnChecksumValidator;->m:Lo/TextInputTimePickerView;

    const-string v2, "summary"

    invoke-interface {v1, v2}, Lo/TextInputTimePickerView;->b(Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/FontRequest;->b(Lo/TextInputTimePickerView;)Lo/agi;

    move-result-object v0

    .line 310
    instance-of v1, v0, Lcom/netflix/model/leafs/LoLoMoSummaryImpl;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/netflix/model/leafs/LoLoMoSummaryImpl;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 311
    :goto_0
    invoke-interface {p1, v0, p2}, Lo/ci;->c(Lo/AH;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 312
    invoke-static {}, Lo/ep;->g()Z

    move-result p1

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    .line 315
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PrefetchLolomo failed - statusCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->e()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", serverDbgMsg: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->g()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " pql: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lo/LuhnChecksumValidator;->m:Lo/TextInputTimePickerView;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lo/SpinnerAdapter;->e(Ljava/lang/String;)V

    .line 317
    :cond_1
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p1

    const-string p2, "PrefetchLolomo failed"

    invoke-interface {p1, p2}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public c()Lcom/android/volley/Request$Priority;
    .locals 1

    .line 224
    sget-object v0, Lcom/android/volley/Request$Priority;->d:Lcom/android/volley/Request$Priority;

    return-object v0
.end method

.method public bridge synthetic c(Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;)V
    .locals 0

    .line 53
    invoke-super {p0, p1}, Lo/VoicemailContract;->c(Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;)V

    return-void
.end method

.method public bridge synthetic d()Ljava/lang/String;
    .locals 1

    .line 53
    invoke-super {p0}, Lo/VoicemailContract;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected d(Lo/ci;Lo/TextClock;)V
    .locals 4

    .line 279
    iget-object p2, p0, Lo/LuhnChecksumValidator;->a:Lo/FontRequest;

    iget-object v0, p0, Lo/LuhnChecksumValidator;->m:Lo/TextInputTimePickerView;

    const-string v1, "summary"

    invoke-interface {v0, v1}, Lo/TextInputTimePickerView;->b(Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object v0

    invoke-virtual {p2, v0}, Lo/FontRequest;->b(Lo/TextInputTimePickerView;)Lo/agi;

    move-result-object p2

    .line 280
    instance-of v0, p2, Lcom/netflix/model/leafs/LoLoMoSummaryImpl;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p2, Lcom/netflix/model/leafs/LoLoMoSummaryImpl;

    goto :goto_0

    :cond_0
    move-object p2, v1

    .line 282
    :goto_0
    sget-object v0, Lo/LegacyErrorStrings;->b:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-virtual {p0}, Lo/LuhnChecksumValidator;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lo/LuhnChecksumValidator;->n()Z

    move-result v3

    invoke-static {v0, v2, v3}, Lcom/netflix/mediaclient/service/falkor/FalkorAgentStatus;->d(Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;Ljava/lang/String;Z)Lcom/netflix/mediaclient/android/app/Status;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Lo/ci;->c(Lo/AH;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 284
    invoke-virtual {p0}, Lo/LuhnChecksumValidator;->q()V

    .line 286
    invoke-static {}, Lo/eG;->i()Z

    move-result p1

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    .line 289
    invoke-virtual {p2}, Lcom/netflix/model/leafs/LoLoMoSummaryImpl;->getLolomoId()Ljava/lang/String;

    move-result-object v1

    .line 292
    :cond_1
    invoke-static {v1}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 293
    new-instance p1, Landroid/content/Intent;

    const-string p2, "com.netflix.mediaclient.intent.action.PREFETCH_DP_PRIMARY_DATA_LOLOMO"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p2, "extra_lolomo_id"

    .line 296
    invoke-virtual {p1, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 p2, 0x0

    const-string v0, "extra_from_lomo"

    .line 297
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 298
    iget p2, p0, Lo/LuhnChecksumValidator;->e:I

    const-string v0, "extra_to_lomo"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 299
    iget p2, p0, Lo/LuhnChecksumValidator;->d:I

    const-string v0, "extra_to_video"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 301
    invoke-virtual {p0}, Lo/LuhnChecksumValidator;->s()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lo/IllegalMonitorStateException;->b(Landroid/content/Context;)Lo/IllegalMonitorStateException;

    move-result-object p2

    invoke-virtual {p2, p1}, Lo/IllegalMonitorStateException;->a(Landroid/content/Intent;)Z

    const-string p1, "PrefetchLoLoMo"

    const-string p2, "BROADCAST_LOLOMO_DP_PRIMARY_DATA_FETCH initiated"

    .line 302
    invoke-static {p1, p2}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method public i()Ljava/lang/Object;
    .locals 1

    .line 229
    sget-object v0, Lcom/netflix/mediaclient/net/NetworkRequestType;->i:Lcom/netflix/mediaclient/net/NetworkRequestType;

    return-object v0
.end method

.method protected j()V
    .locals 6

    .line 151
    iget-object v0, p0, Lo/LuhnChecksumValidator;->m:Lo/TextInputTimePickerView;

    const-string v1, "summary"

    invoke-interface {v0, v1}, Lo/TextInputTimePickerView;->b(Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object v0

    .line 152
    iget-object v1, p0, Lo/LuhnChecksumValidator;->a:Lo/FontRequest;

    invoke-virtual {v1, v0}, Lo/FontRequest;->b(Lo/TextInputTimePickerView;)Lo/agi;

    move-result-object v0

    .line 155
    instance-of v1, v0, Lcom/netflix/model/leafs/LoLoMoSummaryImpl;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/netflix/model/leafs/LoLoMoSummaryImpl;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lo/LuhnChecksumValidator;->s:Lcom/netflix/model/leafs/LoLoMoSummaryImpl;

    .line 157
    iget-object v0, p0, Lo/LuhnChecksumValidator;->s:Lcom/netflix/model/leafs/LoLoMoSummaryImpl;

    iget-object v1, p0, Lo/LuhnChecksumValidator;->o:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-direct {p0, v0, v1}, Lo/LuhnChecksumValidator;->a(Lcom/netflix/model/leafs/LoLoMoSummaryImpl;Z)Z

    move-result v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 158
    iget v4, p0, Lo/LuhnChecksumValidator;->k:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v1, v3

    const-string v4, "PrefetchLoLoMoTask"

    const-string v5, "Checking if - refreshType = %s & if lolomoExpired = %s"

    invoke-static {v4, v5, v1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 159
    iget v1, p0, Lo/LuhnChecksumValidator;->k:I

    if-eq v1, v3, :cond_2

    if-eqz v0, :cond_3

    .line 161
    :cond_2
    iget-object v0, p0, Lo/LuhnChecksumValidator;->a:Lo/FontRequest;

    new-array v1, v3, [Lo/TextInputTimePickerView;

    iget-object v3, p0, Lo/LuhnChecksumValidator;->m:Lo/TextInputTimePickerView;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lo/FontRequest;->b([Lo/TextInputTimePickerView;)V

    :cond_3
    return-void
.end method

.method protected k()Z
    .locals 3

    .line 137
    iget-boolean v0, p0, Lo/LuhnChecksumValidator;->f:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget v0, p0, Lo/LuhnChecksumValidator;->k:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method
