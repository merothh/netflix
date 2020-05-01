.class final Lo/Ve$StateListAnimator$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Ve$StateListAnimator;->b(Ljava/lang/String;Ljava/lang/String;JJLcom/netflix/mediaclient/android/app/Status;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:J

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lo/Ve$StateListAnimator;


# direct methods
.method constructor <init>(Lo/Ve$StateListAnimator;Ljava/lang/String;JJ)V
    .locals 0

    iput-object p1, p0, Lo/Ve$StateListAnimator$4;->e:Lo/Ve$StateListAnimator;

    iput-object p2, p0, Lo/Ve$StateListAnimator$4;->d:Ljava/lang/String;

    iput-wide p3, p0, Lo/Ve$StateListAnimator$4;->b:J

    iput-wide p5, p0, Lo/Ve$StateListAnimator$4;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPrepared(Landroid/media/MediaPlayer;)V
    .locals 5

    .line 280
    iget-object v0, p0, Lo/Ve$StateListAnimator$4;->e:Lo/Ve$StateListAnimator;

    iget-object v0, v0, Lo/Ve$StateListAnimator;->b:Lo/Ve;

    invoke-static {v0}, Lo/Ve;->c(Lo/Ve;)Ljava/util/HashMap;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iget-object v1, p0, Lo/Ve$StateListAnimator$4;->e:Lo/Ve$StateListAnimator;

    iget-object v1, v1, Lo/Ve$StateListAnimator;->e:Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "audioElement.key"

    invoke-static {v1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "mp"

    invoke-static {p1, v3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    iget-object p1, p0, Lo/Ve$StateListAnimator$4;->e:Lo/Ve$StateListAnimator;

    iget-object p1, p1, Lo/Ve$StateListAnimator;->b:Lo/Ve;

    invoke-static {p1}, Lo/Ve;->b(Lo/Ve;)Ljava/util/HashMap;

    move-result-object p1

    iget-object v0, p0, Lo/Ve$StateListAnimator$4;->e:Lo/Ve$StateListAnimator;

    iget-object v0, v0, Lo/Ve$StateListAnimator;->e:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    if-eqz p1, :cond_0

    .line 282
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-string v3, "nanoTime"

    invoke-static {p1, v3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sub-long/2addr v0, v3

    long-to-double v0, v0

    const-wide v3, 0x41d65a0bc0000000L    # 1.5E9

    cmpg-double p1, v0, v3

    if-gtz p1, :cond_0

    .line 283
    iget-object p1, p0, Lo/Ve$StateListAnimator$4;->e:Lo/Ve$StateListAnimator;

    iget-object p1, p1, Lo/Ve$StateListAnimator;->b:Lo/Ve;

    invoke-static {p1}, Lo/Ve;->b(Lo/Ve;)Ljava/util/HashMap;

    move-result-object p1

    iget-object v0, p0, Lo/Ve$StateListAnimator$4;->e:Lo/Ve$StateListAnimator;

    iget-object v0, v0, Lo/Ve$StateListAnimator;->e:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    iget-object p1, p0, Lo/Ve$StateListAnimator$4;->e:Lo/Ve$StateListAnimator;

    iget-object p1, p1, Lo/Ve$StateListAnimator;->b:Lo/Ve;

    iget-object v0, p0, Lo/Ve$StateListAnimator$4;->e:Lo/Ve$StateListAnimator;

    iget-object v0, v0, Lo/Ve$StateListAnimator;->e:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lo/Ve;->b(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
