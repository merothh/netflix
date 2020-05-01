.class public final Lo/SentenceSuggestionsInfo;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/SentenceSuggestionsInfo$TaskDescription;
    }
.end annotation


# static fields
.field private static final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final d:Lo/SentenceSuggestionsInfo$TaskDescription;


# instance fields
.field private final e:Lo/SmartSelectionEventTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Lo/SentenceSuggestionsInfo$TaskDescription;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/SentenceSuggestionsInfo$TaskDescription;-><init>(Lo/amc;)V

    sput-object v0, Lo/SentenceSuggestionsInfo;->d:Lo/SentenceSuggestionsInfo$TaskDescription;

    const/16 v0, 0x5f

    new-array v0, v0, [Lkotlin/Pair;

    const-string v2, "VISA"

    const-string v3, "https://assets.nflxext.com//ffe/siteui/acquisition/payment/12_11_2014_icon_visa_37x25_2x.png"

    .line 29
    invoke-static {v2, v3}, Lo/akk;->b(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v0, v3

    const-string v2, "MASTERCARD"

    const-string v4, "https://assets.nflxext.com//ffe/siteui/acquisition/payment/12_05_2017_icon_master_33x25_2x.png"

    .line 30
    invoke-static {v2, v4}, Lo/akk;->b(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v0, v4

    const-string v2, "MAESTRO"

    const-string v5, "https://assets.nflxext.com//ffe/siteui/acquisition/payment/maestro.png"

    .line 31
    invoke-static {v2, v5}, Lo/akk;->b(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v5, 0x2

    aput-object v2, v0, v5

    const-string v2, "DISCOVER"

    const-string v6, "https://assets.nflxext.com//ffe/siteui/acquisition/payment/10_18_2014_icon_discovery_37x25_2x.png"

    .line 32
    invoke-static {v2, v6}, Lo/akk;->b(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v6, 0x3

    aput-object v2, v0, v6

    const-string v2, "AMEX"

    const-string v6, "https://assets.nflxext.com//ffe/siteui/acquisition/payment/10_18_2014_icon_amex_37x25_2x.png"

    .line 33
    invoke-static {v2, v6}, Lo/akk;->b(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v6, 0x4

    aput-object v2, v0, v6

    const-string v2, "DINERS"

    const-string v6, "https://assets.nflxext.com//ffe/siteui/acquisition/payment/icon_DinersClub_37x25_2x.png"

    .line 34
    invoke-static {v2, v6}, Lo/akk;->b(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v6, 0x5

    aput-object v2, v0, v6

    const-string v2, "ELO"

    const-string v6, "https://assets.nflxext.com//ffe/siteui/acquisition/payment/icon_elo_37x25_2x.png"

    .line 35
    invoke-static {v2, v6}, Lo/akk;->b(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v6, 0x6

    aput-object v2, v0, v6

    const-string v2, "PAYPAL"

    const-string v6, "https://assets.nflxext.com/en_us/layout/ecweb/payment/icons/paypal.png"

    .line 36
    invoke-static {v2, v6}, Lo/akk;->b(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v6, 0x7

    aput-object v2, v0, v6

    const-string v2, "CARTES_BANCAIRES"

    const-string v6, "https://assets.nflxext.com//ffe/siteui/acquisition/payment/carte-bleue.png"

    .line 37
    invoke-static {v2, v6}, Lo/akk;->b(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/16 v6, 0x8

    aput-object v2, v0, v6

    const-string v2, "https://assets.nflxext.com/ffe/siteui/acquisition/payment/itau.png"

    const-string v6, "ITAU_BRAZIL"

    .line 38
    invoke-static {v6, v2}, Lo/akk;->b(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v6

    const/16 v7, 0x9

    aput-object v6, v0, v7

    const-string v6, "Itau"

    .line 39
    invoke-static {v6, v2}, Lo/akk;->b(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/16 v6, 0xa

    aput-object v2, v0, v6

    const-string v2, "https://assets.nflxext.com/ffe/siteui/acquisition/payment/bradesco.png"

    const-string v6, "BRADESCO_BRAZIL"

    .line 40
    invoke-static {v6, v2}, Lo/akk;->b(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v6

    const/16 v7, 0xb

    aput-object v6, v0, v7

    const-string v6, "Bradesco"

    .line 41
    invoke-static {v6, v2}, Lo/akk;->b(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/16 v6, 0xc

    aput-object v2, v0, v6

    const-string v2, "https://assets.nflxext.com/ffe/siteui/acquisition/payment/hsbc.png"

    const-string v6, "HSBC_BRAZIL"

    .line 42
    invoke-static {v6, v2}, Lo/akk;->b(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v6

    const/16 v7, 0xd

    aput-object v6, v0, v7

    const-string v6, "https://assets.nflxext.com/ffe/siteui/acquisition/payment/santander.png"

    const-string v7, "SANTANDER_BRAZIL"

    .line 43
    invoke-static {v7, v6}, Lo/akk;->b(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v7

    const/16 v8, 0xe

    aput-object v7, v0, v8

    const-string v7, "https://assets.nflxext.com/ffe/siteui/acquisition/payment/caixa.png"

    const-string v8, "CAIXA_BRAZIL"

    .line 44
    invoke-static {v8, v7}, Lo/akk;->b(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v8

    const/16 v9, 0xf

    aput-object v8, v0, v9

    const-string v8, "Caixa"

    .line 45
    invoke-static {v8, v7}, Lo/akk;->b(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v7

    const/16 v8, 0x10

    aput-object v7, v0, v8

    const-string v7, "BancoDoBrazil"

    const-string v8, "https://assets.nflxext.com/ffe/siteui/acquisition/payment/banco-do-brazil.png"

    .line 46
    invoke-static {v7, v8}, Lo/akk;->b(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v7

    const/16 v8, 0x11

    aput-object v7, v0, v8

    const-string v7, "https://assets.nflxext.com/en_us/layout/ecweb/payment/icons/ideal.png"

    const-string v8, "IDEAL"

    .line 47
    invoke-static {v8, v7}, Lo/akk;->b(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v8

    const/16 v9, 0x12

    aput-object v8, v0, v9

    const-string v8, "DOTPAY"

    .line 48
    invoke-static {v8, v7}, Lo/akk;->b(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v7

    const/16 v8, 0x13

    aput-object v7, v0, v8

    const-string v7, "Naranja"

    const-string v8, "https://assets.nflxext.com/ffe/siteui/acquisition/payment/mop_icons_global/icon_AR_naranja_rect.png"

    .line 49
    invoke-static {v7, v8}, Lo/akk;->b(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v7

    const/16 v8, 0x14

    aput-object v7, v0, v8

    const-string v7, "Cencosud"

    const-string v8, "https://assets.nflxext.com/ffe/siteui/acquisition/payment/mop_icons_global/icon_AR_cencosud_rect.png"

    .line 50
    invoke-static {v7, v8}, Lo/akk;->b(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v7

    const/16 v8, 0x15

    aput-object v7, v0, v8

    const-string v7, "Cabal"

    const-string v8, "https://assets.nflxext.com/ffe/siteui/acquisition/payment/mop_icons_global/icon_AR_cabal.png"

    .line 51
    invoke-static {v7, v8}, Lo/akk;->b(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v7

    const/16 v8, 0x16

    aput-object v7, v0, v8

    const-string v7, "CMRFalabella"

    const-string v8, "https://assets.nflxext.com/ffe/siteui/acquisition/payment/mop_icons_global/icon_AR_falabella.png"

    .line 52
    invoke-static {v7, v8}, Lo/akk;->b(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v7

    const/16 v8, 0x17

    aput-object v7, v0, v8

    const-string v7, "JCB"

    const-string v8, "https://assets.nflxext.com//ffe/siteui/acquisition/payment/icon_jcb_37x25_2x.png"

    .line 53
    invoke-static {v7, v8}, Lo/akk;->b(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v7

    const/16 v8, 0x18

    aput-object v7, v0, v8

    const-string v7, "Bancomer"

    const-string v8, "https://assets.nflxext.com/ffe/siteui/acquisition/payment/bancomer.png"

    .line 54
    invoke-static {v7, v8}, Lo/akk;->b(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v7

    const/16 v8, 0x19

    aput-object v7, v0, v8

    const-string v7, "Banamex"

    const-string v8, "https://assets.nflxext.com/ffe/siteui/acquisition/payment/banamex.png"

    .line 55
    invoke-static {v7, v8}, Lo/akk;->b(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v7

    const/16 v8, 0x1a

    aput-object v7, v0, v8

    const-string v7, "HSBC"

    .line 56
    invoke-static {v7, v2}, Lo/akk;->b(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/16 v7, 0x1b

    aput-object v2, v0, v7

    const-string v2, "Santander"

    .line 57
    invoke-static {v2, v6}, Lo/akk;->b(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/16 v6, 0x1c

    aput-object v2, v0, v6

    const-string v2, "Banorte"

    const-string v6, "https://assets.nflxext.com/ffe/siteui/acquisition/payment/banorte.png"

    .line 58
    invoke-static {v2, v6}, Lo/akk;->b(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/16 v6, 0x1d

    aput-object v2, v0, v6

    const-string v2, "Azteca"

    const-string v6, "https://assets.nflxext.com/us/layout/ecweb/payment/icons/azteca.png"

    .line 59
    invoke-static {v2, v6}, Lo/akk;->b(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/16 v6, 0x1e

    aput-object v2, v0, v6

    const-string v2, "SOFORT"

    const-string v6, "https://assets.nflxext.com/ffe/siteui/acquisition/payment/mop_icons_global/icon_DE_sofort2.png"

    .line 60
    invoke-static {v2, v6}, Lo/akk;->b(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/16 v6, 0x1f

    aput-object v2, v0, v6

    const-string v2, "BANCONTACT_MISTER_CASH"

    const-string v6, "https://assets.nflxext.com/ffe/siteui/acquisition/payment/mop_icons_global/icon_BE_bancontact.png"

    .line 61
    invoke-static {v2, v6}, Lo/akk;->b(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/16 v6, 0x20

    aput-object v2, v0, v6

    const-string v2, "KLARNA"

    const-string v6, "https://assets.nflxext.com/ffe/siteui/acquisition/payment/mop_icons_global/icon_SE_klarna2.png"

    .line 62
    invoke-static {v2, v6}, Lo/akk;->b(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/16 v6, 0x21

    aput-object v2, v0, v6

    const-string v2, "YANDEX"

    const-string v6, "https://assets.nflxext.com/ffe/siteui/acquisition/payment/mop_icons_global/icon_RU_yandex.png"

    .line 63
    invoke-static {v2, v6}, Lo/akk;->b(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/16 v6, 0x22

    aput-object v2, v0, v6

    const-string v2, "WEB_MONEY"

    const-string v6, "https://assets.nflxext.com/ffe/siteui/acquisition/payment/mop_icons_global/icon_RU_webmoney.png"

    .line 64
    invoke-static {v2, v6}, Lo/akk;->b(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/16 v6, 0x23

    aput-object v2, v0, v6

    const-string v2, "QIWI"

    const-string v6, "https://assets.nflxext.com/ffe/siteui/acquisition/payment/mop_icons_global/icon_RU_qiwi.png"

    .line 65
    invoke-static {v2, v6}, Lo/akk;->b(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/16 v6, 0x24

    aput-object v2, v0, v6

    const-string v2, "NACION"

    const-string v6, "https://assets.nflxext.com/ffe/siteui/acquisition/payment/mop_icons_global/icon_AR_1nacion.png"

    .line 66
    invoke-static {v2, v6}, Lo/akk;->b(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/16 v6, 0x25

    aput-object v2, v0, v6

    const-string v2, "PROVINCIA"

    const-string v6, "https://assets.nflxext.com/ffe/siteui/acquisition/payment/mop_icons_global/icon_AR_2provincia.png"

    .line 67
    invoke-static {v2, v6}, Lo/akk;->b(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/16 v6, 0x26

    aput-object v2, v0, v6

    const-string v2, "SUPERVIELLE"

    const-string v6, "https://assets.nflxext.com/ffe/siteui/acquisition/payment/mop_icons_global/icon_AR_3supervielle.png"

    .line 68
    invoke-static {v2, v6}, Lo/akk;->b(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/16 v6, 0x27

    aput-object v2, v0, v6

    const-string v2, "SANTANDER_AR"

    const-string v6, "https://assets.nflxext.com/ffe/siteui/acquisition/payment/mop_icons_global/icon_AR_4santander.png"

    .line 69
    invoke-static {v2, v6}, Lo/akk;->b(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/16 v6, 0x28

    aput-object v2, v0, v6

    const-string v2, "GALICIA"

    const-string v6, "https://assets.nflxext.com/ffe/siteui/acquisition/payment/mop_icons_global/icon_AR_5galicia.png"

    .line 70
    invoke-static {v2, v6}, Lo/akk;->b(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/16 v6, 0x29

    aput-object v2, v0, v6

    const-string v2, "BBVA"

    const-string v6, "https://assets.nflxext.com/ffe/siteui/acquisition/payment/mop_icons_global/icon_AR_6bbva.png"

    .line 71
    invoke-static {v2, v6}, Lo/akk;->b(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/16 v6, 0x2a

    aput-object v2, v0, v6

    const-string v2, "DU"

    const-string v6, "https://assets.nflxext.com/ffe/siteui/acquisition/payment/mop_icons_global/icon_AE_du.png"

    .line 72
    invoke-static {v2, v6}, Lo/akk;->b(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/16 v6, 0x2b

    aput-object v2, v0, v6

    const-string v2, "ETISALAT"

    const-string v6, "https://assets.nflxext.com/ffe/siteui/acquisition/payment/mop_icons_global/icon_AE_etisalat.png"

    .line 73
    invoke-static {v2, v6}, Lo/akk;->b(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/16 v6, 0x2c

    aput-object v2, v0, v6

    const-string v2, "ISRACARD"

    const-string v6, "https://assets.nflxext.com/ffe/siteui/acquisition/payment/mop_icons_global/icon_IL_isracard.png"

    .line 74
    invoke-static {v2, v6}, Lo/akk;->b(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/16 v6, 0x2d

    aput-object v2, v0, v6

    const-string v2, "CASHU"

    const-string v6, "https://assets.nflxext.com/ffe/siteui/acquisition/payment/mop_icons_global/icon_EG_cashu_arab.png"

    .line 75
    invoke-static {v2, v6}, Lo/akk;->b(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/16 v6, 0x2e

    aput-object v2, v0, v6

    const-string v2, "SADAD"

    const-string v6, "https://assets.nflxext.com/ffe/siteui/acquisition/payment/mop_icons_global/icon_SA_sadad.png"

    .line 76
    invoke-static {v2, v6}, Lo/akk;->b(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/16 v6, 0x2f

    aput-object v2, v0, v6

    const-string v2, "BALOTO"

    const-string v6, "https://assets.nflxext.com/ffe/siteui/acquisition/payment/mop_icons_global/icon_CO_baloto.png"

    .line 77
    invoke-static {v2, v6}, Lo/akk;->b(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/16 v6, 0x30

    aput-object v2, v0, v6

    const-string v2, "ALTO"

    const-string v6, "https://assets.nflxext.com/ffe/siteui/acquisition/payment/mop_icons_global/icon_ID_alto.png"

    .line 78
    invoke-static {v2, v6}, Lo/akk;->b(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/16 v6, 0x31

    aput-object v2, v0, v6

    const-string v2, "ATM"

    const-string v6, "https://assets.nflxext.com/ffe/siteui/acquisition/payment/mop_icons_global/icon_ID_atmbersama.png"

    .line 79
    invoke-static {v2, v6}, Lo/akk;->b(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/16 v6, 0x32

    aput-object v2, v0, v6

    const-string v2, "PRIMA"

    const-string v6, "https://assets.nflxext.com/ffe/siteui/acquisition/payment/mop_icons_global/icon_ID_prima.png"

    .line 80
    invoke-static {v2, v6}, Lo/akk;->b(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/16 v6, 0x33

    aput-object v2, v0, v6

    const-string v2, "OXXO"

    const-string v6, "https://assets.nflxext.com/ffe/siteui/acquisition/payment/mop_icons_global/icon_MX_oxxo.png"

    .line 81
    invoke-static {v2, v6}, Lo/akk;->b(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/16 v6, 0x34

    aput-object v2, v0, v6

    const-string v2, "PAYU"

    const-string v6, "https://assets.nflxext.com/ffe/siteui/acquisition/payment/mop_icons_global/icon_TR_payu.png"

    .line 82
    invoke-static {v2, v6}, Lo/akk;->b(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/16 v6, 0x35

    aput-object v2, v0, v6

    const-string v2, "SMART_LINK"

    const-string v6, "https://assets.nflxext.com/ffe/siteui/acquisition/payment/mop_icons_global/icon_VN_smartlink.png"

    .line 83
    invoke-static {v2, v6}, Lo/akk;->b(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/16 v6, 0x36

    aput-object v2, v0, v6

    const-string v2, "GIFT_CODE"

    const-string v6, "https://assets.nflxext.com/ffe/siteui/acquisition/payment/icon_NetflixGiftCard_37x25_2x.png"

    .line 84
    invoke-static {v2, v6}, Lo/akk;->b(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/16 v6, 0x37

    aput-object v2, v0, v6

    const-string v2, "BC"

    const-string v6, "https://assets.nflxext.com/ffe/siteui/acquisition/payment/icon_bc_37x25_2x.png"

    .line 85
    invoke-static {v2, v6}, Lo/akk;->b(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/16 v6, 0x38

    aput-object v2, v0, v6

    const-string v2, "Lotte"

    const-string v6, "https://assets.nflxext.com/ffe/siteui/acquisition/payment/icon_lotte_37x25_2x.png"

    .line 86
    invoke-static {v2, v6}, Lo/akk;->b(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/16 v6, 0x39

    aput-object v2, v0, v6

    const-string v2, "Shinhan"

    const-string v6, "https://assets.nflxext.com/ffe/siteui/acquisition/payment/icon_shinhan_37x25_2x.png"

    .line 87
    invoke-static {v2, v6}, Lo/akk;->b(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/16 v6, 0x3a

    aput-object v2, v0, v6

    const-string v2, "KB"

    const-string v6, "https://assets.nflxext.com/ffe/siteui/acquisition/payment/icon_kb_37x25_2x.png"

    .line 88
    invoke-static {v2, v6}, Lo/akk;->b(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/16 v6, 0x3b

    aput-object v2, v0, v6

    const-string v2, "KEB"

    const-string v6, "https://assets.nflxext.com/ffe/siteui/acquisition/payment/icon_keb_37x25_2x.png"

    .line 89
    invoke-static {v2, v6}, Lo/akk;->b(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/16 v6, 0x3c

    aput-object v2, v0, v6

    const-string v2, "NH"

    const-string v6, "https://assets.nflxext.com/ffe/siteui/acquisition/payment/icon_nh_37x25_2x.png"

    .line 90
    invoke-static {v2, v6}, Lo/akk;->b(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/16 v6, 0x3d

    aput-object v2, v0, v6

    const-string v2, "Samsung"

    const-string v6, "https://assets.nflxext.com/ffe/siteui/acquisition/payment/icon_samsung_37x25_2x.png"

    .line 91
    invoke-static {v2, v6}, Lo/akk;->b(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/16 v6, 0x3e

    aput-object v2, v0, v6

    const-string v2, "Hyundai"

    const-string v6, "https://assets.nflxext.com/ffe/siteui/acquisition/payment/icon_hyundai_37x25_2x.png"

    .line 92
    invoke-static {v2, v6}, Lo/akk;->b(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/16 v6, 0x3f

    aput-object v2, v0, v6

    const-string v2, "Hana"

    const-string v6, "https://assets.nflxext.com/ffe/siteui/acquisition/payment/icon_hana_37x25_2x.png"

    .line 93
    invoke-static {v2, v6}, Lo/akk;->b(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/16 v6, 0x40

    aput-object v2, v0, v6

    const-string v2, "GLOBE"

    const-string v6, "https://assets.nflxext.com/ffe/siteui/acquisition/payment/icon_globe_2x.png"

    .line 94
    invoke-static {v2, v6}, Lo/akk;->b(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/16 v6, 0x41

    aput-object v2, v0, v6

    const-string v2, "MAXIS"

    const-string v6, "https://assets.nflxext.com/ffe/siteui/acquisition/payment/icon_maxis_2x.png"

    .line 95
    invoke-static {v2, v6}, Lo/akk;->b(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/16 v6, 0x42

    aput-object v2, v0, v6

    const-string v2, "DIGI"

    const-string v6, "https://assets.nflxext.com/ffe/siteui/acquisition/payment/icon_digi_2x.png"

    .line 96
    invoke-static {v2, v6}, Lo/akk;->b(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/16 v6, 0x43

    aput-object v2, v0, v6

    const-string v2, "ATT_MEXICO"

    const-string v6, "https://assets.nflxext.com/ffe/siteui/acquisition/payment/icon_att_mx_2x.png"

    .line 97
    invoke-static {v2, v6}, Lo/akk;->b(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/16 v6, 0x44

    aput-object v2, v0, v6

    const-string v2, "BYTEL_TV"

    const-string v6, "https://assets.nflxext.com/ffe/siteui/acquisition/payment/icon_bouygues_2x.png"

    .line 98
    invoke-static {v2, v6}, Lo/akk;->b(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/16 v6, 0x45

    aput-object v2, v0, v6

    const-string v2, "SMARTONE"

    const-string v6, "https://assets.nflxext.com/ffe/siteui/acquisition/payment/smartone_2x.png"

    .line 99
    invoke-static {v2, v6}, Lo/akk;->b(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/16 v6, 0x46

    aput-object v2, v0, v6

    const-string v2, "TELENORPK"

    const-string v6, "https://assets.nflxext.com/ffe/siteui/acquisition/payment/telenorpk_2x.png"

    .line 100
    invoke-static {v2, v6}, Lo/akk;->b(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/16 v6, 0x47

    aput-object v2, v0, v6

    const-string v2, "DIALOG"

    const-string v6, "https://assets.nflxext.com/ffe/siteui/acquisition/payment/dialog_2x.png"

    .line 101
    invoke-static {v2, v6}, Lo/akk;->b(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/16 v6, 0x48

    aput-object v2, v0, v6

    const-string v2, "DTAC"

    const-string v6, "https://assets.nflxext.com/ffe/siteui/acquisition/payment/icon_dtac_2x.png"

    .line 102
    invoke-static {v2, v6}, Lo/akk;->b(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/16 v6, 0x49

    aput-object v2, v0, v6

    const-string v2, "CODD"

    const-string v6, "https://assets.nflxext.com/ffe/siteui/acquisition/payment/icon_debit_co_2x.png"

    .line 103
    invoke-static {v2, v6}, Lo/akk;->b(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/16 v6, 0x4a

    aput-object v2, v0, v6

    const-string v2, "PLAY"

    const-string v6, "https://assets.nflxext.com/ffe/siteui/acquisition/payment/play_2x.png"

    .line 104
    invoke-static {v2, v6}, Lo/akk;->b(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/16 v6, 0x4b

    aput-object v2, v0, v6

    const-string v2, "https://assets.nflxext.com/ffe/siteui/acquisition/payment/entel_2x.png"

    const-string v6, "ENTEL_PERU_PI"

    .line 105
    invoke-static {v6, v2}, Lo/akk;->b(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v6

    const/16 v7, 0x4c

    aput-object v6, v0, v7

    const-string v6, "ENTEL_PI"

    .line 106
    invoke-static {v6, v2}, Lo/akk;->b(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/16 v6, 0x4d

    aput-object v2, v0, v6

    const-string v2, "PARTNER_COMMS"

    const-string v6, "https://assets.nflxext.com/ffe/siteui/acquisition/payment/icon_partner_comms_2x.png"

    .line 107
    invoke-static {v2, v6}, Lo/akk;->b(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/16 v6, 0x4e

    aput-object v2, v0, v6

    const-string v2, "AIS"

    const-string v6, "https://assets.nflxext.com/ffe/siteui/acquisition/payment/icon_ais_2x.png"

    .line 108
    invoke-static {v2, v6}, Lo/akk;->b(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/16 v6, 0x4f

    aput-object v2, v0, v6

    const-string v2, "CARNET"

    const-string v6, "https://assets.nflxext.com/ffe/siteui/acquisition/payment/carnet_2x.png"

    .line 109
    invoke-static {v2, v6}, Lo/akk;->b(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/16 v6, 0x50

    aput-object v2, v0, v6

    const-string v2, "CELCOM"

    const-string v6, "https://assets.nflxext.com/ffe/siteui/acquisition/payment/malaysia_celcom_2x.png"

    .line 110
    invoke-static {v2, v6}, Lo/akk;->b(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/16 v6, 0x51

    aput-object v2, v0, v6

    const-string v2, "CSL"

    const-string v6, "https://assets.nflxext.com/ffe/siteui/acquisition/payment/hongkong_csl_2x.png"

    .line 111
    invoke-static {v2, v6}, Lo/akk;->b(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/16 v6, 0x52

    aput-object v2, v0, v6

    const-string v2, "MADA"

    const-string v6, "https://assets.nflxext.com/ffe/siteui/acquisition/payment/sa_mada_2x.png"

    .line 112
    invoke-static {v2, v6}, Lo/akk;->b(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/16 v6, 0x53

    aput-object v2, v0, v6

    const-string v2, "SMARTPH"

    const-string v6, "https://assets.nflxext.com/ffe/siteui/acquisition/payment/philippines_smartph_2x.png"

    .line 113
    invoke-static {v2, v6}, Lo/akk;->b(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/16 v6, 0x54

    aput-object v2, v0, v6

    const-string v2, "SUNPH"

    const-string v6, "https://assets.nflxext.com/ffe/siteui/acquisition/payment/philippines_sun_2x.png"

    .line 114
    invoke-static {v2, v6}, Lo/akk;->b(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/16 v6, 0x55

    aput-object v2, v0, v6

    const-string v2, "SWISSCOM"

    const-string v6, "https://assets.nflxext.com/ffe/siteui/acquisition/payment/switzerland_swisscom_2x.png"

    .line 115
    invoke-static {v2, v6}, Lo/akk;->b(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/16 v6, 0x56

    aput-object v2, v0, v6

    const-string v2, "TROY"

    const-string v6, "https://assets.nflxext.com/ffe/siteui/acquisition/payment/troy_2x.png"

    .line 116
    invoke-static {v2, v6}, Lo/akk;->b(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/16 v6, 0x57

    aput-object v2, v0, v6

    const-string v2, "HIPERCARD"

    const-string v6, "https://assets.nflxext.com/ffe/siteui/acquisition/payment/hipercard@2x.png"

    .line 117
    invoke-static {v2, v6}, Lo/akk;->b(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/16 v6, 0x58

    aput-object v2, v0, v6

    const-string v2, "Nubank"

    const-string v6, "https://assets.nflxext.com/ffe/siteui/acquisition/payment/nubank.png"

    .line 118
    invoke-static {v2, v6}, Lo/akk;->b(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/16 v6, 0x59

    aput-object v2, v0, v6

    const-string v2, "https://assets.nflxext.com/ffe/siteui/acquisition/payment/o2.png"

    const-string v6, "O2CZ"

    .line 119
    invoke-static {v6, v2}, Lo/akk;->b(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v6

    const/16 v7, 0x5a

    aput-object v6, v0, v7

    const-string v6, "O2DE"

    .line 120
    invoke-static {v6, v2}, Lo/akk;->b(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v6

    const/16 v7, 0x5b

    aput-object v6, v0, v7

    const-string v6, "O2GB"

    .line 121
    invoke-static {v6, v2}, Lo/akk;->b(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v6

    const/16 v7, 0x5c

    aput-object v6, v0, v7

    const-string v6, "O2SK"

    .line 122
    invoke-static {v6, v2}, Lo/akk;->b(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/16 v6, 0x5d

    aput-object v2, v0, v6

    const-string v2, "VERVE"

    const-string v6, "https://assets.nflxext.com/ffe/siteui/acquisition/payment/icon_verve_2x.png"

    .line 123
    invoke-static {v2, v6}, Lo/akk;->b(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/16 v6, 0x5e

    aput-object v2, v0, v6

    .line 28
    invoke-static {v0}, Lo/akI;->c([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lo/SentenceSuggestionsInfo;->c:Ljava/util/Map;

    new-array v0, v5, [Lkotlin/Pair;

    const-string v2, "SMARTFREN"

    const-string v5, "smartfren.webp"

    .line 129
    invoke-static {v2, v5}, Lo/akk;->b(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    aput-object v2, v0, v3

    const-string v2, "EU_DIRECT_DEBIT"

    .line 130
    invoke-static {v2, v1}, Lo/akk;->b(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    aput-object v1, v0, v4

    .line 126
    invoke-static {v0}, Lo/akI;->c([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lo/SentenceSuggestionsInfo;->b:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Lo/SmartSelectionEventTracker;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "imageResolutionCalculator"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/SentenceSuggestionsInfo;->e:Lo/SmartSelectionEventTracker;

    return-void
.end method


# virtual methods
.method public final a(Lo/SystemTextClassifier;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const-string v0, "signupErrorReporter"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mopLogoKey"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 140
    sget-object v0, Lo/SentenceSuggestionsInfo;->b:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 141
    sget-object p1, Lo/SentenceSuggestionsInfo;->b:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_2

    .line 149
    iget-object p2, p0, Lo/SentenceSuggestionsInfo;->e:Lo/SmartSelectionEventTracker;

    invoke-virtual {p2}, Lo/SmartSelectionEventTracker;->d()Lcom/netflix/mediaclient/service/configuration/ImageResolutionClass;

    move-result-object p2

    iget-object p2, p2, Lcom/netflix/mediaclient/service/configuration/ImageResolutionClass;->d:Ljava/lang/String;

    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://assets.nflxext.com/ffe/siteui/acquisition/payment/android/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p2, 0x2f

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 155
    :cond_0
    sget-object v0, Lo/SentenceSuggestionsInfo;->c:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 158
    sget-object p1, Lo/SentenceSuggestionsInfo;->c:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    const-string v3, "SignupNativeMissingMopLogoUrl"

    move-object v2, p1

    move-object v4, p2

    .line 160
    invoke-static/range {v2 .. v7}, Lo/SystemTextClassifier;->e(Lo/SystemTextClassifier;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;ILjava/lang/Object;)V

    :cond_2
    :goto_0
    return-object v1
.end method
