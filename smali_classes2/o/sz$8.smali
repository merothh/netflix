.class Lo/sz$8;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/sz;->e(Ljava/lang/Long;Lcom/netflix/mediaclient/media/PreferredLanguageData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Boolean;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/Long;

.field final synthetic e:Lo/sz;


# direct methods
.method constructor <init>(Lo/sz;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 0

    .line 279
    iput-object p1, p0, Lo/sz$8;->e:Lo/sz;

    iput-object p2, p0, Lo/sz$8;->d:Ljava/lang/Long;

    iput-object p3, p0, Lo/sz$8;->b:Ljava/lang/String;

    iput-object p4, p0, Lo/sz$8;->c:Ljava/lang/String;

    iput-object p5, p0, Lo/sz$8;->a:Ljava/lang/Boolean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 282
    iget-object v0, p0, Lo/sz$8;->e:Lo/sz;

    invoke-static {v0}, Lo/sz;->h(Lo/sz;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_4

    .line 283
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 284
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/BW;

    invoke-virtual {v4}, Lo/BW;->e()J

    move-result-wide v4

    iget-object v6, p0, Lo/sz$8;->d:Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-nez v8, :cond_0

    iget-object v4, p0, Lo/sz$8;->b:Ljava/lang/String;

    const-string v5, ""

    if-nez v4, :cond_1

    .line 285
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/BW;

    invoke-virtual {v4}, Lo/BW;->i()Ljava/lang/String;

    move-result-object v4

    if-ne v4, v5, :cond_0

    goto :goto_1

    .line 286
    :cond_1
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lo/BW;

    invoke-virtual {v6}, Lo/BW;->i()Ljava/lang/String;

    move-result-object v6

    if-ne v4, v6, :cond_0

    :goto_1
    iget-object v4, p0, Lo/sz$8;->c:Ljava/lang/String;

    if-nez v4, :cond_2

    .line 287
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/BW;

    invoke-virtual {v4}, Lo/BW;->j()Ljava/lang/String;

    move-result-object v4

    if-ne v4, v5, :cond_0

    goto :goto_2

    .line 288
    :cond_2
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lo/BW;

    invoke-virtual {v5}, Lo/BW;->j()Ljava/lang/String;

    move-result-object v5

    if-ne v4, v5, :cond_0

    :goto_2
    iget-object v4, p0, Lo/sz$8;->a:Ljava/lang/Boolean;

    if-nez v4, :cond_3

    .line 290
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/BW;

    invoke-virtual {v1}, Lo/BW;->g()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_3

    .line 291
    :cond_3
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/BW;

    invoke-virtual {v1}, Lo/BW;->g()Z

    move-result v1

    if-ne v4, v1, :cond_0

    .line 292
    :goto_3
    invoke-static {}, Lo/sz;->a()Ljava/lang/String;

    move-result-object v1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lo/sz$8;->d:Ljava/lang/Long;

    aput-object v4, v3, v2

    const-string v2, "M-CACHE, remove %d"

    invoke-static {v1, v2, v3}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 293
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto/16 :goto_0

    .line 296
    :cond_4
    iget-object v0, p0, Lo/sz$8;->e:Lo/sz;

    invoke-static {v0}, Lo/sz;->f(Lo/sz;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 297
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 298
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/BW;

    invoke-virtual {v1}, Lo/BW;->e()J

    move-result-wide v4

    iget-object v1, p0, Lo/sz$8;->d:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v1, v4, v6

    if-nez v1, :cond_5

    .line 299
    invoke-static {}, Lo/sz;->a()Ljava/lang/String;

    move-result-object v1

    new-array v4, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lo/sz$8;->d:Ljava/lang/Long;

    aput-object v5, v4, v2

    const-string v5, "M-CACHE, remove pending %d"

    invoke-static {v1, v5, v4}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 300
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_4

    .line 303
    :cond_6
    iget-object v0, p0, Lo/sz$8;->e:Lo/sz;

    invoke-static {v0}, Lo/sz;->a(Lo/sz;)Lcom/netflix/mediaclient/storage/db/PersistedManifestDatabase;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 304
    iget-object v0, p0, Lo/sz$8;->e:Lo/sz;

    invoke-static {v0}, Lo/sz;->c(Lo/sz;)Lo/sJ;

    move-result-object v0

    iget-object v1, p0, Lo/sz$8;->d:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lo/sJ;->e(J)I

    :cond_7
    return-void
.end method
