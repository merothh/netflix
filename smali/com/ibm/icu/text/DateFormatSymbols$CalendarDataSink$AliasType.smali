.class final enum Lcom/ibm/icu/text/DateFormatSymbols$CalendarDataSink$AliasType;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/text/DateFormatSymbols$CalendarDataSink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "AliasType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ibm/icu/text/DateFormatSymbols$CalendarDataSink$AliasType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ibm/icu/text/DateFormatSymbols$CalendarDataSink$AliasType;

.field public static final enum DIFFERENT_CALENDAR:Lcom/ibm/icu/text/DateFormatSymbols$CalendarDataSink$AliasType;

.field public static final enum GREGORIAN:Lcom/ibm/icu/text/DateFormatSymbols$CalendarDataSink$AliasType;

.field public static final enum NONE:Lcom/ibm/icu/text/DateFormatSymbols$CalendarDataSink$AliasType;

.field public static final enum SAME_CALENDAR:Lcom/ibm/icu/text/DateFormatSymbols$CalendarDataSink$AliasType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1828
    new-instance v0, Lcom/ibm/icu/text/DateFormatSymbols$CalendarDataSink$AliasType;

    const/4 v1, 0x0

    const-string v2, "SAME_CALENDAR"

    invoke-direct {v0, v2, v1}, Lcom/ibm/icu/text/DateFormatSymbols$CalendarDataSink$AliasType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/text/DateFormatSymbols$CalendarDataSink$AliasType;->SAME_CALENDAR:Lcom/ibm/icu/text/DateFormatSymbols$CalendarDataSink$AliasType;

    .line 1829
    new-instance v0, Lcom/ibm/icu/text/DateFormatSymbols$CalendarDataSink$AliasType;

    const/4 v2, 0x1

    const-string v3, "DIFFERENT_CALENDAR"

    invoke-direct {v0, v3, v2}, Lcom/ibm/icu/text/DateFormatSymbols$CalendarDataSink$AliasType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/text/DateFormatSymbols$CalendarDataSink$AliasType;->DIFFERENT_CALENDAR:Lcom/ibm/icu/text/DateFormatSymbols$CalendarDataSink$AliasType;

    .line 1830
    new-instance v0, Lcom/ibm/icu/text/DateFormatSymbols$CalendarDataSink$AliasType;

    const/4 v3, 0x2

    const-string v4, "GREGORIAN"

    invoke-direct {v0, v4, v3}, Lcom/ibm/icu/text/DateFormatSymbols$CalendarDataSink$AliasType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/text/DateFormatSymbols$CalendarDataSink$AliasType;->GREGORIAN:Lcom/ibm/icu/text/DateFormatSymbols$CalendarDataSink$AliasType;

    .line 1831
    new-instance v0, Lcom/ibm/icu/text/DateFormatSymbols$CalendarDataSink$AliasType;

    const/4 v4, 0x3

    const-string v5, "NONE"

    invoke-direct {v0, v5, v4}, Lcom/ibm/icu/text/DateFormatSymbols$CalendarDataSink$AliasType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/text/DateFormatSymbols$CalendarDataSink$AliasType;->NONE:Lcom/ibm/icu/text/DateFormatSymbols$CalendarDataSink$AliasType;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/ibm/icu/text/DateFormatSymbols$CalendarDataSink$AliasType;

    .line 1827
    sget-object v5, Lcom/ibm/icu/text/DateFormatSymbols$CalendarDataSink$AliasType;->SAME_CALENDAR:Lcom/ibm/icu/text/DateFormatSymbols$CalendarDataSink$AliasType;

    aput-object v5, v0, v1

    sget-object v1, Lcom/ibm/icu/text/DateFormatSymbols$CalendarDataSink$AliasType;->DIFFERENT_CALENDAR:Lcom/ibm/icu/text/DateFormatSymbols$CalendarDataSink$AliasType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ibm/icu/text/DateFormatSymbols$CalendarDataSink$AliasType;->GREGORIAN:Lcom/ibm/icu/text/DateFormatSymbols$CalendarDataSink$AliasType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ibm/icu/text/DateFormatSymbols$CalendarDataSink$AliasType;->NONE:Lcom/ibm/icu/text/DateFormatSymbols$CalendarDataSink$AliasType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/ibm/icu/text/DateFormatSymbols$CalendarDataSink$AliasType;->$VALUES:[Lcom/ibm/icu/text/DateFormatSymbols$CalendarDataSink$AliasType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1827
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ibm/icu/text/DateFormatSymbols$CalendarDataSink$AliasType;
    .locals 1

    .line 1827
    const-class v0, Lcom/ibm/icu/text/DateFormatSymbols$CalendarDataSink$AliasType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ibm/icu/text/DateFormatSymbols$CalendarDataSink$AliasType;

    return-object p0
.end method

.method public static values()[Lcom/ibm/icu/text/DateFormatSymbols$CalendarDataSink$AliasType;
    .locals 1

    .line 1827
    sget-object v0, Lcom/ibm/icu/text/DateFormatSymbols$CalendarDataSink$AliasType;->$VALUES:[Lcom/ibm/icu/text/DateFormatSymbols$CalendarDataSink$AliasType;

    invoke-virtual {v0}, [Lcom/ibm/icu/text/DateFormatSymbols$CalendarDataSink$AliasType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ibm/icu/text/DateFormatSymbols$CalendarDataSink$AliasType;

    return-object v0
.end method
