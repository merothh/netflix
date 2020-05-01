.class public final Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaMultiMonthOfferChoice$GsonTypeAdapter;
.super Lcom/google/gson/TypeAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaMultiMonthOfferChoice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GsonTypeAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/TypeAdapter<",
        "Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaMultiMonthOfferChoice;",
        ">;"
    }
.end annotation


# instance fields
.field private final currencyAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private defaultCurrency:Ljava/lang/String;

.field private defaultDiscountDuration:I

.field private defaultDiscountDurationType:Ljava/lang/String;

.field private defaultDiscountPercentage:I

.field private defaultFullPrice:D

.field private defaultFullPriceFormatted:Ljava/lang/String;

.field private defaultIsBestOffer:Z

.field private defaultIsSelected:Z

.field private defaultOfferId:J

.field private defaultOfferPrice:D

.field private defaultOfferPriceFormatted:Ljava/lang/String;

.field private defaultPlanId:I

.field private defaultPriceTier:Ljava/lang/String;

.field private final discountDurationAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final discountDurationTypeAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final discountPercentageAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final fullPriceAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private final fullPriceFormattedAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final isBestOfferAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final isSelectedAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final offerIdAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final offerPriceAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private final offerPriceFormattedAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final planIdAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final priceTierAdapter:Lcom/google/gson/TypeAdapter;
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
    .locals 3

    .line 52
    invoke-direct {p0}, Lcom/google/gson/TypeAdapter;-><init>()V

    const/4 v0, 0x0

    .line 39
    iput v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaMultiMonthOfferChoice$GsonTypeAdapter;->defaultPlanId:I

    .line 40
    iput v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaMultiMonthOfferChoice$GsonTypeAdapter;->defaultDiscountPercentage:I

    .line 41
    iput v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaMultiMonthOfferChoice$GsonTypeAdapter;->defaultDiscountDuration:I

    const-wide/16 v1, 0x0

    .line 42
    iput-wide v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaMultiMonthOfferChoice$GsonTypeAdapter;->defaultOfferId:J

    const-wide/16 v1, 0x0

    .line 43
    iput-wide v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaMultiMonthOfferChoice$GsonTypeAdapter;->defaultFullPrice:D

    .line 44
    iput-wide v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaMultiMonthOfferChoice$GsonTypeAdapter;->defaultOfferPrice:D

    .line 45
    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaMultiMonthOfferChoice$GsonTypeAdapter;->defaultIsBestOffer:Z

    .line 46
    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaMultiMonthOfferChoice$GsonTypeAdapter;->defaultIsSelected:Z

    const/4 v0, 0x0

    .line 47
    iput-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaMultiMonthOfferChoice$GsonTypeAdapter;->defaultCurrency:Ljava/lang/String;

    .line 48
    iput-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaMultiMonthOfferChoice$GsonTypeAdapter;->defaultPriceTier:Ljava/lang/String;

    .line 49
    iput-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaMultiMonthOfferChoice$GsonTypeAdapter;->defaultDiscountDurationType:Ljava/lang/String;

    .line 50
    iput-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaMultiMonthOfferChoice$GsonTypeAdapter;->defaultFullPriceFormatted:Ljava/lang/String;

    .line 51
    iput-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaMultiMonthOfferChoice$GsonTypeAdapter;->defaultOfferPriceFormatted:Ljava/lang/String;

    .line 53
    const-class v0, Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaMultiMonthOfferChoice$GsonTypeAdapter;->planIdAdapter:Lcom/google/gson/TypeAdapter;

    .line 54
    const-class v0, Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaMultiMonthOfferChoice$GsonTypeAdapter;->discountPercentageAdapter:Lcom/google/gson/TypeAdapter;

    .line 55
    const-class v0, Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaMultiMonthOfferChoice$GsonTypeAdapter;->discountDurationAdapter:Lcom/google/gson/TypeAdapter;

    .line 56
    const-class v0, Ljava/lang/Long;

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaMultiMonthOfferChoice$GsonTypeAdapter;->offerIdAdapter:Lcom/google/gson/TypeAdapter;

    .line 57
    const-class v0, Ljava/lang/Double;

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaMultiMonthOfferChoice$GsonTypeAdapter;->fullPriceAdapter:Lcom/google/gson/TypeAdapter;

    .line 58
    const-class v0, Ljava/lang/Double;

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaMultiMonthOfferChoice$GsonTypeAdapter;->offerPriceAdapter:Lcom/google/gson/TypeAdapter;

    .line 59
    const-class v0, Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaMultiMonthOfferChoice$GsonTypeAdapter;->isBestOfferAdapter:Lcom/google/gson/TypeAdapter;

    .line 60
    const-class v0, Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaMultiMonthOfferChoice$GsonTypeAdapter;->isSelectedAdapter:Lcom/google/gson/TypeAdapter;

    .line 61
    const-class v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaMultiMonthOfferChoice$GsonTypeAdapter;->currencyAdapter:Lcom/google/gson/TypeAdapter;

    .line 62
    const-class v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaMultiMonthOfferChoice$GsonTypeAdapter;->priceTierAdapter:Lcom/google/gson/TypeAdapter;

    .line 63
    const-class v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaMultiMonthOfferChoice$GsonTypeAdapter;->discountDurationTypeAdapter:Lcom/google/gson/TypeAdapter;

    .line 64
    const-class v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaMultiMonthOfferChoice$GsonTypeAdapter;->fullPriceFormattedAdapter:Lcom/google/gson/TypeAdapter;

    .line 65
    const-class v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaMultiMonthOfferChoice$GsonTypeAdapter;->offerPriceFormattedAdapter:Lcom/google/gson/TypeAdapter;

    return-void
