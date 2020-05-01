.class final Lcom/netflix/mediaclient/acquisition/view/MonthYearEditText$attachMonthYearTextFormatter$textChangeDisposable$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/acquisition/view/MonthYearEditText;->attachMonthYearTextFormatter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/acquisition/view/MonthYearEditText;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/acquisition/view/MonthYearEditText;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/acquisition/view/MonthYearEditText$attachMonthYearTextFormatter$textChangeDisposable$1;->this$0:Lcom/netflix/mediaclient/acquisition/view/MonthYearEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/CharSequence;)V
    .locals 8

    .line 33
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 35
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const-string v2, "/"

    const/16 v3, 0x2f

    const/4 v4, 0x1

    const/4 v5, 0x2

    const/4 v6, 0x0

    if-ne v0, v4, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition/view/MonthYearEditText$attachMonthYearTextFormatter$textChangeDisposable$1;->this$0:Lcom/netflix/mediaclient/acquisition/view/MonthYearEditText;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/acquisition/view/MonthYearEditText;->getPreviousText()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    move-object v7, v2

    check-cast v7, Ljava/lang/CharSequence;

    invoke-static {v0, v7, v6, v5, v1}, Lo/anv;->c(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 37
    invoke-static {p1}, Lo/anv;->b(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 39
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-le v0, v4, :cond_8

    .line 40
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition/view/MonthYearEditText$attachMonthYearTextFormatter$textChangeDisposable$1;->this$0:Lcom/netflix/mediaclient/acquisition/view/MonthYearEditText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/acquisition/view/MonthYearEditText;->setText(Ljava/lang/CharSequence;)V

    .line 41
    iget-object p1, p0, Lcom/netflix/mediaclient/acquisition/view/MonthYearEditText$attachMonthYearTextFormatter$textChangeDisposable$1;->this$0:Lcom/netflix/mediaclient/acquisition/view/MonthYearEditText;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/acquisition/view/MonthYearEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v6

    :cond_0
    invoke-virtual {p1, v6}, Lcom/netflix/mediaclient/acquisition/view/MonthYearEditText;->setSelection(I)V

    goto/16 :goto_1

    .line 43
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v5, :cond_3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition/view/MonthYearEditText$attachMonthYearTextFormatter$textChangeDisposable$1;->this$0:Lcom/netflix/mediaclient/acquisition/view/MonthYearEditText;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/acquisition/view/MonthYearEditText;->getPreviousText()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    move-object v7, v2

    check-cast v7, Ljava/lang/CharSequence;

    invoke-static {v0, v7, v6, v5, v1}, Lo/anv;->c(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 44
    invoke-static {p1}, Lo/anv;->b(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 46
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition/view/MonthYearEditText$attachMonthYearTextFormatter$textChangeDisposable$1;->this$0:Lcom/netflix/mediaclient/acquisition/view/MonthYearEditText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/acquisition/view/MonthYearEditText;->setText(Ljava/lang/CharSequence;)V

    .line 47
    iget-object p1, p0, Lcom/netflix/mediaclient/acquisition/view/MonthYearEditText$attachMonthYearTextFormatter$textChangeDisposable$1;->this$0:Lcom/netflix/mediaclient/acquisition/view/MonthYearEditText;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/acquisition/view/MonthYearEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v6

    :cond_2
    invoke-virtual {p1, v6}, Lcom/netflix/mediaclient/acquisition/view/MonthYearEditText;->setSelection(I)V

    goto/16 :goto_1

    .line 49
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v7, 0x3

    if-ne v0, v7, :cond_5

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition/view/MonthYearEditText$attachMonthYearTextFormatter$textChangeDisposable$1;->this$0:Lcom/netflix/mediaclient/acquisition/view/MonthYearEditText;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/acquisition/view/MonthYearEditText;->getPreviousText()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v0, v2, v6, v5, v1}, Lo/anv;->c(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 51
    invoke-virtual {p1, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    invoke-static {v0}, Lo/anv;->b(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 54
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition/view/MonthYearEditText$attachMonthYearTextFormatter$textChangeDisposable$1;->this$0:Lcom/netflix/mediaclient/acquisition/view/MonthYearEditText;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/acquisition/view/MonthYearEditText;->setText(Ljava/lang/CharSequence;)V

    .line 55
    iget-object p1, p0, Lcom/netflix/mediaclient/acquisition/view/MonthYearEditText$attachMonthYearTextFormatter$textChangeDisposable$1;->this$0:Lcom/netflix/mediaclient/acquisition/view/MonthYearEditText;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/acquisition/view/MonthYearEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v6

    :cond_4
    invoke-virtual {p1, v6}, Lcom/netflix/mediaclient/acquisition/view/MonthYearEditText;->setSelection(I)V

    goto/16 :goto_1

    .line 57
    :cond_5
    iget-object p1, p0, Lcom/netflix/mediaclient/acquisition/view/MonthYearEditText$attachMonthYearTextFormatter$textChangeDisposable$1;->this$0:Lcom/netflix/mediaclient/acquisition/view/MonthYearEditText;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/acquisition/view/MonthYearEditText;->getPreviousText()Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_6

    const/4 p1, 0x1

    goto :goto_0

    :cond_6
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_8

    .line 58
    iget-object p1, p0, Lcom/netflix/mediaclient/acquisition/view/MonthYearEditText$attachMonthYearTextFormatter$textChangeDisposable$1;->this$0:Lcom/netflix/mediaclient/acquisition/view/MonthYearEditText;

    invoke-static {p1}, Lcom/netflix/mediaclient/acquisition/view/MonthYearEditText;->access$getMonthYearValue(Lcom/netflix/mediaclient/acquisition/view/MonthYearEditText;)Lkotlin/Pair;

    move-result-object p1

    invoke-virtual {p1}, Lkotlin/Pair;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {p1}, Lkotlin/Pair;->e()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz v0, :cond_8

    if-eqz p1, :cond_8

    .line 61
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x7d0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-lt v1, v2, :cond_7

    sub-int/2addr p1, v2

    .line 62
    :cond_7
    sget-object v1, Lo/amj;->c:Lo/amj;

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v6

    array-length p1, v1

    invoke-static {v1, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    const-string v1, "%02d"

    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "java.lang.String.format(format, *args)"

    invoke-static {p1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    sget-object v5, Lo/amj;->c:Lo/amj;

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v6

    array-length v0, v4

    invoke-static {v4, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    iget-object v1, p0, Lcom/netflix/mediaclient/acquisition/view/MonthYearEditText$attachMonthYearTextFormatter$textChangeDisposable$1;->this$0:Lcom/netflix/mediaclient/acquisition/view/MonthYearEditText;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v1, p1}, Lcom/netflix/mediaclient/acquisition/view/MonthYearEditText;->setText(Ljava/lang/CharSequence;)V

    .line 68
    :cond_8
    :goto_1
    iget-object p1, p0, Lcom/netflix/mediaclient/acquisition/view/MonthYearEditText$attachMonthYearTextFormatter$textChangeDisposable$1;->this$0:Lcom/netflix/mediaclient/acquisition/view/MonthYearEditText;

    invoke-static {p1}, Lcom/netflix/mediaclient/acquisition/view/MonthYearEditText;->access$updateMonthYear(Lcom/netflix/mediaclient/acquisition/view/MonthYearEditText;)V

    .line 69
    iget-object p1, p0, Lcom/netflix/mediaclient/acquisition/view/MonthYearEditText$attachMonthYearTextFormatter$textChangeDisposable$1;->this$0:Lcom/netflix/mediaclient/acquisition/view/MonthYearEditText;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/acquisition/view/MonthYearEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/acquisition/view/MonthYearEditText;->setPreviousText(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 9
    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/acquisition/view/MonthYearEditText$attachMonthYearTextFormatter$textChangeDisposable$1;->accept(Ljava/lang/CharSequence;)V

    return-void
.end method
