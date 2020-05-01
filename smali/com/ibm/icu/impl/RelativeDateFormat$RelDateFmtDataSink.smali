.class final Lcom/ibm/icu/impl/RelativeDateFormat$RelDateFmtDataSink;
.super Lcom/ibm/icu/impl/UResource$Sink;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/impl/RelativeDateFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "RelDateFmtDataSink"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ibm/icu/impl/RelativeDateFormat;


# direct methods
.method private constructor <init>(Lcom/ibm/icu/impl/RelativeDateFormat;)V
    .locals 0

    .line 248
    iput-object p1, p0, Lcom/ibm/icu/impl/RelativeDateFormat$RelDateFmtDataSink;->this$0:Lcom/ibm/icu/impl/RelativeDateFormat;

    invoke-direct {p0}, Lcom/ibm/icu/impl/UResource$Sink;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ibm/icu/impl/RelativeDateFormat;Lcom/ibm/icu/impl/RelativeDateFormat$1;)V
    .locals 0

    .line 248
    invoke-direct {p0, p1}, Lcom/ibm/icu/impl/RelativeDateFormat$RelDateFmtDataSink;-><init>(Lcom/ibm/icu/impl/RelativeDateFormat;)V

    return-void
.end method


# virtual methods
.method public put(Lcom/ibm/icu/impl/UResource$Key;Lcom/ibm/icu/impl/UResource$Value;Z)V
    .locals 4

    .line 252
    invoke-virtual {p2}, Lcom/ibm/icu/impl/UResource$Value;->getType()I

    move-result p3

    const/4 v0, 0x3

    if-ne p3, v0, :cond_0

    return-void

    .line 256
    :cond_0
    invoke-virtual {p2}, Lcom/ibm/icu/impl/UResource$Value;->getTable()Lcom/ibm/icu/impl/UResource$Table;

    move-result-object p3

    const/4 v0, 0x0

    .line 257
    :goto_0
    invoke-interface {p3, v0, p1, p2}, Lcom/ibm/icu/impl/UResource$Table;->getKeyAndValue(ILcom/ibm/icu/impl/UResource$Key;Lcom/ibm/icu/impl/UResource$Value;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 261
    :try_start_0
    invoke-virtual {p1}, Lcom/ibm/icu/impl/UResource$Key;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 268
    iget-object v2, p0, Lcom/ibm/icu/impl/RelativeDateFormat$RelDateFmtDataSink;->this$0:Lcom/ibm/icu/impl/RelativeDateFormat;

    invoke-static {v2, v1}, Lcom/ibm/icu/impl/RelativeDateFormat;->access$000(Lcom/ibm/icu/impl/RelativeDateFormat;I)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    .line 269
    new-instance v2, Lcom/ibm/icu/impl/RelativeDateFormat$URelativeString;

    invoke-virtual {p2}, Lcom/ibm/icu/impl/UResource$Value;->getString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lcom/ibm/icu/impl/RelativeDateFormat$URelativeString;-><init>(ILjava/lang/String;)V

    .line 270
    iget-object v1, p0, Lcom/ibm/icu/impl/RelativeDateFormat$RelDateFmtDataSink;->this$0:Lcom/ibm/icu/impl/RelativeDateFormat;

    invoke-static {v1}, Lcom/ibm/icu/impl/RelativeDateFormat;->access$100(Lcom/ibm/icu/impl/RelativeDateFormat;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    :cond_2
    return-void
.end method
