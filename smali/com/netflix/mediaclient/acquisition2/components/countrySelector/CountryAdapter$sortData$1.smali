.class public final Lcom/netflix/mediaclient/acquisition2/components/countrySelector/CountryAdapter$sortData$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alA;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/ZenModeConfig;->e(Ljava/util/List;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alA<",
        "Lcom/netflix/mediaclient/acquisition2/components/countrySelector/PhoneCodeListWrapper;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field public static final d:Lcom/netflix/mediaclient/acquisition2/components/countrySelector/CountryAdapter$sortData$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/netflix/mediaclient/acquisition2/components/countrySelector/CountryAdapter$sortData$1;

    invoke-direct {v0}, Lcom/netflix/mediaclient/acquisition2/components/countrySelector/CountryAdapter$sortData$1;-><init>()V

    sput-object v0, Lcom/netflix/mediaclient/acquisition2/components/countrySelector/CountryAdapter$sortData$1;->d:Lcom/netflix/mediaclient/acquisition2/components/countrySelector/CountryAdapter$sortData$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final e(Lcom/netflix/mediaclient/acquisition2/components/countrySelector/PhoneCodeListWrapper;)Z
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-virtual {p1}, Lcom/netflix/mediaclient/acquisition2/components/countrySelector/PhoneCodeListWrapper;->e()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 13
    check-cast p1, Lcom/netflix/mediaclient/acquisition2/components/countrySelector/PhoneCodeListWrapper;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/acquisition2/components/countrySelector/CountryAdapter$sortData$1;->e(Lcom/netflix/mediaclient/acquisition2/components/countrySelector/PhoneCodeListWrapper;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
