.class final Lo/Xml$Activity;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/cb;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Xml;->I()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/Xml;


# direct methods
.method constructor <init>(Lo/Xml;)V
    .locals 0

    iput-object p1, p0, Lo/Xml$Activity;->a:Lo/Xml;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDataFetched(Lcom/netflix/mediaclient/service/webclient/model/leafs/MoneyballData;Lcom/netflix/mediaclient/android/app/Status;I)V
    .locals 4

    if-eqz p1, :cond_6

    .line 263
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/MoneyballData;->getPhoneCodesData()Lcom/netflix/mediaclient/service/webclient/model/leafs/PhoneCodesData;

    move-result-object p2

    if-eqz p2, :cond_6

    .line 264
    iget-object p2, p0, Lo/Xml$Activity;->a:Lo/Xml;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/MoneyballData;->getPhoneCodesData()Lcom/netflix/mediaclient/service/webclient/model/leafs/PhoneCodesData;

    move-result-object p1

    invoke-virtual {p2, p1}, Lo/Xml;->d(Lcom/netflix/mediaclient/service/webclient/model/leafs/PhoneCodesData;)V

    .line 265
    iget-object p1, p0, Lo/Xml$Activity;->a:Lo/Xml;

    invoke-virtual {p1}, Lo/Xml;->C()Lcom/netflix/mediaclient/service/webclient/model/leafs/PhoneCodesData;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/PhoneCodesData;->getPhoneCodes()Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, p2

    :goto_0
    if-eqz p1, :cond_6

    .line 267
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/netflix/mediaclient/service/webclient/model/leafs/PhoneCode;

    .line 268
    iget-object v0, p0, Lo/Xml$Activity;->a:Lo/Xml;

    invoke-static {v0}, Lo/Xml;->d(Lo/Xml;)Lo/XmlPullAttributes;

    move-result-object v0

    invoke-virtual {v0}, Lo/XmlPullAttributes;->q()Lcom/netflix/android/moneyball/fields/StringField;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/netflix/android/moneyball/fields/StringField;->getValue()Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    :cond_2
    move-object v0, p2

    :goto_1
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_3

    move-object v0, p2

    :cond_3
    check-cast v0, Ljava/lang/String;

    .line 269
    invoke-virtual {p3}, Lcom/netflix/mediaclient/service/webclient/model/leafs/PhoneCode;->getId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "(this as java.lang.String).toLowerCase()"

    invoke-static {v1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    move-object v3, p2

    :goto_2
    invoke-static {v1, v3}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 270
    iget-object p1, p0, Lo/Xml$Activity;->a:Lo/Xml;

    invoke-virtual {p3}, Lcom/netflix/mediaclient/service/webclient/model/leafs/PhoneCode;->getFormattedCountryCode()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lo/Xml;->e(Ljava/lang/String;)V

    .line 273
    iget-object p1, p0, Lo/Xml$Activity;->a:Lo/Xml;

    invoke-virtual {p1}, Lo/Xml;->G()Lo/Cloneable;

    move-result-object p1

    invoke-virtual {p1, v0}, Lo/Cloneable;->e(Ljava/lang/Object;)V

    goto :goto_3

    .line 269
    :cond_5
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    :goto_3
    return-void
.end method
