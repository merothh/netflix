.class Lo/sz$2$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/sz$2;->e(Lorg/json/JSONObject;Lcom/netflix/mediaclient/android/app/Status;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/sz$2;

.field final synthetic b:Lorg/json/JSONObject;

.field final synthetic e:Lcom/netflix/mediaclient/android/app/Status;


# direct methods
.method constructor <init>(Lo/sz$2;Lcom/netflix/mediaclient/android/app/Status;Lorg/json/JSONObject;)V
    .locals 0

    .line 441
    iput-object p1, p0, Lo/sz$2$2;->a:Lo/sz$2;

    iput-object p2, p0, Lo/sz$2$2;->e:Lcom/netflix/mediaclient/android/app/Status;

    iput-object p3, p0, Lo/sz$2$2;->b:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 444
    iget-object v0, p0, Lo/sz$2$2;->e:Lcom/netflix/mediaclient/android/app/Status;

    invoke-interface {v0}, Lcom/netflix/mediaclient/android/app/Status;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lo/sz$2$2;->b:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    goto :goto_1

    .line 451
    :cond_0
    iget-object v0, p0, Lo/sz$2$2;->a:Lo/sz$2;

    iget-object v0, v0, Lo/sz$2;->a:Lo/sz;

    iget-object v1, p0, Lo/sz$2$2;->a:Lo/sz$2;

    iget-object v1, v1, Lo/sz$2;->e:Ljava/util/List;

    iget-object v2, p0, Lo/sz$2$2;->b:Lorg/json/JSONObject;

    invoke-static {v0, v1, v2}, Lo/sz;->c(Lo/sz;Ljava/util/List;Lorg/json/JSONObject;)V

    .line 452
    iget-object v0, p0, Lo/sz$2$2;->a:Lo/sz$2;

    iget-object v0, v0, Lo/sz$2;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/BW;

    .line 453
    iget-object v2, p0, Lo/sz$2$2;->a:Lo/sz$2;

    iget-object v2, v2, Lo/sz$2;->a:Lo/sz;

    invoke-static {v2}, Lo/sz;->h(Lo/sz;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/sE;

    if-eqz v2, :cond_1

    .line 456
    iget-object v3, p0, Lo/sz$2$2;->a:Lo/sz$2;

    iget-object v3, v3, Lo/sz$2;->a:Lo/sz;

    iget-object v4, p0, Lo/sz$2$2;->a:Lo/sz$2;

    iget-object v4, v4, Lo/sz$2;->c:Lo/sD$ActionBar;

    const/4 v5, 0x0

    invoke-static {v3, v1, v2, v4, v5}, Lo/sz;->c(Lo/sz;Lo/BW;Lo/sE;Lo/sD$ActionBar;Z)V

    goto :goto_0

    .line 458
    :cond_1
    iget-object v2, p0, Lo/sz$2$2;->a:Lo/sz$2;

    iget-object v2, v2, Lo/sz$2;->a:Lo/sz;

    iget-object v3, p0, Lo/sz$2$2;->a:Lo/sz$2;

    iget-object v3, v3, Lo/sz$2;->c:Lo/sD$ActionBar;

    new-instance v4, Lcom/netflix/mediaclient/android/app/NetflixStatus;

    sget-object v5, Lcom/netflix/mediaclient/StatusCode;->cR:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {v4, v5}, Lcom/netflix/mediaclient/android/app/NetflixStatus;-><init>(Lcom/netflix/mediaclient/StatusCode;)V

    invoke-static {v2, v1, v3, v4}, Lo/sz;->e(Lo/sz;Lo/BW;Lo/sD$ActionBar;Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0

    :cond_2
    return-void

    .line 445
    :cond_3
    :goto_1
    invoke-static {}, Lo/sz;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "fetchStreamingManifests failed"

    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    iget-object v0, p0, Lo/sz$2$2;->a:Lo/sz$2;

    iget-object v0, v0, Lo/sz$2;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/BW;

    .line 447
    iget-object v2, p0, Lo/sz$2$2;->a:Lo/sz$2;

    iget-object v2, v2, Lo/sz$2;->a:Lo/sz;

    iget-object v3, p0, Lo/sz$2$2;->a:Lo/sz$2;

    iget-object v3, v3, Lo/sz$2;->c:Lo/sD$ActionBar;

    iget-object v4, p0, Lo/sz$2$2;->e:Lcom/netflix/mediaclient/android/app/Status;

    invoke-static {v2, v1, v3, v4}, Lo/sz;->e(Lo/sz;Lo/BW;Lo/sD$ActionBar;Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_2

    :cond_4
    return-void
.end method
