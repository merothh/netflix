.class Lo/df$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/dl;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/df;->k()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/df;

.field final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lo/df;Ljava/lang/String;)V
    .locals 0

    .line 158
    iput-object p1, p0, Lo/df$1;->a:Lo/df;

    iput-object p2, p0, Lo/df$1;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a([B)V
    .locals 4

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 169
    :try_start_0
    iget-object v1, p0, Lo/df$1;->a:Lo/df;

    iget-object v1, v1, Lo/df;->c:Lcom/netflix/mediaclient/drm/NetflixMediaDrm;

    invoke-interface {v1, p1}, Lcom/netflix/mediaclient/drm/NetflixMediaDrm;->provideProvisionResponse([B)V

    .line 170
    iget-object p1, p0, Lo/df$1;->a:Lo/df;

    invoke-virtual {p1}, Lo/df;->y_()V
    :try_end_0
    .catch Landroid/media/DeniedByServerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 176
    sget-object v1, Lo/df;->n:Ljava/lang/String;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "Fatal error on seting Widevine provisioning response"

    invoke-static {v1, p1, v2, v0}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 178
    iget-object p1, p0, Lo/df$1;->a:Lo/df;

    iget-object p1, p1, Lo/df;->a:Lo/dc$StateListAnimator;

    if-eqz p1, :cond_1

    .line 179
    iget-object p1, p0, Lo/df$1;->a:Lo/df;

    iget-object p1, p1, Lo/df;->a:Lo/dc$StateListAnimator;

    sget-object v0, Lo/LegacyErrorStrings;->y:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-interface {p1, v0}, Lo/dc$StateListAnimator;->e(Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0

    :catch_0
    move-exception p1

    .line 172
    sget-object v1, Lo/df;->n:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Server declined Widevine provisioning request. Server URL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lo/df$1;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, p1, v2, v0}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 173
    iget-object p1, p0, Lo/df$1;->a:Lo/df;

    iget-object p1, p1, Lo/df;->a:Lo/dc$StateListAnimator;

    sget-object v0, Lo/LegacyErrorStrings;->F:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-interface {p1, v0}, Lo/dc$StateListAnimator;->e(Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0

    .line 184
    :cond_0
    sget-object p1, Lo/df;->n:Ljava/lang/String;

    const-string v0, "Failed to get provisiong certificate"

    invoke-static {p1, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    iget-object p1, p0, Lo/df$1;->a:Lo/df;

    iget-object p1, p1, Lo/df;->a:Lo/dc$StateListAnimator;

    sget-object v0, Lo/LegacyErrorStrings;->y:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-interface {p1, v0}, Lo/dc$StateListAnimator;->e(Lcom/netflix/mediaclient/android/app/Status;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public d()V
    .locals 2

    .line 193
    sget-object v0, Lo/df;->n:Ljava/lang/String;

    const-string v1, "Blacklisted Widevine plugin? Do NOT use it!"

    invoke-static {v0, v1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    iget-object v0, p0, Lo/df$1;->a:Lo/df;

    iget-object v1, p0, Lo/df$1;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/df;->b(Lo/df;Ljava/lang/String;)V

    .line 195
    iget-object v0, p0, Lo/df$1;->a:Lo/df;

    iget-object v0, v0, Lo/df;->a:Lo/dc$StateListAnimator;

    sget-object v1, Lo/LegacyErrorStrings;->J:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-interface {v0, v1}, Lo/dc$StateListAnimator;->e(Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method
