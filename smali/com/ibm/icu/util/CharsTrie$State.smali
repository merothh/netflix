.class public final Lcom/ibm/icu/util/CharsTrie$State;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/util/CharsTrie;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "State"
.end annotation


# instance fields
.field private chars:Ljava/lang/CharSequence;

.field private pos:I

.field private remainingMatchLength:I

.field private root:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/ibm/icu/util/CharsTrie$State;)Ljava/lang/CharSequence;
    .locals 0

    .line 81
    iget-object p0, p0, Lcom/ibm/icu/util/CharsTrie$State;->chars:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static synthetic access$002(Lcom/ibm/icu/util/CharsTrie$State;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/ibm/icu/util/CharsTrie$State;->chars:Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic access$100(Lcom/ibm/icu/util/CharsTrie$State;)I
    .locals 0

    .line 81
    iget p0, p0, Lcom/ibm/icu/util/CharsTrie$State;->root:I

    return p0
.end method

.method static synthetic access$102(Lcom/ibm/icu/util/CharsTrie$State;I)I
    .locals 0

    .line 81
    iput p1, p0, Lcom/ibm/icu/util/CharsTrie$State;->root:I

    return p1
.end method

.method static synthetic access$200(Lcom/ibm/icu/util/CharsTrie$State;)I
    .locals 0

    .line 81
    iget p0, p0, Lcom/ibm/icu/util/CharsTrie$State;->pos:I

    return p0
.end method

.method static synthetic access$202(Lcom/ibm/icu/util/CharsTrie$State;I)I
    .locals 0

    .line 81
    iput p1, p0, Lcom/ibm/icu/util/CharsTrie$State;->pos:I

    return p1
.end method

.method static synthetic access$300(Lcom/ibm/icu/util/CharsTrie$State;)I
    .locals 0

    .line 81
    iget p0, p0, Lcom/ibm/icu/util/CharsTrie$State;->remainingMatchLength:I

    return p0
.end method

.method static synthetic access$302(Lcom/ibm/icu/util/CharsTrie$State;I)I
    .locals 0

    .line 81
    iput p1, p0, Lcom/ibm/icu/util/CharsTrie$State;->remainingMatchLength:I

    return p1
.end method
