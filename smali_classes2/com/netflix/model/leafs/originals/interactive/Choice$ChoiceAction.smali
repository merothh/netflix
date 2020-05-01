.class public abstract Lcom/netflix/model/leafs/originals/interactive/Choice$ChoiceAction;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/model/leafs/originals/interactive/Choice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ChoiceAction"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 100
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
            "Lcom/netflix/model/leafs/originals/interactive/Choice$ChoiceAction;",
            ">;"
        }
    .end annotation

    .line 117
    new-instance v0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_Choice_ChoiceAction$GsonTypeAdapter;

    invoke-direct {v0, p0}, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_Choice_ChoiceAction$GsonTypeAdapter;-><init>(Lcom/google/gson/Gson;)V

    const-string p0, ""

    invoke-virtual {v0, p0}, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_Choice_ChoiceAction$GsonTypeAdapter;->setDefaultType(Ljava/lang/String;)Lcom/netflix/model/leafs/originals/interactive/$AutoValue_Choice_ChoiceAction$GsonTypeAdapter;

    move-result-object p0

    const/4 v0, 0x0

    .line 118
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_Choice_ChoiceAction$GsonTypeAdapter;->setDefaultBookmarkPosition(Ljava/lang/Integer;)Lcom/netflix/model/leafs/originals/interactive/$AutoValue_Choice_ChoiceAction$GsonTypeAdapter;

    move-result-object p0

    const-string v0, "branching"

    invoke-virtual {p0, v0}, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_Choice_ChoiceAction$GsonTypeAdapter;->setDefaultUiLabel(Ljava/lang/String;)Lcom/netflix/model/leafs/originals/interactive/$AutoValue_Choice_ChoiceAction$GsonTypeAdapter;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract bookmarkPosition()Ljava/lang/Integer;
.end method

.method public abstract requestId()Ljava/lang/String;
.end method

.method public abstract sourceOfPlay()Ljava/lang/String;
.end method

.method public abstract trackId()Ljava/lang/Integer;
.end method

.method public abstract type()Ljava/lang/String;
.end method

.method public abstract uiLabel()Ljava/lang/String;
.end method

.method public abstract videoId()Ljava/lang/String;
.end method
