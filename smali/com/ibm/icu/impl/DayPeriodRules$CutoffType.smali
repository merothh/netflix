.class final enum Lcom/ibm/icu/impl/DayPeriodRules$CutoffType;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/impl/DayPeriodRules;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "CutoffType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ibm/icu/impl/DayPeriodRules$CutoffType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ibm/icu/impl/DayPeriodRules$CutoffType;

.field public static final enum AFTER:Lcom/ibm/icu/impl/DayPeriodRules$CutoffType;

.field public static final enum AT:Lcom/ibm/icu/impl/DayPeriodRules$CutoffType;

.field public static final enum BEFORE:Lcom/ibm/icu/impl/DayPeriodRules$CutoffType;

.field public static final enum FROM:Lcom/ibm/icu/impl/DayPeriodRules$CutoffType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 53
    new-instance v0, Lcom/ibm/icu/impl/DayPeriodRules$CutoffType;

    const/4 v1, 0x0

    const-string v2, "BEFORE"

    invoke-direct {v0, v2, v1}, Lcom/ibm/icu/impl/DayPeriodRules$CutoffType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/impl/DayPeriodRules$CutoffType;->BEFORE:Lcom/ibm/icu/impl/DayPeriodRules$CutoffType;

    .line 54
    new-instance v0, Lcom/ibm/icu/impl/DayPeriodRules$CutoffType;

    const/4 v2, 0x1

    const-string v3, "AFTER"

    invoke-direct {v0, v3, v2}, Lcom/ibm/icu/impl/DayPeriodRules$CutoffType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/impl/DayPeriodRules$CutoffType;->AFTER:Lcom/ibm/icu/impl/DayPeriodRules$CutoffType;

    .line 55
    new-instance v0, Lcom/ibm/icu/impl/DayPeriodRules$CutoffType;

    const/4 v3, 0x2

    const-string v4, "FROM"

    invoke-direct {v0, v4, v3}, Lcom/ibm/icu/impl/DayPeriodRules$CutoffType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/impl/DayPeriodRules$CutoffType;->FROM:Lcom/ibm/icu/impl/DayPeriodRules$CutoffType;

    .line 56
    new-instance v0, Lcom/ibm/icu/impl/DayPeriodRules$CutoffType;

    const/4 v4, 0x3

    const-string v5, "AT"

    invoke-direct {v0, v5, v4}, Lcom/ibm/icu/impl/DayPeriodRules$CutoffType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/impl/DayPeriodRules$CutoffType;->AT:Lcom/ibm/icu/impl/DayPeriodRules$CutoffType;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/ibm/icu/impl/DayPeriodRules$CutoffType;

    .line 52
    sget-object v5, Lcom/ibm/icu/impl/DayPeriodRules$CutoffType;->BEFORE:Lcom/ibm/icu/impl/DayPeriodRules$CutoffType;

    aput-object v5, v0, v1

    sget-object v1, Lcom/ibm/icu/impl/DayPeriodRules$CutoffType;->AFTER:Lcom/ibm/icu/impl/DayPeriodRules$CutoffType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ibm/icu/impl/DayPeriodRules$CutoffType;->FROM:Lcom/ibm/icu/impl/DayPeriodRules$CutoffType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ibm/icu/impl/DayPeriodRules$CutoffType;->AT:Lcom/ibm/icu/impl/DayPeriodRules$CutoffType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/ibm/icu/impl/DayPeriodRules$CutoffType;->$VALUES:[Lcom/ibm/icu/impl/DayPeriodRules$CutoffType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 52
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$300(Ljava/lang/CharSequence;)Lcom/ibm/icu/impl/DayPeriodRules$CutoffType;
    .locals 0

    .line 52
    invoke-static {p0}, Lcom/ibm/icu/impl/DayPeriodRules$CutoffType;->fromStringOrNull(Ljava/lang/CharSequence;)Lcom/ibm/icu/impl/DayPeriodRules$CutoffType;

    move-result-object p0

    return-object p0
.end method

.method private static fromStringOrNull(Ljava/lang/CharSequence;)Lcom/ibm/icu/impl/DayPeriodRules$CutoffType;
    .locals 1

    const-string v0, "from"

    .line 59
    invoke-virtual {v0, p0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/ibm/icu/impl/DayPeriodRules$CutoffType;->FROM:Lcom/ibm/icu/impl/DayPeriodRules$CutoffType;

    return-object p0

    :cond_0
    const-string v0, "before"

    .line 60
    invoke-virtual {v0, p0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Lcom/ibm/icu/impl/DayPeriodRules$CutoffType;->BEFORE:Lcom/ibm/icu/impl/DayPeriodRules$CutoffType;

    return-object p0

    :cond_1
    const-string v0, "after"

    .line 61
    invoke-virtual {v0, p0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object p0, Lcom/ibm/icu/impl/DayPeriodRules$CutoffType;->AFTER:Lcom/ibm/icu/impl/DayPeriodRules$CutoffType;

    return-object p0

    :cond_2
    const-string v0, "at"

    .line 62
    invoke-virtual {v0, p0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_3

    sget-object p0, Lcom/ibm/icu/impl/DayPeriodRules$CutoffType;->AT:Lcom/ibm/icu/impl/DayPeriodRules$CutoffType;

    return-object p0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ibm/icu/impl/DayPeriodRules$CutoffType;
    .locals 1

    .line 52
    const-class v0, Lcom/ibm/icu/impl/DayPeriodRules$CutoffType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ibm/icu/impl/DayPeriodRules$CutoffType;

    return-object p0
.end method

.method public static values()[Lcom/ibm/icu/impl/DayPeriodRules$CutoffType;
    .locals 1

    .line 52
    sget-object v0, Lcom/ibm/icu/impl/DayPeriodRules$CutoffType;->$VALUES:[Lcom/ibm/icu/impl/DayPeriodRules$CutoffType;

    invoke-virtual {v0}, [Lcom/ibm/icu/impl/DayPeriodRules$CutoffType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ibm/icu/impl/DayPeriodRules$CutoffType;

    return-object v0
.end method
