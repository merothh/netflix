.class public final Lcom/netflix/model/leafs/social/multititle/$AutoValue_NotificationTemplate$GsonTypeAdapter;
.super Lcom/google/gson/TypeAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/model/leafs/social/multititle/$AutoValue_NotificationTemplate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GsonTypeAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/TypeAdapter<",
        "Lcom/netflix/model/leafs/social/multititle/NotificationTemplate;",
        ">;"
    }
.end annotation


# instance fields
.field private final bodyTextAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final ctaButtonAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Lcom/netflix/model/leafs/social/multititle/NotificationCtaButton;",
            ">;"
        }
    .end annotation
.end field

.field private defaultBodyText:Ljava/lang/String;

.field private defaultCtaButton:Lcom/netflix/model/leafs/social/multititle/NotificationCtaButton;

.field private defaultHeadlineText:Ljava/lang/String;

.field private defaultModuleFiltersForActions:Lcom/netflix/model/leafs/social/multititle/NotificationModuleFilters;

.field private defaultModulesList:Lcom/netflix/model/leafs/social/multititle/NotificationModuleList;

.field private final headlineTextAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final moduleFiltersForActionsAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Lcom/netflix/model/leafs/social/multititle/NotificationModuleFilters;",
            ">;"
        }
    .end annotation
.end field

.field private final modulesListAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Lcom/netflix/model/leafs/social/multititle/NotificationModuleList;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/gson/Gson;)V
    .locals 1

    .line 31
    invoke-direct {p0}, Lcom/google/gson/TypeAdapter;-><init>()V

    const/4 v0, 0x0

    .line 26
    iput-object v0, p0, Lcom/netflix/model/leafs/social/multititle/$AutoValue_NotificationTemplate$GsonTypeAdapter;->defaultHeadlineText:Ljava/lang/String;

    .line 27
    iput-object v0, p0, Lcom/netflix/model/leafs/social/multititle/$AutoValue_NotificationTemplate$GsonTypeAdapter;->defaultBodyText:Ljava/lang/String;

    .line 28
    iput-object v0, p0, Lcom/netflix/model/leafs/social/multititle/$AutoValue_NotificationTemplate$GsonTypeAdapter;->defaultCtaButton:Lcom/netflix/model/leafs/social/multititle/NotificationCtaButton;

    .line 29
    iput-object v0, p0, Lcom/netflix/model/leafs/social/multititle/$AutoValue_NotificationTemplate$GsonTypeAdapter;->defaultModulesList:Lcom/netflix/model/leafs/social/multititle/NotificationModuleList;

    .line 30
    iput-object v0, p0, Lcom/netflix/model/leafs/social/multititle/$AutoValue_NotificationTemplate$GsonTypeAdapter;->defaultModuleFiltersForActions:Lcom/netflix/model/leafs/social/multititle/NotificationModuleFilters;

    .line 32
    const-class v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/social/multititle/$AutoValue_NotificationTemplate$GsonTypeAdapter;->headlineTextAdapter:Lcom/google/gson/TypeAdapter;

    .line 33
    const-class v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/social/multititle/$AutoValue_NotificationTemplate$GsonTypeAdapter;->bodyTextAdapter:Lcom/google/gson/TypeAdapter;

    .line 34
    const-class v0, Lcom/netflix/model/leafs/social/multititle/NotificationCtaButton;

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/social/multititle/$AutoValue_NotificationTemplate$GsonTypeAdapter;->ctaButtonAdapter:Lcom/google/gson/TypeAdapter;

    .line 35
    new-instance v0, Lcom/netflix/model/leafs/social/multititle/NotificationModuleListTypeAdapter;

    invoke-direct {v0}, Lcom/netflix/model/leafs/social/multititle/NotificationModuleListTypeAdapter;-><init>()V

    iput-object v0, p0, Lcom/netflix/model/leafs/social/multititle/$AutoValue_NotificationTemplate$GsonTypeAdapter;->modulesListAdapter:Lcom/google/gson/TypeAdapter;

    .line 36
    const-class v0, Lcom/netflix/model/leafs/social/multititle/NotificationModuleFilters;

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/model/leafs/social/multititle/$AutoValue_NotificationTemplate$GsonTypeAdapter;->moduleFiltersForActionsAdapter:Lcom/google/gson/TypeAdapter;

    return-void
.end method


