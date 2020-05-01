.class public Lo/az;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static a(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Landroid/content/Intent;)Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;
    .locals 6

    .line 138
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    const-string v1, "source"

    .line 142
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 143
    invoke-static {v2}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz v0, :cond_0

    .line 145
    :try_start_0
    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 149
    :cond_0
    :goto_0
    invoke-static {v0}, Lo/az;->b(Landroid/net/Uri;)Ljava/util/List;

    move-result-object v3

    .line 150
    invoke-static {v0}, Lo/aed;->a(Landroid/net/Uri;)Ljava/util/Map;

    move-result-object v4

    .line 152
    invoke-static {v2}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 153
    invoke-interface {v4, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const-string v1, "internalCurrentPlayableId"

    .line 156
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 158
    invoke-interface {v4, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    :cond_2
    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    .line 160
    invoke-static {v3, v4, v1}, Lo/az;->d(Ljava/util/List;Ljava/util/Map;Ljava/lang/String;)Lo/aC;

    move-result-object v1

    .line 166
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "uri: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lo/SpinnerAdapter;->e(Ljava/lang/String;)V

    if-nez v1, :cond_3

    .line 169
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Got null creator for data: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ". Redirecting user to browser."

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "NetflixComHandlerFactory"

    invoke-static {v1, p1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 171
    :cond_3
    sget-object v2, Lcom/netflix/mediaclient/protocol/netflixcom/DeepLinkUtils;->b:Lcom/netflix/mediaclient/protocol/netflixcom/DeepLinkUtils;

    invoke-virtual {v2, v0}, Lcom/netflix/mediaclient/protocol/netflixcom/DeepLinkUtils;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p0, v3, v2}, Lo/aC;->b(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/util/List;Ljava/lang/String;)Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;

    move-result-object v1

    .line 172
    sget-object v2, Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;->b:Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;

    if-ne v1, v2, :cond_4

    .line 173
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SPY-7518 - couldn\'t handle the following data: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lo/SpinnerAdapter;->b(Ljava/lang/String;)V

    .line 183
    :goto_1
    sget-object p1, Lcom/netflix/mediaclient/protocol/netflixcom/DeepLinkUtils;->b:Lcom/netflix/mediaclient/protocol/netflixcom/DeepLinkUtils;

    invoke-virtual {p1, p0, v0}, Lcom/netflix/mediaclient/protocol/netflixcom/DeepLinkUtils;->d(Landroid/app/Activity;Landroid/net/Uri;)V

    .line 185
    sget-object p0, Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;->d:Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;

    return-object p0

    .line 176
    :cond_4
    invoke-static {p0, p1}, Lo/Om;->c(Landroid/content/Context;Landroid/content/Intent;)V

    return-object v1
.end method

.method public static a(Landroid/app/Activity;Landroid/content/Intent;)Z
    .locals 4

    .line 105
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 107
    invoke-static {v0}, Lo/az;->b(Landroid/net/Uri;)Ljava/util/List;

    move-result-object v2

    .line 108
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-static {v3}, Lo/aed;->a(Landroid/net/Uri;)Ljava/util/Map;

    move-result-object v3

    .line 113
    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    .line 110
    invoke-static {v2, v3, v0}, Lo/az;->d(Ljava/util/List;Ljava/util/Map;Ljava/lang/String;)Lo/aC;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 118
    invoke-interface {v0, v2}, Lo/aC;->a(Ljava/util/List;)Z

    move-result v0

    xor-int/2addr v1, v0

    :cond_0
    if-eqz v1, :cond_1

    .line 123
    sget-object v0, Lcom/netflix/mediaclient/protocol/netflixcom/DeepLinkUtils;->b:Lcom/netflix/mediaclient/protocol/netflixcom/DeepLinkUtils;

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/netflix/mediaclient/protocol/netflixcom/DeepLinkUtils;->d(Landroid/app/Activity;Landroid/net/Uri;)V

    .line 124
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_1
    return v1
.end method

.method public static b(Landroid/net/Uri;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    .line 199
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 202
    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p0

    .line 204
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    const-string v0, "^[a-zA-Z]{2}(?:-[a-zA-Z]{2}){0,1}(?:-[a-zA-Z]{2})?$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 205
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p0, v1, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method private static c(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "http"

    .line 89
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "https"

    .line 90
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static d(Ljava/util/List;Ljava/util/Map;Ljava/lang/String;)Lo/aC;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lo/aC;"
        }
    .end annotation

    .line 226
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const-string v1, ""

    const/4 v2, 0x0

    if-lez v0, :cond_0

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    const-string v3, "msg.netflix.com"

    .line 229
    invoke-virtual {v3, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 230
    new-instance p0, Lo/aM;

    invoke-direct {p0}, Lo/aM;-><init>()V

    return-object p0

    :cond_1
    const-string p2, "title"

    .line 234
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "watch"

    if-eqz v3, :cond_2

    const-string v3, "fromWatch"

    invoke-interface {p1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v5, "true"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v0, v4

    :cond_2
    const/4 v3, -0x1

    .line 238
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x3

    sparse-switch v5, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string p2, "nmwatch"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    const/4 p2, 0x5

    goto/16 :goto_2

    :sswitch_1
    const-string p2, "Browse"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    const/16 p2, 0x8

    goto/16 :goto_2

    :sswitch_2
    const-string p2, "dislike"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    const/16 p2, 0x11

    goto/16 :goto_2

    :sswitch_3
    const-string p2, "download"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    const/16 p2, 0xb

    goto/16 :goto_2

    :sswitch_4
    const-string p2, "multimonth"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    const/16 p2, 0x1a

    goto/16 :goto_2

    :sswitch_5
    const-string p2, "remind-me"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    const/16 p2, 0x17

    goto/16 :goto_2

    :sswitch_6
    const-string p2, "extrasfeed"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    const/16 p2, 0x14

    goto/16 :goto_2

    :sswitch_7
    const-string p2, "extrasFeed"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    const/16 p2, 0x15

    goto/16 :goto_2

    :sswitch_8
    const-string p2, "notification"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    const/16 p2, 0x12

    goto/16 :goto_2

    :sswitch_9
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    const/4 p2, 0x4

    goto/16 :goto_2

    :sswitch_a
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    const/4 p2, 0x2

    goto/16 :goto_2

    :sswitch_b
    const-string p2, "clips"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    const/4 p2, 0x6

    goto/16 :goto_2

    :sswitch_c
    const-string p2, "Login"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    const/4 p2, 0x1

    goto/16 :goto_2

    :sswitch_d
    const-string p2, "sync"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    const/16 p2, 0xd

    goto/16 :goto_2

    :sswitch_e
    const-string p2, "like"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    const/16 p2, 0x10

    goto/16 :goto_2

    :sswitch_f
    const-string p2, "Kids"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    const/4 p2, 0x3

    goto/16 :goto_2

    :sswitch_10
    const-string p2, "add"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    const/16 p2, 0xa

    goto/16 :goto_2

    :sswitch_11
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    const/4 p2, 0x0

    goto/16 :goto_2

    :sswitch_12
    const-string p2, "search"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    const/16 p2, 0xc

    goto :goto_2

    :sswitch_13
    const-string p2, "profiles"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    const/16 p2, 0xe

    goto :goto_2

    :sswitch_14
    const-string p2, "extras-minusone"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    const/16 p2, 0x18

    goto :goto_2

    :sswitch_15
    const-string p2, "account"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    const/16 p2, 0x19

    goto :goto_2

    :sswitch_16
    const-string p2, "extras"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    const/16 p2, 0x16

    goto :goto_2

    :sswitch_17
    const-string p2, "browse"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    const/4 p2, 0x7

    goto :goto_2

    :sswitch_18
    const-string p2, "MemberReferral"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    const/16 p2, 0x13

    goto :goto_2

    :sswitch_19
    const-string p2, "mobilehelp"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    const/16 p2, 0xf

    goto :goto_2

    :sswitch_1a
    const-string p2, "specials"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    const/16 p2, 0x9

    goto :goto_2

    :cond_3
    :goto_1
    const/4 p2, -0x1

    :goto_2
    const/4 v1, 0x0

    packed-switch p2, :pswitch_data_0

    .line 315
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "SPY-7518 - got unsupported suffix: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "NetflixComHandlerFactory"

    .line 316
    invoke-static {p1, p0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p1

    invoke-interface {p1, p0}, Lo/SpinnerAdapter;->b(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 312
    :pswitch_0
    new-instance v1, Lo/aG;

    invoke-direct {v1}, Lo/aG;-><init>()V

    goto/16 :goto_4

    .line 309
    :pswitch_1
    new-instance v1, Lo/aw;

    invoke-direct {v1}, Lo/aw;-><init>()V

    goto/16 :goto_4

    .line 306
    :pswitch_2
    new-instance v1, Lo/aA;

    invoke-direct {v1}, Lo/aA;-><init>()V

    goto/16 :goto_4

    .line 299
    :pswitch_3
    new-instance v1, Lo/aI;

    invoke-direct {v1}, Lo/aI;-><init>()V

    goto/16 :goto_4

    .line 296
    :pswitch_4
    new-instance v1, Lo/aL;

    invoke-direct {v1, p1}, Lo/aL;-><init>(Ljava/util/Map;)V

    goto/16 :goto_4

    .line 293
    :pswitch_5
    new-instance v1, Lo/aK;

    sget-object p0, Lcom/netflix/mediaclient/ui/details/DetailsActivity$Action;->c:Lcom/netflix/mediaclient/ui/details/DetailsActivity$Action;

    invoke-direct {v1, p0}, Lo/aK;-><init>(Lcom/netflix/mediaclient/ui/details/DetailsActivity$Action;)V

    goto/16 :goto_4

    .line 290
    :pswitch_6
    new-instance v1, Lo/aK;

    sget-object p0, Lcom/netflix/mediaclient/ui/details/DetailsActivity$Action;->b:Lcom/netflix/mediaclient/ui/details/DetailsActivity$Action;

    invoke-direct {v1, p0}, Lo/aK;-><init>(Lcom/netflix/mediaclient/ui/details/DetailsActivity$Action;)V

    goto/16 :goto_4

    .line 287
    :pswitch_7
    new-instance v1, Lo/aD;

    invoke-direct {v1}, Lo/aD;-><init>()V

    goto/16 :goto_4

    .line 284
    :pswitch_8
    new-instance v1, Lo/aJ;

    invoke-direct {v1}, Lo/aJ;-><init>()V

    goto/16 :goto_4

    .line 281
    :pswitch_9
    new-instance v1, Lo/aP;

    invoke-direct {v1}, Lo/aP;-><init>()V

    goto/16 :goto_4

    .line 278
    :pswitch_a
    new-instance v1, Lo/aN;

    invoke-direct {v1, p1}, Lo/aN;-><init>(Ljava/util/Map;)V

    goto/16 :goto_4

    .line 275
    :pswitch_b
    new-instance v1, Lo/aB;

    invoke-direct {v1}, Lo/aB;-><init>()V

    goto/16 :goto_4

    .line 272
    :pswitch_c
    new-instance v1, Lo/av;

    invoke-direct {v1}, Lo/av;-><init>()V

    goto/16 :goto_4

    .line 269
    :pswitch_d
    new-instance v1, Lo/ay;

    const-string p0, "so"

    invoke-interface {p1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const-string p1, "su"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    const/4 v2, 0x1

    :cond_4
    invoke-direct {v1, v2}, Lo/ay;-><init>(Z)V

    goto :goto_4

    .line 254
    :pswitch_e
    new-instance p2, Lo/aW;

    invoke-direct {p2}, Lo/aW;-><init>()V

    .line 255
    sget-object v0, Lcom/netflix/mediaclient/protocol/netflixcom/DeepLinkUtils;->b:Lcom/netflix/mediaclient/protocol/netflixcom/DeepLinkUtils;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/protocol/netflixcom/DeepLinkUtils;->e(Ljava/util/Map;)I

    move-result v0

    int-to-long v3, v0

    invoke-virtual {p2, v3, v4}, Lo/aW;->c(J)V

    .line 256
    sget-object v0, Lcom/netflix/mediaclient/protocol/netflixcom/DeepLinkUtils;->b:Lcom/netflix/mediaclient/protocol/netflixcom/DeepLinkUtils;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/protocol/netflixcom/DeepLinkUtils;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lo/aW;->d(Ljava/lang/String;)V

    .line 257
    sget-object v0, Lcom/netflix/mediaclient/protocol/netflixcom/DeepLinkUtils;->b:Lcom/netflix/mediaclient/protocol/netflixcom/DeepLinkUtils;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/protocol/netflixcom/DeepLinkUtils;->d(Ljava/util/Map;)Z

    move-result p1

    invoke-virtual {p2, p1}, Lo/aW;->b(Z)V

    .line 259
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    if-le p1, v7, :cond_5

    .line 260
    invoke-interface {p0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto :goto_3

    :cond_5
    move-object p0, v1

    .line 262
    :goto_3
    invoke-virtual {p2, p0, v2, v1}, Lo/aW;->e(Ljava/lang/String;ZLjava/lang/String;)V

    .line 264
    new-instance v1, Lo/aX;

    invoke-direct {v1, p2}, Lo/aX;-><init>(Lo/aW;)V

    goto :goto_4

    .line 249
    :pswitch_f
    new-instance v1, Lo/aF;

    invoke-direct {v1}, Lo/aF;-><init>()V

    goto :goto_4

    .line 246
    :pswitch_10
    new-instance v1, Lo/aO;

    invoke-direct {v1}, Lo/aO;-><init>()V

    goto :goto_4

    .line 243
    :pswitch_11
    new-instance v1, Lo/aH;

    invoke-direct {v1}, Lo/aH;-><init>()V

    goto :goto_4

    .line 240
    :pswitch_12
    new-instance v1, Lo/aE;

    invoke-direct {v1}, Lo/aE;-><init>()V

    :goto_4
    return-object v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7f212926 -> :sswitch_1a
        -0x7e61c11d -> :sswitch_19
        -0x702d0389 -> :sswitch_18
        -0x524a5976 -> :sswitch_17
        -0x4cd5119d -> :sswitch_16
        -0x462c75d3 -> :sswitch_15
        -0x44a6bbe0 -> :sswitch_14
        -0x3bbd5416 -> :sswitch_13
        -0x36059a58 -> :sswitch_12
        0x0 -> :sswitch_11
        0x178a1 -> :sswitch_10
        0x23ae8d -> :sswitch_f
        0x32af97 -> :sswitch_e
        0x361a9b -> :sswitch_d
        0x462ff49 -> :sswitch_c
        0x5a5c723 -> :sswitch_b
        0x6942258 -> :sswitch_a
        0x6bac4cf -> :sswitch_9
        0x237a88eb -> :sswitch_8
        0x2d985ea1 -> :sswitch_7
        0x2da6ea81 -> :sswitch_6
        0x41c07b60 -> :sswitch_5
        0x4b3ea8e7 -> :sswitch_4
        0x551ac888 -> :sswitch_3
        0x63a33d25 -> :sswitch_2
        0x771a92aa -> :sswitch_1
        0x7ba87670 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static d(Landroid/content/Intent;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 79
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 80
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lo/az;->c(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 84
    :cond_0
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    const-string v2, "www.netflix.com"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 85
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object p0

    const-string v1, "msg.netflix.com"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    :goto_0
    return v0
.end method

.method public static e(Landroid/content/Intent;)Lo/aC;
    .locals 5

    .line 212
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    const-string v1, "source"

    .line 213
    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 214
    invoke-static {v0}, Lo/az;->b(Landroid/net/Uri;)Ljava/util/List;

    move-result-object v2

    .line 215
    invoke-static {v0}, Lo/aed;->a(Landroid/net/Uri;)Ljava/util/Map;

    move-result-object v3

    .line 216
    invoke-static {p0}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 217
    invoke-interface {v3, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    if-nez v0, :cond_1

    const-string p0, ""

    goto :goto_0

    .line 219
    :cond_1
    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object p0

    .line 220
    :goto_0
    invoke-static {v2, v3, p0}, Lo/az;->d(Ljava/util/List;Ljava/util/Map;Ljava/lang/String;)Lo/aC;

    move-result-object p0

    return-object p0
.end method
