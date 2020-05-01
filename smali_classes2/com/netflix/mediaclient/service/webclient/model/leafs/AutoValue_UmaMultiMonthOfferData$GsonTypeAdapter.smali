.class public final Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaMultiMonthOfferData$GsonTypeAdapter;
.super Lcom/google/gson/TypeAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaMultiMonthOfferData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GsonTypeAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/TypeAdapter<",
        "Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaMultiMonthOfferData;",
        ">;"
    }
.end annotation


# instance fields
.field private final buyCtaActionAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final buyCtaIdAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final cellAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private defaultBuyCtaAction:Ljava/lang/String;

.field private defaultBuyCtaId:Ljava/lang/String;

.field private defaultCell:I

.field private defaultDismissCtaId:Ljava/lang/String;

.field private defaultLabelVariantId:Ljava/lang/String;

.field private defaultOfferChoices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaMultiMonthOfferChoice;",
            ">;"
        }
    .end annotation
.end field

.field private defaultViewType:Ljava/lang/String;

.field private defaultVlvURL:Ljava/lang/String;

.field private final dismissCtaIdAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final labelVariantIdAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final offerChoicesAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaMultiMonthOfferChoice;",
            ">;>;"
        }
    .end annotation
.end field

.field private final viewTypeAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final vlvURLAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/gson/Gson;)V
    .locals 4

    .line 40
    invoke-direct {p0}, Lcom/google/gson/TypeAdapter;-><init>()V

    const/4 v0, 0x0

    .line 32
    iput v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaMultiMonthOfferData$GsonTypeAdapter;->defaultCell:I

    const/4 v1, 0x0

    .line 33
    iput-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaMultiMonthOfferData$GsonTypeAdapter;->defaultViewType:Ljava/lang/String;

    .line 34
    iput-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaMultiMonthOfferData$GsonTypeAdapter;->defaultVlvURL:Ljava/lang/String;

    .line 35
    iput-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaMultiMonthOfferData$GsonTypeAdapter;->defaultLabelVariantId:Ljava/lang/String;

    .line 36
    iput-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaMultiMonthOfferData$GsonTypeAdapter;->defaultDismissCtaId:Ljava/lang/String;

    .line 37
    iput-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaMultiMonthOfferData$GsonTypeAdapter;->defaultBuyCtaId:Ljava/lang/String;

    .line 38
    iput-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaMultiMonthOfferData$GsonTypeAdapter;->defaultBuyCtaAction:Ljava/lang/String;

    .line 39
    iput-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaMultiMonthOfferData$GsonTypeAdapter;->defaultOfferChoices:Ljava/util/List;

    .line 41
    const-class v1, Ljava/lang/Integer;

    invoke-virtual {p1, v1}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaMultiMonthOfferData$GsonTypeAdapter;->cellAdapter:Lcom/google/gson/TypeAdapter;

    .line 42
    const-class v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaMultiMonthOfferData$GsonTypeAdapter;->viewTypeAdapter:Lcom/google/gson/TypeAdapter;

    .line 43
    const-class v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaMultiMonthOfferData$GsonTypeAdapter;->vlvURLAdapter:Lcom/google/gson/TypeAdapter;

    .line 44
    const-class v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaMultiMonthOfferData$GsonTypeAdapter;->labelVariantIdAdapter:Lcom/google/gson/TypeAdapter;

    .line 45
    const-class v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaMultiMonthOfferData$GsonTypeAdapter;->dismissCtaIdAdapter:Lcom/google/gson/TypeAdapter;

    .line 46
    const-class v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaMultiMonthOfferData$GsonTypeAdapter;->buyCtaIdAdapter:Lcom/google/gson/TypeAdapter;

    .line 47
    const-class v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaMultiMonthOfferData$GsonTypeAdapter;->buyCtaActionAdapter:Lcom/google/gson/TypeAdapter;

    .line 48
    const-class v1, Ljava/util/List;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/reflect/Type;

    const-class v3, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaMultiMonthOfferChoice;

    aput-object v3, v2, v0

    invoke-static {v1, v2}, Lcom/google/gson/reflect/TypeToken;->getParameterized(Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)Lcom/google/gson/reflect/TypeToken;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->getAdapter(Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/TypeAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaMultiMonthOfferData$GsonTypeAdapter;->offerChoicesAdapter:Lcom/google/gson/TypeAdapter;

    return-void
.end method


# virtual methods
.method public read(Lcom/google/gson/stream/JsonReader;)Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaMultiMonthOfferData;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 77
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v2

    sget-object v3, Lcom/google/gson/stream/JsonToken;->NULL:Lcom/google/gson/stream/JsonToken;

    if-ne v2, v3, :cond_0

    .line 78
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->nextNull()V

    const/4 v1, 0x0

    return-object v1

    .line 81
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->beginObject()V

    .line 82
    iget v2, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaMultiMonthOfferData$GsonTypeAdapter;->defaultCell:I

    .line 83
    iget-object v3, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaMultiMonthOfferData$GsonTypeAdapter;->defaultViewType:Ljava/lang/String;

    .line 84
    iget-object v4, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaMultiMonthOfferData$GsonTypeAdapter;->defaultVlvURL:Ljava/lang/String;

    .line 85
    iget-object v5, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaMultiMonthOfferData$GsonTypeAdapter;->defaultLabelVariantId:Ljava/lang/String;

    .line 86
    iget-object v6, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaMultiMonthOfferData$GsonTypeAdapter;->defaultDismissCtaId:Ljava/lang/String;

    .line 87
    iget-object v7, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaMultiMonthOfferData$GsonTypeAdapter;->defaultBuyCtaId:Ljava/lang/String;

    .line 88
    iget-object v8, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaMultiMonthOfferData$GsonTypeAdapter;->defaultBuyCtaAction:Ljava/lang/String;

    .line 89
    iget-object v9, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaMultiMonthOfferData$GsonTypeAdapter;->defaultOfferChoices:Ljava/util/List;

    move v11, v2

    move-object v12, v3

    move-object v13, v4

    move-object v14, v5

    move-object v15, v6

    move-object/from16 v16, v7

    move-object/from16 v17, v8

    move-object/from16 v18, v9

    .line 90
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 91
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v2

    .line 92
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v3

    sget-object v4, Lcom/google/gson/stream/JsonToken;->NULL:Lcom/google/gson/stream/JsonToken;

    if-ne v3, v4, :cond_1

    .line 93
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->nextNull()V

    goto :goto_0

    :cond_1
    const/4 v3, -0x1

    .line 96
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v4, "offerChoices"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v3, 0x7

    goto :goto_1

    :sswitch_1
    const-string v4, "viewType"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :sswitch_2
    const-string v4, "dismissCtaId"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v3, 0x4

    goto :goto_1

    :sswitch_3
    const-string v4, "cell"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v3, 0x0

    goto :goto_1

    :sswitch_4
    const-string v4, "labelVariantId"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v3, 0x3

    goto :goto_1

    :sswitch_5
    const-string v4, "buyCtaAction"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v3, 0x6

    goto :goto_1

    :sswitch_6
    const-string v4, "vlvURL"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v3, 0x2

    goto :goto_1

    :sswitch_7
    const-string v4, "buyCtaId"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v3, 0x5

    :cond_2
    :goto_1
    packed-switch v3, :pswitch_data_0

    .line 130
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->skipValue()V

    goto :goto_0

    .line 126
    :pswitch_0
    iget-object v2, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaMultiMonthOfferData$GsonTypeAdapter;->offerChoicesAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v2, v1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    move-object/from16 v18, v2

    goto :goto_0

    .line 122
    :pswitch_1
    iget-object v2, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaMultiMonthOfferData$GsonTypeAdapter;->buyCtaActionAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v2, v1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v17, v2

    goto/16 :goto_0

    .line 118
    :pswitch_2
    iget-object v2, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaMultiMonthOfferData$GsonTypeAdapter;->buyCtaIdAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v2, v1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v16, v2

    goto/16 :goto_0

    .line 114
    :pswitch_3
    iget-object v2, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaMultiMonthOfferData$GsonTypeAdapter;->dismissCtaIdAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v2, v1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v15, v2

    goto/16 :goto_0

    .line 110
    :pswitch_4
    iget-object v2, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaMultiMonthOfferData$GsonTypeAdapter;->labelVariantIdAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v2, v1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v14, v2

    goto/16 :goto_0

    .line 106
    :pswitch_5
    iget-object v2, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaMultiMonthOfferData$GsonTypeAdapter;->vlvURLAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v2, v1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v13, v2

    goto/16 :goto_0

    .line 102
    :pswitch_6
    iget-object v2, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaMultiMonthOfferData$GsonTypeAdapter;->viewTypeAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v2, v1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v12, v2

    goto/16 :goto_0

    .line 98
    :pswitch_7
    iget-object v2, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaMultiMonthOfferData$GsonTypeAdapter;->cellAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v2, v1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move v11, v2

    goto/16 :goto_0

    .line 134
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->endObject()V

    .line 135
    new-instance v1, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaMultiMonthOfferData;

    move-object v10, v1

    invoke-direct/range {v10 .. v18}, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaMultiMonthOfferData;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-object v1

    :sswitch_data_0
    .sparse-switch
        -0x3c33039b -> :sswitch_7
        -0x307b4f31 -> :sswitch_6
        -0x2b004780 -> :sswitch_5
        -0x2504c014 -> :sswitch_4
        0x2e8962 -> :sswitch_3
        0x183eaae1 -> :sswitch_2
        0x4747637f -> :sswitch_1
        0x4fb5b4f6 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;
    .locals 0

    .line 23
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaMultiMonthOfferData$GsonTypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaMultiMonthOfferData;

    move-result-object p1

    return-object p1
.end method

.method public setDefaultBuyCtaAction(Ljava/lang/String;)Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaMultiMonthOfferData$GsonTypeAdapter;
    .locals 0

    .line 162
    iput-object p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaMultiMonthOfferData$GsonTypeAdapter;->defaultBuyCtaAction:Ljava/lang/String;

    return-object p0
.end method

.method public setDefaultBuyCtaId(Ljava/lang/String;)Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaMultiMonthOfferData$GsonTypeAdapter;
    .locals 0

    .line 158
    iput-object p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaMultiMonthOfferData$GsonTypeAdapter;->defaultBuyCtaId:Ljava/lang/String;

    return-object p0
.end method

.method public setDefaultCell(I)Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaMultiMonthOfferData$GsonTypeAdapter;
    .locals 0

    .line 138
    iput p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaMultiMonthOfferData$GsonTypeAdapter;->defaultCell:I

    return-object p0
.end method

.method public setDefaultDismissCtaId(Ljava/lang/String;)Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaMultiMonthOfferData$GsonTypeAdapter;
    .locals 0

    .line 154
    iput-object p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaMultiMonthOfferData$GsonTypeAdapter;->defaultDismissCtaId:Ljava/lang/String;

    return-object p0
.end method

.method public setDefaultLabelVariantId(Ljava/lang/String;)Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaMultiMonthOfferData$GsonTypeAdapter;
    .locals 0

    .line 150
    iput-object p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaMultiMonthOfferData$GsonTypeAdapter;->defaultLabelVariantId:Ljava/lang/String;

    return-object p0
.end method

.method public setDefaultOfferChoices(Ljava/util/List;)Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaMultiMonthOfferData$GsonTypeAdapter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaMultiMonthOfferChoice;",
            ">;)",
            "Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaMultiMonthOfferData$GsonTypeAdapter;"
        }
    .end annotation

    .line 166
    iput-object p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaMultiMonthOfferData$GsonTypeAdapter;->defaultOfferChoices:Ljava/util/List;

    return-object p0
