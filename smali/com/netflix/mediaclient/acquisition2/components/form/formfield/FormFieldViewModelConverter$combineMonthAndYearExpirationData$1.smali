.class public final Lcom/netflix/mediaclient/acquisition2/components/form/formfield/FormFieldViewModelConverter$combineMonthAndYearExpirationData$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alN;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/SynthesisRequest;->c(Ljava/util/List;Lcom/netflix/mediaclient/acquisition/viewmodels/MonthYearType;Ljava/lang/String;Ljava/lang/String;)Lcom/netflix/mediaclient/acquisition/viewmodels/MonthYearFieldViewModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alN<",
        "Lcom/netflix/android/moneyball/fields/NumberField;",
        "Lcom/netflix/android/moneyball/fields/NumberField;",
        "Lcom/netflix/mediaclient/acquisition/viewmodels/MonthYearFieldViewModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic c:Lo/SynthesisRequest;

.field final synthetic d:Lcom/netflix/mediaclient/acquisition/viewmodels/MonthYearType;


# direct methods
.method public constructor <init>(Lo/SynthesisRequest;Lcom/netflix/mediaclient/acquisition/viewmodels/MonthYearType;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/acquisition2/components/form/formfield/FormFieldViewModelConverter$combineMonthAndYearExpirationData$1;->c:Lo/SynthesisRequest;

    iput-object p2, p0, Lcom/netflix/mediaclient/acquisition2/components/form/formfield/FormFieldViewModelConverter$combineMonthAndYearExpirationData$1;->d:Lcom/netflix/mediaclient/acquisition/viewmodels/MonthYearType;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final b(Lcom/netflix/android/moneyball/fields/NumberField;Lcom/netflix/android/moneyball/fields/NumberField;)Lcom/netflix/mediaclient/acquisition/viewmodels/MonthYearFieldViewModel;
    .locals 3

    const-string v0, "month"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "year"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/components/form/formfield/FormFieldViewModelConverter$combineMonthAndYearExpirationData$1;->c:Lo/SynthesisRequest;

    invoke-static {v0}, Lo/SynthesisRequest;->a(Lo/SynthesisRequest;)Lo/TtsEngines;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/acquisition2/components/form/formfield/FormFieldViewModelConverter$combineMonthAndYearExpirationData$1;->c:Lo/SynthesisRequest;

    invoke-static {v1}, Lo/SynthesisRequest;->c(Lo/SynthesisRequest;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/acquisition2/components/form/formfield/FormFieldViewModelConverter$combineMonthAndYearExpirationData$1;->d:Lcom/netflix/mediaclient/acquisition/viewmodels/MonthYearType;

    invoke-virtual {v0, v1, p1, p2, v2}, Lo/TtsEngines;->c(Ljava/lang/String;Lcom/netflix/android/moneyball/fields/NumberField;Lcom/netflix/android/moneyball/fields/NumberField;Lcom/netflix/mediaclient/acquisition/viewmodels/MonthYearType;)Lcom/netflix/mediaclient/acquisition/viewmodels/MonthYearFieldViewModel;

    move-result-object p1

    return-object p1
.end method

.method public synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 25
    check-cast p1, Lcom/netflix/android/moneyball/fields/NumberField;

    check-cast p2, Lcom/netflix/android/moneyball/fields/NumberField;

    invoke-virtual {p0, p1, p2}, Lcom/netflix/mediaclient/acquisition2/components/form/formfield/FormFieldViewModelConverter$combineMonthAndYearExpirationData$1;->b(Lcom/netflix/android/moneyball/fields/NumberField;Lcom/netflix/android/moneyball/fields/NumberField;)Lcom/netflix/mediaclient/acquisition/viewmodels/MonthYearFieldViewModel;

    move-result-object p1

    return-object p1
.end method
