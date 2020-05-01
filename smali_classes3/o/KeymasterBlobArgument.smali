.class public final Lo/KeymasterBlobArgument;
.super Lo/SyncConstValue;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/KeymasterBlobArgument$StateListAnimator;
    }
.end annotation


# static fields
.field public static final b:Lo/KeymasterBlobArgument$StateListAnimator;


# instance fields
.field private final d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/KeymasterBlobArgument$StateListAnimator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/KeymasterBlobArgument$StateListAnimator;-><init>(Lo/amc;)V

    sput-object v0, Lo/KeymasterBlobArgument;->b:Lo/KeymasterBlobArgument$StateListAnimator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string v0, "id"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "FetchExtrasFeedItem[extrasFeedItemBySupplementalId]"

    .line 27
    invoke-direct {p0, v0}, Lo/SyncConstValue;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lo/KeymasterBlobArgument;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/TextInputTimePickerView;",
            ">;)V"
        }
    .end annotation

    const-string v0, "pqls"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x4

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "extrasFeedItemBySupplementalId"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 55
    iget-object v4, p0, Lo/KeymasterBlobArgument;->d:Ljava/lang/String;

    const/4 v5, 0x1

    aput-object v4, v1, v5

    const/4 v4, 0x2

    const-string v6, "video"

    aput-object v6, v1, v4

    .line 56
    sget-object v6, Lo/KeymasterIntArgument;->a:Lo/KeymasterIntArgument$StateListAnimator;

    invoke-virtual {v6}, Lo/KeymasterIntArgument$StateListAnimator;->b()Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x3

    aput-object v6, v1, v7

    .line 54
    invoke-static {v1}, Lo/SearchIndexableResource;->b([Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object v1

    const-string v6, "PQLHelper.create(\n      \u2026eVideoLeafs\n            )"

    invoke-static {v1, v6}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-array v1, v0, [Ljava/lang/Object;

    aput-object v2, v1, v3

    .line 63
    iget-object v6, p0, Lo/KeymasterBlobArgument;->d:Ljava/lang/String;

    aput-object v6, v1, v5

    const-string v6, "tagsVideo"

    aput-object v6, v1, v4

    const-string v6, "tags"

    aput-object v6, v1, v7

    .line 61
    invoke-static {v1}, Lo/SearchIndexableResource;->b([Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object v1

    const-string v6, "PQLHelper.create(\n      \u2026     \"tags\"\n            )"

    invoke-static {v1, v6}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v2, v0, v3

    .line 71
    iget-object v1, p0, Lo/KeymasterBlobArgument;->d:Ljava/lang/String;

    aput-object v1, v0, v5

    const-string v1, "supplemental"

    aput-object v1, v0, v4

    new-array v1, v4, [Ljava/lang/Object;

    const-string v6, "summary"

    aput-object v6, v1, v3

    const-string v6, "detail"

    aput-object v6, v1, v5

    .line 73
    invoke-static {v1}, Lo/SearchIndexableResource;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    aput-object v1, v0, v7

    .line 69
    invoke-static {v0}, Lo/SearchIndexableResource;->b([Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object v0

    const-string v1, "PQLHelper.create(\n      \u2026, \"detail\")\n            )"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-array v0, v7, [Ljava/lang/Object;

    aput-object v2, v0, v3

    .line 76
    iget-object v1, p0, Lo/KeymasterBlobArgument;->d:Ljava/lang/String;

    aput-object v1, v0, v5

    aput-object v6, v0, v4

    invoke-static {v0}, Lo/SearchIndexableResource;->b([Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object v0

    const-string v1, "PQLHelper.create(branchName, id, \"detail\")"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Lo/ConfirmationAlreadyPresentingException;Lo/ci;Lo/TextClock;)V
    .locals 3

    const-string p3, "cmpTask"

    invoke-static {p1, p3}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    iget-object p1, p1, Lo/ConfirmationAlreadyPresentingException;->a:Lo/FontRequest;

    const/4 p3, 0x2

    new-array p3, p3, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string v1, "extrasFeedItemBySupplementalId"

    aput-object v1, p3, v0

    .line 85
    iget-object v1, p0, Lo/KeymasterBlobArgument;->d:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, p3, v2

    invoke-static {p3}, Lo/SearchIndexableResource;->b([Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object p3

    .line 84
    invoke-virtual {p1, p3}, Lo/FontRequest;->c(Lo/TextInputTimePickerView;)Lo/agj;

    move-result-object p1

    .line 88
    instance-of p3, p1, Lo/agk;

    if-eqz p3, :cond_1

    move-object p3, p1

    check-cast p3, Lo/agk;

    invoke-virtual {p3}, Lo/agk;->b()Ljava/lang/String;

    move-result-object p3

    check-cast p3, Ljava/lang/CharSequence;

    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result p3

    if-lez p3, :cond_0

    const/4 v0, 0x1

    :cond_0
    if-eqz v0, :cond_1

    .line 89
    new-instance p3, Lcom/netflix/falkor/task/FetchExtrasFeedItemTask$fetchResultsAndCallbackForSuccess$itemSummary$1;

    invoke-direct {p3}, Lcom/netflix/falkor/task/FetchExtrasFeedItemTask$fetchResultsAndCallbackForSuccess$itemSummary$1;-><init>()V

    const v0, 0xf1bfcc7

    .line 92
    invoke-virtual {p3, v0}, Lcom/netflix/falkor/task/FetchExtrasFeedItemTask$fetchResultsAndCallbackForSuccess$itemSummary$1;->setTrackId(I)V

    const-string v0, ""

    .line 93
    invoke-virtual {p3, v0}, Lcom/netflix/falkor/task/FetchExtrasFeedItemTask$fetchResultsAndCallbackForSuccess$itemSummary$1;->setRequestId(Ljava/lang/String;)V

    if-eqz p2, :cond_2

    .line 95
    check-cast p1, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;

    check-cast p3, Lcom/netflix/model/leafs/ExtrasFeedItemSummary;

    sget-object v0, Lo/LegacyErrorStrings;->b:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    check-cast v0, Lcom/netflix/mediaclient/android/app/Status;

    invoke-interface {p2, p1, p3, v0}, Lo/ci;->a(Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;Lcom/netflix/model/leafs/ExtrasFeedItemSummary;Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    .line 97
    sget-object p1, Lo/LegacyErrorStrings;->Y:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    check-cast p1, Lcom/netflix/mediaclient/android/app/Status;

    const/4 p3, 0x0

    invoke-interface {p2, p3, p3, p1}, Lo/ci;->a(Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;Lcom/netflix/model/leafs/ExtrasFeedItemSummary;Lcom/netflix/mediaclient/android/app/Status;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public e(Lo/ci;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 102
    invoke-interface {p1, v0, v0, p2}, Lo/ci;->a(Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;Lcom/netflix/model/leafs/ExtrasFeedItemSummary;Lcom/netflix/mediaclient/android/app/Status;)V

    :cond_0
    return-void
.end method

.method public e()Z
    .locals 1

    .line 126
    invoke-static {}, Lo/ir;->a()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public e(Ljava/util/List;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/TextInputTimePickerView;",
            ">;)Z"
        }
    .end annotation

    const/4 p1, 0x1

    return p1
.end method

.method public i()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/adt$Activity;",
            ">;"
        }
    .end annotation

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 110
    sget-object v1, Lo/et;->e:Lo/et$ActionBar;

    invoke-virtual {v1}, Lo/et$ActionBar;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 111
    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Lo/adt$Activity;

    .line 113
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    const-string v4, "kidsDark"

    .line 111
    invoke-direct {v2, v4, v3}, Lo/adt$Activity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object v0
.end method
