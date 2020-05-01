.class public Lo/oW;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/pq$Application;


# instance fields
.field private final a:Lo/sx;

.field private final b:Ljava/lang/String;

.field private final c:[B

.field private final d:Ljava/lang/String;

.field private final e:Lo/jX;

.field private final f:Lo/sE;

.field private final g:Ljava/lang/String;

.field private final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Ljava/lang/Long;

.field private final l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lo/sE;[BLo/sx;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lo/jX;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lo/sE;",
            "[B",
            "Lo/sx;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lo/jX;",
            ")V"
        }
    .end annotation

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p3, p0, Lo/oW;->f:Lo/sE;

    .line 69
    iput-object p2, p0, Lo/oW;->g:Ljava/lang/String;

    .line 70
    iput-object p6, p0, Lo/oW;->i:Ljava/util/List;

    .line 71
    iput-object p7, p0, Lo/oW;->h:Ljava/util/List;

    .line 72
    iput-object p8, p0, Lo/oW;->l:Ljava/util/List;

    .line 73
    iput-object p9, p0, Lo/oW;->n:Ljava/util/List;

    .line 75
    iput-object p4, p0, Lo/oW;->c:[B

    .line 76
    iput-object p10, p0, Lo/oW;->d:Ljava/lang/String;

    .line 77
    iput-object p11, p0, Lo/oW;->b:Ljava/lang/String;

    .line 79
    iput-object p12, p0, Lo/oW;->e:Lo/jX;

    .line 81
    iput-object p5, p0, Lo/oW;->a:Lo/sx;

    .line 82
    invoke-interface {p3}, Lo/sE;->s()Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lo/oW;->j:Ljava/lang/Long;

    .line 83
    invoke-direct {p0}, Lo/oW;->c()V

    return-void
.end method

.method private c()V
    .locals 0

    return-void
.end method


# virtual methods
.method public b()Lo/sE;
    .locals 31

    move-object/from16 v0, p0

    .line 102
    new-instance v8, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v8, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 103
    iget-object v2, v0, Lo/oW;->f:Lo/sE;

    invoke-interface {v2}, Lo/sE;->f()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/sO;

    .line 104
    iget-object v4, v0, Lo/oW;->n:Ljava/util/List;

    invoke-virtual {v3}, Lo/sO;->d()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 105
    iget-object v4, v0, Lo/oW;->g:Ljava/lang/String;

    iget-object v5, v0, Lo/oW;->n:Ljava/util/List;

    const/4 v6, 0x0

    .line 106
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    sget-object v6, Lcom/netflix/mediaclient/service/offline/download/DownloadableType;->e:Lcom/netflix/mediaclient/service/offline/download/DownloadableType;

    .line 105
    invoke-static {v4, v5, v6}, Lo/pi;->e(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/offline/download/DownloadableType;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "/"

    .line 107
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "file://"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 108
    :cond_1
    invoke-virtual {v3}, Lo/sO;->j()Lo/sO$ActionBar;

    move-result-object v3

    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Lo/sO$ActionBar;->d(Ljava/util/List;)Lo/sO$ActionBar;

    move-result-object v3

    invoke-virtual {v3}, Lo/sO$ActionBar;->a()Lo/sO;

    move-result-object v3

    invoke-interface {v8, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 111
    :cond_2
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 112
    iget-object v2, v0, Lo/oW;->f:Lo/sE;

    invoke-interface {v2}, Lo/sE;->E()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, -0x1

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/sb;

    .line 113
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 114
    invoke-virtual {v3}, Lo/sb;->h()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_4
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/netflix/mediaclient/media/manifest/Stream;

    .line 115
    iget-object v10, v0, Lo/oW;->i:Ljava/util/List;

    invoke-virtual {v7}, Lcom/netflix/mediaclient/media/manifest/Stream;->downloadableId()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 116
    iget-object v10, v0, Lo/oW;->g:Ljava/lang/String;

    .line 117
    invoke-virtual {v7}, Lcom/netflix/mediaclient/media/manifest/Stream;->downloadableId()Ljava/lang/String;

    move-result-object v11

    sget-object v12, Lcom/netflix/mediaclient/service/offline/download/DownloadableType;->d:Lcom/netflix/mediaclient/service/offline/download/DownloadableType;

    .line 116
    invoke-static {v10, v11, v12}, Lo/pi;->e(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/offline/download/DownloadableType;)Ljava/lang/String;

    move-result-object v10

    .line 118
    invoke-virtual {v7}, Lcom/netflix/mediaclient/media/manifest/Stream;->toBuilder()Lcom/netflix/mediaclient/media/manifest/Stream$Builder;

    move-result-object v7

    invoke-static {v4, v10}, Lcom/netflix/mediaclient/media/manifest/Url;->newInstance(ILjava/lang/String;)Lcom/netflix/mediaclient/media/manifest/Url;

    move-result-object v10

    invoke-static {v10}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    invoke-virtual {v7, v10}, Lcom/netflix/mediaclient/media/manifest/Stream$Builder;->urls(Ljava/util/List;)Lcom/netflix/mediaclient/media/manifest/Stream$Builder;

    move-result-object v7

    invoke-virtual {v7}, Lcom/netflix/mediaclient/media/manifest/Stream$Builder;->build()Lcom/netflix/mediaclient/media/manifest/Stream;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 121
    :cond_5
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    .line 122
    invoke-virtual {v3}, Lo/sb;->k()Lo/sb$Activity;

    move-result-object v3

    invoke-virtual {v3, v5}, Lo/sb$Activity;->e(Ljava/util/List;)Lo/sb$Activity;

    move-result-object v3

    invoke-virtual {v3}, Lo/sb$Activity;->b()Lo/sb;

    move-result-object v3

    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 125
    :cond_6
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 126
    iget-object v2, v0, Lo/oW;->f:Lo/sE;

    invoke-interface {v2}, Lo/sE;->C()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/netflix/mediaclient/media/manifest/VideoTrack;

    .line 127
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 128
    invoke-virtual {v3}, Lcom/netflix/mediaclient/media/manifest/VideoTrack;->streams()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_8
    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/netflix/mediaclient/media/manifest/Stream;

    .line 129
    iget-object v11, v0, Lo/oW;->h:Ljava/util/List;

    invoke-virtual {v7}, Lcom/netflix/mediaclient/media/manifest/Stream;->downloadableId()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 130
    iget-object v11, v0, Lo/oW;->g:Ljava/lang/String;

    .line 131
    invoke-virtual {v7}, Lcom/netflix/mediaclient/media/manifest/Stream;->downloadableId()Ljava/lang/String;

    move-result-object v12

    sget-object v13, Lcom/netflix/mediaclient/service/offline/download/DownloadableType;->a:Lcom/netflix/mediaclient/service/offline/download/DownloadableType;

    .line 130
    invoke-static {v11, v12, v13}, Lo/pi;->e(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/offline/download/DownloadableType;)Ljava/lang/String;

    move-result-object v11

    .line 132
    invoke-virtual {v7}, Lcom/netflix/mediaclient/media/manifest/Stream;->toBuilder()Lcom/netflix/mediaclient/media/manifest/Stream$Builder;

    move-result-object v7

    invoke-static {v4, v11}, Lcom/netflix/mediaclient/media/manifest/Url;->newInstance(ILjava/lang/String;)Lcom/netflix/mediaclient/media/manifest/Url;

    move-result-object v11

    invoke-static {v11}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    invoke-virtual {v7, v11}, Lcom/netflix/mediaclient/media/manifest/Stream$Builder;->urls(Ljava/util/List;)Lcom/netflix/mediaclient/media/manifest/Stream$Builder;

    move-result-object v7

    invoke-virtual {v7}, Lcom/netflix/mediaclient/media/manifest/Stream$Builder;->build()Lcom/netflix/mediaclient/media/manifest/Stream;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 135
    :cond_9
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_7

    .line 136
    invoke-virtual {v3}, Lcom/netflix/mediaclient/media/manifest/VideoTrack;->toBuilder()Lcom/netflix/mediaclient/media/manifest/VideoTrack$Builder;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/netflix/mediaclient/media/manifest/VideoTrack$Builder;->streams(Ljava/util/List;)Lcom/netflix/mediaclient/media/manifest/VideoTrack$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netflix/mediaclient/media/manifest/VideoTrack$Builder;->build()Lcom/netflix/mediaclient/media/manifest/VideoTrack;

    move-result-object v3

    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 139
    :cond_a
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 140
    iget-object v2, v0, Lo/oW;->f:Lo/sE;

    invoke-interface {v2}, Lo/sE;->F()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_10

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lo/sQ;

    .line 144
    invoke-virtual {v5}, Lo/sQ;->i()Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Map;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_b

    .line 147
    invoke-virtual {v5}, Lo/sQ;->l()Lo/sQ$StateListAnimator;

    move-result-object v7

    invoke-virtual {v7, v1}, Lo/sQ$StateListAnimator;->c(Z)Lo/sQ$StateListAnimator;

    move-result-object v7

    goto :goto_6

    :cond_b
    const/4 v7, 0x0

    .line 149
    :goto_6
    invoke-virtual {v5}, Lo/sQ;->i()Ljava/util/Map;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    const/4 v6, 0x0

    const/4 v12, 0x0

    :goto_7
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_e

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map$Entry;

    .line 150
    iget-object v14, v0, Lo/oW;->l:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v15

    invoke-interface {v14, v15}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_d

    if-nez v7, :cond_c

    .line 152
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 153
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 154
    invoke-virtual {v5}, Lo/sQ;->l()Lo/sQ$StateListAnimator;

    move-result-object v7

    .line 155
    invoke-virtual {v7, v6}, Lo/sQ$StateListAnimator;->c(Ljava/util/Map;)Lo/sQ$StateListAnimator;

    move-result-object v7

    .line 156
    invoke-virtual {v7, v12}, Lo/sQ$StateListAnimator;->b(Ljava/util/Map;)Lo/sQ$StateListAnimator;

    move-result-object v7

    .line 158
    :cond_c
    iget-object v14, v0, Lo/oW;->g:Ljava/lang/String;

    .line 159
    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    sget-object v1, Lcom/netflix/mediaclient/service/offline/download/DownloadableType;->b:Lcom/netflix/mediaclient/service/offline/download/DownloadableType;

    .line 158
    invoke-static {v14, v15, v1}, Lo/pi;->e(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/offline/download/DownloadableType;)Ljava/lang/String;

    move-result-object v1

    .line 160
    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v15

    invoke-interface {v6, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    invoke-virtual {v5}, Lo/sQ;->a()Ljava/util/Map;

    move-result-object v14

    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v15

    invoke-interface {v14, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lo/sI;

    .line 162
    invoke-virtual {v14}, Lo/sI;->e()Lo/sI$TaskDescription;

    move-result-object v14

    .line 163
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15, v1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v14, v1}, Lo/sI$TaskDescription;->a(Ljava/util/Map;)Lo/sI$TaskDescription;

    move-result-object v1

    .line 164
    invoke-virtual {v1}, Lo/sI$TaskDescription;->b()Lo/sI;

    move-result-object v1

    .line 165
    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    invoke-interface {v12, v13, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d
    const/4 v1, 0x1

    goto :goto_7

    :cond_e
    if-eqz v7, :cond_f

    .line 169
    invoke-virtual {v7}, Lo/sQ$StateListAnimator;->e()Lo/sQ;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_f
    const/4 v1, 0x1

    goto/16 :goto_5

    :cond_10
    const/16 v17, 0x0

    const/16 v19, 0x1

    const/16 v20, -0x1

    const-string v18, "offline"

    const-string v21, "offline"

    const-string v22, "offline"

    .line 172
    invoke-static/range {v17 .. v22}, Lo/sM;->d(ZLjava/lang/String;IILjava/lang/String;Ljava/lang/String;)Lo/sM;

    move-result-object v1

    const/16 v2, 0x64

    const-string v4, "offline"

    const/4 v5, 0x1

    .line 173
    invoke-static {v5, v5, v2, v4}, Lcom/netflix/mediaclient/media/manifest/Location;->create(IIILjava/lang/String;)Lcom/netflix/mediaclient/media/manifest/Location;

    move-result-object v2

    .line 174
    iget-object v4, v0, Lo/oW;->f:Lo/sE;

    invoke-interface {v4}, Lo/sE;->s()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-object v7, v0, Lo/oW;->f:Lo/sE;

    invoke-interface {v7}, Lo/sE;->L()Ljava/util/List;

    move-result-object v7

    iget-object v12, v0, Lo/oW;->f:Lo/sE;

    .line 175
    invoke-interface {v12}, Lo/sE;->y()J

    move-result-wide v12

    iget-object v14, v0, Lo/oW;->f:Lo/sE;

    .line 176
    invoke-interface {v14}, Lo/sE;->U()Lo/sA;

    move-result-object v14

    iget-object v15, v0, Lo/oW;->f:Lo/sE;

    invoke-interface {v15}, Lo/sE;->I()Ljava/util/List;

    move-result-object v15

    iget-object v6, v0, Lo/oW;->f:Lo/sE;

    .line 177
    invoke-interface {v6}, Lo/sE;->u()Ljava/lang/String;

    move-result-object v17

    const-wide/16 v18, 0x0

    iget-object v6, v0, Lo/oW;->f:Lo/sE;

    invoke-interface {v6}, Lo/sE;->ac()Lcom/netflix/mediaclient/media/Watermark;

    move-result-object v20

    const-wide/16 v21, 0x0

    const/16 v23, 0x0

    .line 178
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v24

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v25

    iget-object v6, v0, Lo/oW;->c:[B

    iget-object v1, v0, Lo/oW;->d:Ljava/lang/String;

    iget-object v2, v0, Lo/oW;->b:Ljava/lang/String;

    iget-object v11, v0, Lo/oW;->a:Lo/sx;

    move-object/from16 v27, v1

    iget-object v1, v0, Lo/oW;->e:Lo/jX;

    if-nez v1, :cond_11

    move-object/from16 v28, v2

    const/16 v29, 0x0

    goto :goto_8

    .line 180
    :cond_11
    invoke-virtual {v1}, Lo/jX;->g()Lorg/json/JSONObject;

    move-result-object v1

    move-object/from16 v29, v1

    move-object/from16 v28, v2

    :goto_8
    move-wide v1, v4

    move-object v4, v7

    const/4 v5, 0x0

    move-object/from16 v26, v6

    move-wide v6, v12

    move-object/from16 v30, v11

    move-object v11, v14

    move-object v12, v15

    move-object/from16 v13, v17

    move-wide/from16 v14, v18

    move-object/from16 v16, v20

    move-wide/from16 v17, v21

    move-object/from16 v19, v23

    move-object/from16 v20, v24

    move-object/from16 v21, v25

    move-object/from16 v22, v26

    move-object/from16 v23, v27

    move-object/from16 v24, v28

    move-object/from16 v25, v30

    move-object/from16 v26, v29

    .line 174
    invoke-static/range {v1 .. v26}, Lo/sB;->b(JLjava/util/List;Ljava/util/List;Lo/sp;JLjava/util/List;Ljava/util/List;Ljava/util/List;Lo/sA;Ljava/util/List;Ljava/lang/String;JLcom/netflix/mediaclient/media/Watermark;JLo/so;Ljava/util/List;Ljava/util/List;[BLjava/lang/String;Ljava/lang/String;Lo/sx;Lorg/json/JSONObject;)Lo/sB;

    move-result-object v1

    return-object v1
.end method
