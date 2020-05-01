.class public abstract Lcom/netflix/model/leafs/originals/interactive/Button;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/model/leafs/originals/interactive/Button$Label;,
        Lcom/netflix/model/leafs/originals/interactive/Button$States;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static typeAdapter(Lcom/google/gson/Gson;)Lcom/google/gson/TypeAdapter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/Gson;",
            ")",
            "Lcom/google/gson/TypeAdapter<",
            "Lcom/netflix/model/leafs/originals/interactive/Button;",
            ">;"
        }
    .end annotation

    .line 62
    new-instance v0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_Button$GsonTypeAdapter;

    invoke-direct {v0, p0}, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_Button$GsonTypeAdapter;-><init>(Lcom/google/gson/Gson;)V

    const/16 p0, 0x10

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_Button$GsonTypeAdapter;->setDefaultFontSize(Ljava/lang/Integer;)Lcom/netflix/model/leafs/originals/interactive/$AutoValue_Button$GsonTypeAdapter;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_Button$GsonTypeAdapter;->setDefaultBaselineY(Ljava/lang/Integer;)Lcom/netflix/model/leafs/originals/interactive/$AutoValue_Button$GsonTypeAdapter;

    move-result-object p0

    new-instance v1, Lcom/netflix/model/leafs/originals/interactive/AutoValue_ScreenPosition;

    invoke-direct {v1, v0, v0}, Lcom/netflix/model/leafs/originals/interactive/AutoValue_ScreenPosition;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {p0, v1}, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_Button$GsonTypeAdapter;->setDefaultScreenPosition(Lcom/netflix/model/leafs/originals/interactive/ScreenPosition;)Lcom/netflix/model/leafs/originals/interactive/$AutoValue_Button$GsonTypeAdapter;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract action()Lcom/netflix/model/leafs/originals/interactive/Action;
.end method

.method public abstract baselineY()Ljava/lang/Integer;
.end method

.method public abstract fontSize()Ljava/lang/Integer;
.end method

.method public abstract label()Lcom/netflix/model/leafs/originals/interactive/Button$Label;
.end method

.method public abstract rect()Lcom/netflix/model/leafs/originals/interactive/SourceRect;
.end method

.method public abstract screenPosition()Lcom/netflix/model/leafs/originals/interactive/ScreenPosition;
.end method

.method public abstract states()Lcom/netflix/model/leafs/originals/interactive/Button$States;
.end method