# virtual methods
.method public read(Lcom/google/gson/stream/JsonReader;)Lcom/netflix/model/leafs/social/multititle/NotificationTemplate;
    .locals 12

    .line 59
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/google/gson/stream/JsonToken;->NULL:Lcom/google/gson/stream/JsonToken;

    if-ne v0, v1, :cond_0

    .line 60
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextNull()V

    const/4 p1, 0x0

    return-object p1

    .line 63
    :cond_0
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->beginObject()V

    .line 64
    iget-object v0, p0, Lcom/netflix/model/leafs/social/multititle/$AutoValue_NotificationTemplate$GsonTypeAdapter;->defaultHeadlineText:Ljava/lang/String;

    .line 65
    iget-object v1, p0, Lcom/netflix/model/leafs/social/multititle/$AutoValue_NotificationTemplate$GsonTypeAdapter;->defaultBodyText:Ljava/lang/String;

    .line 66
    iget-object v2, p0, Lcom/netflix/model/leafs/social/multititle/$AutoValue_NotificationTemplate$GsonTypeAdapter;->defaultCtaButton:Lcom/netflix/model/leafs/social/multititle/NotificationCtaButton;

    .line 67
    iget-object v3, p0, Lcom/netflix/model/leafs/social/multititle/$AutoValue_NotificationTemplate$GsonTypeAdapter;->defaultModulesList:Lcom/netflix/model/leafs/social/multititle/NotificationModuleList;

    .line 68
    iget-object v4, p0, Lcom/netflix/model/leafs/social/multititle/$AutoValue_NotificationTemplate$GsonTypeAdapter;->defaultModuleFiltersForActions:Lcom/netflix/model/leafs/social/multititle/NotificationModuleFilters;

    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    move-object v9, v3

    move-object v10, v4

    .line 69
    :goto_0
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 70
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v0

    .line 71
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v1

    sget-object v2, Lcom/google/gson/stream/JsonToken;->NULL:Lcom/google/gson/stream/JsonToken;

    if-ne v1, v2, :cond_1

    .line 72
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextNull()V

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    .line 75
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v11, 0x1

    sparse-switch v2, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v2, "bodyText"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :sswitch_1
    const-string v2, "modules"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x3

    goto :goto_1

    :sswitch_2
    const-string v2, "ctaButton"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x2

    goto :goto_1

    :sswitch_3
    const-string v2, "showModulesOnAction"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x4

    goto :goto_1

    :sswitch_4
    const-string v2, "headlineText"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    :cond_2
    :goto_1
    if-eqz v1, :cond_7

    if-eq v1, v11, :cond_6

    if-eq v1, v5, :cond_5

    if-eq v1, v4, :cond_4

    if-eq v1, v3, :cond_3

    .line 97
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->skipValue()V

    goto :goto_0

    .line 93
    :cond_3
    iget-object v0, p0, Lcom/netflix/model/leafs/social/multititle/$AutoValue_NotificationTemplate$GsonTypeAdapter;->moduleFiltersForActionsAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v0, p1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/model/leafs/social/multititle/NotificationModuleFilters;

    move-object v10, v0

    goto :goto_0

    .line 89
    :cond_4
    iget-object v0, p0, Lcom/netflix/model/leafs/social/multititle/$AutoValue_NotificationTemplate$GsonTypeAdapter;->modulesListAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v0, p1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/model/leafs/social/multititle/NotificationModuleList;

    move-object v9, v0

    goto :goto_0

    .line 85
    :cond_5
    iget-object v0, p0, Lcom/netflix/model/leafs/social/multititle/$AutoValue_NotificationTemplate$GsonTypeAdapter;->ctaButtonAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v0, p1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/model/leafs/social/multititle/NotificationCtaButton;

    move-object v8, v0

    goto :goto_0

    .line 81
    :cond_6
    iget-object v0, p0, Lcom/netflix/model/leafs/social/multititle/$AutoValue_NotificationTemplate$GsonTypeAdapter;->bodyTextAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v0, p1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v7, v0

    goto/16 :goto_0

    .line 77
    :cond_7
    iget-object v0, p0, Lcom/netflix/model/leafs/social/multititle/$AutoValue_NotificationTemplate$GsonTypeAdapter;->headlineTextAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v0, p1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v6, v0

    goto/16 :goto_0

    .line 101
    :cond_8
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->endObject()V

    .line 102
    new-instance p1, Lcom/netflix/model/leafs/social/multititle/AutoValue_NotificationTemplate;

    move-object v5, p1

    invoke-direct/range {v5 .. v10}, Lcom/netflix/model/leafs/social/multititle/AutoValue_NotificationTemplate;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/model/leafs/social/multititle/NotificationCtaButton;Lcom/netflix/model/leafs/social/multititle/NotificationModuleList;Lcom/netflix/model/leafs/social/multititle/NotificationModuleFilters;)V

    return-object p1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6031c2df -> :sswitch_4
        -0x3d02b321 -> :sswitch_3
        -0x14fd369e -> :sswitch_2
        0x49292787 -> :sswitch_1
        0x657c51ef -> :sswitch_0
    .end sparse-switch
.end method

.method public bridge synthetic read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;
    .locals 0

    .line 20
    invoke-virtual {p0, p1}, Lcom/netflix/model/leafs/social/multititle/$AutoValue_NotificationTemplate$GsonTypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Lcom/netflix/model/leafs/social/multititle/NotificationTemplate;

    move-result-object p1

    return-object p1
.end method

