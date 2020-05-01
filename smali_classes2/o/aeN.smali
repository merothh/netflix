.class public final Lo/aeN;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static a:I

.field private static final b:Lo/aka;

.field public static final e:Lo/aeN;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    new-instance v0, Lo/aeN;

    invoke-direct {v0}, Lo/aeN;-><init>()V

    sput-object v0, Lo/aeN;->e:Lo/aeN;

    .line 45
    sget-object v0, Lcom/netflix/mediaclient/util/downloadedforyou/DownloadedForYouHelper$data$2;->a:Lcom/netflix/mediaclient/util/downloadedforyou/DownloadedForYouHelper$data$2;

    check-cast v0, Lo/alB;

    invoke-static {v0}, Lo/akd;->a(Lo/alB;)Lo/aka;

    move-result-object v0

    sput-object v0, Lo/aeN;->b:Lo/aka;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic a(Lo/aeN;)Lo/aeP;
    .locals 0

    .line 32
    invoke-direct {p0}, Lo/aeN;->h()Lo/aeP;

    move-result-object p0

    return-object p0
.end method

.method private final f()V
    .locals 3

    .line 49
    invoke-static {}, Lo/CarrierIdentifier;->d()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0}, Lo/aeN;->j()Lo/aeP;

    move-result-object v1

    invoke-virtual {v1}, Lo/aeP;->j()Ljava/lang/String;

    move-result-object v1

    const-string v2, "preference_downloadedforyou"

    invoke-static {v0, v2, v1}, Lo/aer;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final h()Lo/aeP;
    .locals 8

    .line 57
    invoke-static {}, Lo/CarrierIdentifier;->d()Landroid/content/Context;

    move-result-object v0

    const-string v1, "preference_downloadedforyou"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lo/aer;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 59
    sget-object v2, Lo/aeP;->b:Lo/aeP$Application;

    invoke-virtual {v2, v0}, Lo/aeP$Application;->a(Ljava/lang/String;)Lo/aeP;

    move-result-object v0

    if-nez v0, :cond_4

    .line 62
    new-instance v0, Lo/aeP;

    invoke-direct {v0}, Lo/aeP;-><init>()V

    .line 63
    invoke-static {}, Lcom/netflix/mediaclient/NetflixApplication;->getInstance()Lcom/netflix/mediaclient/NetflixApplication;

    move-result-object v2

    const-string v3, "NetflixApplication.getInstance()"

    invoke-static {v2, v3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/netflix/mediaclient/NetflixApplication;->x()Lo/RJ;

    move-result-object v2

    const-string v3, "NetflixApplication.getInstance().offlineUi"

    invoke-static {v2, v3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lo/RJ;->b()Lo/Rq;

    move-result-object v2

    const-string v3, "NetflixApplication.getIn\u2026eUi.offlinePlayableUiList"

    invoke-static {v2, v3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2}, Lo/Rq;->a()Ljava/util/Collection;

    move-result-object v2

    const-string v3, "NetflixApplication.getIn\u2026t.offlinePlayableViewData"

    invoke-static {v2, v3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Iterable;

    .line 307
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    check-cast v3, Ljava/util/Collection;

    .line 308
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const-string v5, "it"

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Lo/Bi;

    .line 64
    invoke-static {v6, v5}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v6}, Lo/Bi;->n()Lcom/netflix/mediaclient/service/offline/agent/CreateRequest$DownloadRequestType;

    move-result-object v5

    sget-object v6, Lcom/netflix/mediaclient/service/offline/agent/CreateRequest$DownloadRequestType;->c:Lcom/netflix/mediaclient/service/offline/agent/CreateRequest$DownloadRequestType;

    if-ne v5, v6, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    if-eqz v5, :cond_0

    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 309
    :cond_2
    check-cast v3, Ljava/util/List;

    check-cast v3, Ljava/lang/Iterable;

    .line 310
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/Bi;

    .line 66
    invoke-virtual {v0}, Lo/aeP;->d()Ljava/util/LinkedHashMap;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    invoke-static {v3, v5}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v3}, Lo/Bi;->a()Ljava/lang/String;

    move-result-object v3

    const-string v6, "it.playableId"

    invoke-static {v3, v6}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    const/4 v7, 0x6

    invoke-virtual {v6, v7}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 66
    invoke-interface {v4, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 69
    :cond_3
    invoke-static {}, Lo/CarrierIdentifier;->d()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0}, Lo/aeP;->j()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v1, v3}, Lo/aer;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-object v0

    .line 58
    :cond_5
    new-instance v0, Lo/aeP;

    invoke-direct {v0}, Lo/aeP;-><init>()V

    return-object v0
