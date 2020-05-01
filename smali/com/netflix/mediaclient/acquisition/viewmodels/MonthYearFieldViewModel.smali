.class public final Lcom/netflix/mediaclient/acquisition/viewmodels/MonthYearFieldViewModel;
.super Lo/AndroidCharacter;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/mediaclient/acquisition/viewmodels/MonthYearFieldViewModel$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/AndroidCharacter<",
        "Lo/BidiFormatter;",
        ">;"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/netflix/mediaclient/acquisition/viewmodels/MonthYearFieldViewModel$Companion;

.field public static final MONTH_YEAR_DELIMITER:Ljava/lang/String; = "/"


# instance fields
.field private final calendar:Ljava/util/Calendar;

.field private final inputFieldSetting:Lo/UtteranceProgressListener;

.field private final monthField:Lo/BidiFormatter;

.field private final monthYearType:Lcom/netflix/mediaclient/acquisition/viewmodels/MonthYearType;

.field private final yearField:Lo/BidiFormatter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/netflix/mediaclient/acquisition/viewmodels/MonthYearFieldViewModel$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/acquisition/viewmodels/MonthYearFieldViewModel$Companion;-><init>(Lo/amc;)V

    sput-object v0, Lcom/netflix/mediaclient/acquisition/viewmodels/MonthYearFieldViewModel;->Companion:Lcom/netflix/mediaclient/acquisition/viewmodels/MonthYearFieldViewModel$Companion;

    return-void
.end method

