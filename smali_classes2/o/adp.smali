.class public final Lo/adp;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final b:Lo/adp;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 8
    new-instance v0, Lo/adp;

    invoke-direct {v0}, Lo/adp;-><init>()V

    sput-object v0, Lo/adp;->b:Lo/adp;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final d()V
    .locals 2

    .line 18
    invoke-static {}, Lo/adk;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 19
    invoke-static {}, Lo/CarrierIdentifier;->d()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Landroid/media/AudioManager;

    const/4 v1, 0x3

    .line 20
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setAllowedCapturePolicy(I)V

    goto :goto_0

    .line 19
    :cond_0
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type android.media.AudioManager"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method
