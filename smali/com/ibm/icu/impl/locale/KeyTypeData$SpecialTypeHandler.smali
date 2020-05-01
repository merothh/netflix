.class abstract Lcom/ibm/icu/impl/locale/KeyTypeData$SpecialTypeHandler;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/impl/locale/KeyTypeData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "SpecialTypeHandler"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ibm/icu/impl/locale/KeyTypeData$1;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/ibm/icu/impl/locale/KeyTypeData$SpecialTypeHandler;-><init>()V

    return-void
.end method


# virtual methods
.method canonicalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 39
    invoke-static {p1}, Lcom/ibm/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method abstract isWellFormed(Ljava/lang/String;)Z
.end method
