.class final Lo/agB$35;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/SearchRecentSuggestions;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/agB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/SearchRecentSuggestions<",
        "Lcom/netflix/model/leafs/originals/TallPanelAsset;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 389
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d()Lcom/netflix/model/leafs/originals/TallPanelAsset;
    .locals 1

    .line 393
    new-instance v0, Lcom/netflix/model/leafs/originals/TallPanelAsset;

    invoke-direct {v0}, Lcom/netflix/model/leafs/originals/TallPanelAsset;-><init>()V

    return-object v0
.end method

.method public synthetic e()Ljava/lang/Object;
    .locals 1

    .line 389
    invoke-virtual {p0}, Lo/agB$35;->d()Lcom/netflix/model/leafs/originals/TallPanelAsset;

    move-result-object v0

    return-object v0
.end method
