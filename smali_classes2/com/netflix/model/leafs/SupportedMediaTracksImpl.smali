.class public final Lcom/netflix/model/leafs/SupportedMediaTracksImpl;
.super Lo/BlockedNumberContract;
.source ""

# interfaces
.implements Lo/DocumentsProvider;
.implements Lcom/netflix/model/leafs/SupportedMediaTracks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/model/leafs/SupportedMediaTracksImpl$Companion;
    }
.end annotation


# static fields
.field private static final AUDIO_TRACKS_KEY:Ljava/lang/String; = "audioTracks"

.field public static final Companion:Lcom/netflix/model/leafs/SupportedMediaTracksImpl$Companion;

.field private static final INVALID_PREFERRED_MEDIA_TRACK_INDEX:I = -0x1

.field private static final SUBTITLE_TRACKS_KEY:Ljava/lang/String; = "subtitleTracks"


# instance fields
.field private final audioTracksFromResponse:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/netflix/model/leafs/SupportedMediaTracks$Properties;",
            ">;"
        }
    .end annotation
.end field

.field private final subtitleTracksFromResponse:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/netflix/model/leafs/SupportedMediaTracks$Properties;",
            ">;"
        }
    .end annotation
.end field

.field private suggestedAudioTrackIndexFromResponse:I

.field private suggestedSubtitleTrackIndexFromResponse:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/netflix/model/leafs/SupportedMediaTracksImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/netflix/model/leafs/SupportedMediaTracksImpl$Companion;-><init>(Lo/amc;)V

    sput-object v0, Lcom/netflix/model/leafs/SupportedMediaTracksImpl;->Companion:Lcom/netflix/model/leafs/SupportedMediaTracksImpl$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Lo/BlockedNumberContract;-><init>()V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/netflix/model/leafs/SupportedMediaTracksImpl;->audioTracksFromResponse:Ljava/util/List;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/netflix/model/leafs/SupportedMediaTracksImpl;->subtitleTracksFromResponse:Ljava/util/List;

    const/4 v0, -0x1

    .line 37
    iput v0, p0, Lcom/netflix/model/leafs/SupportedMediaTracksImpl;->suggestedAudioTrackIndexFromResponse:I

    .line 39
    iput v0, p0, Lcom/netflix/model/leafs/SupportedMediaTracksImpl;->suggestedSubtitleTrackIndexFromResponse:I

    return-void
.end method

.method private final getLanguagePropertiesObject(Lcom/google/gson/JsonObject;)Lcom/netflix/model/leafs/SupportedMediaTracks$Properties;
    .locals 1

    .line 79
    new-instance v0, Lcom/netflix/model/leafs/SupportedMediaTracksImpl$getLanguagePropertiesObject$1;

    invoke-direct {v0, p1}, Lcom/netflix/model/leafs/SupportedMediaTracksImpl$getLanguagePropertiesObject$1;-><init>(Lcom/google/gson/JsonObject;)V

    check-cast v0, Lcom/netflix/model/leafs/SupportedMediaTracks$Properties;

    return-object v0
.end method


# virtual methods
.method public getAudioTracks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/netflix/model/leafs/SupportedMediaTracks$Properties;",
            ">;"
        }
    .end annotation

    .line 22
    iget-object v0, p0, Lcom/netflix/model/leafs/SupportedMediaTracksImpl;->audioTracksFromResponse:Ljava/util/List;

    return-object v0
.end method

.method public getSubtitleTracks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/netflix/model/leafs/SupportedMediaTracks$Properties;",
            ">;"
        }
    .end annotation

    .line 25
    iget-object v0, p0, Lcom/netflix/model/leafs/SupportedMediaTracksImpl;->subtitleTracksFromResponse:Ljava/util/List;

    return-object v0
.end method

.method public getSuggestedAudioTrackIndex()I
    .locals 1

    .line 28
    iget v0, p0, Lcom/netflix/model/leafs/SupportedMediaTracksImpl;->suggestedAudioTrackIndexFromResponse:I

    return v0
.end method

.method public getSuggestedSubtitleTrackIndex()I
    .locals 1

    .line 31
    iget v0, p0, Lcom/netflix/model/leafs/SupportedMediaTracksImpl;->suggestedSubtitleTrackIndexFromResponse:I

    return v0
.end method

.method public populate(Lcom/google/gson/JsonElement;)V
    .locals 6

    const-string v0, "jsonElem"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    iget-object v0, p0, Lcom/netflix/model/leafs/SupportedMediaTracksImpl;->audioTracksFromResponse:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 43
    iget-object v0, p0, Lcom/netflix/model/leafs/SupportedMediaTracksImpl;->subtitleTracksFromResponse:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, -0x1

    .line 44
    iput v0, p0, Lcom/netflix/model/leafs/SupportedMediaTracksImpl;->suggestedAudioTrackIndexFromResponse:I

    .line 45
    iput v0, p0, Lcom/netflix/model/leafs/SupportedMediaTracksImpl;->suggestedSubtitleTrackIndexFromResponse:I

    .line 47
    :try_start_0
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object p1

    const-string v1, "audioTracks"

    .line 49
    invoke-virtual {p1, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "value.asJsonObject"

    const-string v3, "value"

    if-eqz v1, :cond_0

    .line 50
    :try_start_1
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->isJsonArray()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 51
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v1

    .line 53
    invoke-virtual {v1}, Lcom/google/gson/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/gson/JsonElement;

    .line 54
    iget-object v5, p0, Lcom/netflix/model/leafs/SupportedMediaTracksImpl;->audioTracksFromResponse:Ljava/util/List;

    invoke-static {v4, v3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v4

    invoke-static {v4, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v4}, Lcom/netflix/model/leafs/SupportedMediaTracksImpl;->getLanguagePropertiesObject(Lcom/google/gson/JsonObject;)Lcom/netflix/model/leafs/SupportedMediaTracks$Properties;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string v1, "subtitleTracks"

    .line 59
    invoke-virtual {p1, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 60
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->isJsonArray()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 61
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v1

    .line 63
    invoke-virtual {v1}, Lcom/google/gson/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/gson/JsonElement;

    .line 64
    iget-object v5, p0, Lcom/netflix/model/leafs/SupportedMediaTracksImpl;->subtitleTracksFromResponse:Ljava/util/List;

    invoke-static {v4, v3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v4

    invoke-static {v4, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v4}, Lcom/netflix/model/leafs/SupportedMediaTracksImpl;->getLanguagePropertiesObject(Lcom/google/gson/JsonObject;)Lcom/netflix/model/leafs/SupportedMediaTracks$Properties;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    const-string v1, "audioTrackIndex"

    .line 69
    invoke-virtual {p1, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v1

    goto :goto_2

    :cond_2
    const/4 v1, -0x1

    :goto_2
    iput v1, p0, Lcom/netflix/model/leafs/SupportedMediaTracksImpl;->suggestedAudioTrackIndexFromResponse:I

    const-string v1, "subtitleTrackIndex"

    .line 71
    invoke-virtual {p1, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v0

    :cond_3
    iput v0, p0, Lcom/netflix/model/leafs/SupportedMediaTracksImpl;->suggestedSubtitleTrackIndexFromResponse:I
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 74
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/api/logging/error/ErrorType;->b:Lcom/netflix/mediaclient/api/logging/error/ErrorType;

    check-cast p1, Ljava/lang/Throwable;

    const-string v2, "Video languages response is malformed. Error Parsing it. "

    invoke-interface {v0, v1, v2, p1}, Lo/SpinnerAdapter;->e(Lcom/netflix/mediaclient/api/logging/error/ErrorType;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_3
    return-void
.end method
