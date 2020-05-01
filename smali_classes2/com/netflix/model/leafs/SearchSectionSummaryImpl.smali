.class public final Lcom/netflix/model/leafs/SearchSectionSummaryImpl;
.super Lo/BlockedNumberContract;
.source ""

# interfaces
.implements Lo/DocumentsProvider;
.implements Lo/agj;
.implements Lcom/netflix/model/leafs/SearchSectionSummary;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/model/leafs/SearchSectionSummaryImpl$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/netflix/model/leafs/SearchSectionSummaryImpl$Companion;

.field private static final DISPLAY_STRING:Ljava/lang/String; = "displayTitle"

.field private static final FEATURE:Ljava/lang/String; = "feature"

.field private static final LIST_TYPE:Ljava/lang/String; = "listType"

.field private static final NUMBER_OF_SECTIONS:Ljava/lang/String; = "numberOfSections"

.field private static final PAGE_KIND:Ljava/lang/String; = "pageKind"

.field private static final REQUEST_ID:Ljava/lang/String; = "requestId"

.field private static final SECTION_ID:Ljava/lang/String; = "sectionId"

.field private static final SECTION_INDEX:Ljava/lang/String; = "sectionIndex"

.field private static final SUGGESTED_NUMBER_OF_VIDEOS_TO_SHOW:Ljava/lang/String; = "suggestedNumberOfVideosToShow"

.field private static final TRACK_ID:Ljava/lang/String; = "trackId"


# instance fields
.field private displayString:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "displayTitle"
    .end annotation
.end field

.field private feature:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "feature"
    .end annotation
.end field

.field private listType:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "listType"
    .end annotation
.end field

.field private numberOfSections:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "numberOfSections"
    .end annotation
.end field

.field private pageKind:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "pageKind"
    .end annotation
.end field

.field private requestId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "requestId"
    .end annotation
.end field

.field private sectionId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "sectionId"
    .end annotation
.end field

.field private sectionIndex:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "sectionIndex"
    .end annotation
.end field

.field private suggestedNumOfVideos:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "suggestedNumberOfVideosToShow"
    .end annotation
.end field

.field private trackId:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "trackId"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/netflix/model/leafs/SearchSectionSummaryImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/netflix/model/leafs/SearchSectionSummaryImpl$Companion;-><init>(Lo/amc;)V

    sput-object v0, Lcom/netflix/model/leafs/SearchSectionSummaryImpl;->Companion:Lcom/netflix/model/leafs/SearchSectionSummaryImpl$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Lo/BlockedNumberContract;-><init>()V

    const-string v0, " "

    .line 92
    iput-object v0, p0, Lcom/netflix/model/leafs/SearchSectionSummaryImpl;->requestId:Ljava/lang/String;

    .line 94
    iput-object v0, p0, Lcom/netflix/model/leafs/SearchSectionSummaryImpl;->sectionId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDisplayString()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/netflix/model/leafs/SearchSectionSummaryImpl;->displayString:Ljava/lang/String;

    return-object v0
.end method

.method public getFeature()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/netflix/model/leafs/SearchSectionSummaryImpl;->feature:Ljava/lang/String;

    return-object v0
.end method

.method public getImpressionToken()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getListContext()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/netflix/model/leafs/SearchSectionSummaryImpl;->listType:Ljava/lang/String;

    return-object v0
.end method

.method public getListId()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/netflix/model/leafs/SearchSectionSummaryImpl;->sectionId:Ljava/lang/String;

    return-object v0
.end method

.method public getListPos()I
    .locals 1

    .line 48
    iget v0, p0, Lcom/netflix/model/leafs/SearchSectionSummaryImpl;->sectionIndex:I

    return v0
.end method

.method public getListType()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/netflix/model/leafs/SearchSectionSummaryImpl;->listType:Ljava/lang/String;

    return-object v0
.end method

.method public getPageKind()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/netflix/model/leafs/SearchSectionSummaryImpl;->pageKind:Ljava/lang/String;

    return-object v0
.end method

.method public getReferenceId()Ljava/lang/String;
    .locals 2

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/netflix/model/leafs/SearchSectionSummaryImpl;->requestId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/model/leafs/SearchSectionSummaryImpl;->sectionId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRequestId()Ljava/lang/String;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/netflix/model/leafs/SearchSectionSummaryImpl;->requestId:Ljava/lang/String;

    return-object v0
