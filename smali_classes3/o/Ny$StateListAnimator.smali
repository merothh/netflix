.class public final Lo/Ny$StateListAnimator;
.super Lo/MessagePdu;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Ny;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StateListAnimator"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    const-string v0, "MultiMonthOfferActivity"

    .line 26
    invoke-direct {p0, v0}, Lo/MessagePdu;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic constructor <init>(Lo/amc;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lo/Ny$StateListAnimator;-><init>()V

    return-void
.end method

.method private final d()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lo/Ny;",
            ">;"
        }
    .end annotation

    .line 44
    invoke-static {}, Lcom/netflix/mediaclient/NetflixApplication;->getInstance()Lcom/netflix/mediaclient/NetflixApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/NetflixApplication;->I()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    const-class v0, Lo/Nz;

    goto :goto_0

    .line 47
    :cond_0
    const-class v0, Lo/Ny;

    :goto_0
    return-object v0
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Lo/akj;
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    const-class v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {p1, v0}, Lo/TagTechnology;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    if-eqz p1, :cond_1

    .line 33
    sget-object v0, Lo/Ny;->c:Lo/Ny$StateListAnimator;

    invoke-virtual {v0}, Lo/Ny$StateListAnimator;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 34
    sget-object v0, Lo/Ny;->c:Lo/Ny$StateListAnimator;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lo/Ny$StateListAnimator;->c(Z)V

    .line 36
    new-instance v0, Landroid/content/Intent;

    move-object v1, p1

    check-cast v1, Landroid/content/Context;

    sget-object v2, Lo/Ny;->c:Lo/Ny$StateListAnimator;

    invoke-direct {v2}, Lo/Ny$StateListAnimator;->d()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 37
    sget v1, Lo/ClientCertRequest;->e:I

    .line 35
    invoke-virtual {p1, v0, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 40
    :cond_0
    sget-object p1, Lo/akj;->a:Lo/akj;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public final c(Z)V
    .locals 0

    .line 27
    invoke-static {p1}, Lo/Ny;->e(Z)V

    return-void
.end method

.method public final c()Z
    .locals 1

    .line 27
    invoke-static {}, Lo/Ny;->g()Z

    move-result v0

    return v0
.end method
