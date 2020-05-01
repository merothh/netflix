.class public final Lcom/netflix/mediaclient/acquisition/viewmodels/BirthMonthViewModel;
.super Lo/AndroidCharacter;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/AndroidCharacter<",
        "Lo/BidiFormatter;",
        ">;"
    }
.end annotation


# instance fields
.field private final birthMonthInputField:Lo/BidiFormatter;

.field private final inputFieldSetting:Lo/FontConfig;


# direct methods
.method public constructor <init>(Lo/SilencePlaybackQueueItem;Lo/BidiFormatter;Lo/FontConfig;)V
    .locals 1

    const-string v0, "fieldStateChangeListener"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "birthMonthInputField"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inputFieldSetting"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-static {p2}, Lo/akz;->b(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lo/AndroidCharacter;-><init>(Lo/SilencePlaybackQueueItem;Ljava/util/List;)V

    iput-object p2, p0, Lcom/netflix/mediaclient/acquisition/viewmodels/BirthMonthViewModel;->birthMonthInputField:Lo/BidiFormatter;

    iput-object p3, p0, Lcom/netflix/mediaclient/acquisition/viewmodels/BirthMonthViewModel;->inputFieldSetting:Lo/FontConfig;

    return-void
.end method


# virtual methods
.method public final getBirthMonthInputField()Lo/BidiFormatter;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition/viewmodels/BirthMonthViewModel;->birthMonthInputField:Lo/BidiFormatter;

    return-object v0
.end method