.end method

.method public getSectionId()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/netflix/model/leafs/SearchSectionSummaryImpl;->sectionId:Ljava/lang/String;

    return-object v0
.end method

.method public final getSectionIndex()I
    .locals 1

    .line 98
    iget v0, p0, Lcom/netflix/model/leafs/SearchSectionSummaryImpl;->sectionIndex:I

    return v0
.end method

.method public getSuggestedNumOfVideos()I
    .locals 1

    .line 52
    iget v0, p0, Lcom/netflix/model/leafs/SearchSectionSummaryImpl;->suggestedNumOfVideos:I

    return v0
.end method

.method public getTotalSections()I
    .locals 1

    .line 36
    iget v0, p0, Lcom/netflix/model/leafs/SearchSectionSummaryImpl;->numberOfSections:I

    return v0
.end method

.method public getTrackId()I
    .locals 1

    .line 50
    iget v0, p0, Lcom/netflix/model/leafs/SearchSectionSummaryImpl;->trackId:I

    return v0
.end method

.method public populate(Lcom/google/gson/JsonElement;)V
    .locals 5

    const-string v0, "jsonElem"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object p1

    .line 69
    invoke-virtual {p1}, Lcom/google/gson/JsonObject;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonElement;

    if-nez v1, :cond_1

    goto :goto_0

    .line 70
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const-string v3, "value.asString"

    const-string v4, "value"

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "displayTitle"

    .line 71
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0, v4}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lo/BatteryProperty;->b(Lcom/google/gson/JsonElement;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/SearchSectionSummaryImpl;->displayString:Ljava/lang/String;

    goto :goto_0

    :sswitch_1
    const-string v2, "listType"

    .line 72
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0, v4}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lo/BatteryProperty;->b(Lcom/google/gson/JsonElement;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/SearchSectionSummaryImpl;->listType:Ljava/lang/String;

    goto :goto_0

    :sswitch_2
    const-string v2, "suggestedNumberOfVideosToShow"

    .line 76
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0, v4}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v0

    iput v0, p0, Lcom/netflix/model/leafs/SearchSectionSummaryImpl;->suggestedNumOfVideos:I

    goto :goto_0

    :sswitch_3
    const-string v2, "pageKind"

    .line 80
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0, v4}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/SearchSectionSummaryImpl;->pageKind:Ljava/lang/String;

    goto :goto_0

    :sswitch_4
    const-string v2, "requestId"

    .line 74
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0, v4}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/netflix/model/leafs/SearchSectionSummaryImpl;->requestId:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_5
    const-string v2, "sectionIndex"

    .line 78
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0, v4}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v0

    iput v0, p0, Lcom/netflix/model/leafs/SearchSectionSummaryImpl;->sectionIndex:I

    goto/16 :goto_0

    :sswitch_6
    const-string v2, "sectionId"

    .line 75
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0, v4}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/netflix/model/leafs/SearchSectionSummaryImpl;->sectionId:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_7
    const-string v2, "feature"

    .line 77
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0, v4}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lo/BatteryProperty;->b(Lcom/google/gson/JsonElement;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/SearchSectionSummaryImpl;->feature:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_8
    const-string v2, "trackId"

    .line 73
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0, v4}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v0

    iput v0, p0, Lcom/netflix/model/leafs/SearchSectionSummaryImpl;->trackId:I

    goto/16 :goto_0

    :sswitch_9
    const-string v2, "numberOfSections"

    .line 79
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0, v4}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v0

    iput v0, p0, Lcom/netflix/model/leafs/SearchSectionSummaryImpl;->numberOfSections:I

    goto/16 :goto_0

    :cond_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7f3d06b2 -> :sswitch_9
        -0x3f9f2c3a -> :sswitch_8
        -0x3a5d850a -> :sswitch_7
        -0x28749d20 -> :sswitch_6
        0x258d40ed -> :sswitch_5
        0x295c940a -> :sswitch_4
        0x333632c3 -> :sswitch_3
        0x3f462873 -> :sswitch_2
        0x503534f8 -> :sswitch_1
        0x5fa742b6 -> :sswitch_0
    .end sparse-switch
.end method

.method public final setSectionIndex(I)V
    .locals 0

    .line 98
    iput p1, p0, Lcom/netflix/model/leafs/SearchSectionSummaryImpl;->sectionIndex:I

    return-void
.end method
