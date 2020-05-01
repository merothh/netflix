.class public Lo/acQ;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/acQ$Application;
    }
.end annotation


# direct methods
.method static a(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;Lo/acQ$Application;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 65
    invoke-static {}, Lo/acR;->e()Lo/acR;

    move-result-object v0

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;->e()Z

    move-result v1

    invoke-virtual {v0, p0, v1, p1, p2}, Lo/acR;->e(Lcom/netflix/mediaclient/android/activity/NetflixActivity;ZLcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;Lo/acQ$Application;)V

    goto :goto_0

    :cond_0
    const-string p0, "nf_age"

    const-string p1, "vault null, skipping pin and play"

    .line 67
    invoke-static {p0, p1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static a(Lcom/netflix/mediaclient/android/activity/NetflixActivity;ZLcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;)V
    .locals 5

    .line 29
    invoke-static {p0}, Lo/adR;->a(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Lcom/netflix/mediaclient/service/user/UserAgent;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 30
    invoke-interface {v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    .line 32
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v3, v1

    const-string v1, " isAgeProtected: %b, isAgeVerified: %b"

    .line 31
    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "nf_age"

    invoke-static {v2, v1}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_2

    if-eqz v0, :cond_1

    goto :goto_1

    .line 35
    :cond_1
    invoke-static {}, Lo/acM;->d()Lo/acM;

    move-result-object p1

    invoke-virtual {p1, p0, p2, p0}, Lo/acM;->b(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;Lo/acQ$Application;)V

    goto :goto_2

    .line 37
    :cond_2
    :goto_1
    invoke-static {p0, p2, p0}, Lo/acQ;->a(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;Lo/acQ$Application;)V

    :goto_2
    return-void
.end method
