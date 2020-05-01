.class public final Lcom/netflix/android/components/NetflixAnimatedVectorDrawableWrapper$animatedVectorDrawableCompat$2;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alB;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/NdefRecord;-><init>(Landroid/view/View;ILandroid/content/Context;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alB<",
        "Lo/ECPrivateKeySpec;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic c:Lo/NdefRecord;


# direct methods
.method public constructor <init>(Lo/NdefRecord;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/android/components/NetflixAnimatedVectorDrawableWrapper$animatedVectorDrawableCompat$2;->c:Lo/NdefRecord;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final d()Lo/ECPrivateKeySpec;
    .locals 3

    .line 32
    :try_start_0
    iget-object v0, p0, Lcom/netflix/android/components/NetflixAnimatedVectorDrawableWrapper$animatedVectorDrawableCompat$2;->c:Lo/NdefRecord;

    invoke-static {v0}, Lo/NdefRecord;->d(Lo/NdefRecord;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/android/components/NetflixAnimatedVectorDrawableWrapper$animatedVectorDrawableCompat$2;->c:Lo/NdefRecord;

    invoke-static {v1}, Lo/NdefRecord;->a(Lo/NdefRecord;)I

    move-result v1

    invoke-static {v0, v1}, Lo/ECPrivateKeySpec;->b(Landroid/content/Context;I)Lo/ECPrivateKeySpec;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 35
    :catch_0
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v0

    const-string v1, "ErrorLoggerProvider.getErrorLogger()"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "avdResourceId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/netflix/android/components/NetflixAnimatedVectorDrawableWrapper$animatedVectorDrawableCompat$2;->c:Lo/NdefRecord;

    invoke-static {v2}, Lo/NdefRecord;->a(Lo/NdefRecord;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lo/SpinnerAdapter;->e(Ljava/lang/String;)V

    .line 38
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v0

    .line 39
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lo/NdefRecord;->b:Lo/NdefRecord$StateListAnimator;

    invoke-virtual {v2}, Lo/NdefRecord$StateListAnimator;->getLogTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " Unable to start or load NetflixAnimatedVectorDrawableWrapper"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lcom/netflix/android/components/NetflixAnimatedVectorDrawableWrapper$animatedVectorDrawableCompat$2;->d()Lo/ECPrivateKeySpec;

    move-result-object v0

    return-object v0
.end method