.method public setDefaultBodyText(Ljava/lang/String;)Lcom/netflix/model/leafs/social/multititle/$AutoValue_NotificationTemplate$GsonTypeAdapter;
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/netflix/model/leafs/social/multititle/$AutoValue_NotificationTemplate$GsonTypeAdapter;->defaultBodyText:Ljava/lang/String;

    return-object p0
.end method

.method public setDefaultCtaButton(Lcom/netflix/model/leafs/social/multititle/NotificationCtaButton;)Lcom/netflix/model/leafs/social/multititle/$AutoValue_NotificationTemplate$GsonTypeAdapter;
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/netflix/model/leafs/social/multititle/$AutoValue_NotificationTemplate$GsonTypeAdapter;->defaultCtaButton:Lcom/netflix/model/leafs/social/multititle/NotificationCtaButton;

    return-object p0
.end method

.method public setDefaultHeadlineText(Ljava/lang/String;)Lcom/netflix/model/leafs/social/multititle/$AutoValue_NotificationTemplate$GsonTypeAdapter;
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/netflix/model/leafs/social/multititle/$AutoValue_NotificationTemplate$GsonTypeAdapter;->defaultHeadlineText:Ljava/lang/String;

    return-object p0
.end method

.method public setDefaultModuleFiltersForActions(Lcom/netflix/model/leafs/social/multititle/NotificationModuleFilters;)Lcom/netflix/model/leafs/social/multititle/$AutoValue_NotificationTemplate$GsonTypeAdapter;
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/netflix/model/leafs/social/multititle/$AutoValue_NotificationTemplate$GsonTypeAdapter;->defaultModuleFiltersForActions:Lcom/netflix/model/leafs/social/multititle/NotificationModuleFilters;

    return-object p0
.end method

.method public setDefaultModulesList(Lcom/netflix/model/leafs/social/multititle/NotificationModuleList;)Lcom/netflix/model/leafs/social/multititle/$AutoValue_NotificationTemplate$GsonTypeAdapter;
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/netflix/model/leafs/social/multititle/$AutoValue_NotificationTemplate$GsonTypeAdapter;->defaultModulesList:Lcom/netflix/model/leafs/social/multititle/NotificationModuleList;

    return-object p0
.end method

.method public write(Lcom/google/gson/stream/JsonWriter;Lcom/netflix/model/leafs/social/multititle/NotificationTemplate;)V
    .locals 2

    if-nez p2, :cond_0

    .line 41
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->nullValue()Lcom/google/gson/stream/JsonWriter;

    return-void

    .line 44
    :cond_0
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->beginObject()Lcom/google/gson/stream/JsonWriter;

    const-string v0, "headlineText"

    .line 45
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 46
    iget-object v0, p0, Lcom/netflix/model/leafs/social/multititle/$AutoValue_NotificationTemplate$GsonTypeAdapter;->headlineTextAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/model/leafs/social/multititle/NotificationTemplate;->headlineText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    const-string v0, "bodyText"

    .line 47
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 48
    iget-object v0, p0, Lcom/netflix/model/leafs/social/multititle/$AutoValue_NotificationTemplate$GsonTypeAdapter;->bodyTextAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/model/leafs/social/multititle/NotificationTemplate;->bodyText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    const-string v0, "ctaButton"

    .line 49
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 50
    iget-object v0, p0, Lcom/netflix/model/leafs/social/multititle/$AutoValue_NotificationTemplate$GsonTypeAdapter;->ctaButtonAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/model/leafs/social/multititle/NotificationTemplate;->ctaButton()Lcom/netflix/model/leafs/social/multititle/NotificationCtaButton;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    const-string v0, "modules"

    .line 51
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 52
    iget-object v0, p0, Lcom/netflix/model/leafs/social/multititle/$AutoValue_NotificationTemplate$GsonTypeAdapter;->modulesListAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/model/leafs/social/multititle/NotificationTemplate;->modulesList()Lcom/netflix/model/leafs/social/multititle/NotificationModuleList;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    const-string v0, "showModulesOnAction"

    .line 53
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 54
    iget-object v0, p0, Lcom/netflix/model/leafs/social/multititle/$AutoValue_NotificationTemplate$GsonTypeAdapter;->moduleFiltersForActionsAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/model/leafs/social/multititle/NotificationTemplate;->moduleFiltersForActions()Lcom/netflix/model/leafs/social/multititle/NotificationModuleFilters;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    .line 55
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->endObject()Lcom/google/gson/stream/JsonWriter;

    return-void
.end method

.method public bridge synthetic write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 0

    .line 20
    check-cast p2, Lcom/netflix/model/leafs/social/multititle/NotificationTemplate;

    invoke-virtual {p0, p1, p2}, Lcom/netflix/model/leafs/social/multititle/$AutoValue_NotificationTemplate$GsonTypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Lcom/netflix/model/leafs/social/multititle/NotificationTemplate;)V

    return-void
.end method
