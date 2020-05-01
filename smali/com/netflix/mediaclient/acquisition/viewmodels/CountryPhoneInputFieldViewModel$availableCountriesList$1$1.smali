.class final Lcom/netflix/mediaclient/acquisition/viewmodels/CountryPhoneInputFieldViewModel$availableCountriesList$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alO;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/acquisition/viewmodels/CountryPhoneInputFieldViewModel;->getAvailableCountriesList()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alO<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        "Lcom/netflix/mediaclient/acquisition/viewmodels/Country;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/netflix/mediaclient/acquisition/viewmodels/CountryPhoneInputFieldViewModel$availableCountriesList$1$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/netflix/mediaclient/acquisition/viewmodels/CountryPhoneInputFieldViewModel$availableCountriesList$1$1;

    invoke-direct {v0}, Lcom/netflix/mediaclient/acquisition/viewmodels/CountryPhoneInputFieldViewModel$availableCountriesList$1$1;-><init>()V

    sput-object v0, Lcom/netflix/mediaclient/acquisition/viewmodels/CountryPhoneInputFieldViewModel$availableCountriesList$1$1;->INSTANCE:Lcom/netflix/mediaclient/acquisition/viewmodels/CountryPhoneInputFieldViewModel$availableCountriesList$1$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/netflix/mediaclient/acquisition/viewmodels/Country;
    .locals 1

    const-string v0, "id"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "code"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    new-instance v0, Lcom/netflix/mediaclient/acquisition/viewmodels/Country;

    invoke-direct {v0, p1, p2, p3}, Lcom/netflix/mediaclient/acquisition/viewmodels/Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 11
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3}, Lcom/netflix/mediaclient/acquisition/viewmodels/CountryPhoneInputFieldViewModel$availableCountriesList$1$1;->invoke(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/netflix/mediaclient/acquisition/viewmodels/Country;

    move-result-object p1

    return-object p1
.end method
