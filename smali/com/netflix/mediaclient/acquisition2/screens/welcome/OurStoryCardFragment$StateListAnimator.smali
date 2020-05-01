.class public final Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryCardFragment$StateListAnimator;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryCardFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StateListAnimator"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lo/amc;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryCardFragment$StateListAnimator;-><init>()V

    return-void
.end method


# virtual methods
.method public final e(Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryCard;Ljava/lang/String;I)Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryCardFragment;
    .locals 4

    const-string v0, "card"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "vlvImageUrl"

    invoke-static {p2, v1}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    new-instance v1, Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryCardFragment;

    invoke-direct {v1}, Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryCardFragment;-><init>()V

    .line 62
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "position"

    .line 63
    invoke-virtual {v2, v3, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 64
    check-cast p1, Landroid/os/Parcelable;

    invoke-virtual {v2, v0, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p1, "vlvUrl"

    .line 65
    invoke-virtual {v2, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryCardFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v1
.end method
