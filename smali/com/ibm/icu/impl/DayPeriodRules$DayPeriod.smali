.class public final enum Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/impl/DayPeriodRules;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DayPeriod"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;

.field public static final enum AFTERNOON1:Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;

.field public static final enum AFTERNOON2:Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;

.field public static final enum AM:Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;

.field public static final enum EVENING1:Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;

.field public static final enum EVENING2:Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;

.field public static final enum MIDNIGHT:Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;

.field public static final enum MORNING1:Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;

.field public static final enum MORNING2:Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;

.field public static final enum NIGHT1:Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;

.field public static final enum NIGHT2:Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;

.field public static final enum NOON:Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;

.field public static final enum PM:Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;

.field public static VALUES:[Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 20
    new-instance v0, Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;

    const/4 v1, 0x0

    const-string v2, "MIDNIGHT"

    invoke-direct {v0, v2, v1}, Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;->MIDNIGHT:Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;

    .line 21
    new-instance v0, Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;

    const/4 v2, 0x1

    const-string v3, "NOON"

    invoke-direct {v0, v3, v2}, Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;->NOON:Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;

    .line 22
    new-instance v0, Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;

    const/4 v3, 0x2

    const-string v4, "MORNING1"

    invoke-direct {v0, v4, v3}, Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;->MORNING1:Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;

    .line 23
    new-instance v0, Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;

    const/4 v4, 0x3

    const-string v5, "AFTERNOON1"

    invoke-direct {v0, v5, v4}, Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;->AFTERNOON1:Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;

    .line 24
    new-instance v0, Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;

    const/4 v5, 0x4

    const-string v6, "EVENING1"

    invoke-direct {v0, v6, v5}, Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;->EVENING1:Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;

    .line 25
    new-instance v0, Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;

    const/4 v6, 0x5

    const-string v7, "NIGHT1"

    invoke-direct {v0, v7, v6}, Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;->NIGHT1:Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;

    .line 26
    new-instance v0, Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;

    const/4 v7, 0x6

    const-string v8, "MORNING2"

    invoke-direct {v0, v8, v7}, Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;->MORNING2:Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;

    .line 27
    new-instance v0, Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;

    const/4 v8, 0x7

    const-string v9, "AFTERNOON2"

    invoke-direct {v0, v9, v8}, Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;->AFTERNOON2:Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;

    .line 28
    new-instance v0, Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;

    const/16 v9, 0x8

    const-string v10, "EVENING2"

    invoke-direct {v0, v10, v9}, Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;->EVENING2:Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;

    .line 29
    new-instance v0, Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;

    const/16 v10, 0x9

    const-string v11, "NIGHT2"

    invoke-direct {v0, v11, v10}, Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;->NIGHT2:Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;

    .line 30
    new-instance v0, Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;

    const/16 v11, 0xa

    const-string v12, "AM"

    invoke-direct {v0, v12, v11}, Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;->AM:Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;

    .line 31
    new-instance v0, Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;

    const/16 v12, 0xb

    const-string v13, "PM"

    invoke-direct {v0, v13, v12}, Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;->PM:Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;

    const/16 v0, 0xc

    new-array v0, v0, [Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;

    .line 19
    sget-object v13, Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;->MIDNIGHT:Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;

    aput-object v13, v0, v1

    sget-object v1, Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;->NOON:Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;->MORNING1:Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;->AFTERNOON1:Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;

    aput-object v1, v0, v4

    sget-object v1, Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;->EVENING1:Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;

    aput-object v1, v0, v5

    sget-object v1, Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;->NIGHT1:Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;

    aput-object v1, v0, v6

    sget-object v1, Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;->MORNING2:Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;

    aput-object v1, v0, v7

    sget-object v1, Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;->AFTERNOON2:Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;

    aput-object v1, v0, v8

    sget-object v1, Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;->EVENING2:Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;

    aput-object v1, v0, v9

    sget-object v1, Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;->NIGHT2:Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;

    aput-object v1, v0, v10

    sget-object v1, Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;->AM:Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;

    aput-object v1, v0, v11

    sget-object v1, Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;->PM:Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;

    aput-object v1, v0, v12

    sput-object v0, Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;->$VALUES:[Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;

    .line 33
    invoke-static {}, Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;->values()[Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;

    move-result-object v0

    sput-object v0, Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;->VALUES:[Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$200(Ljava/lang/CharSequence;)Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;
    .locals 0

    .line 19
    invoke-static {p0}, Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;->fromStringOrNull(Ljava/lang/CharSequence;)Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;

    move-result-object p0

    return-object p0
.end method

.method private static fromStringOrNull(Ljava/lang/CharSequence;)Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;
    .locals 1

    const-string v0, "midnight"

    .line 36
    invoke-virtual {v0, p0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;->MIDNIGHT:Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;

    return-object p0

    :cond_0
    const-string v0, "noon"

    .line 37
    invoke-virtual {v0, p0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;->NOON:Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;

    return-object p0

    :cond_1
    const-string v0, "morning1"

    .line 38
    invoke-virtual {v0, p0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object p0, Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;->MORNING1:Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;

    return-object p0

    :cond_2
    const-string v0, "afternoon1"

    .line 39
    invoke-virtual {v0, p0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object p0, Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;->AFTERNOON1:Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;

    return-object p0

    :cond_3
    const-string v0, "evening1"

    .line 40
    invoke-virtual {v0, p0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object p0, Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;->EVENING1:Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;

    return-object p0

    :cond_4
    const-string v0, "night1"

    .line 41
    invoke-virtual {v0, p0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object p0, Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;->NIGHT1:Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;

    return-object p0

    :cond_5
    const-string v0, "morning2"

    .line 42
    invoke-virtual {v0, p0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object p0, Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;->MORNING2:Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;

    return-object p0

    :cond_6
    const-string v0, "afternoon2"

    .line 43
    invoke-virtual {v0, p0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object p0, Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;->AFTERNOON2:Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;

    return-object p0

    :cond_7
    const-string v0, "evening2"

    .line 44
    invoke-virtual {v0, p0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object p0, Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;->EVENING2:Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;

    return-object p0

    :cond_8
    const-string v0, "night2"

    .line 45
    invoke-virtual {v0, p0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object p0, Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;->NIGHT2:Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;

    return-object p0

    :cond_9
    const-string v0, "am"

    .line 46
    invoke-virtual {v0, p0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    sget-object p0, Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;->AM:Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;

    return-object p0

    :cond_a
    const-string v0, "pm"

    .line 47
    invoke-virtual {v0, p0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_b

    sget-object p0, Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;->PM:Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;

    return-object p0

    :cond_b
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;
    .locals 1

    .line 19
    const-class v0, Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;

    return-object p0
.end method

.method public static values()[Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;
    .locals 1

    .line 19
    sget-object v0, Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;->$VALUES:[Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;

    invoke-virtual {v0}, [Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;

    return-object v0
.end method
