.class public abstract Lo/Iv;
.super Lcom/netflix/mediaclient/android/fragment/NetflixFrag;
.source ""


# instance fields
.field private b:Lo/AH;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;-><init>()V

    return-void
.end method


# virtual methods
.method public b(IILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final c()Lo/AH;
    .locals 1

    .line 48
    iget-object v0, p0, Lo/Iv;->b:Lo/AH;

    return-object v0
.end method

.method public final c(Lo/AH;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lo/Iv;->b:Lo/AH;

    return-void
.end method

.method public final d(Ljava/util/Map;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 62
    iget-object v0, p0, Lo/Iv;->b:Lo/AH;

    if-nez v0, :cond_0

    const-string v0, "HomeFragment"

    const-string v1, "No-op! lolomo summary is null, nothing to populate."

    .line 63
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1

    .line 67
    :cond_0
    invoke-interface {v0}, Lo/AH;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "lolomoId"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    iget-object v0, p0, Lo/Iv;->b:Lo/AH;

    invoke-interface {v0}, Lo/AH;->isFromCache()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "isFromCache"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    iget-object v0, p0, Lo/Iv;->b:Lo/AH;

    invoke-interface {v0}, Lo/AH;->getExpiryTimeStamp()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "timeToExpiry"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    invoke-virtual {p0}, Lo/Iv;->U_()Lo/Am;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 72
    invoke-virtual {p0}, Lo/Iv;->h()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-static {v0}, Lo/adR;->b(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Ljava/lang/String;

    move-result-object v0

    .line 73
    iget-object v1, p0, Lo/Iv;->b:Lo/AH;

    invoke-interface {v1}, Lo/AH;->getLolomoProfileGuid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "isProfileMismatch"

    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "clientProfileGuid"

    .line 74
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    iget-object v0, p0, Lo/Iv;->b:Lo/AH;

    invoke-interface {v0}, Lo/AH;->getLolomoProfileGuid()Ljava/lang/String;

    move-result-object v0

    const-string v1, "lolomoProfileGuid"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    invoke-virtual {p0}, Lo/Iv;->h()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-static {v0}, Lo/adR;->d(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Lo/BC;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 80
    invoke-interface {v0}, Lo/BC;->isKidsProfile()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    :cond_1
    const-string v0, "isKidsProfile"

    .line 82
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object p1
.end method

.method public d(Z)V
    .locals 0

    return-void
.end method
