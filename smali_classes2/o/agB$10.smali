.class final Lo/agB$10;
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
        "Lo/SearchIndexableData<",
        "Lcom/netflix/model/leafs/ListOfListOfProfileIconsImpl;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d()Lo/SearchIndexableData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/SearchIndexableData<",
            "Lcom/netflix/model/leafs/ListOfListOfProfileIconsImpl;",
            ">;"
        }
    .end annotation

    .line 176
    new-instance v0, Lcom/netflix/model/leafs/ListOfListOfProfileIconsImpl;

    invoke-direct {v0}, Lcom/netflix/model/leafs/ListOfListOfProfileIconsImpl;-><init>()V

    invoke-static {v0}, Lo/SearchIndexableData;->b(Ljava/lang/Object;)Lo/SearchIndexableData;

    move-result-object v0

    return-object v0
.end method

.method public synthetic e()Ljava/lang/Object;
    .locals 1

    .line 173
    invoke-virtual {p0}, Lo/agB$10;->d()Lo/SearchIndexableData;

    move-result-object v0

    return-object v0
.end method
