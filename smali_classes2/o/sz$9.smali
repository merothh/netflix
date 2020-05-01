.class Lo/sz$9;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/sz;->b(Ljava/util/List;Lo/sD$ActionBar;ZLo/xx;Lo/P;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/P;

.field final synthetic b:Lo/sD$ActionBar;

.field final synthetic c:Lo/xx;

.field final synthetic d:Ljava/util/List;

.field final synthetic e:Z

.field final synthetic h:Lo/sz;


# direct methods
.method constructor <init>(Lo/sz;Ljava/util/List;Lo/xx;Lo/sD$ActionBar;ZLo/P;)V
    .locals 0

    .line 202
    iput-object p1, p0, Lo/sz$9;->h:Lo/sz;

    iput-object p2, p0, Lo/sz$9;->d:Ljava/util/List;

    iput-object p3, p0, Lo/sz$9;->c:Lo/xx;

    iput-object p4, p0, Lo/sz$9;->b:Lo/sD$ActionBar;

    iput-boolean p5, p0, Lo/sz$9;->e:Z

    iput-object p6, p0, Lo/sz$9;->a:Lo/P;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private d(Lo/BW;)Lo/sE;
    .locals 1

    .line 250
    iget-object v0, p0, Lo/sz$9;->h:Lo/sz;

    invoke-static {v0}, Lo/sz;->h(Lo/sz;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/sE;

    if-eqz p1, :cond_0

    .line 251
    invoke-interface {p1}, Lo/sE;->Q()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 252
    invoke-static {}, Lo/sz;->a()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ignoring expired manifest"

    invoke-static {p1, v0}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    :cond_0
    return-object p1
.end method


# virtual methods
.method public run()V
    .locals 17

    move-object/from16 v0, p0

    .line 205
    new-instance v2, Ljava/util/ArrayList;

    iget-object v1, v0, Lo/sz$9;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 206
    iget-object v1, v0, Lo/sz$9;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 207
    iget-object v4, v0, Lo/sz$9;->c:Lo/xx;

    iget-object v4, v4, Lo/xx;->d:Lcom/netflix/mediaclient/media/PreferredLanguageData;

    const-string v5, ""

    if-eqz v4, :cond_0

    .line 210
    invoke-virtual {v4}, Lcom/netflix/mediaclient/media/PreferredLanguageData;->getAudioCode()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 211
    invoke-virtual {v4}, Lcom/netflix/mediaclient/media/PreferredLanguageData;->getAudioCode()Ljava/lang/String;

    move-result-object v6

    move-object v14, v6

    goto :goto_1

    :cond_0
    move-object v14, v5

    :goto_1
    if-eqz v4, :cond_1

    .line 213
    invoke-virtual {v4}, Lcom/netflix/mediaclient/media/PreferredLanguageData;->getSubtitleCode()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 214
    invoke-virtual {v4}, Lcom/netflix/mediaclient/media/PreferredLanguageData;->getSubtitleCode()Ljava/lang/String;

    move-result-object v5

    :cond_1
    move-object v15, v5

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    .line 216
    invoke-virtual {v4}, Lcom/netflix/mediaclient/media/PreferredLanguageData;->isAssistive()Ljava/lang/Boolean;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 217
    invoke-virtual {v4}, Lcom/netflix/mediaclient/media/PreferredLanguageData;->isAssistive()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    move/from16 v16, v4

    goto :goto_2

    :cond_2
    const/16 v16, 0x0

    .line 218
    :goto_2
    new-instance v4, Lo/BW;

    .line 219
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    iget-object v6, v0, Lo/sz$9;->h:Lo/sz;

    invoke-static {v6}, Lo/sz;->b(Lo/sz;)I

    move-result v10

    iget-object v6, v0, Lo/sz$9;->h:Lo/sz;

    invoke-static {v6}, Lo/sz;->d(Lo/sz;)I

    move-result v11

    iget-object v6, v0, Lo/sz$9;->c:Lo/xx;

    iget-boolean v12, v6, Lo/xx;->c:Z

    iget-object v6, v0, Lo/sz$9;->c:Lo/xx;

    iget-boolean v13, v6, Lo/xx;->b:Z

    move-object v7, v4

    invoke-direct/range {v7 .. v16}, Lo/BW;-><init>(JIIZZLjava/lang/String;Ljava/lang/String;Z)V

    .line 222
    invoke-direct {v0, v4}, Lo/sz$9;->d(Lo/BW;)Lo/sE;

    move-result-object v6

    if-nez v6, :cond_3

    .line 224
    iget-object v7, v0, Lo/sz$9;->h:Lo/sz;

    invoke-static {v7}, Lo/sz;->a(Lo/sz;)Lcom/netflix/mediaclient/storage/db/PersistedManifestDatabase;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 225
    iget-object v6, v0, Lo/sz$9;->h:Lo/sz;

    invoke-static {v6}, Lo/sz;->c(Lo/sz;)Lo/sJ;

    move-result-object v6

    invoke-static {}, Lo/sB;->ak()J

    move-result-wide v7

    invoke-virtual {v6, v4, v7, v8}, Lo/sJ;->d(Lo/BW;J)Lo/sB;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 230
    iget-object v7, v0, Lo/sz$9;->h:Lo/sz;

    invoke-static {v7}, Lo/sz;->h(Lo/sz;)Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    if-eqz v6, :cond_4

    .line 236
    iget-object v7, v0, Lo/sz$9;->h:Lo/sz;

    iget-object v8, v0, Lo/sz$9;->b:Lo/sD$ActionBar;

    const/4 v9, 0x1

    invoke-static {v7, v4, v6, v8, v9}, Lo/sz;->c(Lo/sz;Lo/BW;Lo/sE;Lo/sD$ActionBar;Z)V

    .line 237
    iget-object v4, v0, Lo/sz$9;->h:Lo/sz;

    invoke-static {v4}, Lo/sz;->g(Lo/sz;)V

    .line 238
    invoke-static {}, Lo/sz;->a()Ljava/lang/String;

    move-result-object v4

    new-array v6, v9, [Ljava/lang/Object;

    aput-object v3, v6, v5

    const-string v3, "manifest available for %d"

    invoke-static {v4, v3, v6}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_0

    .line 240
    :cond_4
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 243
    :cond_5
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    .line 244
    iget-object v1, v0, Lo/sz$9;->h:Lo/sz;

    iget-object v3, v0, Lo/sz$9;->b:Lo/sD$ActionBar;

    iget-boolean v4, v0, Lo/sz$9;->e:Z

    iget-object v5, v0, Lo/sz$9;->c:Lo/xx;

    iget-boolean v5, v5, Lo/xx;->e:Z

    iget-object v6, v0, Lo/sz$9;->c:Lo/xx;

    iget-object v6, v6, Lo/xx;->a:Ljava/lang/String;

    iget-object v7, v0, Lo/sz$9;->a:Lo/P;

    invoke-static/range {v1 .. v7}, Lo/sz;->b(Lo/sz;Ljava/util/List;Lo/sD$ActionBar;ZZLjava/lang/String;Lo/P;)V

    :cond_6
    return-void
.end method