.end method

.method public setDefaultViewType(Ljava/lang/String;)Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaMultiMonthOfferData$GsonTypeAdapter;
    .locals 0

    .line 142
    iput-object p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaMultiMonthOfferData$GsonTypeAdapter;->defaultViewType:Ljava/lang/String;

    return-object p0
.end method

.method public setDefaultVlvURL(Ljava/lang/String;)Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaMultiMonthOfferData$GsonTypeAdapter;
    .locals 0

    .line 146
    iput-object p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaMultiMonthOfferData$GsonTypeAdapter;->defaultVlvURL:Ljava/lang/String;

    return-object p0
.end method

.method public write(Lcom/google/gson/stream/JsonWriter;Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaMultiMonthOfferData;)V
    .locals 2

    if-nez p2, :cond_0

    .line 53
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->nullValue()Lcom/google/gson/stream/JsonWriter;

    return-void

    .line 56
    :cond_0
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->beginObject()Lcom/google/gson/stream/JsonWriter;

    const-string v0, "cell"

    .line 57
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 58
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaMultiMonthOfferData$GsonTypeAdapter;->cellAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaMultiMonthOfferData;->cell()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    const-string v0, "viewType"

    .line 59
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 60
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaMultiMonthOfferData$GsonTypeAdapter;->viewTypeAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaMultiMonthOfferData;->viewType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    const-string v0, "vlvURL"

    .line 61
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 62
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaMultiMonthOfferData$GsonTypeAdapter;->vlvURLAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaMultiMonthOfferData;->vlvURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    const-string v0, "labelVariantId"

    .line 63
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 64
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaMultiMonthOfferData$GsonTypeAdapter;->labelVariantIdAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaMultiMonthOfferData;->labelVariantId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    const-string v0, "dismissCtaId"

    .line 65
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 66
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaMultiMonthOfferData$GsonTypeAdapter;->dismissCtaIdAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaMultiMonthOfferData;->dismissCtaId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    const-string v0, "buyCtaId"

    .line 67
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 68
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaMultiMonthOfferData$GsonTypeAdapter;->buyCtaIdAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaMultiMonthOfferData;->buyCtaId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    const-string v0, "buyCtaAction"

    .line 69
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 70
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaMultiMonthOfferData$GsonTypeAdapter;->buyCtaActionAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaMultiMonthOfferData;->buyCtaAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    const-string v0, "offerChoices"

    .line 71
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 72
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaMultiMonthOfferData$GsonTypeAdapter;->offerChoicesAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaMultiMonthOfferData;->offerChoices()Ljava/util/List;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    .line 73
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->endObject()Lcom/google/gson/stream/JsonWriter;

    return-void
.end method

.method public bridge synthetic write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 0

    .line 23
    check-cast p2, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaMultiMonthOfferData;

    invoke-virtual {p0, p1, p2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaMultiMonthOfferData$GsonTypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaMultiMonthOfferData;)V

    return-void
.end method
