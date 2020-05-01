.class public final Lcom/netflix/mediaclient/acquisition/viewmodels/CountryPhoneInputFieldViewModel;
.super Lo/Emoji;
.source ""


# instance fields
.field private final availableCountries:Lcom/netflix/android/moneyball/fields/Field;

.field private final country:Lo/DynamicLayout;


# direct methods
.method public constructor <init>(Lo/SparseRectFArray;Lo/DynamicLayout;Lo/DynamicLayout;Lcom/netflix/android/moneyball/fields/Field;Lo/FontConfig;)V
    .locals 1

    const-string v0, "formStateChangeListener"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "phoneNumber"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "country"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "availableCountries"

    invoke-static {p4, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inputFieldSetting"

    invoke-static {p5, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0, p1, p2, p5}, Lo/Emoji;-><init>(Lo/SparseRectFArray;Lo/DynamicLayout;Lo/FontConfig;)V

    iput-object p3, p0, Lcom/netflix/mediaclient/acquisition/viewmodels/CountryPhoneInputFieldViewModel;->country:Lo/DynamicLayout;

    iput-object p4, p0, Lcom/netflix/mediaclient/acquisition/viewmodels/CountryPhoneInputFieldViewModel;->availableCountries:Lcom/netflix/android/moneyball/fields/Field;

    return-void
.end method


# virtual methods
.method public final getAvailableCountries()Lcom/netflix/android/moneyball/fields/Field;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition/viewmodels/CountryPhoneInputFieldViewModel;->availableCountries:Lcom/netflix/android/moneyball/fields/Field;

    return-object v0
.end method

.method public final getAvailableCountriesList()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/acquisition/viewmodels/Country;",
            ">;"
        }
    .end annotation

    .line 26
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition/viewmodels/CountryPhoneInputFieldViewModel;->availableCountries:Lcom/netflix/android/moneyball/fields/Field;

    invoke-virtual {v0}, Lcom/netflix/android/moneyball/fields/Field;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    check-cast v0, Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 46
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/Collection;

    .line 55
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 54
    check-cast v2, Ljava/util/Map;

    const-string v3, "id"

    .line 27
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "code"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const-string v5, "name"

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sget-object v5, Lcom/netflix/mediaclient/acquisition/viewmodels/CountryPhoneInputFieldViewModel$availableCountriesList$1$1;->INSTANCE:Lcom/netflix/mediaclient/acquisition/viewmodels/CountryPhoneInputFieldViewModel$availableCountriesList$1$1;

    check-cast v5, Lo/alO;

    invoke-static {v3, v4, v2, v5}, Lo/NfcA;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lo/alO;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/netflix/mediaclient/acquisition/viewmodels/Country;

    if-eqz v2, :cond_0

    .line 54
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 57
    :cond_1
    check-cast v1, Ljava/util/List;

    return-object v1

    .line 26
    :cond_2
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type kotlin.collections.List<kotlin.collections.Map<kotlin.String, kotlin.String>>"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getCountry()Lo/DynamicLayout;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition/viewmodels/CountryPhoneInputFieldViewModel;->country:Lo/DynamicLayout;

    return-object v0
.end method

.method public final getCountryValue()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition/viewmodels/CountryPhoneInputFieldViewModel;->country:Lo/DynamicLayout;

    invoke-interface {v0}, Lo/DynamicLayout;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getSelectedCountryFlagUrl()Ljava/lang/String;
    .locals 2

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://assets.nflxext.com/ffe/siteui/acquisition/androidSignup/flags/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition/viewmodels/CountryPhoneInputFieldViewModel;->getCountryValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final isDropDownAvailable()Z
    .locals 2

    .line 36
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition/viewmodels/CountryPhoneInputFieldViewModel;->getAvailableCountriesList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final setCountryValue(Ljava/lang/String;)V
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition/viewmodels/CountryPhoneInputFieldViewModel;->country:Lo/DynamicLayout;

    invoke-interface {v0, p1}, Lo/DynamicLayout;->b(Ljava/lang/Object;)V

    return-void
.end method