.method public constructor <init>(Lo/SilencePlaybackQueueItem;Lo/BidiFormatter;Lo/BidiFormatter;Lcom/netflix/mediaclient/acquisition/viewmodels/MonthYearType;Lo/UtteranceProgressListener;)V
    .locals 2

    const-string v0, "fieldStateChangeListener"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "monthField"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "yearField"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "monthYearType"

    invoke-static {p4, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inputFieldSetting"

    invoke-static {p5, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    new-array v0, v0, [Lo/BidiFormatter;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 v1, 0x1

    aput-object p3, v0, v1

    .line 21
    invoke-static {v0}, Lo/akz;->e([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lo/AndroidCharacter;-><init>(Lo/SilencePlaybackQueueItem;Ljava/util/List;)V

    iput-object p2, p0, Lcom/netflix/mediaclient/acquisition/viewmodels/MonthYearFieldViewModel;->monthField:Lo/BidiFormatter;

    iput-object p3, p0, Lcom/netflix/mediaclient/acquisition/viewmodels/MonthYearFieldViewModel;->yearField:Lo/BidiFormatter;

    iput-object p4, p0, Lcom/netflix/mediaclient/acquisition/viewmodels/MonthYearFieldViewModel;->monthYearType:Lcom/netflix/mediaclient/acquisition/viewmodels/MonthYearType;

    iput-object p5, p0, Lcom/netflix/mediaclient/acquisition/viewmodels/MonthYearFieldViewModel;->inputFieldSetting:Lo/UtteranceProgressListener;

    .line 27
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/mediaclient/acquisition/viewmodels/MonthYearFieldViewModel;->calendar:Ljava/util/Calendar;

    return-void
.end method

.method private final getEmptyFieldErrorRes(Lo/BidiFormatter;)I
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition/viewmodels/MonthYearFieldViewModel;->monthField:Lo/BidiFormatter;

    invoke-static {p1, v0}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 120
    iget-object p1, p0, Lcom/netflix/mediaclient/acquisition/viewmodels/MonthYearFieldViewModel;->monthYearType:Lcom/netflix/mediaclient/acquisition/viewmodels/MonthYearType;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/acquisition/viewmodels/MonthYearType;->getMonthEmptyError()I

    move-result p1

    goto :goto_0

    .line 122
    :cond_0
    iget-object p1, p0, Lcom/netflix/mediaclient/acquisition/viewmodels/MonthYearFieldViewModel;->monthYearType:Lcom/netflix/mediaclient/acquisition/viewmodels/MonthYearType;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/acquisition/viewmodels/MonthYearType;->getYearEmptyError()I

    move-result p1

    :goto_0
    return p1
.end method

.method private final getRangeFieldErrorRes(Lo/BidiFormatter;)I
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition/viewmodels/MonthYearFieldViewModel;->monthField:Lo/BidiFormatter;

    invoke-static {p1, v0}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 128
    iget-object p1, p0, Lcom/netflix/mediaclient/acquisition/viewmodels/MonthYearFieldViewModel;->monthYearType:Lcom/netflix/mediaclient/acquisition/viewmodels/MonthYearType;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/acquisition/viewmodels/MonthYearType;->getMonthRangeError()I

    move-result p1

    goto :goto_0

    .line 130
    :cond_0
    iget-object p1, p0, Lcom/netflix/mediaclient/acquisition/viewmodels/MonthYearFieldViewModel;->monthYearType:Lcom/netflix/mediaclient/acquisition/viewmodels/MonthYearType;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/acquisition/viewmodels/MonthYearType;->getYearRangeError()I

    move-result p1

    :goto_0
    return p1
.end method

.method private final isMonthPriorToToday()Z
    .locals 7

    .line 38
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition/viewmodels/MonthYearFieldViewModel;->monthField:Lo/BidiFormatter;

    invoke-interface {v0}, Lo/BidiFormatter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 39
    iget-object v1, p0, Lcom/netflix/mediaclient/acquisition/viewmodels/MonthYearFieldViewModel;->yearField:Lo/BidiFormatter;

    invoke-interface {v1}, Lo/BidiFormatter;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    if-nez v1, :cond_0

    goto :goto_0

    .line 41
    :cond_0
    iget-object v3, p0, Lcom/netflix/mediaclient/acquisition/viewmodels/MonthYearFieldViewModel;->calendar:Ljava/util/Calendar;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 42
    iget-object v5, p0, Lcom/netflix/mediaclient/acquisition/viewmodels/MonthYearFieldViewModel;->calendar:Ljava/util/Calendar;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 44
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v3, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int/2addr v0, v4

    if-ge v0, v5, :cond_1

    const/4 v2, 0x1

    :cond_1
    :goto_0
    return v2
.end method

.method private final isYearPriorToToday()Z
    .locals 3

    .line 31
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition/viewmodels/MonthYearFieldViewModel;->yearField:Lo/BidiFormatter;

    invoke-interface {v0}, Lo/BidiFormatter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 32
    iget-object v1, p0, Lcom/netflix/mediaclient/acquisition/viewmodels/MonthYearFieldViewModel;->calendar:Ljava/util/Calendar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-eqz v0, :cond_0

    .line 33
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method


# virtual methods
.method public getAreAllFieldsValid()Z
    .locals 6

    .line 71
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition/viewmodels/MonthYearFieldViewModel;->calendar:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 72
    iget-object v2, p0, Lcom/netflix/mediaclient/acquisition/viewmodels/MonthYearFieldViewModel;->calendar:Ljava/util/Calendar;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/2addr v2, v1

    .line 73
    iget-object v1, p0, Lcom/netflix/mediaclient/acquisition/viewmodels/MonthYearFieldViewModel;->monthField:Lo/BidiFormatter;

    invoke-interface {v1}, Lo/BidiFormatter;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 74
    iget-object v3, p0, Lcom/netflix/mediaclient/acquisition/viewmodels/MonthYearFieldViewModel;->yearField:Lo/BidiFormatter;

    invoke-interface {v3}, Lo/BidiFormatter;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    const/4 v4, 0x0

    if-eqz v1, :cond_3

    if-nez v3, :cond_0

    goto :goto_0

    .line 79
    :cond_0
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ge v5, v0, :cond_1

    return v4

    .line 82
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ge v1, v2, :cond_2

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v0, :cond_2

    return v4

    .line 84
    :cond_2
    invoke-super {p0}, Lo/AndroidCharacter;->getAreAllFieldsValid()Z

    move-result v0

    return v0

    :cond_3
    :goto_0
    return v4
.end method

.method public getError(Lo/InputBinding;)Ljava/lang/String;
    .locals 2

    const-string v0, "stringProvider"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    invoke-super {p0, p1}, Lo/AndroidCharacter;->getError(Lo/InputBinding;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 94
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition/viewmodels/MonthYearFieldViewModel;->getShowValidationState()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 95
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition/viewmodels/MonthYearFieldViewModel;->isYearPriorToToday()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 96
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition/viewmodels/MonthYearFieldViewModel;->monthYearType:Lcom/netflix/mediaclient/acquisition/viewmodels/MonthYearType;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/acquisition/viewmodels/MonthYearType;->getInvalidYearError()I

    move-result v0

    invoke-virtual {p1, v0}, Lo/InputBinding;->c(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 97
    :cond_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition/viewmodels/MonthYearFieldViewModel;->isMonthPriorToToday()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 98
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition/viewmodels/MonthYearFieldViewModel;->monthYearType:Lcom/netflix/mediaclient/acquisition/viewmodels/MonthYearType;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/acquisition/viewmodels/MonthYearType;->getInvalidMonthError()I

    move-result v0

    invoke-virtual {p1, v0}, Lo/InputBinding;->c(I)Ljava/lang/String;

    move-result-object v0

    :cond_1
    :goto_0
    return-object v0
.end method

.method public bridge synthetic getError(Lo/InputBinding;Lo/AlteredCharSequence;)Ljava/lang/String;
    .locals 0

    .line 15
    check-cast p2, Lo/BidiFormatter;

    invoke-virtual {p0, p1, p2}, Lcom/netflix/mediaclient/acquisition/viewmodels/MonthYearFieldViewModel;->getError(Lo/InputBinding;Lo/BidiFormatter;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected getError(Lo/InputBinding;Lo/BidiFormatter;)Ljava/lang/String;
    .locals 2

    const-string v0, "stringProvider"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "field"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    invoke-interface {p2}, Lo/BidiFormatter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 106
    instance-of v1, v0, Ljava/lang/Integer;

    if-nez v1, :cond_0

    invoke-direct {p0, p2}, Lcom/netflix/mediaclient/acquisition/viewmodels/MonthYearFieldViewModel;->getEmptyFieldErrorRes(Lo/BidiFormatter;)I

    move-result p2

    invoke-virtual {p1, p2}, Lo/InputBinding;->c(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 107
    :cond_0
    invoke-interface {p2}, Lo/BidiFormatter;->c()I

    move-result p1

    invoke-interface {p2}, Lo/BidiFormatter;->b()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gt p1, v0, :cond_2

    if-ge v1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    goto :goto_1

    .line 108
    :cond_2
    :goto_0
    invoke-direct {p0, p2}, Lcom/netflix/mediaclient/acquisition/viewmodels/MonthYearFieldViewModel;->getRangeFieldErrorRes(Lo/BidiFormatter;)I

    move-result p1

    invoke-static {p1}, Lo/VideoView2;->e(I)Lo/VideoView2;

    move-result-object p1

    .line 109
    invoke-interface {p2}, Lo/BidiFormatter;->c()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "minValue"

    invoke-virtual {p1, v1, v0}, Lo/VideoView2;->a(Ljava/lang/String;Ljava/lang/Object;)Lo/VideoView2;

    move-result-object p1

    .line 110
    invoke-interface {p2}, Lo/BidiFormatter;->b()I

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "maxValue"

    invoke-virtual {p1, v0, p2}, Lo/VideoView2;->a(Ljava/lang/String;Ljava/lang/Object;)Lo/VideoView2;

    move-result-object p1

    .line 111
    invoke-virtual {p1}, Lo/VideoView2;->c()Ljava/lang/String;

    move-result-object p1

    :goto_1
    return-object p1
.end method

.method public getInputFieldCharacterLimit()Ljava/lang/Integer;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getInputFieldSetting()Lo/UtteranceProgressListener;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition/viewmodels/MonthYearFieldViewModel;->inputFieldSetting:Lo/UtteranceProgressListener;

    return-object v0
.end method

.method public final getMonthField()Lo/BidiFormatter;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition/viewmodels/MonthYearFieldViewModel;->monthField:Lo/BidiFormatter;

    return-object v0
.end method

.method public final getMonthYearType()Lcom/netflix/mediaclient/acquisition/viewmodels/MonthYearType;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition/viewmodels/MonthYearFieldViewModel;->monthYearType:Lcom/netflix/mediaclient/acquisition/viewmodels/MonthYearType;

    return-object v0
.end method

.method public getUserFacingString()Ljava/lang/String;
    .locals 3

    .line 48
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition/viewmodels/MonthYearFieldViewModel;->monthField:Lo/BidiFormatter;

    invoke-interface {v0}, Lo/BidiFormatter;->a()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/acquisition/viewmodels/MonthYearFieldViewModel;->yearField:Lo/BidiFormatter;

    invoke-interface {v1}, Lo/BidiFormatter;->a()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/acquisition/viewmodels/MonthYearFieldViewModel$userFacingString$1;->INSTANCE:Lcom/netflix/mediaclient/acquisition/viewmodels/MonthYearFieldViewModel$userFacingString$1;

    check-cast v2, Lo/alN;

    invoke-static {v0, v1, v2}, Lo/NfcA;->c(Ljava/lang/Object;Ljava/lang/Object;Lo/alN;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getYearField()Lo/BidiFormatter;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition/viewmodels/MonthYearFieldViewModel;->yearField:Lo/BidiFormatter;

    return-object v0
.end method

.method public bridge synthetic isValid(Lo/AlteredCharSequence;)Z
    .locals 0

    .line 15
    check-cast p1, Lo/BidiFormatter;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/acquisition/viewmodels/MonthYearFieldViewModel;->isValid(Lo/BidiFormatter;)Z

    move-result p1

    return p1
.end method

.method public isValid(Lo/BidiFormatter;)Z
    .locals 2

    const-string v0, "field"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    invoke-interface {p1}, Lo/BidiFormatter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 89
    invoke-interface {p1}, Lo/BidiFormatter;->c()I

    move-result v1

    invoke-interface {p1}, Lo/BidiFormatter;->b()I

    move-result p1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-le v1, v0, :cond_0

    goto :goto_0

    :cond_0
    if-lt p1, v0, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method public final setMonthAndYear(Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition/viewmodels/MonthYearFieldViewModel;->monthField:Lo/BidiFormatter;

    invoke-interface {v0, p1}, Lo/BidiFormatter;->b(Ljava/lang/Object;)V

    .line 66
    iget-object p1, p0, Lcom/netflix/mediaclient/acquisition/viewmodels/MonthYearFieldViewModel;->yearField:Lo/BidiFormatter;

    invoke-interface {p1, p2}, Lo/BidiFormatter;->b(Ljava/lang/Object;)V

    return-void
.end method

.method public setUserFacingString(Ljava/lang/String;)V
    .locals 7

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 52
    move-object v1, p1

    check-cast v1, Ljava/lang/CharSequence;

    const-string p1, "/"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lo/anv;->c(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    .line 53
    :goto_0
    iget-object v1, p0, Lcom/netflix/mediaclient/acquisition/viewmodels/MonthYearFieldViewModel;->monthField:Lo/BidiFormatter;

    if-eqz p1, :cond_1

    const/4 v2, 0x0

    invoke-static {p1, v2}, Lo/akz;->c(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-static {v2}, Lo/anv;->b(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v0

    :goto_1
    invoke-interface {v1, v2}, Lo/BidiFormatter;->b(Ljava/lang/Object;)V

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    .line 56
    invoke-static {p1, v1}, Lo/akz;->c(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_2

    invoke-static {p1}, Lo/anv;->b(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_2

    :cond_2
    move-object p1, v0

    .line 57
    :goto_2
    iget-object v1, p0, Lcom/netflix/mediaclient/acquisition/viewmodels/MonthYearFieldViewModel;->yearField:Lo/BidiFormatter;

    if-nez p1, :cond_3

    goto :goto_3

    .line 59
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v2, 0x64

    if-ge v0, v2, :cond_4

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    add-int/lit16 p1, p1, 0x7d0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_3

    :cond_4
    move-object v0, p1

    .line 57
    :goto_3
    invoke-interface {v1, v0}, Lo/BidiFormatter;->b(Ljava/lang/Object;)V

    return-void
.end method
