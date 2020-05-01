.class public abstract Lcom/netflix/model/leafs/originals/interactive/Style;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/model/leafs/originals/interactive/Style$Shadow;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static typeAdapter(Lcom/google/gson/Gson;)Lcom/google/gson/TypeAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/Gson;",
            ")",
            "Lcom/google/gson/TypeAdapter<",
            "Lcom/netflix/model/leafs/originals/interactive/Style;",
            ">;"
        }
    .end annotation

    .line 90
    new-instance v0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_Style$GsonTypeAdapter;

    invoke-direct {v0, p0}, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_Style$GsonTypeAdapter;-><init>(Lcom/google/gson/Gson;)V

    return-object v0
.end method


# virtual methods
.method public abstract alignment()Ljava/lang/Float;
.end method

.method public abstract backgroundColor()Ljava/lang/String;
.end method

.method public abstract color()Ljava/lang/String;
.end method

.method public abstract fontSize()Ljava/lang/Float;
.end method

.method public abstract fontWeight()Ljava/lang/Float;
.end method

.method public abstract minFontSize()Ljava/lang/Float;
.end method

.method public abstract numberOfLines()Ljava/lang/Integer;
.end method

.method public abstract opacity()Ljava/lang/Float;
.end method

.method public abstract rect()Lcom/netflix/model/leafs/originals/interactive/SourceRect;
.end method

.method public abstract shadow()Lcom/netflix/model/leafs/originals/interactive/Style$Shadow;
.end method
