.class final Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$1;
.super Ljava/util/EnumMap;
.source "LoMoViewPagerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/EnumMap",
        "<",
        "Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;",
        "Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Type;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Class;)V
    .locals 2

    .prologue
    .line 44
    invoke-direct {p0, p1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 45
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->BILLBOARD:Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    sget-object v1, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Type;->BILLBOARD:Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Type;

    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$1;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->CHARACTERS:Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    sget-object v1, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Type;->CHARACTER:Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Type;

    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$1;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->CONTINUE_WATCHING:Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    sget-object v1, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Type;->CW:Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Type;

    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$1;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->DISCOVERY_ROW:Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    sget-object v1, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Type;->DISCOVERY:Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Type;

    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$1;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->INSTANT_QUEUE:Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    sget-object v1, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Type;->IQ:Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Type;

    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$1;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->FLAT_GENRE:Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    sget-object v1, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Type;->STANDARD:Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Type;

    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$1;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->SOCIAL_FRIEND:Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    sget-object v1, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Type;->STANDARD:Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Type;

    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$1;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->SOCIAL_GROUP:Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    sget-object v1, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Type;->STANDARD:Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Type;

    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$1;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->SOCIAL_POPULAR:Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    sget-object v1, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Type;->STANDARD:Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Type;

    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$1;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->STANDARD:Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    sget-object v1, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Type;->STANDARD:Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Type;

    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$1;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->POPULAR_TITLES:Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    sget-object v1, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Type;->STANDARD:Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Type;

    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$1;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->TOP_TEN:Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    sget-object v1, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Type;->STANDARD:Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Type;

    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$1;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    return-void
.end method
