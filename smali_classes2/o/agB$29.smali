.class final Lo/agB$29;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/SearchRecentSuggestions;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/agB;->n(Lo/TableLayout;)Lo/SearchRecentSuggestions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/SearchRecentSuggestions<",
        "Lcom/netflix/model/leafs/social/UserNotificationsListSummary;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 331
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/netflix/model/leafs/social/UserNotificationsListSummary;
    .locals 1

    .line 334
    invoke-static {}, Lcom/netflix/model/leafs/social/UserNotificationsListSummary;->create()Lcom/netflix/model/leafs/social/UserNotificationsListSummary;

    move-result-object v0

    return-object v0
.end method

.method public synthetic e()Ljava/lang/Object;
    .locals 1

    .line 331
    invoke-virtual {p0}, Lo/agB$29;->a()Lcom/netflix/model/leafs/social/UserNotificationsListSummary;

    move-result-object v0

    return-object v0
.end method
