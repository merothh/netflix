.class public final Lcom/netflix/mediaclient/acquisition/util/AUIPaymentsUtilities$CCNumberHelper;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/acquisition/util/AUIPaymentsUtilities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CCNumberHelper"
.end annotation


# static fields
# The value of this static final field might be set in the static constructor
.field private static final BIN_LENGTH:I = 0x6

.field public static final INSTANCE:Lcom/netflix/mediaclient/acquisition/util/AUIPaymentsUtilities$CCNumberHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    new-instance v0, Lcom/netflix/mediaclient/acquisition/util/AUIPaymentsUtilities$CCNumberHelper;

    invoke-direct {v0}, Lcom/netflix/mediaclient/acquisition/util/AUIPaymentsUtilities$CCNumberHelper;-><init>()V

    sput-object v0, Lcom/netflix/mediaclient/acquisition/util/AUIPaymentsUtilities$CCNumberHelper;->INSTANCE:Lcom/netflix/mediaclient/acquisition/util/AUIPaymentsUtilities$CCNumberHelper;

    const/4 v0, 0x6

    .line 40
    sput v0, Lcom/netflix/mediaclient/acquisition/util/AUIPaymentsUtilities$CCNumberHelper;->BIN_LENGTH:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getBIN_LENGTH()I
    .locals 1

    .line 40
    sget v0, Lcom/netflix/mediaclient/acquisition/util/AUIPaymentsUtilities$CCNumberHelper;->BIN_LENGTH:I

    return v0
.end method

.method public final getCardMetaDataFromNumber(Ljava/lang/String;)Lcom/netflix/mediaclient/acquisition/util/CardMetaData;
    .locals 6

    const-string v0, "cardNumber"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-static {}, Lcom/netflix/mediaclient/acquisition/util/CardMetaData;->values()[Lcom/netflix/mediaclient/acquisition/util/CardMetaData;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    new-instance v4, Lkotlin/text/Regex;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/acquisition/util/CardMetaData;->getPattern()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    move-object v5, p1

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Lkotlin/text/Regex;->b(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_1
    return-object v3
.end method

.method public final isLuhnCheckNeeded(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "cardNumber"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/acquisition/util/AUIPaymentsUtilities$CCNumberHelper;->getCardMetaDataFromNumber(Ljava/lang/String;)Lcom/netflix/mediaclient/acquisition/util/CardMetaData;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 48
    invoke-virtual {p1}, Lcom/netflix/mediaclient/acquisition/util/CardMetaData;->getLuhnNeeded()Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public final luhnCheck(Ljava/lang/String;)Z
    .locals 7

    const-string v0, "ccNumber"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ltz v0, :cond_1

    add-int/lit8 v5, v0, 0x1

    .line 60
    invoke-virtual {p1, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string v6, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {v5, v6}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    if-eqz v4, :cond_0

    mul-int/lit8 v5, v5, 0x2

    const/16 v6, 0x9

    if-le v5, v6, :cond_0

    .line 64
    rem-int/lit8 v5, v5, 0xa

    add-int/2addr v5, v1

    :cond_0
    add-int/2addr v3, v5

    xor-int/lit8 v4, v4, 0x1

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 71
    :cond_1
    rem-int/lit8 v3, v3, 0xa

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    return v1
.end method
