.class public final Lo/Li;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final b:Lo/Li;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    new-instance v0, Lo/Li;

    invoke-direct {v0}, Lo/Li;-><init>()V

    sput-object v0, Lo/Li;->b:Lo/Li;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final a(Landroid/content/Context;)I
    .locals 2

    .line 36
    invoke-static {}, Lo/Kl$ActionBar;->a()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 37
    invoke-static {}, Lo/ady;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    invoke-static {}, Lo/Kl$ActionBar;->c()I

    move-result p1

    goto :goto_1

    .line 40
    :cond_0
    invoke-static {p1, v1}, Lo/Kl$ActionBar;->b(Landroid/content/Context;Z)I

    move-result p1

    int-to-float p1, p1

    const v0, 0x3faccccd    # 1.35f

    goto :goto_0

    .line 44
    :cond_1
    invoke-static {p1, v1}, Lo/Kl$ActionBar;->b(Landroid/content/Context;Z)I

    move-result p1

    int-to-float p1, p1

    const/high16 v0, 0x3f100000    # 0.5625f

    :goto_0
    mul-float p1, p1, v0

    float-to-int p1, p1

    :goto_1
    return p1
.end method

.method public static final a(Landroid/content/Context;Lcom/netflix/model/leafs/originals/BillboardAsset;)Lio/reactivex/Single;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/netflix/model/leafs/originals/BillboardAsset;",
            ")",
            "Lio/reactivex/Single<",
            "Lo/NfcEvent$StateListAnimator;",
            ">;"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logo"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    invoke-interface {p1}, Lcom/netflix/model/leafs/originals/BillboardAsset;->getUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 81
    sget-object v1, Lo/ErrorCodes;->d:Lo/ErrorCodes$TaskDescription;

    invoke-virtual {v1, p0}, Lo/ErrorCodes$TaskDescription;->e(Landroid/content/Context;)Lo/ErrorCodes;

    move-result-object v1

    .line 82
    sget-object v2, Lo/NfcEvent;->b:Lo/NfcEvent$Application;

    .line 93
    const-class v3, Lo/Serializable;

    invoke-static {p0, v3}, Lo/TagTechnology;->d(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lo/Serializable;

    .line 82
    invoke-virtual {v2, p0}, Lo/NfcEvent$Application;->d(Lo/Serializable;)Lo/NfcEvent;

    move-result-object p0

    const-string v2, "url"

    .line 83
    invoke-static {v0, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lo/NfcEvent;->b(Ljava/lang/String;)Lo/NfcEvent;

    move-result-object p0

    .line 84
    invoke-interface {p1}, Lcom/netflix/model/leafs/originals/BillboardAsset;->getWidth()Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "logo.width"

    invoke-static {v0, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lo/NfcEvent;->c(I)Lo/NfcEvent;

    move-result-object p0

    .line 85
    invoke-interface {p1}, Lcom/netflix/model/leafs/originals/BillboardAsset;->getHeight()Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "logo.height"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lo/NfcEvent;->a(I)Lo/NfcEvent;

    move-result-object p0

    .line 86
    invoke-virtual {p0}, Lo/NfcEvent;->d()Lo/NfcEvent$Activity;

    move-result-object p0

    .line 81
    invoke-interface {v1, p0}, Lo/ErrorCodes;->a(Lo/NfcEvent$Activity;)Lio/reactivex/Single;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static final b(Landroid/content/Context;Lcom/netflix/model/leafs/originals/BillboardAsset;)Lio/reactivex/Single;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/netflix/model/leafs/originals/BillboardAsset;",
            ")",
            "Lio/reactivex/Single<",
            "Lo/NfcEvent$StateListAnimator;",
            ">;"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "background"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    invoke-interface {p1}, Lcom/netflix/model/leafs/originals/BillboardAsset;->getUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 68
    sget-object v1, Lo/ErrorCodes;->d:Lo/ErrorCodes$TaskDescription;

    invoke-virtual {v1, p0}, Lo/ErrorCodes$TaskDescription;->e(Landroid/content/Context;)Lo/ErrorCodes;

    move-result-object v1

    .line 69
    sget-object v2, Lo/NfcEvent;->b:Lo/NfcEvent$Application;

    .line 92
    const-class v3, Lo/Serializable;

    invoke-static {p0, v3}, Lo/TagTechnology;->d(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lo/Serializable;

    .line 69
    invoke-virtual {v2, p0}, Lo/NfcEvent$Application;->d(Lo/Serializable;)Lo/NfcEvent;

    move-result-object p0

    const-string v2, "url"

    .line 70
    invoke-static {v0, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lo/NfcEvent;->b(Ljava/lang/String;)Lo/NfcEvent;

    move-result-object p0

    .line 71
    invoke-interface {p1}, Lcom/netflix/model/leafs/originals/BillboardAsset;->getWidth()Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "background.width"

    invoke-static {v0, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lo/NfcEvent;->c(I)Lo/NfcEvent;

    move-result-object p0

    .line 72
    invoke-interface {p1}, Lcom/netflix/model/leafs/originals/BillboardAsset;->getHeight()Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "background.height"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lo/NfcEvent;->a(I)Lo/NfcEvent;

    move-result-object p0

    .line 73
    invoke-virtual {p0}, Lo/NfcEvent;->d()Lo/NfcEvent$Activity;

    move-result-object p0

    .line 68
    invoke-interface {v1, p0}, Lo/ErrorCodes;->a(Lo/NfcEvent$Activity;)Lio/reactivex/Single;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static final b(IILjava/lang/String;ZI)V
    .locals 3

    const-string v0, "url"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.netflix.mediaclient.intent.action.BILLBOARD_RECEIVED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "width"

    .line 57
    invoke-virtual {v1, v2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p0, "height"

    .line 58
    invoke-virtual {v1, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 59
    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "isOriginal"

    .line 60
    invoke-virtual {v1, p0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p0, "lolomoFragmentInstance"

    .line 61
    invoke-virtual {v1, p0, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 62
    invoke-static {}, Lcom/netflix/mediaclient/NetflixApplication;->getInstance()Lcom/netflix/mediaclient/NetflixApplication;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    invoke-static {p0}, Lo/IllegalMonitorStateException;->b(Landroid/content/Context;)Lo/IllegalMonitorStateException;

    move-result-object p0

    invoke-virtual {p0, v1}, Lo/IllegalMonitorStateException;->a(Landroid/content/Intent;)Z

    return-void
.end method

.method public static final c(Landroid/content/Context;)I
    .locals 1

    if-eqz p0, :cond_1

    .line 27
    invoke-static {p0}, Lo/adq;->l(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 29
    sget-object v0, Lo/Li;->b:Lo/Li;

    invoke-direct {v0, p0}, Lo/Li;->a(Landroid/content/Context;)I

    move-result p0

    goto :goto_0

    :cond_0
    sget-object v0, Lo/Li;->b:Lo/Li;

    invoke-direct {v0, p0}, Lo/Li;->e(Landroid/content/Context;)I

    move-result p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private final e(Landroid/content/Context;)I
    .locals 1

    const/4 v0, 0x0

    .line 50
    invoke-static {p1, v0}, Lo/Kl$ActionBar;->b(Landroid/content/Context;Z)I

    move-result p1

    int-to-float p1, p1

    const v0, 0x4018f5c3    # 2.39f

    div-float/2addr p1, v0

    float-to-int p1, p1

    return p1
.end method
