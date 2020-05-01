.class public final Lo/Bn;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final e:Lo/Bm;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    const-string v0, "listId"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "playableIds"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Lo/Bm$ActionBar;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "feed-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lo/Bm$ActionBar;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 14
    check-cast p1, Ljava/lang/Long;

    .line 15
    check-cast p2, Ljava/lang/Iterable;

    .line 37
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    if-eqz p1, :cond_0

    .line 16
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    .line 18
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    .line 19
    new-instance v5, Lo/Bl$Activity;

    invoke-direct {v5, v3, v4}, Lo/Bl$Activity;-><init>(J)V

    .line 20
    new-instance v3, Lo/Bo$StateListAnimator;

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lo/Bo$StateListAnimator;-><init>(Ljava/lang/String;)V

    const-wide/16 v6, 0x64

    invoke-virtual {v3, v6, v7}, Lo/Bo$StateListAnimator;->b(J)Lo/Bo$StateListAnimator;

    move-result-object v3

    invoke-virtual {v3}, Lo/Bo$StateListAnimator;->e()Lo/Bo;

    move-result-object v3

    invoke-virtual {v5, v3}, Lo/Bl$Activity;->a(Lo/Bo;)Lo/Bl$Activity;

    .line 21
    invoke-virtual {v5}, Lo/Bl$Activity;->a()Lo/Bl;

    move-result-object v3

    .line 17
    invoke-virtual {v0, p1, v3}, Lo/Bm$ActionBar;->c(Ljava/lang/String;Lo/Bl;)Lo/Bm$ActionBar;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_1

    .line 23
    :cond_0
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lo/Bm$ActionBar;->c(Ljava/lang/String;)Lo/Bm$ActionBar;

    .line 25
    :goto_1
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    .line 27
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide p1

    .line 29
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 30
    new-instance v2, Lo/Bl$Activity;

    invoke-direct {v2, p1, p2}, Lo/Bl$Activity;-><init>(J)V

    invoke-virtual {v2}, Lo/Bl$Activity;->a()Lo/Bl;

    move-result-object p1

    .line 28
    invoke-virtual {v0, v1, p1}, Lo/Bm$ActionBar;->c(Ljava/lang/String;Lo/Bl;)Lo/Bm$ActionBar;

    .line 33
    :cond_2
    invoke-virtual {v0}, Lo/Bm$ActionBar;->b()Lo/Bm;

    move-result-object p1

    const-string p2, "builder.build()"

    invoke-static {p1, p2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lo/Bn;->e:Lo/Bm;

    return-void
.end method


# virtual methods
.method public final d()Lo/Bm;
    .locals 1

    .line 10
    iget-object v0, p0, Lo/Bn;->e:Lo/Bm;

    return-object v0
.end method
