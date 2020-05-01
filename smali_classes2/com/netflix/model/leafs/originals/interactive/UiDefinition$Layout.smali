.class public abstract Lcom/netflix/model/leafs/originals/interactive/UiDefinition$Layout;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/netflix/model/leafs/originals/interactive/BaseLayout;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/model/leafs/originals/interactive/UiDefinition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Layout"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/model/leafs/originals/interactive/UiDefinition$Layout$Notification;,
        Lcom/netflix/model/leafs/originals/interactive/UiDefinition$Layout$Choice;,
        Lcom/netflix/model/leafs/originals/interactive/UiDefinition$Layout$Timer;,
        Lcom/netflix/model/leafs/originals/interactive/UiDefinition$Layout$Config;,
        Lcom/netflix/model/leafs/originals/interactive/UiDefinition$Layout$Elements;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static typeAdapter(Lcom/google/gson/Gson;)Lcom/google/gson/TypeAdapter;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/Gson;",
            ")",
            "Lcom/google/gson/TypeAdapter<",
            "Lcom/netflix/model/leafs/originals/interactive/UiDefinition$Layout;",
            ">;"
        }
    .end annotation

    .line 263
    new-instance v0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_UiDefinition_Layout$GsonTypeAdapter;

    invoke-direct {v0, p0}, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_UiDefinition_Layout$GsonTypeAdapter;-><init>(Lcom/google/gson/Gson;)V

    new-instance p0, Lcom/netflix/model/leafs/originals/interactive/AutoValue_UiDefinition_Layout_Elements;

    const/4 v1, 0x0

    invoke-direct {p0, v1, v1, v1, v1}, Lcom/netflix/model/leafs/originals/interactive/AutoValue_UiDefinition_Layout_Elements;-><init>(Lcom/netflix/model/leafs/originals/interactive/template/ImageElement;Lcom/netflix/model/leafs/originals/interactive/UiDefinition$Layout$Timer;Ljava/util/List;Lcom/netflix/model/leafs/originals/interactive/UiDefinition$Layout$Notification;)V

    .line 264
    invoke-virtual {v0, p0}, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_UiDefinition_Layout$GsonTypeAdapter;->setDefaultElements(Lcom/netflix/model/leafs/originals/interactive/UiDefinition$Layout$Elements;)Lcom/netflix/model/leafs/originals/interactive/$AutoValue_UiDefinition_Layout$GsonTypeAdapter;

    move-result-object p0

    .line 265
    invoke-static {}, Lcom/netflix/model/leafs/originals/interactive/template/VisualStateTransitionDefinitions;->builder()Lcom/netflix/model/leafs/originals/interactive/template/VisualStateTransitionDefinitions$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/model/leafs/originals/interactive/template/VisualStateTransitionDefinitions$Builder;->build()Lcom/netflix/model/leafs/originals/interactive/template/VisualStateTransitionDefinitions;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_UiDefinition_Layout$GsonTypeAdapter;->setDefaultVisualStateTransitionDefinitions(Lcom/netflix/model/leafs/originals/interactive/template/VisualStateTransitionDefinitions;)Lcom/netflix/model/leafs/originals/interactive/$AutoValue_UiDefinition_Layout$GsonTypeAdapter;

    move-result-object p0

    .line 266
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_UiDefinition_Layout$GsonTypeAdapter;->setDefaultElementAnimations(Ljava/util/Map;)Lcom/netflix/model/leafs/originals/interactive/$AutoValue_UiDefinition_Layout$GsonTypeAdapter;

    move-result-object p0

    new-instance v0, Lcom/netflix/model/leafs/originals/interactive/AutoValue_UiDefinition_Layout_Config;

    new-instance v2, Lcom/netflix/model/leafs/originals/interactive/AutoValue_Size;

    const/16 v3, 0x500

    .line 267
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0x2d0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/netflix/model/leafs/originals/interactive/AutoValue_Size;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-direct {v0, v2, v1, v1}, Lcom/netflix/model/leafs/originals/interactive/AutoValue_UiDefinition_Layout_Config;-><init>(Lcom/netflix/model/leafs/originals/interactive/Size;Lcom/netflix/model/leafs/originals/interactive/UiDefinition$Layout$Config$SubtitleRect;Ljava/lang/Boolean;)V

    invoke-virtual {p0, v0}, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_UiDefinition_Layout$GsonTypeAdapter;->setDefaultConfig(Lcom/netflix/model/leafs/originals/interactive/UiDefinition$Layout$Config;)Lcom/netflix/model/leafs/originals/interactive/$AutoValue_UiDefinition_Layout$GsonTypeAdapter;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract assetManifest()Lcom/netflix/model/leafs/originals/interactive/AssetManifest;
.end method

.method public abstract audio()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/netflix/model/leafs/originals/interactive/UiDefinition$AudioListAsset;",
            ">;"
        }
    .end annotation
.end method

.method public abstract config()Lcom/netflix/model/leafs/originals/interactive/UiDefinition$Layout$Config;
.end method

.method public abstract elementAnimations()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/netflix/model/leafs/originals/interactive/animations/InteractiveAnimation;",
            ">;>;>;"
        }
    .end annotation
.end method

.method public abstract elements()Lcom/netflix/model/leafs/originals/interactive/UiDefinition$Layout$Elements;
.end method

.method public abstract visualStateTransitionDefinitions()Lcom/netflix/model/leafs/originals/interactive/template/VisualStateTransitionDefinitions;
.end method
