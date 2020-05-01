.class public final Lo/agn$ActionBar;
.super Lo/BlockedNumberContract;
.source ""

# interfaces
.implements Lo/DocumentsProvider;
.implements Lcom/netflix/mediaclient/service/webclient/model/leafs/MemberReferralDetails;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/agn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ActionBar"
.end annotation


# instance fields
.field private b:Ljava/lang/String;

.field private c:Z

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 56
    invoke-direct {p0}, Lo/BlockedNumberContract;-><init>()V

    return-void
.end method

.method private final e(Ljava/lang/String;)Lcom/netflix/mediaclient/service/webclient/model/leafs/MemberReferralDetails$Incentive;
    .locals 2

    if-eqz p1, :cond_0

    .line 80
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v1, "Locale.ROOT"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "(this as java.lang.String).toUpperCase(locale)"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 81
    :goto_0
    sget-object v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/MemberReferralDetails$Incentive;->FREE_TRIAL:Lcom/netflix/mediaclient/service/webclient/model/leafs/MemberReferralDetails$Incentive;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/MemberReferralDetails$Incentive;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/netflix/mediaclient/service/webclient/model/leafs/MemberReferralDetails$Incentive;->FREE_TRIAL:Lcom/netflix/mediaclient/service/webclient/model/leafs/MemberReferralDetails$Incentive;

    goto :goto_1

    .line 82
    :cond_1
    sget-object p1, Lcom/netflix/mediaclient/service/webclient/model/leafs/MemberReferralDetails$Incentive;->NO_INCENTIVE:Lcom/netflix/mediaclient/service/webclient/model/leafs/MemberReferralDetails$Incentive;

    :goto_1
    return-object p1
.end method


# virtual methods
.method public enabled()Z
    .locals 1

    .line 63
    iget-boolean v0, p0, Lo/agn$ActionBar;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/agn$ActionBar;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public friendIncentive()Lcom/netflix/mediaclient/service/webclient/model/leafs/MemberReferralDetails$Incentive;
    .locals 1

    .line 65
    iget-object v0, p0, Lo/agn$ActionBar;->b:Ljava/lang/String;

    invoke-direct {p0, v0}, Lo/agn$ActionBar;->e(Ljava/lang/String;)Lcom/netflix/mediaclient/service/webclient/model/leafs/MemberReferralDetails$Incentive;

    move-result-object v0

    return-object v0
.end method

.method public memberIncentive()Lcom/netflix/mediaclient/service/webclient/model/leafs/MemberReferralDetails$Incentive;
    .locals 1

    .line 66
    iget-object v0, p0, Lo/agn$ActionBar;->e:Ljava/lang/String;

    invoke-direct {p0, v0}, Lo/agn$ActionBar;->e(Ljava/lang/String;)Lcom/netflix/mediaclient/service/webclient/model/leafs/MemberReferralDetails$Incentive;

    move-result-object v0

    return-object v0
.end method

.method public populate(Lcom/google/gson/JsonElement;)V
    .locals 3

    const-string v0, "jsonElem"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/gson/JsonObject;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonElement;

    if-nez v1, :cond_1

    goto :goto_0

    .line 70
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "friendIncentiveId"

    .line 73
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lo/adN;->e(Lcom/google/gson/JsonElement;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/agn$ActionBar;->b:Ljava/lang/String;

    goto :goto_0

    :sswitch_1
    const-string v2, "url"

    .line 72
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lo/adN;->e(Lcom/google/gson/JsonElement;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/agn$ActionBar;->d:Ljava/lang/String;

    goto :goto_0

    :sswitch_2
    const-string v2, "memberIncentiveId"

    .line 74
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lo/adN;->e(Lcom/google/gson/JsonElement;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/agn$ActionBar;->e:Ljava/lang/String;

    goto :goto_0

    :sswitch_3
    const-string v2, "enabled"

    .line 71
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lo/adN;->c(Lcom/google/gson/JsonElement;)Z

    move-result v0

    iput-boolean v0, p0, Lo/agn$ActionBar;->c:Z

    goto :goto_0

    :cond_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x5ff074bf -> :sswitch_3
        -0x230daf14 -> :sswitch_2
        0x1c56f -> :sswitch_1
        0x51c56668 -> :sswitch_0
    .end sparse-switch
.end method

.method public url()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lo/agn$ActionBar;->d:Ljava/lang/String;

    return-object v0
.end method
