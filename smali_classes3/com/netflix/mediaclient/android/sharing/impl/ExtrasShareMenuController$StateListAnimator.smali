.class public final Lcom/netflix/mediaclient/android/sharing/impl/ExtrasShareMenuController$StateListAnimator;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/android/sharing/impl/ExtrasShareMenuController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StateListAnimator"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lo/amc;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/sharing/impl/ExtrasShareMenuController$StateListAnimator;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/AnalogClock<",
            "Lcom/netflix/mediaclient/android/sharing/impl/types/ExtrasShareable$ExtrasFeedItemParcelable;",
            ">;>;"
        }
    .end annotation

    .line 17
    invoke-static {}, Lcom/netflix/mediaclient/android/sharing/impl/ExtrasShareMenuController;->access$getEXTRA_SHARE_TARGETS$cp()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
