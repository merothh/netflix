.class public final Lo/LineHeightSpan;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final e(Ljava/lang/String;)Lcom/netflix/mediaclient/acquisition2/components/tou/TouSettings;
    .locals 2

    if-eqz p1, :cond_0

    .line 12
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string v0, "(this as java.lang.String).toLowerCase()"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0xc43

    if-eq v0, v1, :cond_6

    const/16 v1, 0xcb0

    if-eq v0, v1, :cond_5

    const/16 v1, 0xccc

    if-eq v0, v1, :cond_4

    const/16 v1, 0xd67

    if-eq v0, v1, :cond_3

    const/16 v1, 0xe9e

    if-eq v0, v1, :cond_2

    goto :goto_1

    :cond_2
    const-string v0, "us"

    .line 13
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    sget-object p1, Lcom/netflix/mediaclient/acquisition2/components/tou/TouSettings;->c:Lcom/netflix/mediaclient/acquisition2/components/tou/TouSettings;

    goto :goto_2

    :cond_3
    const-string v0, "kr"

    .line 16
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    sget-object p1, Lcom/netflix/mediaclient/acquisition2/components/tou/TouSettings;->e:Lcom/netflix/mediaclient/acquisition2/components/tou/TouSettings;

    goto :goto_2

    :cond_4
    const-string v0, "fr"

    .line 15
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    sget-object p1, Lcom/netflix/mediaclient/acquisition2/components/tou/TouSettings;->b:Lcom/netflix/mediaclient/acquisition2/components/tou/TouSettings;

    goto :goto_2

    :cond_5
    const-string v0, "eu"

    .line 14
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    sget-object p1, Lcom/netflix/mediaclient/acquisition2/components/tou/TouSettings;->d:Lcom/netflix/mediaclient/acquisition2/components/tou/TouSettings;

    goto :goto_2

    :cond_6
    const-string v0, "be"

    .line 17
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    sget-object p1, Lcom/netflix/mediaclient/acquisition2/components/tou/TouSettings;->d:Lcom/netflix/mediaclient/acquisition2/components/tou/TouSettings;

    goto :goto_2

    .line 18
    :cond_7
    :goto_1
    sget-object p1, Lcom/netflix/mediaclient/acquisition2/components/tou/TouSettings;->a:Lcom/netflix/mediaclient/acquisition2/components/tou/TouSettings;

    :goto_2
    return-object p1
.end method
