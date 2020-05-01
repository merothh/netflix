.class public abstract Lcom/netflix/model/leafs/originals/interactive/UiDefinition$Settings;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/model/leafs/originals/interactive/UiDefinition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Settings"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 274
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
            "Lcom/netflix/model/leafs/originals/interactive/UiDefinition$Settings;",
            ">;"
        }
    .end annotation

    .line 281
    new-instance v0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_UiDefinition_Settings$GsonTypeAdapter;

    invoke-direct {v0, p0}, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_UiDefinition_Settings$GsonTypeAdapter;-><init>(Lcom/google/gson/Gson;)V

    const/4 p0, 0x0

    .line 282
    invoke-virtual {v0, p0}, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_UiDefinition_Settings$GsonTypeAdapter;->setDefaultDisableToggleDefault(Z)Lcom/netflix/model/leafs/originals/interactive/$AutoValue_UiDefinition_Settings$GsonTypeAdapter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_UiDefinition_Settings$GsonTypeAdapter;->setDefaultRandomInitialDefault(Z)Lcom/netflix/model/leafs/originals/interactive/$AutoValue_UiDefinition_Settings$GsonTypeAdapter;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract disableToggleDefault()Z
.end method

.method public abstract randomInitialDefault()Z
.end method
