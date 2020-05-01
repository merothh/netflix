.class public final enum Lcom/netflix/mediaclient/acquisition/viewmodels/MonthYearType;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netflix/mediaclient/acquisition/viewmodels/MonthYearType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netflix/mediaclient/acquisition/viewmodels/MonthYearType;

.field public static final enum CREDIT:Lcom/netflix/mediaclient/acquisition/viewmodels/MonthYearType;

.field public static final enum DEBIT:Lcom/netflix/mediaclient/acquisition/viewmodels/MonthYearType;


# instance fields
.field private final invalidMonthError:I

.field private final invalidYearError:I

.field private final monthEmptyError:I

.field private final monthRangeError:I

.field private final yearEmptyError:I

.field private final yearRangeError:I


# direct methods
.method static constructor <clinit>()V
    .locals 20

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/netflix/mediaclient/acquisition/viewmodels/MonthYearType;

    new-instance v10, Lcom/netflix/mediaclient/acquisition/viewmodels/MonthYearType;

    .line 149
    sget v4, Lcom/netflix/mediaclient/ui/R$AssistContent;->cp:I

    .line 150
    sget v5, Lcom/netflix/mediaclient/ui/R$AssistContent;->co:I

    .line 151
    sget v6, Lcom/netflix/mediaclient/ui/R$AssistContent;->cJ:I

    .line 152
    sget v7, Lcom/netflix/mediaclient/ui/R$AssistContent;->cK:I

    .line 153
    sget v8, Lcom/netflix/mediaclient/ui/R$AssistContent;->dI:I

    .line 154
    sget v9, Lcom/netflix/mediaclient/ui/R$AssistContent;->dJ:I

    const-string v2, "DEBIT"

    const/4 v3, 0x0

    move-object v1, v10

    .line 148
    invoke-direct/range {v1 .. v9}, Lcom/netflix/mediaclient/acquisition/viewmodels/MonthYearType;-><init>(Ljava/lang/String;IIIIIII)V

    sput-object v10, Lcom/netflix/mediaclient/acquisition/viewmodels/MonthYearType;->DEBIT:Lcom/netflix/mediaclient/acquisition/viewmodels/MonthYearType;

    const/4 v1, 0x0

    aput-object v10, v0, v1

    new-instance v1, Lcom/netflix/mediaclient/acquisition/viewmodels/MonthYearType;

    .line 157
    sget v14, Lcom/netflix/mediaclient/ui/R$AssistContent;->cj:I

    .line 158
    sget v15, Lcom/netflix/mediaclient/ui/R$AssistContent;->cn:I

    .line 159
    sget v16, Lcom/netflix/mediaclient/ui/R$AssistContent;->cA:I

    .line 160
    sget v17, Lcom/netflix/mediaclient/ui/R$AssistContent;->cC:I

    .line 161
    sget v18, Lcom/netflix/mediaclient/ui/R$AssistContent;->dF:I

    .line 162
    sget v19, Lcom/netflix/mediaclient/ui/R$AssistContent;->dG:I

    const-string v12, "CREDIT"

    const/4 v13, 0x1

    move-object v11, v1

    .line 156
    invoke-direct/range {v11 .. v19}, Lcom/netflix/mediaclient/acquisition/viewmodels/MonthYearType;-><init>(Ljava/lang/String;IIIIIII)V

    sput-object v1, Lcom/netflix/mediaclient/acquisition/viewmodels/MonthYearType;->CREDIT:Lcom/netflix/mediaclient/acquisition/viewmodels/MonthYearType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/netflix/mediaclient/acquisition/viewmodels/MonthYearType;->$VALUES:[Lcom/netflix/mediaclient/acquisition/viewmodels/MonthYearType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIIIIII)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIIII)V"
        }
    .end annotation

    .line 140
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/netflix/mediaclient/acquisition/viewmodels/MonthYearType;->monthRangeError:I

    iput p4, p0, Lcom/netflix/mediaclient/acquisition/viewmodels/MonthYearType;->yearRangeError:I

    iput p5, p0, Lcom/netflix/mediaclient/acquisition/viewmodels/MonthYearType;->monthEmptyError:I

    iput p6, p0, Lcom/netflix/mediaclient/acquisition/viewmodels/MonthYearType;->yearEmptyError:I

    iput p7, p0, Lcom/netflix/mediaclient/acquisition/viewmodels/MonthYearType;->invalidMonthError:I

    iput p8, p0, Lcom/netflix/mediaclient/acquisition/viewmodels/MonthYearType;->invalidYearError:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/acquisition/viewmodels/MonthYearType;
    .locals 1

    const-class v0, Lcom/netflix/mediaclient/acquisition/viewmodels/MonthYearType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netflix/mediaclient/acquisition/viewmodels/MonthYearType;

    return-object p0
.end method

.method public static values()[Lcom/netflix/mediaclient/acquisition/viewmodels/MonthYearType;
    .locals 1

    sget-object v0, Lcom/netflix/mediaclient/acquisition/viewmodels/MonthYearType;->$VALUES:[Lcom/netflix/mediaclient/acquisition/viewmodels/MonthYearType;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/acquisition/viewmodels/MonthYearType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/acquisition/viewmodels/MonthYearType;

    return-object v0
.end method


# virtual methods
.method public final getInvalidMonthError()I
    .locals 1

    .line 145
    iget v0, p0, Lcom/netflix/mediaclient/acquisition/viewmodels/MonthYearType;->invalidMonthError:I

    return v0
.end method

.method public final getInvalidYearError()I
    .locals 1

    .line 146
    iget v0, p0, Lcom/netflix/mediaclient/acquisition/viewmodels/MonthYearType;->invalidYearError:I

    return v0
.end method

.method public final getMonthEmptyError()I
    .locals 1

    .line 143
    iget v0, p0, Lcom/netflix/mediaclient/acquisition/viewmodels/MonthYearType;->monthEmptyError:I

    return v0
.end method

.method public final getMonthRangeError()I
    .locals 1

    .line 141
    iget v0, p0, Lcom/netflix/mediaclient/acquisition/viewmodels/MonthYearType;->monthRangeError:I

    return v0
.end method

.method public final getYearEmptyError()I
    .locals 1

    .line 144
    iget v0, p0, Lcom/netflix/mediaclient/acquisition/viewmodels/MonthYearType;->yearEmptyError:I

    return v0
.end method

.method public final getYearRangeError()I
    .locals 1

    .line 142
    iget v0, p0, Lcom/netflix/mediaclient/acquisition/viewmodels/MonthYearType;->yearRangeError:I

    return v0
.end method