.method public bridge synthetic getError(Lo/InputBinding;Lo/AlteredCharSequence;)Ljava/lang/String;
    .locals 0

    .line 12
    check-cast p2, Lo/BidiFormatter;

    invoke-virtual {p0, p1, p2}, Lcom/netflix/mediaclient/acquisition/viewmodels/BirthMonthViewModel;->getError(Lo/InputBinding;Lo/BidiFormatter;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected getError(Lo/InputBinding;Lo/BidiFormatter;)Ljava/lang/String;
    .locals 1

    const-string v0, "stringProvider"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "field"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-interface {p2}, Lo/BidiFormatter;->a()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    if-nez p2, :cond_0

    .line 29
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition/viewmodels/BirthMonthViewModel;->getInputFieldSetting()Lo/FontConfig;

    move-result-object p2

    invoke-virtual {p2}, Lo/FontConfig;->f()I

    move-result p2

    invoke-virtual {p1, p2}, Lo/InputBinding;->c(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getInputFieldCharacterLimit()Ljava/lang/Integer;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition/viewmodels/BirthMonthViewModel;->birthMonthInputField:Lo/BidiFormatter;

    invoke-interface {v0}, Lo/BidiFormatter;->b()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getInputFieldSetting()Lo/FontConfig;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition/viewmodels/BirthMonthViewModel;->inputFieldSetting:Lo/FontConfig;

    return-object v0
.end method

.method public bridge synthetic getInputFieldSetting()Lo/UtteranceProgressListener;
    .locals 1

    .line 12
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition/viewmodels/BirthMonthViewModel;->getInputFieldSetting()Lo/FontConfig;

    move-result-object v0

    check-cast v0, Lo/UtteranceProgressListener;

    return-object v0
.end method

.method public final getMonthString(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 3

    .line 35
    const-class v0, Landroid/content/Context;

    invoke-static {v0}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-nez p1, :cond_0

    goto :goto_0

    .line 37
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    sget p1, Lcom/netflix/mediaclient/ui/R$AssistContent;->ly:I

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "context.getString(R.string.month_1)"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_c

    :cond_1
    :goto_0
    if-nez p1, :cond_2

    goto :goto_1

    .line 38
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    sget p1, Lcom/netflix/mediaclient/ui/R$AssistContent;->lD:I

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "context.getString(R.string.month_2)"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_c

    :cond_3
    :goto_1
    if-nez p1, :cond_4

    goto :goto_2

    .line 39
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_5

    sget p1, Lcom/netflix/mediaclient/ui/R$AssistContent;->lE:I

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "context.getString(R.string.month_3)"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_c

    :cond_5
    :goto_2
    if-nez p1, :cond_6

    goto :goto_3

    .line 40
    :cond_6
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_7

    sget p1, Lcom/netflix/mediaclient/ui/R$AssistContent;->lB:I

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "context.getString(R.string.month_4)"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_c

    :cond_7
    :goto_3
    if-nez p1, :cond_8

    goto :goto_4

    .line 41
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_9

    sget p1, Lcom/netflix/mediaclient/ui/R$AssistContent;->lA:I

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "context.getString(R.string.month_5)"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_c

    :cond_9
    :goto_4
    if-nez p1, :cond_a

    goto :goto_5

    .line 42
    :cond_a
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_b

    sget p1, Lcom/netflix/mediaclient/ui/R$AssistContent;->lH:I

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "context.getString(R.string.month_6)"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_c

    :cond_b
    :goto_5
    if-nez p1, :cond_c

    goto :goto_6

    .line 43
    :cond_c
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_d

    sget p1, Lcom/netflix/mediaclient/ui/R$AssistContent;->lG:I

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "context.getString(R.string.month_7)"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_c

    :cond_d
    :goto_6
    if-nez p1, :cond_e

    goto :goto_7

    .line 44
    :cond_e
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_f

    sget p1, Lcom/netflix/mediaclient/ui/R$AssistContent;->lF:I

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "context.getString(R.string.month_8)"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_c

    :cond_f
    :goto_7
    if-nez p1, :cond_10

    goto :goto_8

    .line 45
    :cond_10
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x9

    if-ne v1, v2, :cond_11

    sget p1, Lcom/netflix/mediaclient/ui/R$AssistContent;->lJ:I

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "context.getString(R.string.month_9)"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_c

    :cond_11
    :goto_8
    if-nez p1, :cond_12

    goto :goto_9

    .line 46
    :cond_12
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_13

    sget p1, Lcom/netflix/mediaclient/ui/R$AssistContent;->lx:I

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "context.getString(R.string.month_10)"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_c

    :cond_13
    :goto_9
    if-nez p1, :cond_14

    goto :goto_a

    .line 47
    :cond_14
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0xb

    if-ne v1, v2, :cond_15

    sget p1, Lcom/netflix/mediaclient/ui/R$AssistContent;->lz:I

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "context.getString(R.string.month_11)"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_c

    :cond_15
    :goto_a
    if-nez p1, :cond_16

    goto :goto_b

    .line 48
    :cond_16
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 v1, 0xc

    if-ne p1, v1, :cond_17

    sget p1, Lcom/netflix/mediaclient/ui/R$AssistContent;->lC:I

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "context.getString(R.string.month_12)"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_c

    :cond_17
    :goto_b
    const-string p1, ""

    :goto_c
    return-object p1
.end method

.method public getUserFacingString()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition/viewmodels/BirthMonthViewModel;->birthMonthInputField:Lo/BidiFormatter;

    invoke-interface {v0}, Lo/BidiFormatter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/acquisition/viewmodels/BirthMonthViewModel;->getMonthString(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic isValid(Lo/AlteredCharSequence;)Z
    .locals 0

    .line 12
    check-cast p1, Lo/BidiFormatter;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/acquisition/viewmodels/BirthMonthViewModel;->isValid(Lo/BidiFormatter;)Z

    move-result p1

    return p1
.end method

.method public isValid(Lo/BidiFormatter;)Z
    .locals 3

    const-string v0, "field"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    new-instance v0, Lo/amD;

    const/4 v1, 0x1

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lo/amD;-><init>(II)V

    invoke-interface {p1}, Lo/BidiFormatter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lo/amD;->d(I)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public setUserFacingString(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
