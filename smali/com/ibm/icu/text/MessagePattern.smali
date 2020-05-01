.class public final Lcom/ibm/icu/text/MessagePattern;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Cloneable;
.implements Lcom/ibm/icu/util/Freezable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/text/MessagePattern$ArgType;,
        Lcom/ibm/icu/text/MessagePattern$Part;,
        Lcom/ibm/icu/text/MessagePattern$ApostropheMode;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Cloneable;",
        "Lcom/ibm/icu/util/Freezable<",
        "Lcom/ibm/icu/text/MessagePattern;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final argTypes:[Lcom/ibm/icu/text/MessagePattern$ArgType;

.field private static final defaultAposMode:Lcom/ibm/icu/text/MessagePattern$ApostropheMode;


# instance fields
.field private aposMode:Lcom/ibm/icu/text/MessagePattern$ApostropheMode;

.field private volatile frozen:Z

.field private hasArgNames:Z

.field private hasArgNumbers:Z

.field private msg:Ljava/lang/String;

.field private needsAutoQuoting:Z

.field private numericValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private parts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/ibm/icu/text/MessagePattern$Part;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "com.ibm.icu.text.MessagePattern.ApostropheMode"

    const-string v1, "DOUBLE_OPTIONAL"

    .line 1616
    invoke-static {v0, v1}, Lcom/ibm/icu/impl/ICUConfig;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1615
    invoke-static {v0}, Lcom/ibm/icu/text/MessagePattern$ApostropheMode;->valueOf(Ljava/lang/String;)Lcom/ibm/icu/text/MessagePattern$ApostropheMode;

    move-result-object v0

    sput-object v0, Lcom/ibm/icu/text/MessagePattern;->defaultAposMode:Lcom/ibm/icu/text/MessagePattern$ApostropheMode;

    .line 1618
    invoke-static {}, Lcom/ibm/icu/text/MessagePattern$ArgType;->values()[Lcom/ibm/icu/text/MessagePattern$ArgType;

    move-result-object v0

    sput-object v0, Lcom/ibm/icu/text/MessagePattern;->argTypes:[Lcom/ibm/icu/text/MessagePattern$ArgType;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1607
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ibm/icu/text/MessagePattern;->parts:Ljava/util/ArrayList;

    .line 147
    sget-object v0, Lcom/ibm/icu/text/MessagePattern;->defaultAposMode:Lcom/ibm/icu/text/MessagePattern$ApostropheMode;

    iput-object v0, p0, Lcom/ibm/icu/text/MessagePattern;->aposMode:Lcom/ibm/icu/text/MessagePattern$ApostropheMode;

    return-void
.end method

.method public constructor <init>(Lcom/ibm/icu/text/MessagePattern$ApostropheMode;)V
    .locals 1

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1607
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ibm/icu/text/MessagePattern;->parts:Ljava/util/ArrayList;

    .line 156
    iput-object p1, p0, Lcom/ibm/icu/text/MessagePattern;->aposMode:Lcom/ibm/icu/text/MessagePattern$ApostropheMode;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1607
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ibm/icu/text/MessagePattern;->parts:Ljava/util/ArrayList;

    .line 170
    sget-object v0, Lcom/ibm/icu/text/MessagePattern;->defaultAposMode:Lcom/ibm/icu/text/MessagePattern$ApostropheMode;

    iput-object v0, p0, Lcom/ibm/icu/text/MessagePattern;->aposMode:Lcom/ibm/icu/text/MessagePattern$ApostropheMode;

    .line 171
    invoke-virtual {p0, p1}, Lcom/ibm/icu/text/MessagePattern;->parse(Ljava/lang/String;)Lcom/ibm/icu/text/MessagePattern;

    return-void
.end method

.method static synthetic access$500()[Lcom/ibm/icu/text/MessagePattern$ArgType;
    .locals 1

    .line 82
    sget-object v0, Lcom/ibm/icu/text/MessagePattern;->argTypes:[Lcom/ibm/icu/text/MessagePattern$ArgType;

    return-object v0
.end method

.method private addArgDoublePart(DII)V
    .locals 2

    .line 1551
    iget-object v0, p0, Lcom/ibm/icu/text/MessagePattern;->numericValues:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 1552
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ibm/icu/text/MessagePattern;->numericValues:Ljava/util/ArrayList;

    const/4 v0, 0x0

    goto :goto_0

    .line 1555
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x7fff

    if-gt v0, v1, :cond_1

    .line 1560
    :goto_0
    iget-object v1, p0, Lcom/ibm/icu/text/MessagePattern;->numericValues:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1561
    sget-object p1, Lcom/ibm/icu/text/MessagePattern$Part$Type;->ARG_DOUBLE:Lcom/ibm/icu/text/MessagePattern$Part$Type;

    invoke-direct {p0, p1, p3, p4, v0}, Lcom/ibm/icu/text/MessagePattern;->addPart(Lcom/ibm/icu/text/MessagePattern$Part$Type;III)V

    return-void

    .line 1557
    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "Too many numeric values"

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private addLimitPart(ILcom/ibm/icu/text/MessagePattern$Part$Type;III)V
    .locals 1

    .line 1545
    iget-object v0, p0, Lcom/ibm/icu/text/MessagePattern;->parts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ibm/icu/text/MessagePattern$Part;

    iget-object v0, p0, Lcom/ibm/icu/text/MessagePattern;->parts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {p1, v0}, Lcom/ibm/icu/text/MessagePattern$Part;->access$402(Lcom/ibm/icu/text/MessagePattern$Part;I)I

    .line 1546
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/ibm/icu/text/MessagePattern;->addPart(Lcom/ibm/icu/text/MessagePattern$Part$Type;III)V

    return-void
.end method

.method private addPart(Lcom/ibm/icu/text/MessagePattern$Part$Type;III)V
    .locals 8

    .line 1541
    iget-object v0, p0, Lcom/ibm/icu/text/MessagePattern;->parts:Ljava/util/ArrayList;

    new-instance v7, Lcom/ibm/icu/text/MessagePattern$Part;

    const/4 v6, 0x0

    move-object v1, v7

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v1 .. v6}, Lcom/ibm/icu/text/MessagePattern$Part;-><init>(Lcom/ibm/icu/text/MessagePattern$Part$Type;IIILcom/ibm/icu/text/MessagePattern$1;)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static appendReducedApostrophes(Ljava/lang/String;IILjava/lang/StringBuilder;)V
    .locals 4

    const/4 v0, -0x1

    :goto_0
    const/4 v1, -0x1

    :goto_1
    const/16 v2, 0x27

    .line 1430
    invoke-virtual {p0, v2, p1}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    if-ltz v3, :cond_2

    if-lt v3, p2, :cond_0

    goto :goto_2

    :cond_0
    if-ne v3, v1, :cond_1

    .line 1437
    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 1442
    :cond_1
    invoke-virtual {p3, p0, p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    move p1, v3

    move v1, p1

    goto :goto_1

    .line 1432
    :cond_2
    :goto_2
    invoke-virtual {p3, p0, p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    return-void
.end method

.method private inMessageFormatPattern(I)Z
    .locals 2

    const/4 v0, 0x0

    if-gtz p1, :cond_0

    .line 1526
    iget-object p1, p0, Lcom/ibm/icu/text/MessagePattern;->parts:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ibm/icu/text/MessagePattern$Part;

    invoke-static {p1}, Lcom/ibm/icu/text/MessagePattern$Part;->access$200(Lcom/ibm/icu/text/MessagePattern$Part;)Lcom/ibm/icu/text/MessagePattern$Part$Type;

    move-result-object p1

    sget-object v1, Lcom/ibm/icu/text/MessagePattern$Part$Type;->MSG_START:Lcom/ibm/icu/text/MessagePattern$Part$Type;

    if-ne p1, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private inTopLevelChoiceMessage(ILcom/ibm/icu/text/MessagePattern$ArgType;)Z
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 1534
    sget-object p1, Lcom/ibm/icu/text/MessagePattern$ArgType;->CHOICE:Lcom/ibm/icu/text/MessagePattern$ArgType;

    if-ne p2, p1, :cond_0

    iget-object p1, p0, Lcom/ibm/icu/text/MessagePattern;->parts:Ljava/util/ArrayList;

    .line 1537
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ibm/icu/text/MessagePattern$Part;

    invoke-static {p1}, Lcom/ibm/icu/text/MessagePattern$Part;->access$200(Lcom/ibm/icu/text/MessagePattern$Part;)Lcom/ibm/icu/text/MessagePattern$Part$Type;

    move-result-object p1

    sget-object p2, Lcom/ibm/icu/text/MessagePattern$Part$Type;->MSG_START:Lcom/ibm/icu/text/MessagePattern$Part$Type;

    if-eq p1, p2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private static isArgTypeChar(I)Z
    .locals 1

    const/16 v0, 0x61

    if-gt v0, p0, :cond_0

    const/16 v0, 0x7a

    if-le p0, v0, :cond_1

    :cond_0
    const/16 v0, 0x41

    if-gt v0, p0, :cond_2

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isChoice(I)Z
    .locals 4

    .line 1478
    iget-object v0, p0, Lcom/ibm/icu/text/MessagePattern;->msg:Ljava/lang/String;

    add-int/lit8 v1, p1, 0x1

    .line 1479
    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 v0, 0x43

    const/16 v2, 0x63

    if-eq p1, v2, :cond_0

    if-ne p1, v0, :cond_5

    :cond_0
    iget-object p1, p0, Lcom/ibm/icu/text/MessagePattern;->msg:Ljava/lang/String;

    add-int/lit8 v3, v1, 0x1

    .line 1480
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 v1, 0x68

    if-eq p1, v1, :cond_1

    const/16 v1, 0x48

    if-ne p1, v1, :cond_5

    :cond_1
    iget-object p1, p0, Lcom/ibm/icu/text/MessagePattern;->msg:Ljava/lang/String;

    add-int/lit8 v1, v3, 0x1

    .line 1481
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 v3, 0x6f

    if-eq p1, v3, :cond_2

    const/16 v3, 0x4f

    if-ne p1, v3, :cond_5

    :cond_2
    iget-object p1, p0, Lcom/ibm/icu/text/MessagePattern;->msg:Ljava/lang/String;

    add-int/lit8 v3, v1, 0x1

    .line 1482
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 v1, 0x69

    if-eq p1, v1, :cond_3

    const/16 v1, 0x49

    if-ne p1, v1, :cond_5

    :cond_3
    iget-object p1, p0, Lcom/ibm/icu/text/MessagePattern;->msg:Ljava/lang/String;

    add-int/lit8 v1, v3, 0x1

    .line 1483
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result p1

    if-eq p1, v2, :cond_4

    if-ne p1, v0, :cond_5

    :cond_4
    iget-object p1, p0, Lcom/ibm/icu/text/MessagePattern;->msg:Ljava/lang/String;

    .line 1484
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 v0, 0x65

    if-eq p1, v0, :cond_6

    const/16 v0, 0x45

    if-ne p1, v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 p1, 0x0

    goto :goto_1

    :cond_6
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private isOrdinal(I)Z
    .locals 2

    .line 1511
    iget-object v0, p0, Lcom/ibm/icu/text/MessagePattern;->msg:Ljava/lang/String;

    add-int/lit8 v1, p1, 0x1

    .line 1512
    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 v0, 0x6f

    if-eq p1, v0, :cond_0

    const/16 v0, 0x4f

    if-ne p1, v0, :cond_6

    :cond_0
    iget-object p1, p0, Lcom/ibm/icu/text/MessagePattern;->msg:Ljava/lang/String;

    add-int/lit8 v0, v1, 0x1

    .line 1513
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 v1, 0x72

    if-eq p1, v1, :cond_1

    const/16 v1, 0x52

    if-ne p1, v1, :cond_6

    :cond_1
    iget-object p1, p0, Lcom/ibm/icu/text/MessagePattern;->msg:Ljava/lang/String;

    add-int/lit8 v1, v0, 0x1

    .line 1514
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 v0, 0x64

    if-eq p1, v0, :cond_2

    const/16 v0, 0x44

    if-ne p1, v0, :cond_6

    :cond_2
    iget-object p1, p0, Lcom/ibm/icu/text/MessagePattern;->msg:Ljava/lang/String;

    add-int/lit8 v0, v1, 0x1

    .line 1515
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 v1, 0x69

    if-eq p1, v1, :cond_3

    const/16 v1, 0x49

    if-ne p1, v1, :cond_6

    :cond_3
    iget-object p1, p0, Lcom/ibm/icu/text/MessagePattern;->msg:Ljava/lang/String;

    add-int/lit8 v1, v0, 0x1

    .line 1516
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 v0, 0x6e

    if-eq p1, v0, :cond_4

    const/16 v0, 0x4e

    if-ne p1, v0, :cond_6

    :cond_4
    iget-object p1, p0, Lcom/ibm/icu/text/MessagePattern;->msg:Ljava/lang/String;

    add-int/lit8 v0, v1, 0x1

    .line 1517
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 v1, 0x61

    if-eq p1, v1, :cond_5

    const/16 v1, 0x41

    if-ne p1, v1, :cond_6

    :cond_5
    iget-object p1, p0, Lcom/ibm/icu/text/MessagePattern;->msg:Ljava/lang/String;

    .line 1518
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 v0, 0x6c

    if-eq p1, v0, :cond_7

    const/16 v0, 0x4c

    if-ne p1, v0, :cond_6

    goto :goto_0

    :cond_6
    const/4 p1, 0x0

    goto :goto_1

    :cond_7
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private isPlural(I)Z
    .locals 4

    .line 1489
    iget-object v0, p0, Lcom/ibm/icu/text/MessagePattern;->msg:Ljava/lang/String;

    add-int/lit8 v1, p1, 0x1

    .line 1490
    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 v0, 0x70

    if-eq p1, v0, :cond_0

    const/16 v0, 0x50

    if-ne p1, v0, :cond_5

    :cond_0
    iget-object p1, p0, Lcom/ibm/icu/text/MessagePattern;->msg:Ljava/lang/String;

    add-int/lit8 v0, v1, 0x1

    .line 1491
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 v1, 0x4c

    const/16 v2, 0x6c

    if-eq p1, v2, :cond_1

    if-ne p1, v1, :cond_5

    :cond_1
    iget-object p1, p0, Lcom/ibm/icu/text/MessagePattern;->msg:Ljava/lang/String;

    add-int/lit8 v3, v0, 0x1

    .line 1492
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 v0, 0x75

    if-eq p1, v0, :cond_2

    const/16 v0, 0x55

    if-ne p1, v0, :cond_5

    :cond_2
    iget-object p1, p0, Lcom/ibm/icu/text/MessagePattern;->msg:Ljava/lang/String;

    add-int/lit8 v0, v3, 0x1

    .line 1493
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 v3, 0x72

    if-eq p1, v3, :cond_3

    const/16 v3, 0x52

    if-ne p1, v3, :cond_5

    :cond_3
    iget-object p1, p0, Lcom/ibm/icu/text/MessagePattern;->msg:Ljava/lang/String;

    add-int/lit8 v3, v0, 0x1

    .line 1494
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 v0, 0x61

    if-eq p1, v0, :cond_4

    const/16 v0, 0x41

    if-ne p1, v0, :cond_5

    :cond_4
    iget-object p1, p0, Lcom/ibm/icu/text/MessagePattern;->msg:Ljava/lang/String;

    .line 1495
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result p1

    if-eq p1, v2, :cond_6

    if-ne p1, v1, :cond_5

    goto :goto_0

    :cond_5
    const/4 p1, 0x0

    goto :goto_1

    :cond_6
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private isSelect(I)Z
    .locals 4

    .line 1500
    iget-object v0, p0, Lcom/ibm/icu/text/MessagePattern;->msg:Ljava/lang/String;

    add-int/lit8 v1, p1, 0x1

    .line 1501
    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 v0, 0x73

    if-eq p1, v0, :cond_0

    const/16 v0, 0x53

    if-ne p1, v0, :cond_5

    :cond_0
    iget-object p1, p0, Lcom/ibm/icu/text/MessagePattern;->msg:Ljava/lang/String;

    add-int/lit8 v0, v1, 0x1

    .line 1502
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 v1, 0x45

    const/16 v2, 0x65

    if-eq p1, v2, :cond_1

    if-ne p1, v1, :cond_5

    :cond_1
    iget-object p1, p0, Lcom/ibm/icu/text/MessagePattern;->msg:Ljava/lang/String;

    add-int/lit8 v3, v0, 0x1

    .line 1503
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 v0, 0x6c

    if-eq p1, v0, :cond_2

    const/16 v0, 0x4c

    if-ne p1, v0, :cond_5

    :cond_2
    iget-object p1, p0, Lcom/ibm/icu/text/MessagePattern;->msg:Ljava/lang/String;

    add-int/lit8 v0, v3, 0x1

    .line 1504
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result p1

    if-eq p1, v2, :cond_3

    if-ne p1, v1, :cond_5

    :cond_3
    iget-object p1, p0, Lcom/ibm/icu/text/MessagePattern;->msg:Ljava/lang/String;

    add-int/lit8 v1, v0, 0x1

    .line 1505
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 v0, 0x63

    if-eq p1, v0, :cond_4

    const/16 v0, 0x43

    if-ne p1, v0, :cond_5

    :cond_4
    iget-object p1, p0, Lcom/ibm/icu/text/MessagePattern;->msg:Ljava/lang/String;

    .line 1506
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 v0, 0x74

    if-eq p1, v0, :cond_6

    const/16 v0, 0x54

    if-ne p1, v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 p1, 0x0

    goto :goto_1

    :cond_6
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private parseArg(III)I
    .locals 11

    .line 1020
    iget-object v0, p0, Lcom/ibm/icu/text/MessagePattern;->parts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1021
    sget-object v0, Lcom/ibm/icu/text/MessagePattern$ArgType;->NONE:Lcom/ibm/icu/text/MessagePattern$ArgType;

    .line 1022
    sget-object v1, Lcom/ibm/icu/text/MessagePattern$Part$Type;->ARG_START:Lcom/ibm/icu/text/MessagePattern$Part$Type;

    invoke-virtual {v0}, Lcom/ibm/icu/text/MessagePattern$ArgType;->ordinal()I

    move-result v3

    invoke-direct {p0, v1, p1, p2, v3}, Lcom/ibm/icu/text/MessagePattern;->addPart(Lcom/ibm/icu/text/MessagePattern$Part$Type;III)V

    add-int/2addr p1, p2

    .line 1023
    invoke-direct {p0, p1}, Lcom/ibm/icu/text/MessagePattern;->skipWhiteSpace(I)I

    move-result p1

    .line 1024
    iget-object p2, p0, Lcom/ibm/icu/text/MessagePattern;->msg:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    const-string v1, "Unmatched \'{\' braces in message "

    if-eq p1, p2, :cond_15

    .line 1029
    invoke-direct {p0, p1}, Lcom/ibm/icu/text/MessagePattern;->skipIdentifier(I)I

    move-result p2

    .line 1030
    invoke-direct {p0, p1, p2}, Lcom/ibm/icu/text/MessagePattern;->parseArgNumber(II)I

    move-result v3

    const/4 v4, 0x0

    const-string v5, "Bad argument syntax: "

    const v6, 0xffff

    const/4 v7, 0x1

    if-ltz v3, :cond_1

    sub-int v8, p2, p1

    if-gt v8, v6, :cond_0

    const/16 v9, 0x7fff

    if-gt v3, v9, :cond_0

    .line 1037
    iput-boolean v7, p0, Lcom/ibm/icu/text/MessagePattern;->hasArgNumbers:Z

    .line 1038
    sget-object v9, Lcom/ibm/icu/text/MessagePattern$Part$Type;->ARG_NUMBER:Lcom/ibm/icu/text/MessagePattern$Part$Type;

    invoke-direct {p0, v9, p1, v8, v3}, Lcom/ibm/icu/text/MessagePattern;->addPart(Lcom/ibm/icu/text/MessagePattern$Part$Type;III)V

    goto :goto_0

    .line 1034
    :cond_0
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Argument number too large: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1035
    invoke-direct {p0, p1}, Lcom/ibm/icu/text/MessagePattern;->prefix(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    const/4 v8, -0x1

    if-ne v3, v8, :cond_14

    sub-int v3, p2, p1

    if-gt v3, v6, :cond_13

    .line 1045
    iput-boolean v7, p0, Lcom/ibm/icu/text/MessagePattern;->hasArgNames:Z

    .line 1046
    sget-object v8, Lcom/ibm/icu/text/MessagePattern$Part$Type;->ARG_NAME:Lcom/ibm/icu/text/MessagePattern$Part$Type;

    invoke-direct {p0, v8, p1, v3, v4}, Lcom/ibm/icu/text/MessagePattern;->addPart(Lcom/ibm/icu/text/MessagePattern$Part$Type;III)V

    .line 1050
    :goto_0
    invoke-direct {p0, p2}, Lcom/ibm/icu/text/MessagePattern;->skipWhiteSpace(I)I

    move-result p2

    .line 1051
    iget-object v3, p0, Lcom/ibm/icu/text/MessagePattern;->msg:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eq p2, v3, :cond_12

    .line 1055
    iget-object v3, p0, Lcom/ibm/icu/text/MessagePattern;->msg:Ljava/lang/String;

    invoke-virtual {v3, p2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v8, 0x7d

    if-ne v3, v8, :cond_2

    move p1, p2

    goto/16 :goto_3

    :cond_2
    const/16 v0, 0x2c

    if-ne v3, v0, :cond_11

    add-int/lit8 p2, p2, 0x1

    .line 1062
    invoke-direct {p0, p2}, Lcom/ibm/icu/text/MessagePattern;->skipWhiteSpace(I)I

    move-result p2

    move v3, p2

    .line 1063
    :goto_1
    iget-object v9, p0, Lcom/ibm/icu/text/MessagePattern;->msg:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v3, v9, :cond_3

    iget-object v9, p0, Lcom/ibm/icu/text/MessagePattern;->msg:Ljava/lang/String;

    invoke-virtual {v9, v3}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-static {v9}, Lcom/ibm/icu/text/MessagePattern;->isArgTypeChar(I)Z

    move-result v9

    if-eqz v9, :cond_3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    sub-int v9, v3, p2

    .line 1067
    invoke-direct {p0, v3}, Lcom/ibm/icu/text/MessagePattern;->skipWhiteSpace(I)I

    move-result v3

    .line 1068
    iget-object v10, p0, Lcom/ibm/icu/text/MessagePattern;->msg:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-eq v3, v10, :cond_10

    if-eqz v9, :cond_f

    .line 1072
    iget-object v1, p0, Lcom/ibm/icu/text/MessagePattern;->msg:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, v0, :cond_4

    if-ne v1, v8, :cond_f

    :cond_4
    if-gt v9, v6, :cond_e

    .line 1079
    sget-object v0, Lcom/ibm/icu/text/MessagePattern$ArgType;->SIMPLE:Lcom/ibm/icu/text/MessagePattern$ArgType;

    const/4 v5, 0x6

    if-ne v9, v5, :cond_7

    .line 1082
    invoke-direct {p0, p2}, Lcom/ibm/icu/text/MessagePattern;->isChoice(I)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1083
    sget-object v0, Lcom/ibm/icu/text/MessagePattern$ArgType;->CHOICE:Lcom/ibm/icu/text/MessagePattern$ArgType;

    goto :goto_2

    .line 1084
    :cond_5
    invoke-direct {p0, p2}, Lcom/ibm/icu/text/MessagePattern;->isPlural(I)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1085
    sget-object v0, Lcom/ibm/icu/text/MessagePattern$ArgType;->PLURAL:Lcom/ibm/icu/text/MessagePattern$ArgType;

    goto :goto_2

    .line 1086
    :cond_6
    invoke-direct {p0, p2}, Lcom/ibm/icu/text/MessagePattern;->isSelect(I)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1087
    sget-object v0, Lcom/ibm/icu/text/MessagePattern$ArgType;->SELECT:Lcom/ibm/icu/text/MessagePattern$ArgType;

    goto :goto_2

    :cond_7
    const/16 v5, 0xd

    if-ne v9, v5, :cond_8

    .line 1090
    invoke-direct {p0, p2}, Lcom/ibm/icu/text/MessagePattern;->isSelect(I)Z

    move-result v5

    if-eqz v5, :cond_8

    add-int/lit8 v5, p2, 0x6

    invoke-direct {p0, v5}, Lcom/ibm/icu/text/MessagePattern;->isOrdinal(I)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1091
    sget-object v0, Lcom/ibm/icu/text/MessagePattern$ArgType;->SELECTORDINAL:Lcom/ibm/icu/text/MessagePattern$ArgType;

    .line 1095
    :cond_8
    :goto_2
    iget-object v5, p0, Lcom/ibm/icu/text/MessagePattern;->parts:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/ibm/icu/text/MessagePattern$Part;

    invoke-virtual {v0}, Lcom/ibm/icu/text/MessagePattern$ArgType;->ordinal()I

    move-result v6

    int-to-short v6, v6

    invoke-static {v5, v6}, Lcom/ibm/icu/text/MessagePattern$Part;->access$102(Lcom/ibm/icu/text/MessagePattern$Part;S)S

    .line 1096
    sget-object v5, Lcom/ibm/icu/text/MessagePattern$ArgType;->SIMPLE:Lcom/ibm/icu/text/MessagePattern$ArgType;

    if-ne v0, v5, :cond_9

    .line 1097
    sget-object v5, Lcom/ibm/icu/text/MessagePattern$Part$Type;->ARG_TYPE:Lcom/ibm/icu/text/MessagePattern$Part$Type;

    invoke-direct {p0, v5, p2, v9, v4}, Lcom/ibm/icu/text/MessagePattern;->addPart(Lcom/ibm/icu/text/MessagePattern$Part$Type;III)V

    :cond_9
    if-ne v1, v8, :cond_b

    .line 1101
    sget-object p2, Lcom/ibm/icu/text/MessagePattern$ArgType;->SIMPLE:Lcom/ibm/icu/text/MessagePattern$ArgType;

    if-ne v0, p2, :cond_a

    move p1, v3

    goto :goto_3

    .line 1102
    :cond_a
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "No style field for complex argument: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1103
    invoke-direct {p0, p1}, Lcom/ibm/icu/text/MessagePattern;->prefix(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_b
    add-int/lit8 v3, v3, 0x1

    .line 1107
    sget-object p1, Lcom/ibm/icu/text/MessagePattern$ArgType;->SIMPLE:Lcom/ibm/icu/text/MessagePattern$ArgType;

    if-ne v0, p1, :cond_c

    .line 1108
    invoke-direct {p0, v3}, Lcom/ibm/icu/text/MessagePattern;->parseSimpleStyle(I)I

    move-result p1

    goto :goto_3

    .line 1109
    :cond_c
    sget-object p1, Lcom/ibm/icu/text/MessagePattern$ArgType;->CHOICE:Lcom/ibm/icu/text/MessagePattern$ArgType;

    if-ne v0, p1, :cond_d

    .line 1110
    invoke-direct {p0, v3, p3}, Lcom/ibm/icu/text/MessagePattern;->parseChoiceStyle(II)I

    move-result p1

    goto :goto_3

    .line 1112
    :cond_d
    invoke-direct {p0, v0, v3, p3}, Lcom/ibm/icu/text/MessagePattern;->parsePluralOrSelectStyle(Lcom/ibm/icu/text/MessagePattern$ArgType;II)I

    move-result p1

    .line 1117
    :goto_3
    sget-object v3, Lcom/ibm/icu/text/MessagePattern$Part$Type;->ARG_LIMIT:Lcom/ibm/icu/text/MessagePattern$Part$Type;

    const/4 v5, 0x1

    invoke-virtual {v0}, Lcom/ibm/icu/text/MessagePattern$ArgType;->ordinal()I

    move-result v6

    move-object v1, p0

    move v4, p1

    invoke-direct/range {v1 .. v6}, Lcom/ibm/icu/text/MessagePattern;->addLimitPart(ILcom/ibm/icu/text/MessagePattern$Part$Type;III)V

    add-int/2addr p1, v7

    return p1

    .line 1076
    :cond_e
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Argument type name too long: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1077
    invoke-direct {p0, p1}, Lcom/ibm/icu/text/MessagePattern;->prefix(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 1073
    :cond_f
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/ibm/icu/text/MessagePattern;->prefix(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 1069
    :cond_10
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1070
    invoke-direct {p0}, Lcom/ibm/icu/text/MessagePattern;->prefix()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1059
    :cond_11
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/ibm/icu/text/MessagePattern;->prefix(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 1052
    :cond_12
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1053
    invoke-direct {p0}, Lcom/ibm/icu/text/MessagePattern;->prefix()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1042
    :cond_13
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Argument name too long: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1043
    invoke-direct {p0, p1}, Lcom/ibm/icu/text/MessagePattern;->prefix(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 1048
    :cond_14
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/ibm/icu/text/MessagePattern;->prefix(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 1025
    :cond_15
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1026
    invoke-direct {p0}, Lcom/ibm/icu/text/MessagePattern;->prefix()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private parseArgNumber(II)I
    .locals 1

    .line 1360
    iget-object v0, p0, Lcom/ibm/icu/text/MessagePattern;->msg:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Lcom/ibm/icu/text/MessagePattern;->parseArgNumber(Ljava/lang/CharSequence;II)I

    move-result p1

    return p1
.end method

.method private static parseArgNumber(Ljava/lang/CharSequence;II)I
    .locals 9

    const/4 v0, -0x2

    if-lt p1, p2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, p1, 0x1

    .line 1326
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    const/16 v2, 0x39

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/16 v5, 0x30

    const/4 v6, 0x1

    if-ne p1, v5, :cond_2

    if-ne v1, p2, :cond_1

    return v4

    :cond_1
    const/4 p1, 0x0

    const/4 v4, 0x1

    goto :goto_0

    :cond_2
    const/16 v7, 0x31

    if-gt v7, p1, :cond_7

    if-gt p1, v2, :cond_7

    sub-int/2addr p1, v5

    :goto_0
    if-ge v1, p2, :cond_5

    add-int/lit8 v7, v1, 0x1

    .line 1341
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    if-gt v5, v1, :cond_4

    if-gt v1, v2, :cond_4

    const v8, 0xccccccc

    if-lt p1, v8, :cond_3

    const/4 v4, 0x1

    :cond_3
    mul-int/lit8 p1, p1, 0xa

    add-int/lit8 v1, v1, -0x30

    add-int/2addr p1, v1

    move v1, v7

    goto :goto_0

    :cond_4
    return v3

    :cond_5
    if-eqz v4, :cond_6

    return v0

    :cond_6
    return p1

    :cond_7
    return v3
.end method

.method private parseChoiceStyle(II)I
    .locals 6

    .line 1159
    invoke-direct {p0, p1}, Lcom/ibm/icu/text/MessagePattern;->skipWhiteSpace(I)I

    move-result v0

    .line 1160
    iget-object v1, p0, Lcom/ibm/icu/text/MessagePattern;->msg:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eq v0, v1, :cond_8

    iget-object v1, p0, Lcom/ibm/icu/text/MessagePattern;->msg:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x7d

    if-eq v1, v2, :cond_8

    .line 1168
    :goto_0
    invoke-direct {p0, v0}, Lcom/ibm/icu/text/MessagePattern;->skipDouble(I)I

    move-result v1

    sub-int v3, v1, v0

    const-string v4, "Bad choice pattern syntax: "

    if-eqz v3, :cond_7

    const v5, 0xffff

    if-gt v3, v5, :cond_6

    const/4 v3, 0x1

    .line 1177
    invoke-direct {p0, v0, v1, v3}, Lcom/ibm/icu/text/MessagePattern;->parseDouble(IIZ)V

    .line 1179
    invoke-direct {p0, v1}, Lcom/ibm/icu/text/MessagePattern;->skipWhiteSpace(I)I

    move-result v0

    .line 1180
    iget-object v1, p0, Lcom/ibm/icu/text/MessagePattern;->msg:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eq v0, v1, :cond_5

    .line 1183
    iget-object v1, p0, Lcom/ibm/icu/text/MessagePattern;->msg:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v5, 0x23

    if-eq v1, v5, :cond_1

    const/16 v5, 0x3c

    if-eq v1, v5, :cond_1

    const/16 v5, 0x2264

    if-ne v1, v5, :cond_0

    goto :goto_1

    .line 1185
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected choice separator (#<\u2264) instead of \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "\' in choice pattern "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1187
    invoke-direct {p0, p1}, Lcom/ibm/icu/text/MessagePattern;->prefix(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 1189
    :cond_1
    :goto_1
    sget-object v1, Lcom/ibm/icu/text/MessagePattern$Part$Type;->ARG_SELECTOR:Lcom/ibm/icu/text/MessagePattern$Part$Type;

    const/4 v5, 0x0

    invoke-direct {p0, v1, v0, v3, v5}, Lcom/ibm/icu/text/MessagePattern;->addPart(Lcom/ibm/icu/text/MessagePattern$Part$Type;III)V

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, p2, 0x1

    .line 1191
    sget-object v3, Lcom/ibm/icu/text/MessagePattern$ArgType;->CHOICE:Lcom/ibm/icu/text/MessagePattern$ArgType;

    invoke-direct {p0, v0, v5, v1, v3}, Lcom/ibm/icu/text/MessagePattern;->parseMessage(IIILcom/ibm/icu/text/MessagePattern$ArgType;)I

    move-result v0

    .line 1193
    iget-object v1, p0, Lcom/ibm/icu/text/MessagePattern;->msg:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v0, v1, :cond_2

    return v0

    .line 1196
    :cond_2
    iget-object v1, p0, Lcom/ibm/icu/text/MessagePattern;->msg:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_4

    .line 1197
    invoke-direct {p0, p2}, Lcom/ibm/icu/text/MessagePattern;->inMessageFormatPattern(I)Z

    move-result p2

    if-eqz p2, :cond_3

    return v0

    .line 1198
    :cond_3
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1199
    invoke-direct {p0, p1}, Lcom/ibm/icu/text/MessagePattern;->prefix(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_4
    add-int/lit8 v0, v0, 0x1

    .line 1203
    invoke-direct {p0, v0}, Lcom/ibm/icu/text/MessagePattern;->skipWhiteSpace(I)I

    move-result v0

    goto/16 :goto_0

    .line 1181
    :cond_5
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/ibm/icu/text/MessagePattern;->prefix(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 1174
    :cond_6
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Choice number too long: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1175
    invoke-direct {p0, v0}, Lcom/ibm/icu/text/MessagePattern;->prefix(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1171
    :cond_7
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/ibm/icu/text/MessagePattern;->prefix(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 1161
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Missing choice argument pattern in "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1162
    invoke-direct {p0}, Lcom/ibm/icu/text/MessagePattern;->prefix()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private parseDouble(IIZ)V
    .locals 5

    .line 1377
    iget-object v0, p0, Lcom/ibm/icu/text/MessagePattern;->msg:Ljava/lang/String;

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x2d

    const/4 v3, 0x0

    if-ne v0, v2, :cond_0

    if-eq v1, p2, :cond_3

    .line 1383
    iget-object v0, p0, Lcom/ibm/icu/text/MessagePattern;->msg:Ljava/lang/String;

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    const/16 v2, 0x2b

    if-ne v0, v2, :cond_1

    if-eq v1, p2, :cond_3

    .line 1388
    iget-object v0, p0, Lcom/ibm/icu/text/MessagePattern;->msg:Ljava/lang/String;

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    const/4 v1, 0x0

    :goto_1
    const/16 v4, 0x221e

    if-ne v0, v4, :cond_4

    if-eqz p3, :cond_3

    if-ne v2, p2, :cond_3

    if-eqz v1, :cond_2

    const-wide/high16 v0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    goto :goto_2

    :cond_2
    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    :goto_2
    sub-int/2addr p2, p1

    .line 1392
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/ibm/icu/text/MessagePattern;->addArgDoublePart(DII)V

    return-void

    .line 1417
    :cond_3
    new-instance p3, Ljava/lang/NumberFormatException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bad syntax for numeric value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ibm/icu/text/MessagePattern;->msg:Ljava/lang/String;

    .line 1418
    invoke-virtual {v1, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p3

    :cond_4
    :goto_3
    const/16 p3, 0x30

    if-gt p3, v0, :cond_8

    const/16 p3, 0x39

    if-gt v0, p3, :cond_8

    mul-int/lit8 v3, v3, 0xa

    add-int/lit8 v0, v0, -0x30

    add-int/2addr v3, v0

    add-int/lit16 p3, v1, 0x7fff

    if-le v3, p3, :cond_5

    goto :goto_4

    :cond_5
    if-ne v2, p2, :cond_7

    .line 1407
    sget-object p3, Lcom/ibm/icu/text/MessagePattern$Part$Type;->ARG_INT:Lcom/ibm/icu/text/MessagePattern$Part$Type;

    sub-int/2addr p2, p1

    if-eqz v1, :cond_6

    neg-int v3, v3

    :cond_6
    invoke-direct {p0, p3, p1, p2, v3}, Lcom/ibm/icu/text/MessagePattern;->addPart(Lcom/ibm/icu/text/MessagePattern$Part$Type;III)V

    return-void

    .line 1410
    :cond_7
    iget-object p3, p0, Lcom/ibm/icu/text/MessagePattern;->msg:Ljava/lang/String;

    add-int/lit8 v0, v2, 0x1

    invoke-virtual {p3, v2}, Ljava/lang/String;->charAt(I)C

    move-result p3

    move v2, v0

    move v0, p3

    goto :goto_3

    .line 1413
    :cond_8
    :goto_4
    iget-object p3, p0, Lcom/ibm/icu/text/MessagePattern;->msg:Ljava/lang/String;

    invoke-virtual {p3, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    sub-int/2addr p2, p1

    .line 1414
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/ibm/icu/text/MessagePattern;->addArgDoublePart(DII)V

    return-void
.end method

.method private parseMessage(IIILcom/ibm/icu/text/MessagePattern$ArgType;)I
    .locals 10

    const/16 v0, 0x7fff

    if-gt p3, v0, :cond_12

    .line 937
    iget-object v0, p0, Lcom/ibm/icu/text/MessagePattern;->parts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 938
    sget-object v0, Lcom/ibm/icu/text/MessagePattern$Part$Type;->MSG_START:Lcom/ibm/icu/text/MessagePattern$Part$Type;

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/ibm/icu/text/MessagePattern;->addPart(Lcom/ibm/icu/text/MessagePattern$Part$Type;III)V

    add-int/2addr p1, p2

    .line 940
    :goto_0
    iget-object p2, p0, Lcom/ibm/icu/text/MessagePattern;->msg:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    if-ge p1, p2, :cond_f

    .line 941
    iget-object p2, p0, Lcom/ibm/icu/text/MessagePattern;->msg:Ljava/lang/String;

    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p2, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 p2, 0x7c

    const/16 v1, 0x23

    const/16 v3, 0x7b

    const/16 v4, 0x7d

    const/16 v5, 0x27

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-ne p1, v5, :cond_7

    .line 943
    iget-object p1, p0, Lcom/ibm/icu/text/MessagePattern;->msg:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-ne v0, p1, :cond_0

    .line 946
    sget-object p1, Lcom/ibm/icu/text/MessagePattern$Part$Type;->INSERT_CHAR:Lcom/ibm/icu/text/MessagePattern$Part$Type;

    invoke-direct {p0, p1, v0, v6, v5}, Lcom/ibm/icu/text/MessagePattern;->addPart(Lcom/ibm/icu/text/MessagePattern$Part$Type;III)V

    .line 947
    iput-boolean v7, p0, Lcom/ibm/icu/text/MessagePattern;->needsAutoQuoting:Z

    goto/16 :goto_4

    .line 949
    :cond_0
    iget-object p1, p0, Lcom/ibm/icu/text/MessagePattern;->msg:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    if-ne p1, v5, :cond_1

    .line 952
    sget-object p1, Lcom/ibm/icu/text/MessagePattern$Part$Type;->SKIP_SYNTAX:Lcom/ibm/icu/text/MessagePattern$Part$Type;

    add-int/lit8 p2, v0, 0x1

    invoke-direct {p0, p1, v0, v7, v6}, Lcom/ibm/icu/text/MessagePattern;->addPart(Lcom/ibm/icu/text/MessagePattern$Part$Type;III)V

    move p1, p2

    goto :goto_0

    .line 953
    :cond_1
    iget-object v8, p0, Lcom/ibm/icu/text/MessagePattern;->aposMode:Lcom/ibm/icu/text/MessagePattern$ApostropheMode;

    sget-object v9, Lcom/ibm/icu/text/MessagePattern$ApostropheMode;->DOUBLE_REQUIRED:Lcom/ibm/icu/text/MessagePattern$ApostropheMode;

    if-eq v8, v9, :cond_4

    if-eq p1, v3, :cond_4

    if-eq p1, v4, :cond_4

    sget-object v3, Lcom/ibm/icu/text/MessagePattern$ArgType;->CHOICE:Lcom/ibm/icu/text/MessagePattern$ArgType;

    if-ne p4, v3, :cond_2

    if-eq p1, p2, :cond_4

    .line 957
    :cond_2
    invoke-virtual {p4}, Lcom/ibm/icu/text/MessagePattern$ArgType;->hasPluralStyle()Z

    move-result p2

    if-eqz p2, :cond_3

    if-ne p1, v1, :cond_3

    goto :goto_1

    .line 986
    :cond_3
    sget-object p1, Lcom/ibm/icu/text/MessagePattern$Part$Type;->INSERT_CHAR:Lcom/ibm/icu/text/MessagePattern$Part$Type;

    invoke-direct {p0, p1, v0, v6, v5}, Lcom/ibm/icu/text/MessagePattern;->addPart(Lcom/ibm/icu/text/MessagePattern$Part$Type;III)V

    .line 987
    iput-boolean v7, p0, Lcom/ibm/icu/text/MessagePattern;->needsAutoQuoting:Z

    goto/16 :goto_4

    .line 960
    :cond_4
    :goto_1
    sget-object p1, Lcom/ibm/icu/text/MessagePattern$Part$Type;->SKIP_SYNTAX:Lcom/ibm/icu/text/MessagePattern$Part$Type;

    add-int/lit8 p2, v0, -0x1

    invoke-direct {p0, p1, p2, v7, v6}, Lcom/ibm/icu/text/MessagePattern;->addPart(Lcom/ibm/icu/text/MessagePattern$Part$Type;III)V

    .line 963
    :goto_2
    iget-object p1, p0, Lcom/ibm/icu/text/MessagePattern;->msg:Ljava/lang/String;

    add-int/2addr v0, v7

    invoke-virtual {p1, v5, v0}, Ljava/lang/String;->indexOf(II)I

    move-result p1

    if-ltz p1, :cond_6

    add-int/lit8 v0, p1, 0x1

    .line 965
    iget-object p2, p0, Lcom/ibm/icu/text/MessagePattern;->msg:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    if-ge v0, p2, :cond_5

    iget-object p2, p0, Lcom/ibm/icu/text/MessagePattern;->msg:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result p2

    if-ne p2, v5, :cond_5

    .line 968
    sget-object p1, Lcom/ibm/icu/text/MessagePattern$Part$Type;->SKIP_SYNTAX:Lcom/ibm/icu/text/MessagePattern$Part$Type;

    invoke-direct {p0, p1, v0, v7, v6}, Lcom/ibm/icu/text/MessagePattern;->addPart(Lcom/ibm/icu/text/MessagePattern$Part$Type;III)V

    goto :goto_2

    .line 971
    :cond_5
    sget-object p2, Lcom/ibm/icu/text/MessagePattern$Part$Type;->SKIP_SYNTAX:Lcom/ibm/icu/text/MessagePattern$Part$Type;

    invoke-direct {p0, p2, p1, v7, v6}, Lcom/ibm/icu/text/MessagePattern;->addPart(Lcom/ibm/icu/text/MessagePattern$Part$Type;III)V

    goto :goto_4

    .line 976
    :cond_6
    iget-object p1, p0, Lcom/ibm/icu/text/MessagePattern;->msg:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    .line 978
    sget-object p2, Lcom/ibm/icu/text/MessagePattern$Part$Type;->INSERT_CHAR:Lcom/ibm/icu/text/MessagePattern$Part$Type;

    invoke-direct {p0, p2, p1, v6, v5}, Lcom/ibm/icu/text/MessagePattern;->addPart(Lcom/ibm/icu/text/MessagePattern$Part$Type;III)V

    .line 979
    iput-boolean v7, p0, Lcom/ibm/icu/text/MessagePattern;->needsAutoQuoting:Z

    goto/16 :goto_0

    .line 990
    :cond_7
    invoke-virtual {p4}, Lcom/ibm/icu/text/MessagePattern$ArgType;->hasPluralStyle()Z

    move-result v5

    if-eqz v5, :cond_8

    if-ne p1, v1, :cond_8

    .line 993
    sget-object p1, Lcom/ibm/icu/text/MessagePattern$Part$Type;->REPLACE_NUMBER:Lcom/ibm/icu/text/MessagePattern$Part$Type;

    add-int/lit8 p2, v0, -0x1

    invoke-direct {p0, p1, p2, v7, v6}, Lcom/ibm/icu/text/MessagePattern;->addPart(Lcom/ibm/icu/text/MessagePattern$Part$Type;III)V

    goto :goto_4

    :cond_8
    if-ne p1, v3, :cond_9

    add-int/lit8 v0, v0, -0x1

    .line 995
    invoke-direct {p0, v0, v7, p3}, Lcom/ibm/icu/text/MessagePattern;->parseArg(III)I

    move-result p1

    goto/16 :goto_0

    :cond_9
    if-lez p3, :cond_a

    if-eq p1, v4, :cond_b

    .line 996
    :cond_a
    sget-object v1, Lcom/ibm/icu/text/MessagePattern$ArgType;->CHOICE:Lcom/ibm/icu/text/MessagePattern$ArgType;

    if-ne p4, v1, :cond_e

    if-ne p1, p2, :cond_e

    .line 1000
    :cond_b
    sget-object p2, Lcom/ibm/icu/text/MessagePattern$ArgType;->CHOICE:Lcom/ibm/icu/text/MessagePattern$ArgType;

    if-ne p4, p2, :cond_c

    if-ne p1, v4, :cond_c

    const/4 v5, 0x0

    goto :goto_3

    :cond_c
    const/4 v5, 0x1

    .line 1001
    :goto_3
    sget-object v3, Lcom/ibm/icu/text/MessagePattern$Part$Type;->MSG_LIMIT:Lcom/ibm/icu/text/MessagePattern$Part$Type;

    add-int/lit8 p1, v0, -0x1

    move-object v1, p0

    move v4, p1

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/ibm/icu/text/MessagePattern;->addLimitPart(ILcom/ibm/icu/text/MessagePattern$Part$Type;III)V

    .line 1002
    sget-object p2, Lcom/ibm/icu/text/MessagePattern$ArgType;->CHOICE:Lcom/ibm/icu/text/MessagePattern$ArgType;

    if-ne p4, p2, :cond_d

    return p1

    :cond_d
    return v0

    :cond_e
    :goto_4
    move p1, v0

    goto/16 :goto_0

    :cond_f
    if-lez p3, :cond_11

    .line 1011
    invoke-direct {p0, p3, p4}, Lcom/ibm/icu/text/MessagePattern;->inTopLevelChoiceMessage(ILcom/ibm/icu/text/MessagePattern$ArgType;)Z

    move-result p2

    if-eqz p2, :cond_10

    goto :goto_5

    .line 1012
    :cond_10
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unmatched \'{\' braces in message "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1013
    invoke-direct {p0}, Lcom/ibm/icu/text/MessagePattern;->prefix()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1015
    :cond_11
    :goto_5
    sget-object v3, Lcom/ibm/icu/text/MessagePattern$Part$Type;->MSG_LIMIT:Lcom/ibm/icu/text/MessagePattern$Part$Type;

    const/4 v5, 0x0

    move-object v1, p0

    move v4, p1

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/ibm/icu/text/MessagePattern;->addLimitPart(ILcom/ibm/icu/text/MessagePattern$Part$Type;III)V

    return p1

    .line 935
    :cond_12
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method private parsePluralOrSelectStyle(Lcom/ibm/icu/text/MessagePattern$ArgType;II)I
    .locals 12

    const/4 v0, 0x1

    const/4 v1, 0x0

    move v2, p2

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 1215
    :goto_0
    invoke-direct {p0, v2}, Lcom/ibm/icu/text/MessagePattern;->skipWhiteSpace(I)I

    move-result v2

    .line 1216
    iget-object v5, p0, Lcom/ibm/icu/text/MessagePattern;->msg:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v2, v5, :cond_0

    const/4 v5, 0x1

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    :goto_1
    const-string v6, " pattern syntax: "

    const-string v7, "Bad "

    if-nez v5, :cond_d

    .line 1217
    iget-object v8, p0, Lcom/ibm/icu/text/MessagePattern;->msg:Ljava/lang/String;

    invoke-virtual {v8, v2}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x7d

    if-ne v8, v9, :cond_1

    goto/16 :goto_4

    .line 1233
    :cond_1
    invoke-virtual {p1}, Lcom/ibm/icu/text/MessagePattern$ArgType;->hasPluralStyle()Z

    move-result v5

    const-string v8, "Argument selector too long: "

    const v9, 0xffff

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/ibm/icu/text/MessagePattern;->msg:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v10, 0x3d

    if-ne v5, v10, :cond_4

    add-int/lit8 v4, v2, 0x1

    .line 1235
    invoke-direct {p0, v4}, Lcom/ibm/icu/text/MessagePattern;->skipDouble(I)I

    move-result v5

    sub-int v10, v5, v2

    if-eq v10, v0, :cond_3

    if-gt v10, v9, :cond_2

    .line 1247
    sget-object v6, Lcom/ibm/icu/text/MessagePattern$Part$Type;->ARG_SELECTOR:Lcom/ibm/icu/text/MessagePattern$Part$Type;

    invoke-direct {p0, v6, v2, v10, v1}, Lcom/ibm/icu/text/MessagePattern;->addPart(Lcom/ibm/icu/text/MessagePattern$Part$Type;III)V

    .line 1248
    invoke-direct {p0, v4, v5, v1}, Lcom/ibm/icu/text/MessagePattern;->parseDouble(IIZ)V

    goto/16 :goto_2

    .line 1244
    :cond_2
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1245
    invoke-direct {p0, v2}, Lcom/ibm/icu/text/MessagePattern;->prefix(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1238
    :cond_3
    new-instance p3, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1240
    invoke-virtual {p1}, Lcom/ibm/icu/text/MessagePattern$ArgType;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1241
    invoke-direct {p0, p2}, Lcom/ibm/icu/text/MessagePattern;->prefix(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3

    .line 1250
    :cond_4
    invoke-direct {p0, v2}, Lcom/ibm/icu/text/MessagePattern;->skipIdentifier(I)I

    move-result v5

    sub-int v10, v5, v2

    if-eqz v10, :cond_c

    .line 1259
    invoke-virtual {p1}, Lcom/ibm/icu/text/MessagePattern$ArgType;->hasPluralStyle()Z

    move-result v6

    if-eqz v6, :cond_8

    const/4 v6, 0x6

    if-ne v10, v6, :cond_8

    iget-object v6, p0, Lcom/ibm/icu/text/MessagePattern;->msg:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v5, v6, :cond_8

    iget-object v6, p0, Lcom/ibm/icu/text/MessagePattern;->msg:Ljava/lang/String;

    const/4 v7, 0x7

    const-string v11, "offset:"

    .line 1260
    invoke-virtual {v6, v2, v11, v1, v7}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v6

    if-eqz v6, :cond_8

    if-eqz v4, :cond_7

    add-int/lit8 v5, v5, 0x1

    .line 1269
    invoke-direct {p0, v5}, Lcom/ibm/icu/text/MessagePattern;->skipWhiteSpace(I)I

    move-result v2

    .line 1270
    invoke-direct {p0, v2}, Lcom/ibm/icu/text/MessagePattern;->skipDouble(I)I

    move-result v4

    if-eq v4, v2, :cond_6

    sub-int v5, v4, v2

    if-gt v5, v9, :cond_5

    .line 1279
    invoke-direct {p0, v2, v4, v1}, Lcom/ibm/icu/text/MessagePattern;->parseDouble(IIZ)V

    move v2, v4

    goto/16 :goto_3

    .line 1276
    :cond_5
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Plural offset value too long: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1277
    invoke-direct {p0, v2}, Lcom/ibm/icu/text/MessagePattern;->prefix(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1272
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Missing value for plural \'offset:\' "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1273
    invoke-direct {p0, p2}, Lcom/ibm/icu/text/MessagePattern;->prefix(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1264
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Plural argument \'offset:\' (if present) must precede key-message pairs: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1266
    invoke-direct {p0, p2}, Lcom/ibm/icu/text/MessagePattern;->prefix(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    if-gt v10, v9, :cond_b

    .line 1288
    sget-object v4, Lcom/ibm/icu/text/MessagePattern$Part$Type;->ARG_SELECTOR:Lcom/ibm/icu/text/MessagePattern$Part$Type;

    invoke-direct {p0, v4, v2, v10, v1}, Lcom/ibm/icu/text/MessagePattern;->addPart(Lcom/ibm/icu/text/MessagePattern$Part$Type;III)V

    .line 1289
    iget-object v4, p0, Lcom/ibm/icu/text/MessagePattern;->msg:Ljava/lang/String;

    const-string v6, "other"

    invoke-virtual {v4, v2, v6, v1, v10}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v4

    if-eqz v4, :cond_9

    const/4 v3, 0x1

    .line 1296
    :cond_9
    :goto_2
    invoke-direct {p0, v5}, Lcom/ibm/icu/text/MessagePattern;->skipWhiteSpace(I)I

    move-result v4

    .line 1297
    iget-object v5, p0, Lcom/ibm/icu/text/MessagePattern;->msg:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-eq v4, v5, :cond_a

    iget-object v5, p0, Lcom/ibm/icu/text/MessagePattern;->msg:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x7b

    if-ne v5, v6, :cond_a

    add-int/lit8 v2, p3, 0x1

    .line 1303
    invoke-direct {p0, v4, v0, v2, p1}, Lcom/ibm/icu/text/MessagePattern;->parseMessage(IIILcom/ibm/icu/text/MessagePattern$ArgType;)I

    move-result v2

    :goto_3
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 1298
    :cond_a
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "No message fragment after "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1300
    invoke-virtual {p1}, Lcom/ibm/icu/text/MessagePattern$ArgType;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " selector: "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1301
    invoke-direct {p0, v2}, Lcom/ibm/icu/text/MessagePattern;->prefix(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 1285
    :cond_b
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1286
    invoke-direct {p0, v2}, Lcom/ibm/icu/text/MessagePattern;->prefix(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1253
    :cond_c
    new-instance p3, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1255
    invoke-virtual {p1}, Lcom/ibm/icu/text/MessagePattern$ArgType;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1256
    invoke-direct {p0, p2}, Lcom/ibm/icu/text/MessagePattern;->prefix(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3

    .line 1218
    :cond_d
    :goto_4
    invoke-direct {p0, p3}, Lcom/ibm/icu/text/MessagePattern;->inMessageFormatPattern(I)Z

    move-result p3

    if-eq v5, p3, :cond_f

    if-eqz v3, :cond_e

    return v2

    .line 1225
    :cond_e
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Missing \'other\' keyword in "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1227
    invoke-virtual {p1}, Lcom/ibm/icu/text/MessagePattern$ArgType;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " pattern in "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1228
    invoke-direct {p0}, Lcom/ibm/icu/text/MessagePattern;->prefix()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 1219
    :cond_f
    new-instance p3, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1221
    invoke-virtual {p1}, Lcom/ibm/icu/text/MessagePattern$ArgType;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1222
    invoke-direct {p0, p2}, Lcom/ibm/icu/text/MessagePattern;->prefix(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3
.end method

.method private parseSimpleStyle(I)I
    .locals 5

    const/4 v0, 0x0

    move v1, p1

    const/4 v2, 0x0

    .line 1124
    :goto_0
    iget-object v3, p0, Lcom/ibm/icu/text/MessagePattern;->msg:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_6

    .line 1125
    iget-object v3, p0, Lcom/ibm/icu/text/MessagePattern;->msg:Ljava/lang/String;

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x27

    if-ne v1, v3, :cond_1

    .line 1129
    iget-object v1, p0, Lcom/ibm/icu/text/MessagePattern;->msg:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    if-ltz v1, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1131
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Quoted literal argument style text reaches to the end of the message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1133
    invoke-direct {p0, p1}, Lcom/ibm/icu/text/MessagePattern;->prefix(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/16 v3, 0x7b

    if-ne v1, v3, :cond_2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    const/16 v3, 0x7d

    if-ne v1, v3, :cond_5

    if-lez v2, :cond_3

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v4, v4, -0x1

    sub-int v1, v4, p1

    const v2, 0xffff

    if-gt v1, v2, :cond_4

    .line 1148
    sget-object v2, Lcom/ibm/icu/text/MessagePattern$Part$Type;->ARG_STYLE:Lcom/ibm/icu/text/MessagePattern$Part$Type;

    invoke-direct {p0, v2, p1, v1, v0}, Lcom/ibm/icu/text/MessagePattern;->addPart(Lcom/ibm/icu/text/MessagePattern$Part$Type;III)V

    return v4

    .line 1145
    :cond_4
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Argument style text too long: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1146
    invoke-direct {p0, p1}, Lcom/ibm/icu/text/MessagePattern;->prefix(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    :goto_1
    move v1, v4

    goto :goto_0

    .line 1153
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unmatched \'{\' braces in message "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1154
    invoke-direct {p0}, Lcom/ibm/icu/text/MessagePattern;->prefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private postParse()V
    .locals 0

    return-void
.end method

.method private preParse(Ljava/lang/String;)V
    .locals 3

    .line 916
    invoke-virtual {p0}, Lcom/ibm/icu/text/MessagePattern;->isFrozen()Z

    move-result v0

    if-nez v0, :cond_1

    .line 920
    iput-object p1, p0, Lcom/ibm/icu/text/MessagePattern;->msg:Ljava/lang/String;

    const/4 p1, 0x0

    .line 921
    iput-boolean p1, p0, Lcom/ibm/icu/text/MessagePattern;->hasArgNumbers:Z

    iput-boolean p1, p0, Lcom/ibm/icu/text/MessagePattern;->hasArgNames:Z

    .line 922
    iput-boolean p1, p0, Lcom/ibm/icu/text/MessagePattern;->needsAutoQuoting:Z

    .line 923
    iget-object p1, p0, Lcom/ibm/icu/text/MessagePattern;->parts:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 924
    iget-object p1, p0, Lcom/ibm/icu/text/MessagePattern;->numericValues:Ljava/util/ArrayList;

    if-eqz p1, :cond_0

    .line 925
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    :cond_0
    return-void

    .line 917
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempt to parse("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 918
    invoke-static {p1}, Lcom/ibm/icu/text/MessagePattern;->prefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") on frozen MessagePattern instance."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private prefix()Ljava/lang/String;
    .locals 2

    .line 1602
    iget-object v0, p0, Lcom/ibm/icu/text/MessagePattern;->msg:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ibm/icu/text/MessagePattern;->prefix(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private prefix(I)Ljava/lang/String;
    .locals 1

    .line 1598
    iget-object v0, p0, Lcom/ibm/icu/text/MessagePattern;->msg:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/ibm/icu/text/MessagePattern;->prefix(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private static prefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 1594
    invoke-static {p0, v0}, Lcom/ibm/icu/text/MessagePattern;->prefix(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static prefix(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4

    .line 1573
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x2c

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "\""

    if-nez p1, :cond_0

    .line 1575
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string v2, "[at pattern index "

    .line 1577
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] \""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1579
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, p1

    const/16 v3, 0x18

    if-gt v2, v3, :cond_2

    if-nez p1, :cond_1

    goto :goto_1

    .line 1581
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :goto_1
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_2
    add-int/lit8 v2, p1, 0x18

    add-int/lit8 v2, v2, -0x4

    add-int/lit8 v3, v2, -0x1

    .line 1584
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v3

    if-eqz v3, :cond_3

    add-int/lit8 v2, v2, -0x1

    .line 1588
    :cond_3
    invoke-virtual {v0, p0, p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    const-string p0, " ..."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1590
    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private skipDouble(I)I
    .locals 2

    .line 1461
    :goto_0
    iget-object v0, p0, Lcom/ibm/icu/text/MessagePattern;->msg:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_2

    .line 1462
    iget-object v0, p0, Lcom/ibm/icu/text/MessagePattern;->msg:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x30

    if-ge v0, v1, :cond_0

    const-string v1, "+-."

    .line 1464
    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ltz v1, :cond_2

    :cond_0
    const/16 v1, 0x39

    if-le v0, v1, :cond_1

    const/16 v1, 0x65

    if-eq v0, v1, :cond_1

    const/16 v1, 0x45

    if-eq v0, v1, :cond_1

    const/16 v1, 0x221e

    if-eq v0, v1, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return p1
.end method

.method private skipIdentifier(I)I
    .locals 1

    .line 1453
    iget-object v0, p0, Lcom/ibm/icu/text/MessagePattern;->msg:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/ibm/icu/impl/PatternProps;->skipIdentifier(Ljava/lang/CharSequence;I)I

    move-result p1

    return p1
.end method

.method private skipWhiteSpace(I)I
    .locals 1

    .line 1449
    iget-object v0, p0, Lcom/ibm/icu/text/MessagePattern;->msg:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/ibm/icu/impl/PatternProps;->skipWhiteSpace(Ljava/lang/CharSequence;I)I

    move-result p1

    return p1
.end method


# virtual methods
.method public clear()V
    .locals 2

    .line 249
    invoke-virtual {p0}, Lcom/ibm/icu/text/MessagePattern;->isFrozen()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 253
    iput-object v0, p0, Lcom/ibm/icu/text/MessagePattern;->msg:Ljava/lang/String;

    const/4 v0, 0x0

    .line 254
    iput-boolean v0, p0, Lcom/ibm/icu/text/MessagePattern;->hasArgNumbers:Z

    iput-boolean v0, p0, Lcom/ibm/icu/text/MessagePattern;->hasArgNames:Z

    .line 255
    iput-boolean v0, p0, Lcom/ibm/icu/text/MessagePattern;->needsAutoQuoting:Z

    .line 256
    iget-object v0, p0, Lcom/ibm/icu/text/MessagePattern;->parts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 257
    iget-object v0, p0, Lcom/ibm/icu/text/MessagePattern;->numericValues:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 258
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_0
    return-void

    .line 250
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Attempt to clear() a frozen MessagePattern instance."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public clearPatternAndSetApostropheMode(Lcom/ibm/icu/text/MessagePattern$ApostropheMode;)V
    .locals 0

    .line 269
    invoke-virtual {p0}, Lcom/ibm/icu/text/MessagePattern;->clear()V

    .line 270
    iput-object p1, p0, Lcom/ibm/icu/text/MessagePattern;->aposMode:Lcom/ibm/icu/text/MessagePattern$ApostropheMode;

    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 1

    .line 865
    invoke-virtual {p0}, Lcom/ibm/icu/text/MessagePattern;->isFrozen()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 868
    :cond_0
    invoke-virtual {p0}, Lcom/ibm/icu/text/MessagePattern;->cloneAsThawed()Lcom/ibm/icu/text/MessagePattern;

    move-result-object v0

    return-object v0
.end method

.method public cloneAsThawed()Lcom/ibm/icu/text/MessagePattern;
    .locals 2

    .line 882
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/text/MessagePattern;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 886
    iget-object v1, p0, Lcom/ibm/icu/text/MessagePattern;->parts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    iput-object v1, v0, Lcom/ibm/icu/text/MessagePattern;->parts:Ljava/util/ArrayList;

    .line 887
    iget-object v1, p0, Lcom/ibm/icu/text/MessagePattern;->numericValues:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 888
    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    iput-object v1, v0, Lcom/ibm/icu/text/MessagePattern;->numericValues:Ljava/util/ArrayList;

    :cond_0
    const/4 v1, 0x0

    .line 890
    iput-boolean v1, v0, Lcom/ibm/icu/text/MessagePattern;->frozen:Z

    return-object v0

    :catch_0
    move-exception v0

    .line 884
    new-instance v1, Lcom/ibm/icu/util/ICUCloneNotSupportedException;

    invoke-direct {v1, v0}, Lcom/ibm/icu/util/ICUCloneNotSupportedException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public countParts()I
    .locals 1

    .line 428
    iget-object v0, p0, Lcom/ibm/icu/text/MessagePattern;->parts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    .line 283
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_2

    .line 286
    :cond_1
    check-cast p1, Lcom/ibm/icu/text/MessagePattern;

    .line 287
    iget-object v2, p0, Lcom/ibm/icu/text/MessagePattern;->aposMode:Lcom/ibm/icu/text/MessagePattern$ApostropheMode;

    iget-object v3, p1, Lcom/ibm/icu/text/MessagePattern;->aposMode:Lcom/ibm/icu/text/MessagePattern$ApostropheMode;

    .line 288
    invoke-virtual {v2, v3}, Lcom/ibm/icu/text/MessagePattern$ApostropheMode;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/ibm/icu/text/MessagePattern;->msg:Ljava/lang/String;

    if-nez v2, :cond_2

    iget-object v2, p1, Lcom/ibm/icu/text/MessagePattern;->msg:Ljava/lang/String;

    if-nez v2, :cond_3

    goto :goto_0

    :cond_2
    iget-object v3, p1, Lcom/ibm/icu/text/MessagePattern;->msg:Ljava/lang/String;

    .line 289
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :goto_0
    iget-object v2, p0, Lcom/ibm/icu/text/MessagePattern;->parts:Ljava/util/ArrayList;

    iget-object p1, p1, Lcom/ibm/icu/text/MessagePattern;->parts:Ljava/util/ArrayList;

    .line 290
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    return v0

    :cond_4
    :goto_2
    return v1
.end method

.method public getApostropheMode()Lcom/ibm/icu/text/MessagePattern$ApostropheMode;
    .locals 1

    .line 308
    iget-object v0, p0, Lcom/ibm/icu/text/MessagePattern;->aposMode:Lcom/ibm/icu/text/MessagePattern$ApostropheMode;

    return-object v0
.end method

.method public getLimitPartIndex(I)I
    .locals 1

    .line 540
    iget-object v0, p0, Lcom/ibm/icu/text/MessagePattern;->parts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/text/MessagePattern$Part;

    invoke-static {v0}, Lcom/ibm/icu/text/MessagePattern$Part;->access$400(Lcom/ibm/icu/text/MessagePattern$Part;)I

    move-result v0

    if-ge v0, p1, :cond_0

    return p1

    :cond_0
    return v0
.end method

.method public getNumericValue(Lcom/ibm/icu/text/MessagePattern$Part;)D
    .locals 2

    .line 496
    invoke-static {p1}, Lcom/ibm/icu/text/MessagePattern$Part;->access$200(Lcom/ibm/icu/text/MessagePattern$Part;)Lcom/ibm/icu/text/MessagePattern$Part$Type;

    move-result-object v0

    .line 497
    sget-object v1, Lcom/ibm/icu/text/MessagePattern$Part$Type;->ARG_INT:Lcom/ibm/icu/text/MessagePattern$Part$Type;

    if-ne v0, v1, :cond_0

    .line 498
    invoke-static {p1}, Lcom/ibm/icu/text/MessagePattern$Part;->access$100(Lcom/ibm/icu/text/MessagePattern$Part;)S

    move-result p1

    int-to-double v0, p1

    return-wide v0

    .line 499
    :cond_0
    sget-object v1, Lcom/ibm/icu/text/MessagePattern$Part$Type;->ARG_DOUBLE:Lcom/ibm/icu/text/MessagePattern$Part$Type;

    if-ne v0, v1, :cond_1

    .line 500
    iget-object v0, p0, Lcom/ibm/icu/text/MessagePattern;->numericValues:Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/ibm/icu/text/MessagePattern$Part;->access$100(Lcom/ibm/icu/text/MessagePattern$Part;)S

    move-result p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0

    :cond_1
    const-wide v0, -0x3e6290cbac000000L    # -1.23456789E8

    return-wide v0
.end method

.method public getPart(I)Lcom/ibm/icu/text/MessagePattern$Part;
    .locals 1

    .line 439
    iget-object v0, p0, Lcom/ibm/icu/text/MessagePattern;->parts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ibm/icu/text/MessagePattern$Part;

    return-object p1
.end method

.method public getPartType(I)Lcom/ibm/icu/text/MessagePattern$Part$Type;
    .locals 1

    .line 451
    iget-object v0, p0, Lcom/ibm/icu/text/MessagePattern;->parts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ibm/icu/text/MessagePattern$Part;

    invoke-static {p1}, Lcom/ibm/icu/text/MessagePattern$Part;->access$200(Lcom/ibm/icu/text/MessagePattern$Part;)Lcom/ibm/icu/text/MessagePattern$Part$Type;

    move-result-object p1

    return-object p1
.end method

.method public getPatternIndex(I)I
    .locals 1

    .line 463
    iget-object v0, p0, Lcom/ibm/icu/text/MessagePattern;->parts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ibm/icu/text/MessagePattern$Part;

    invoke-static {p1}, Lcom/ibm/icu/text/MessagePattern$Part;->access$000(Lcom/ibm/icu/text/MessagePattern$Part;)I

    move-result p1

    return p1
.end method

.method public getPatternString()Ljava/lang/String;
    .locals 1

    .line 324
    iget-object v0, p0, Lcom/ibm/icu/text/MessagePattern;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public getPluralOffset(I)D
    .locals 2

    .line 522
    iget-object v0, p0, Lcom/ibm/icu/text/MessagePattern;->parts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ibm/icu/text/MessagePattern$Part;

    .line 523
    invoke-static {p1}, Lcom/ibm/icu/text/MessagePattern$Part;->access$200(Lcom/ibm/icu/text/MessagePattern$Part;)Lcom/ibm/icu/text/MessagePattern$Part$Type;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ibm/icu/text/MessagePattern$Part$Type;->hasNumericValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 524
    invoke-virtual {p0, p1}, Lcom/ibm/icu/text/MessagePattern;->getNumericValue(Lcom/ibm/icu/text/MessagePattern$Part;)D

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getSubstring(Lcom/ibm/icu/text/MessagePattern$Part;)Ljava/lang/String;
    .locals 2

    .line 474
    invoke-static {p1}, Lcom/ibm/icu/text/MessagePattern$Part;->access$000(Lcom/ibm/icu/text/MessagePattern$Part;)I

    move-result v0

    .line 475
    iget-object v1, p0, Lcom/ibm/icu/text/MessagePattern;->msg:Ljava/lang/String;

    invoke-static {p1}, Lcom/ibm/icu/text/MessagePattern$Part;->access$300(Lcom/ibm/icu/text/MessagePattern$Part;)C

    move-result p1

    add-int/2addr p1, v0

    invoke-virtual {v1, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public hasNamedArguments()Z
    .locals 1

    .line 333
    iget-boolean v0, p0, Lcom/ibm/icu/text/MessagePattern;->hasArgNames:Z

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 300
    iget-object v0, p0, Lcom/ibm/icu/text/MessagePattern;->aposMode:Lcom/ibm/icu/text/MessagePattern$ApostropheMode;

    invoke-virtual {v0}, Lcom/ibm/icu/text/MessagePattern$ApostropheMode;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/ibm/icu/text/MessagePattern;->msg:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/ibm/icu/text/MessagePattern;->parts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public isFrozen()Z
    .locals 1

    .line 912
    iget-boolean v0, p0, Lcom/ibm/icu/text/MessagePattern;->frozen:Z

    return v0
.end method

.method jdkAposMode()Z
    .locals 2

    .line 316
    iget-object v0, p0, Lcom/ibm/icu/text/MessagePattern;->aposMode:Lcom/ibm/icu/text/MessagePattern$ApostropheMode;

    sget-object v1, Lcom/ibm/icu/text/MessagePattern$ApostropheMode;->DOUBLE_REQUIRED:Lcom/ibm/icu/text/MessagePattern$ApostropheMode;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public parse(Ljava/lang/String;)Lcom/ibm/icu/text/MessagePattern;
    .locals 1

    .line 185
    invoke-direct {p0, p1}, Lcom/ibm/icu/text/MessagePattern;->preParse(Ljava/lang/String;)V

    .line 186
    sget-object p1, Lcom/ibm/icu/text/MessagePattern$ArgType;->NONE:Lcom/ibm/icu/text/MessagePattern$ArgType;

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, v0, p1}, Lcom/ibm/icu/text/MessagePattern;->parseMessage(IIILcom/ibm/icu/text/MessagePattern$ArgType;)I

    .line 187
    invoke-direct {p0}, Lcom/ibm/icu/text/MessagePattern;->postParse()V

    return-object p0
.end method

.method public parsePluralStyle(Ljava/lang/String;)Lcom/ibm/icu/text/MessagePattern;
    .locals 1

    .line 219
    invoke-direct {p0, p1}, Lcom/ibm/icu/text/MessagePattern;->preParse(Ljava/lang/String;)V

    .line 220
    sget-object p1, Lcom/ibm/icu/text/MessagePattern$ArgType;->PLURAL:Lcom/ibm/icu/text/MessagePattern$ArgType;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/ibm/icu/text/MessagePattern;->parsePluralOrSelectStyle(Lcom/ibm/icu/text/MessagePattern$ArgType;II)I

    .line 221
    invoke-direct {p0}, Lcom/ibm/icu/text/MessagePattern;->postParse()V

    return-object p0
.end method

.method public parseSelectStyle(Ljava/lang/String;)Lcom/ibm/icu/text/MessagePattern;
    .locals 1

    .line 236
    invoke-direct {p0, p1}, Lcom/ibm/icu/text/MessagePattern;->preParse(Ljava/lang/String;)V

    .line 237
    sget-object p1, Lcom/ibm/icu/text/MessagePattern$ArgType;->SELECT:Lcom/ibm/icu/text/MessagePattern$ArgType;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/ibm/icu/text/MessagePattern;->parsePluralOrSelectStyle(Lcom/ibm/icu/text/MessagePattern$ArgType;II)I

    .line 238
    invoke-direct {p0}, Lcom/ibm/icu/text/MessagePattern;->postParse()V

    return-object p0
.end method

.method public partSubstringMatches(Lcom/ibm/icu/text/MessagePattern$Part;Ljava/lang/String;)Z
    .locals 3

    .line 486
    invoke-static {p1}, Lcom/ibm/icu/text/MessagePattern$Part;->access$300(Lcom/ibm/icu/text/MessagePattern$Part;)C

    move-result v0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/ibm/icu/text/MessagePattern;->msg:Ljava/lang/String;

    invoke-static {p1}, Lcom/ibm/icu/text/MessagePattern$Part;->access$000(Lcom/ibm/icu/text/MessagePattern$Part;)I

    move-result v1

    invoke-static {p1}, Lcom/ibm/icu/text/MessagePattern$Part;->access$300(Lcom/ibm/icu/text/MessagePattern$Part;)C

    move-result p1

    invoke-virtual {v0, v1, p2, v2, p1}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 351
    iget-object v0, p0, Lcom/ibm/icu/text/MessagePattern;->msg:Ljava/lang/String;

    return-object v0
.end method
