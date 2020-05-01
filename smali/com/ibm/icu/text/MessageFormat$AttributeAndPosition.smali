.class final Lcom/ibm/icu/text/MessageFormat$AttributeAndPosition;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/text/MessageFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "AttributeAndPosition"
.end annotation


# instance fields
.field private key:Ljava/text/AttributedCharacterIterator$Attribute;

.field private limit:I

.field private start:I

.field private value:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;II)V
    .locals 1

    .line 2660
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2661
    sget-object v0, Lcom/ibm/icu/text/MessageFormat$Field;->ARGUMENT:Lcom/ibm/icu/text/MessageFormat$Field;

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/ibm/icu/text/MessageFormat$AttributeAndPosition;->init(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;II)V

    return-void
.end method

.method public constructor <init>(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;II)V
    .locals 0

    .line 2664
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2665
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/ibm/icu/text/MessageFormat$AttributeAndPosition;->init(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;II)V

    return-void
.end method

.method static synthetic access$100(Lcom/ibm/icu/text/MessageFormat$AttributeAndPosition;)Ljava/text/AttributedCharacterIterator$Attribute;
    .locals 0

    .line 2656
    iget-object p0, p0, Lcom/ibm/icu/text/MessageFormat$AttributeAndPosition;->key:Ljava/text/AttributedCharacterIterator$Attribute;

    return-object p0
.end method

.method static synthetic access$200(Lcom/ibm/icu/text/MessageFormat$AttributeAndPosition;)Ljava/lang/Object;
    .locals 0

    .line 2656
    iget-object p0, p0, Lcom/ibm/icu/text/MessageFormat$AttributeAndPosition;->value:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$300(Lcom/ibm/icu/text/MessageFormat$AttributeAndPosition;)I
    .locals 0

    .line 2656
    iget p0, p0, Lcom/ibm/icu/text/MessageFormat$AttributeAndPosition;->start:I

    return p0
.end method

.method static synthetic access$400(Lcom/ibm/icu/text/MessageFormat$AttributeAndPosition;)I
    .locals 0

    .line 2656
    iget p0, p0, Lcom/ibm/icu/text/MessageFormat$AttributeAndPosition;->limit:I

    return p0
.end method


# virtual methods
.method public init(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;II)V
    .locals 0

    .line 2669
    iput-object p1, p0, Lcom/ibm/icu/text/MessageFormat$AttributeAndPosition;->key:Ljava/text/AttributedCharacterIterator$Attribute;

    .line 2670
    iput-object p2, p0, Lcom/ibm/icu/text/MessageFormat$AttributeAndPosition;->value:Ljava/lang/Object;

    .line 2671
    iput p3, p0, Lcom/ibm/icu/text/MessageFormat$AttributeAndPosition;->start:I

    .line 2672
    iput p4, p0, Lcom/ibm/icu/text/MessageFormat$AttributeAndPosition;->limit:I

    return-void
.end method
