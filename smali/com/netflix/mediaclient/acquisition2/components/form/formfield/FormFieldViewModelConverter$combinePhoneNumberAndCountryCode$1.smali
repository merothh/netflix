.class public final Lcom/netflix/mediaclient/acquisition2/components/form/formfield/FormFieldViewModelConverter$combinePhoneNumberAndCountryCode$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alO;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/SynthesisRequest;->e(Ljava/util/List;)Lcom/netflix/mediaclient/acquisition/viewmodels/CountryPhoneInputFieldViewModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alO<",
        "Lcom/netflix/android/moneyball/fields/StringField;",
        "Lcom/netflix/android/moneyball/fields/StringField;",
        "Lcom/netflix/android/moneyball/fields/Field;",
        "Lcom/netflix/mediaclient/acquisition/viewmodels/CountryPhoneInputFieldViewModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic e:Lo/SynthesisRequest;


# direct methods
.method public constructor <init>(Lo/SynthesisRequest;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/acquisition2/components/form/formfield/FormFieldViewModelConverter$combinePhoneNumberAndCountryCode$1;->e:Lo/SynthesisRequest;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/netflix/android/moneyball/fields/StringField;Lcom/netflix/android/moneyball/fields/StringField;Lcom/netflix/android/moneyball/fields/Field;)Lcom/netflix/mediaclient/acquisition/viewmodels/CountryPhoneInputFieldViewModel;
    .locals 7

    const-string v0, "phone"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "country"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "availableCountries"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/components/form/formfield/FormFieldViewModelConverter$combinePhoneNumberAndCountryCode$1;->e:Lo/SynthesisRequest;

    invoke-static {v0}, Lo/SynthesisRequest;->a(Lo/SynthesisRequest;)Lo/TtsEngines;

    move-result-object v1

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/components/form/formfield/FormFieldViewModelConverter$combinePhoneNumberAndCountryCode$1;->e:Lo/SynthesisRequest;

    invoke-static {v0}, Lo/SynthesisRequest;->c(Lo/SynthesisRequest;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/components/form/formfield/FormFieldViewModelConverter$combinePhoneNumberAndCountryCode$1;->e:Lo/SynthesisRequest;

    invoke-static {v0}, Lo/SynthesisRequest;->e(Lo/SynthesisRequest;)Ljava/lang/String;

    move-result-object v6

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v1 .. v6}, Lo/TtsEngines;->c(Ljava/lang/String;Lcom/netflix/android/moneyball/fields/StringField;Lcom/netflix/android/moneyball/fields/StringField;Lcom/netflix/android/moneyball/fields/Field;Ljava/lang/String;)Lcom/netflix/mediaclient/acquisition/viewmodels/CountryPhoneInputFieldViewModel;

    move-result-object p1

    return-object p1
.end method

.method public synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 25
    check-cast p1, Lcom/netflix/android/moneyball/fields/StringField;

    check-cast p2, Lcom/netflix/android/moneyball/fields/StringField;

    check-cast p3, Lcom/netflix/android/moneyball/fields/Field;

    invoke-virtual {p0, p1, p2, p3}, Lcom/netflix/mediaclient/acquisition2/components/form/formfield/FormFieldViewModelConverter$combinePhoneNumberAndCountryCode$1;->a(Lcom/netflix/android/moneyball/fields/StringField;Lcom/netflix/android/moneyball/fields/StringField;Lcom/netflix/android/moneyball/fields/Field;)Lcom/netflix/mediaclient/acquisition/viewmodels/CountryPhoneInputFieldViewModel;

    move-result-object p1

    return-object p1
.end method
