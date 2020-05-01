.class public final Lo/KeymasterBlobArgument$StateListAnimator;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/KeymasterBlobArgument;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StateListAnimator"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lo/amc;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lo/KeymasterBlobArgument$StateListAnimator;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lo/hW;Lo/ci;)V
    .locals 5

    const-string v0, "id"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "browseManager"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v1, 0x0

    const/16 v2, 0x2d

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-static {v0, v2, v3, v4, v1}, Lo/anv;->c(Ljava/lang/CharSequence;CZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p1

    const-string p2, "Fetching extras feed item by post id is not supported"

    .line 42
    invoke-interface {p1, p2}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    .line 43
    sget-object p1, Lo/LegacyErrorStrings;->Y:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    check-cast p1, Lcom/netflix/mediaclient/android/app/Status;

    invoke-interface {p3, v1, v1, p1}, Lo/ci;->a(Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;Lcom/netflix/model/leafs/ExtrasFeedItemSummary;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void

    .line 47
    :cond_0
    new-instance v0, Lo/KeymasterBlobArgument;

    invoke-direct {v0, p1}, Lo/KeymasterBlobArgument;-><init>(Ljava/lang/String;)V

    check-cast v0, Lo/SettingsValidators;

    invoke-interface {p2, v0, p3}, Lo/hW;->d(Lo/SettingsValidators;Lo/ci;)V

    return-void
.end method
