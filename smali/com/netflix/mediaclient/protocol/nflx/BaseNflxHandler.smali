.class public abstract Lcom/netflix/mediaclient/protocol/nflx/BaseNflxHandler;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/netflix/mediaclient/protocol/nflx/NflxHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/mediaclient/protocol/nflx/BaseNflxHandler$TinyTypes;
    }
.end annotation


# instance fields
.field protected a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/android/activity/NetflixActivity;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/netflix/mediaclient/protocol/nflx/BaseNflxHandler;->d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    .line 39
    iput-object p2, p0, Lcom/netflix/mediaclient/protocol/nflx/BaseNflxHandler;->a:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method protected abstract a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;
.end method

.method protected a()Lo/aeb$StateListAnimator;
    .locals 3

    .line 57
    iget-object v0, p0, Lcom/netflix/mediaclient/protocol/nflx/BaseNflxHandler;->a:Ljava/util/Map;

    const-string v1, "movieid"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 58
    invoke-static {v0}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 59
    invoke-virtual {p0}, Lcom/netflix/mediaclient/protocol/nflx/BaseNflxHandler;->b()Lo/aeb$StateListAnimator;

    move-result-object v0

    return-object v0

    .line 62
    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/protocol/nflx/BaseNflxHandler;->a:Ljava/util/Map;

    invoke-static {v0, v1}, Lo/aeb;->e(Ljava/lang/String;Ljava/util/Map;)Lo/aeb$StateListAnimator;

    move-result-object v0

    .line 69
    iget-object v1, p0, Lcom/netflix/mediaclient/protocol/nflx/BaseNflxHandler;->a:Ljava/util/Map;

    invoke-static {v1}, Lo/aeb;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    .line 70
    invoke-static {v1}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz v0, :cond_2

    .line 71
    invoke-virtual {v0}, Lo/aeb$StateListAnimator;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lo/aeb$StateListAnimator;->b(Ljava/lang/String;Ljava/lang/String;)Lo/aeb$StateListAnimator;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, v1

    :cond_2
    :goto_0
    return-object v0
.end method

.method protected abstract b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;
.end method

.method protected b()Lo/aeb$StateListAnimator;
    .locals 3

    .line 87
    iget-object v0, p0, Lcom/netflix/mediaclient/protocol/nflx/BaseNflxHandler;->a:Ljava/util/Map;

    invoke-static {v0}, Lo/aeb;->d(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 88
    invoke-static {v0}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "NflxHandler"

    if-eqz v1, :cond_0

    const-string v0, "movie id uri and tiny url both doesn\'t exist in params map"

    .line 89
    invoke-static {v2, v0}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v1, "movie id uri doesn\'t exist in params map, but tiny url does. Resolve it"

    .line 93
    invoke-static {v2, v1}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    new-instance v1, Lcom/netflix/mediaclient/android/app/BackgroundTask;

    invoke-direct {v1}, Lcom/netflix/mediaclient/android/app/BackgroundTask;-><init>()V

    new-instance v2, Lcom/netflix/mediaclient/protocol/nflx/BaseNflxHandler$3;

    invoke-direct {v2, p0, v0}, Lcom/netflix/mediaclient/protocol/nflx/BaseNflxHandler$3;-><init>(Lcom/netflix/mediaclient/protocol/nflx/BaseNflxHandler;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/android/app/BackgroundTask;->b(Ljava/lang/Runnable;)V

    .line 104
    sget-object v0, Lo/aeb$StateListAnimator;->c:Lo/aeb$StateListAnimator;

    return-object v0
.end method

.method protected d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const-string v0, "NflxHandler"

    .line 138
    invoke-static {}, Lo/aeB;->c()Z

    .line 140
    sget-object v1, Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;->d:Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;

    .line 143
    :try_start_0
    invoke-static {p1}, Lo/aeb;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/16 v2, 0x3e

    .line 144
    invoke-static {p1, v2}, Lo/ado;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 146
    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 147
    sget-object v5, Lcom/netflix/mediaclient/protocol/nflx/BaseNflxHandler$TinyTypes;->b:Lcom/netflix/mediaclient/protocol/nflx/BaseNflxHandler$TinyTypes;

    invoke-static {v4}, Lcom/netflix/mediaclient/protocol/nflx/BaseNflxHandler$TinyTypes;->b(I)Lcom/netflix/mediaclient/protocol/nflx/BaseNflxHandler$TinyTypes;

    move-result-object v4

    if-ne v5, v4, :cond_0

    const/4 v2, 0x1

    .line 149
    :cond_0
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 155
    invoke-static {p1}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string p1, "No catalog_title in JSON object! Go to LOLOMO."

    .line 156
    invoke-static {v0, p1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    invoke-virtual {p0}, Lcom/netflix/mediaclient/protocol/nflx/BaseNflxHandler;->e()V

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    const-string v2, "This was a movie url"

    .line 160
    invoke-static {v0, v2}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    invoke-virtual {p0, p1, p2, p3}, Lcom/netflix/mediaclient/protocol/nflx/BaseNflxHandler;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;

    move-result-object v1

    goto :goto_0

    :cond_2
    const-string v2, "This was a TV Show url"

    .line 163
    invoke-static {v0, v2}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    invoke-virtual {p0, p1, p2, p3}, Lcom/netflix/mediaclient/protocol/nflx/BaseNflxHandler;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string p2, "We failed to get expanded URL "

    .line 169
    invoke-static {v0, p2, p1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 170
    invoke-virtual {p0}, Lcom/netflix/mediaclient/protocol/nflx/BaseNflxHandler;->e()V

    .line 173
    :goto_0
    sget-object p1, Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;->a:Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;

    invoke-virtual {p1, v1}, Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 174
    iget-object p1, p0, Lcom/netflix/mediaclient/protocol/nflx/BaseNflxHandler;->d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {p1}, Lo/aeb;->d(Landroid/app/Activity;)V

    :cond_3
    return-void
.end method

.method protected e()V
    .locals 3

    .line 45
    new-instance v0, Lo/ba;

    iget-object v1, p0, Lcom/netflix/mediaclient/protocol/nflx/BaseNflxHandler;->d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    iget-object v2, p0, Lcom/netflix/mediaclient/protocol/nflx/BaseNflxHandler;->a:Ljava/util/Map;

    invoke-direct {v0, v1, v2}, Lo/ba;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/util/Map;)V

    .line 46
    invoke-virtual {v0}, Lo/ba;->w_()Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;

    return-void
.end method