.end method

.method private final j()Lo/aeP;
    .locals 1

    sget-object v0, Lo/aeN;->b:Lo/aka;

    invoke-interface {v0}, Lo/aka;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/aeP;

    return-object v0
.end method


# virtual methods
.method public final a()F
    .locals 2

    .line 54
    invoke-direct {p0}, Lo/aeN;->j()Lo/aeP;

    move-result-object v0

    invoke-virtual {v0}, Lo/aeP;->a()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    const-string v1, "data.optInSizeMap.values"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lo/akz;->k(Ljava/lang/Iterable;)F

    move-result v0

    return v0
.end method

.method public final a(Lo/nS;)F
    .locals 4

    const-string v0, "offlineAgent"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 193
    invoke-interface {p1}, Lo/nS;->q()V

    .line 194
    invoke-interface {p1}, Lo/nS;->p()Lo/Bg;

    move-result-object p1

    const-string v0, "offlineAgent.offlineStorageVolumeList"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 195
    invoke-interface {p1}, Lo/Bg;->d()I

    move-result v0

    invoke-interface {p1, v0}, Lo/Bg;->e(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/Bh;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lo/Bh;->a()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    const p1, 0x3b9aca00

    int-to-long v2, p1

    .line 196
    div-long/2addr v0, v2

    long-to-float p1, v0

    return p1
.end method

.method public final a(F)I
    .locals 2

    const/4 v0, 0x4

    int-to-float v0, v0

    mul-float p1, p1, v0

    float-to-double v0, p1

    .line 79
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-float p1, v0

    float-to-int p1, p1

    return p1
.end method

.method public final a(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;JLcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;I)Ljava/lang/CharSequence;
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "downloadState"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "watchState"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 217
    sget v0, Lcom/netflix/mediaclient/ui/R$Application;->p:I

    .line 220
    sget-object v1, Lo/aeQ;->d:[I

    invoke-virtual {p2}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x0

    packed-switch v1, :pswitch_data_0

    .line 286
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p1

    .line 287
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Wrong DownloadState (="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p2, 0x29

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    return-object v3

    .line 278
    :pswitch_0
    invoke-static {p1}, Lo/RL;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    goto/16 :goto_3

    .line 232
    :pswitch_1
    sget-object p2, Lo/aeQ;->b:[I

    invoke-virtual {p3}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;->ordinal()I

    move-result p3

    aget p2, p2, p3

    packed-switch p2, :pswitch_data_1

    goto/16 :goto_2

    .line 270
    :pswitch_2
    sget v0, Lcom/netflix/mediaclient/ui/R$Application;->A:I

    .line 271
    sget p2, Lcom/netflix/mediaclient/ui/R$AssistContent;->nE:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto/16 :goto_3

    .line 264
    :pswitch_3
    sget p2, Lcom/netflix/mediaclient/ui/R$AssistContent;->nF:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 265
    sget v0, Lcom/netflix/mediaclient/ui/R$Application;->A:I

    goto/16 :goto_3

    :pswitch_4
    const-wide/16 p2, 0x0

    cmp-long p6, p4, p2

    if-lez p6, :cond_4

    .line 238
    sget-object p2, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 p6, 0x1

    invoke-virtual {p2, p6, p7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p2

    cmp-long v0, p4, p2

    if-lez v0, :cond_0

    .line 239
    sget p2, Lcom/netflix/mediaclient/ui/R$AssistContent;->nD:I

    invoke-static {p2}, Lo/VideoView2;->e(I)Lo/VideoView2;

    move-result-object p2

    .line 240
    sget-object p3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p3, p4, p5}, Ljava/util/concurrent/TimeUnit;->toDays(J)J

    move-result-wide p3

    long-to-int p4, p3

    invoke-virtual {p2, p4}, Lo/VideoView2;->b(I)Lo/VideoView2;

    move-result-object p2

    .line 241
    invoke-virtual {p2}, Lo/VideoView2;->c()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 243
    :cond_0
    sget-object p2, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p2, p6, p7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p2

    cmp-long p6, p4, p2

    if-lez p6, :cond_1

    .line 244
    sget p2, Lcom/netflix/mediaclient/ui/R$AssistContent;->nC:I

    invoke-static {p2}, Lo/VideoView2;->e(I)Lo/VideoView2;

    move-result-object p2

    .line 245
    sget-object p3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p3, p4, p5}, Ljava/util/concurrent/TimeUnit;->toHours(J)J

    move-result-wide p3

    long-to-int p4, p3

    invoke-virtual {p2, p4}, Lo/VideoView2;->b(I)Lo/VideoView2;

    move-result-object p2

    .line 246
    invoke-virtual {p2}, Lo/VideoView2;->c()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 249
    :cond_1
    sget p2, Lcom/netflix/mediaclient/ui/R$AssistContent;->nB:I

    invoke-static {p2}, Lo/VideoView2;->e(I)Lo/VideoView2;

    move-result-object p2

    .line 251
    sget-object p3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p3, p4, p5}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide p3

    long-to-int p4, p3

    .line 250
    invoke-virtual {p2, p4}, Lo/VideoView2;->b(I)Lo/VideoView2;

    move-result-object p2

    .line 255
    invoke-virtual {p2}, Lo/VideoView2;->c()Ljava/lang/String;

    move-result-object p2

    .line 258
    :goto_0
    sget v0, Lcom/netflix/mediaclient/ui/R$Application;->A:I

    goto :goto_3

    :pswitch_5
    const/4 p2, 0x1

    if-eqz p6, :cond_2

    .line 223
    invoke-virtual {p6}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->d()Z

    move-result p3

    if-ne p3, p2, :cond_2

    goto :goto_1

    :cond_2
    const/4 p2, 0x0

    :goto_1
    if-nez p2, :cond_4

    if-lez p7, :cond_3

    .line 227
    sget p2, Lcom/netflix/mediaclient/ui/R$AssistContent;->nH:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_3

    .line 228
    :cond_3
    invoke-static {p1}, Lo/RL;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    goto :goto_3

    :cond_4
    :goto_2
    :pswitch_6
    const-string p2, ""

    goto :goto_3

    .line 221
    :pswitch_7
    sget p2, Lcom/netflix/mediaclient/ui/R$AssistContent;->nz:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    :goto_3
    if-eqz p2, :cond_5

    .line 293
    new-instance p3, Landroid/text/SpannableString;

    move-object p4, p2

    check-cast p4, Ljava/lang/CharSequence;

    invoke-direct {p3, p4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 295
    new-instance p4, Landroid/text/style/ForegroundColorSpan;

    invoke-static {p1, v0}, Lo/OnSystemUiVisibilityChangeListener;->d(Landroid/content/Context;I)I

    move-result p1

    invoke-direct {p4, p1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 297
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    const/16 p2, 0x21

    .line 294
    invoke-virtual {p3, p4, v2, p1, p2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 300
    move-object v3, p3

    check-cast v3, Ljava/lang/CharSequence;

    :cond_5
    return-object v3

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_5
        :pswitch_1
        :pswitch_0
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_6
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_6
        :pswitch_2
    .end packed-switch
.end method

.method public final a(Ljava/lang/String;)V
    .locals 4

    const-string v0, "videoId"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 138
    invoke-direct {p0}, Lo/aeN;->j()Lo/aeP;

    move-result-object v0

    invoke-virtual {v0}, Lo/aeP;->c()Ljava/util/HashSet;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    const/16 v1, 0x3e8

    if-le v0, v1, :cond_0

    .line 139
    invoke-direct {p0}, Lo/aeN;->j()Lo/aeP;

    move-result-object v0

    invoke-virtual {v0}, Lo/aeP;->c()Ljava/util/HashSet;

    move-result-object v0

    invoke-direct {p0}, Lo/aeN;->j()Lo/aeP;

    move-result-object v1

    invoke-virtual {v1}, Lo/aeP;->c()Ljava/util/HashSet;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v1}, Lo/akz;->a(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 140
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v0

    const-string v1, "DownloadedForYouHelper: Reached manual deletion cap."

    .line 141
    invoke-interface {v0, v1}, Lo/SpinnerAdapter;->b(Ljava/lang/String;)V

    .line 143
    :cond_0
    invoke-direct {p0}, Lo/aeN;->j()Lo/aeP;

    move-result-object v0

    invoke-virtual {v0}, Lo/aeP;->c()Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 144
    invoke-direct {p0}, Lo/aeN;->j()Lo/aeP;

    move-result-object v0

    invoke-virtual {v0}, Lo/aeP;->d()Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    sget p1, Lo/aeN;->a:I

    add-int/lit8 p1, p1, 0x1

    sput p1, Lo/aeN;->a:I

    .line 147
    sget p1, Lo/aeN;->a:I

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 149
    invoke-direct {p0}, Lo/aeN;->j()Lo/aeP;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-object v2, Lo/fo;->c:Lo/fo$ActionBar;

    invoke-virtual {v2}, Lo/fo$ActionBar;->j()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Lo/aeP;->a(J)V

    .line 151
    :cond_1
    invoke-direct {p0}, Lo/aeN;->f()V

    return-void
.end method

.method public final a(Z)V
    .locals 1

    .line 111
    invoke-direct {p0}, Lo/aeN;->j()Lo/aeP;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo/aeP;->d(Z)V

    .line 112
    invoke-direct {p0}, Lo/aeN;->f()V

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 3

    const-string v0, "videoId"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 160
    invoke-direct {p0}, Lo/aeN;->j()Lo/aeP;

    move-result-object v0

    invoke-virtual {v0}, Lo/aeP;->d()Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    invoke-direct {p0}, Lo/aeN;->j()Lo/aeP;

    move-result-object v0

    invoke-virtual {v0}, Lo/aeP;->d()Ljava/util/LinkedHashMap;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    invoke-direct {p0}, Lo/aeN;->f()V

    return-void
.end method

.method public final b()Z
    .locals 5

    .line 52
    invoke-direct {p0}, Lo/aeN;->j()Lo/aeP;

    move-result-object v0

    invoke-virtual {v0}, Lo/aeP;->f()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final c(Ljava/lang/String;)F
    .locals 1

    const-string v0, "profileGuid"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    invoke-direct {p0}, Lo/aeN;->j()Lo/aeP;

    move-result-object v0

    invoke-virtual {v0}, Lo/aeP;->a()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final c(Lo/AA;)F
    .locals 4

    const-string v0, "details"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    invoke-interface {p1}, Lo/AA;->getVideoId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lo/AA;->getParentVideoId()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v0, p1, v1, v2, v3}, Lo/anv;->a(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/high16 p1, 0x40000000    # 2.0f

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    :goto_0
    const/4 v0, 0x4

    int-to-float v0, v0

    div-float/2addr p1, v0

    return p1
.end method

.method public final c()V
    .locals 3

    .line 105
    invoke-direct {p0}, Lo/aeN;->j()Lo/aeP;

    move-result-object v0

    invoke-virtual {v0}, Lo/aeP;->b()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 106
    invoke-direct {p0}, Lo/aeN;->j()Lo/aeP;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lo/aeP;->e(J)V

    .line 107
    invoke-direct {p0}, Lo/aeN;->f()V

    return-void
.end method

.method public final d()I
    .locals 5

    .line 92
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {p0}, Lo/aeN;->j()Lo/aeP;

    move-result-object v3

    invoke-virtual {v3}, Lo/aeP;->g()J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    long-to-int v1, v0

    return v1
.end method

.method public final d(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "videoId"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    invoke-direct {p0}, Lo/aeN;->j()Lo/aeP;

    move-result-object v0

    invoke-virtual {v0}, Lo/aeP;->c()Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final e(Lo/nS;)F
    .locals 6

    const-string v0, "offlineAgent"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 182
    sget-object v0, Lo/fo;->c:Lo/fo$ActionBar;

    invoke-virtual {v0}, Lo/fo$ActionBar;->i()Z

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-nez v0, :cond_0

    return v1

    .line 186
    :cond_0
    invoke-interface {p1}, Lo/nS;->p()Lo/Bg;

    move-result-object p1

    const-string v0, "offlineAgent.offlineStorageVolumeList"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 188
    invoke-interface {p1}, Lo/Bg;->d()I

    move-result v0

    invoke-interface {p1, v0}, Lo/Bg;->e(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/Bh;

    if-eqz p1, :cond_1

    .line 189
    invoke-interface {p1}, Lo/Bh;->a()J

    move-result-wide v2

    const p1, 0x3b9aca00

    int-to-long v4, p1

    div-long/2addr v2, v4

    const/4 p1, 0x5

    int-to-long v4, p1

    cmp-long p1, v2, v4

    if-ltz p1, :cond_1

    const/high16 v1, 0x40400000    # 3.0f

    :cond_1
    return v1
.end method

.method public final e(Ljava/lang/String;)I
    .locals 1

    const-string v0, "showId"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    invoke-direct {p0}, Lo/aeN;->j()Lo/aeP;

    move-result-object v0

    invoke-virtual {v0}, Lo/aeP;->b()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final e(Landroid/content/BroadcastReceiver;)V
    .locals 3

    const-string v0, "playStartStopReceiver"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 201
    invoke-static {}, Lo/CarrierIdentifier;->d()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.netflix.mediaclient.intent.action.DOWNLOADEDFORYOU_OPT_IN"

    .line 204
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.netflix.mediaclient.intent.category.DOWNLOADEDFORYOU"

    .line 200
    invoke-static {v0, p1, v2, v1}, Lo/adG;->b(Landroid/content/Context;Landroid/content/BroadcastReceiver;Ljava/lang/String;[Ljava/lang/String;)Z

    return-void
.end method

.method public final e(Landroid/content/Context;Ljava/lang/String;FLo/nS;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "profileGuid"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "offlineAgent"

    invoke-static {p4, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    invoke-virtual {p0, p2, p3}, Lo/aeN;->e(Ljava/lang/String;F)V

    .line 126
    new-instance p2, Landroid/content/Intent;

    const-string p3, "com.netflix.mediaclient.intent.action.DOWNLOADEDFORYOU_OPT_IN"

    invoke-direct {p2, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p3, "com.netflix.mediaclient.intent.category.DOWNLOADEDFORYOU"

    .line 127
    invoke-virtual {p2, p3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 128
    invoke-static {p1}, Lo/IllegalMonitorStateException;->b(Landroid/content/Context;)Lo/IllegalMonitorStateException;

    move-result-object p1

    invoke-virtual {p1, p2}, Lo/IllegalMonitorStateException;->a(Landroid/content/Intent;)Z

    .line 129
    invoke-interface {p4}, Lo/nS;->s()Lo/nK;

    move-result-object p1

    invoke-interface {p1}, Lo/nK;->b()V

    return-void
.end method

.method public final e(Ljava/lang/String;F)V
    .locals 2

    const-string v0, "profileGuid"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    invoke-direct {p0}, Lo/aeN;->j()Lo/aeP;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lo/aeP;->d(Z)V

    .line 117
    invoke-direct {p0}, Lo/aeN;->j()Lo/aeP;

    move-result-object v0

    invoke-virtual {v0}, Lo/aeP;->a()Ljava/util/HashMap;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    cmpg-float p2, p2, v0

    if-gtz p2, :cond_0

    .line 119
    invoke-direct {p0}, Lo/aeN;->j()Lo/aeP;

    move-result-object p2

    invoke-virtual {p2}, Lo/aeP;->a()Ljava/util/HashMap;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    :cond_0
    invoke-direct {p0}, Lo/aeN;->f()V

    return-void
.end method

.method public final e(Ljava/lang/String;I)V
    .locals 1

    const-string v0, "showId"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    if-lez p2, :cond_0

    .line 97
    invoke-direct {p0}, Lo/aeN;->j()Lo/aeP;

    move-result-object v0

    invoke-virtual {v0}, Lo/aeP;->b()Ljava/util/HashMap;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 99
    :cond_0
    invoke-direct {p0}, Lo/aeN;->j()Lo/aeP;

    move-result-object p2

    invoke-virtual {p2}, Lo/aeP;->b()Ljava/util/HashMap;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    :goto_0
    invoke-direct {p0}, Lo/aeN;->f()V

    return-void
.end method

.method public final e()Z
    .locals 1

    .line 53
    invoke-direct {p0}, Lo/aeN;->j()Lo/aeP;

    move-result-object v0

    invoke-virtual {v0}, Lo/aeP;->e()Z

    move-result v0

    return v0
.end method

.method public final g()V
    .locals 1

    .line 155
    invoke-direct {p0}, Lo/aeN;->j()Lo/aeP;

    move-result-object v0

    invoke-virtual {v0}, Lo/aeP;->d()Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    .line 156
    invoke-direct {p0}, Lo/aeN;->f()V

    return-void
.end method

.method public final h(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "videoId"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 166
    invoke-direct {p0}, Lo/aeN;->j()Lo/aeP;

    move-result-object v0

    invoke-virtual {v0}, Lo/aeP;->d()Ljava/util/LinkedHashMap;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final i()Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 175
    invoke-direct {p0}, Lo/aeN;->j()Lo/aeP;

    move-result-object v0

    invoke-virtual {v0}, Lo/aeP;->d()Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 178
    :cond_0
    invoke-direct {p0}, Lo/aeN;->j()Lo/aeP;

    move-result-object v0

    invoke-virtual {v0}, Lo/aeP;->d()Ljava/util/LinkedHashMap;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    return-object v0
.end method

.method public final i(Ljava/lang/String;)V
    .locals 1

    const-string v0, "videoId"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 170
    invoke-direct {p0}, Lo/aeN;->j()Lo/aeP;

    move-result-object v0

    invoke-virtual {v0}, Lo/aeP;->d()Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    invoke-direct {p0}, Lo/aeN;->f()V

    return-void
.end method
