.class public Lo/PublicKey;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lo/GestureLibraries;",
            "Lo/SyntheticKey;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/GestureLibraries$ActionBar;",
            ">;"
        }
    .end annotation
.end field


# virtual methods
.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/GestureLibraries$ActionBar;",
            ">;"
        }
    .end annotation

    .line 34
    iget-object v0, p0, Lo/PublicKey;->c:Ljava/util/List;

    return-object v0
.end method

.method public d()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lo/GestureLibraries;",
            "Lo/SyntheticKey;",
            ">;"
        }
    .end annotation

    .line 30
    iget-object v0, p0, Lo/PublicKey;->b:Ljava/util/Map;

    return-object v0
.end method