.end method


# virtual methods
.method public read(Lcom/google/gson/stream/JsonReader;)Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaMultiMonthOfferChoice;
    .locals 35

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 104
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v2

    sget-object v3, Lcom/google/gson/stream/JsonToken;->NULL:Lcom/google/gson/stream/JsonToken;

    if-ne v2, v3, :cond_0

    .line 105
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->nextNull()V

    const/4 v1, 0x0

    return-object v1

    .line 108
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->beginObject()V

    .line 109
    iget v2, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaMultiMonthOfferChoice$GsonTypeAdapter;->defaultPlanId:I

    .line 110
    iget v3, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaMultiMonthOfferChoice$GsonTypeAdapter;->defaultDiscountPercentage:I

    .line 111
    iget v4, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaMultiMonthOfferChoice$GsonTypeAdapter;->defaultDiscountDuration:I

    .line 112
    iget-wide v5, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaMultiMonthOfferChoice$GsonTypeAdapter;->defaultOfferId:J

    .line 113
    iget-wide v7, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaMultiMonthOfferChoice$GsonTypeAdapter;->defaultFullPrice:D

    .line 114
    iget-wide v9, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaMultiMonthOfferChoice$GsonTypeAdapter;->defaultOfferPrice:D

    .line 115
    iget-boolean v11, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaMultiMonthOfferChoice$GsonTypeAdapter;->defaultIsBestOffer:Z

    .line 116
    iget-boolean v12, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaMultiMonthOfferChoice$GsonTypeAdapter;->defaultIsSelected:Z

    .line 117
    iget-object v13, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaMultiMonthOfferChoice$GsonTypeAdapter;->defaultCurrency:Ljava/lang/String;

    .line 118
    iget-object v14, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaMultiMonthOfferChoice$GsonTypeAdapter;->defaultPriceTier:Ljava/lang/String;

    .line 119
    iget-object v15, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaMultiMonthOfferChoice$GsonTypeAdapter;->defaultDiscountDurationType:Ljava/lang/String;

    move/from16 v16, v2

    .line 120
    iget-object v2, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaMultiMonthOfferChoice$GsonTypeAdapter;->defaultFullPriceFormatted:Ljava/lang/String;

    move-object/from16 v17, v2

    .line 121
    iget-object v2, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaMultiMonthOfferChoice$GsonTypeAdapter;->defaultOfferPriceFormatted:Ljava/lang/String;

    move-object/from16 v34, v2

    move/from16 v20, v3

    move/from16 v21, v4

    move-wide/from16 v22, v5

    move-wide/from16 v24, v7

    move-wide/from16 v26, v9

    move/from16 v28, v11

    move/from16 v29, v12

    move-object/from16 v30, v13

    move-object/from16 v31, v14

    move-object/from16 v32, v15

    move/from16 v19, v16

    move-object/from16 v33, v17

    .line 122
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 123
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v2

    .line 124
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v3

    sget-object v4, Lcom/google/gson/stream/JsonToken;->NULL:Lcom/google/gson/stream/JsonToken;

    if-ne v3, v4, :cond_1

    .line 125
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->nextNull()V

    goto :goto_0

    :cond_1
    const/4 v3, -0x1

    .line 128
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v4, "offerPriceFormatted"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v3, 0xc

    goto/16 :goto_1

    :sswitch_1
    const-string v4, "currency"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v3, 0x8

    goto/16 :goto_1

    :sswitch_2
    const-string v4, "isSelected"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v3, 0x7

    goto/16 :goto_1

    :sswitch_3
    const-string v4, "fullPriceFormatted"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v3, 0xb

    goto :goto_1

    :sswitch_4
    const-string v4, "offerPrice"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v3, 0x5

    goto :goto_1

    :sswitch_5
    const-string v4, "discountDurationType"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v3, 0xa

    goto :goto_1

    :sswitch_6
    const-string v4, "discountPercentage"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :sswitch_7
    const-string v4, "planId"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v3, 0x0

    goto :goto_1

    :sswitch_8
    const-string v4, "discountDuration"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v3, 0x2

    goto :goto_1

    :sswitch_9
    const-string v4, "offerId"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v3, 0x3

    goto :goto_1

    :sswitch_a
    const-string v4, "fullPrice"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v3, 0x4

    goto :goto_1

    :sswitch_b
    const-string v4, "isBestOffer"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v3, 0x6

    goto :goto_1

    :sswitch_c
    const-string v4, "priceTier"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v3, 0x9

    :cond_2
    :goto_1
    packed-switch v3, :pswitch_data_0

    .line 182
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->skipValue()V

    goto/16 :goto_0

    .line 178
    :pswitch_0
    iget-object v2, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaMultiMonthOfferChoice$GsonTypeAdapter;->offerPriceFormattedAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v2, v1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v34, v2

    goto/16 :goto_0

    .line 174
    :pswitch_1
    iget-object v2, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaMultiMonthOfferChoice$GsonTypeAdapter;->fullPriceFormattedAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v2, v1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v33, v2

    goto/16 :goto_0

    .line 170
    :pswitch_2
    iget-object v2, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaMultiMonthOfferChoice$GsonTypeAdapter;->discountDurationTypeAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v2, v1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v32, v2

    goto/16 :goto_0

    .line 166
    :pswitch_3
    iget-object v2, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaMultiMonthOfferChoice$GsonTypeAdapter;->priceTierAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v2, v1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v31, v2

    goto/16 :goto_0

    .line 162
    :pswitch_4
    iget-object v2, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaMultiMonthOfferChoice$GsonTypeAdapter;->currencyAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v2, v1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v30, v2

    goto/16 :goto_0

    .line 158
    :pswitch_5
    iget-object v2, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaMultiMonthOfferChoice$GsonTypeAdapter;->isSelectedAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v2, v1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    move/from16 v29, v2

    goto/16 :goto_0

    .line 154
    :pswitch_6
    iget-object v2, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaMultiMonthOfferChoice$GsonTypeAdapter;->isBestOfferAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v2, v1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    move/from16 v28, v2

    goto/16 :goto_0

    .line 150
    :pswitch_7
    iget-object v2, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaMultiMonthOfferChoice$GsonTypeAdapter;->offerPriceAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v2, v1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    move-wide/from16 v26, v2

    goto/16 :goto_0

    .line 146
    :pswitch_8
    iget-object v2, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaMultiMonthOfferChoice$GsonTypeAdapter;->fullPriceAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v2, v1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    move-wide/from16 v24, v2

    goto/16 :goto_0

    .line 142
    :pswitch_9
    iget-object v2, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaMultiMonthOfferChoice$GsonTypeAdapter;->offerIdAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v2, v1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    move-wide/from16 v22, v2

    goto/16 :goto_0

    .line 138
    :pswitch_a
    iget-object v2, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaMultiMonthOfferChoice$GsonTypeAdapter;->discountDurationAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v2, v1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move/from16 v21, v2

    goto/16 :goto_0

    .line 134
    :pswitch_b
    iget-object v2, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaMultiMonthOfferChoice$GsonTypeAdapter;->discountPercentageAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v2, v1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move/from16 v20, v2

    goto/16 :goto_0

    .line 130
    :pswitch_c
    iget-object v2, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaMultiMonthOfferChoice$GsonTypeAdapter;->planIdAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v2, v1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move/from16 v19, v2

    goto/16 :goto_0

    .line 186
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->endObject()V

    .line 187
    new-instance v1, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaMultiMonthOfferChoice;

    move-object/from16 v18, v1

    invoke-direct/range {v18 .. v34}, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaMultiMonthOfferChoice;-><init>(IIIJDDZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :sswitch_data_0
    .sparse-switch
        -0x7eb45535 -> :sswitch_c
        -0x6dd19b32 -> :sswitch_b
        -0x64c92006 -> :sswitch_a
        -0x5c510369 -> :sswitch_9
        -0x3e7daa0b -> :sswitch_8
        -0x3ac191dc -> :sswitch_7
        -0x16149945 -> :sswitch_6
        -0x140ba931 -> :sswitch_5
        0x8cec04d -> :sswitch_4
        0xe3949e2 -> :sswitch_3
        0x17bd99e5 -> :sswitch_2
        0x224bf011 -> :sswitch_1
        0x714d16ef -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
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

    .line 25
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaMultiMonthOfferChoice$GsonTypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaMultiMonthOfferChoice;

    move-result-object p1

    return-object p1
.end method

.method public setDefaultCurrency(Ljava/lang/String;)Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaMultiMonthOfferChoice$GsonTypeAdapter;
    .locals 0

    .line 222
    iput-object p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaMultiMonthOfferChoice$GsonTypeAdapter;->defaultCurrency:Ljava/lang/String;

    return-object p0
.end method

.method public setDefaultDiscountDuration(I)Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaMultiMonthOfferChoice$GsonTypeAdapter;
    .locals 0

    .line 198
    iput p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaMultiMonthOfferChoice$GsonTypeAdapter;->defaultDiscountDuration:I

    return-object p0
.end method

.method public setDefaultDiscountDurationType(Ljava/lang/String;)Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaMultiMonthOfferChoice$GsonTypeAdapter;
    .locals 0

    .line 230
    iput-object p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaMultiMonthOfferChoice$GsonTypeAdapter;->defaultDiscountDurationType:Ljava/lang/String;

    return-object p0
.end method

.method public setDefaultDiscountPercentage(I)Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaMultiMonthOfferChoice$GsonTypeAdapter;
    .locals 0

    .line 194
    iput p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaMultiMonthOfferChoice$GsonTypeAdapter;->defaultDiscountPercentage:I

    return-object p0
.end method

.method public setDefaultFullPrice(D)Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaMultiMonthOfferChoice$GsonTypeAdapter;
    .locals 0

    .line 206
    iput-wide p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaMultiMonthOfferChoice$GsonTypeAdapter;->defaultFullPrice:D

    return-object p0
.end method

.method public setDefaultFullPriceFormatted(Ljava/lang/String;)Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaMultiMonthOfferChoice$GsonTypeAdapter;
    .locals 0

    .line 234
    iput-object p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaMultiMonthOfferChoice$GsonTypeAdapter;->defaultFullPriceFormatted:Ljava/lang/String;

    return-object p0
.end method

.method public setDefaultIsBestOffer(Z)Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaMultiMonthOfferChoice$GsonTypeAdapter;
    .locals 0

    .line 214
    iput-boolean p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaMultiMonthOfferChoice$GsonTypeAdapter;->defaultIsBestOffer:Z

    return-object p0
.end method

.method public setDefaultIsSelected(Z)Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaMultiMonthOfferChoice$GsonTypeAdapter;
    .locals 0

    .line 218
    iput-boolean p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaMultiMonthOfferChoice$GsonTypeAdapter;->defaultIsSelected:Z

    return-object p0
.end method

.method public setDefaultOfferId(J)Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaMultiMonthOfferChoice$GsonTypeAdapter;
    .locals 0

    .line 202
    iput-wide p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaMultiMonthOfferChoice$GsonTypeAdapter;->defaultOfferId:J

    return-object p0
.end method

.method public setDefaultOfferPrice(D)Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaMultiMonthOfferChoice$GsonTypeAdapter;
    .locals 0

    .line 210
    iput-wide p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaMultiMonthOfferChoice$GsonTypeAdapter;->defaultOfferPrice:D

    return-object p0
.end method

.method public setDefaultOfferPriceFormatted(Ljava/lang/String;)Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaMultiMonthOfferChoice$GsonTypeAdapter;
    .locals 0

    .line 238
    iput-object p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaMultiMonthOfferChoice$GsonTypeAdapter;->defaultOfferPriceFormatted:Ljava/lang/String;

    return-object p0
.end method

.method public setDefaultPlanId(I)Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaMultiMonthOfferChoice$GsonTypeAdapter;
    .locals 0

    .line 190
    iput p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaMultiMonthOfferChoice$GsonTypeAdapter;->defaultPlanId:I

    return-object p0
.end method

.method public setDefaultPriceTier(Ljava/lang/String;)Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaMultiMonthOfferChoice$GsonTypeAdapter;
    .locals 0

    .line 226
    iput-object p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaMultiMonthOfferChoice$GsonTypeAdapter;->defaultPriceTier:Ljava/lang/String;

    return-object p0
.end method

.method public write(Lcom/google/gson/stream/JsonWriter;Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaMultiMonthOfferChoice;)V
    .locals 3

    if-nez p2, :cond_0

    .line 70
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->nullValue()Lcom/google/gson/stream/JsonWriter;

    return-void

    .line 73
    :cond_0
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->beginObject()Lcom/google/gson/stream/JsonWriter;

    const-string v0, "planId"

    .line 74
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 75
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaMultiMonthOfferChoice$GsonTypeAdapter;->planIdAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaMultiMonthOfferChoice;->planId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    const-string v0, "discountPercentage"

    .line 76
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 77
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaMultiMonthOfferChoice$GsonTypeAdapter;->discountPercentageAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaMultiMonthOfferChoice;->discountPercentage()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    const-string v0, "discountDuration"

    .line 78
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 79
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaMultiMonthOfferChoice$GsonTypeAdapter;->discountDurationAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaMultiMonthOfferChoice;->discountDuration()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    const-string v0, "offerId"

    .line 80
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 81
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaMultiMonthOfferChoice$GsonTypeAdapter;->offerIdAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaMultiMonthOfferChoice;->offerId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    const-string v0, "fullPrice"

    .line 82
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 83
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaMultiMonthOfferChoice$GsonTypeAdapter;->fullPriceAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaMultiMonthOfferChoice;->fullPrice()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    const-string v0, "offerPrice"

    .line 84
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 85
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaMultiMonthOfferChoice$GsonTypeAdapter;->offerPriceAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaMultiMonthOfferChoice;->offerPrice()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    const-string v0, "isBestOffer"

    .line 86
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 87
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaMultiMonthOfferChoice$GsonTypeAdapter;->isBestOfferAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaMultiMonthOfferChoice;->isBestOffer()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    const-string v0, "isSelected"

    .line 88
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 89
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaMultiMonthOfferChoice$GsonTypeAdapter;->isSelectedAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaMultiMonthOfferChoice;->isSelected()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    const-string v0, "currency"

    .line 90
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 91
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaMultiMonthOfferChoice$GsonTypeAdapter;->currencyAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaMultiMonthOfferChoice;->currency()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    const-string v0, "priceTier"

    .line 92
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 93
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaMultiMonthOfferChoice$GsonTypeAdapter;->priceTierAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaMultiMonthOfferChoice;->priceTier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    const-string v0, "discountDurationType"

    .line 94
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 95
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaMultiMonthOfferChoice$GsonTypeAdapter;->discountDurationTypeAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaMultiMonthOfferChoice;->discountDurationType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    const-string v0, "fullPriceFormatted"

    .line 96
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 97
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaMultiMonthOfferChoice$GsonTypeAdapter;->fullPriceFormattedAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaMultiMonthOfferChoice;->fullPriceFormatted()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    const-string v0, "offerPriceFormatted"

    .line 98
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 99
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaMultiMonthOfferChoice$GsonTypeAdapter;->offerPriceFormattedAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaMultiMonthOfferChoice;->offerPriceFormatted()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    .line 100
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->endObject()Lcom/google/gson/stream/JsonWriter;

    return-void
.end method

.method public bridge synthetic write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 0

    .line 25
    check-cast p2, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaMultiMonthOfferChoice;

    invoke-virtual {p0, p1, p2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaMultiMonthOfferChoice$GsonTypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaMultiMonthOfferChoice;)V

    return-void
.end method
