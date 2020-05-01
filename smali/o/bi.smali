.class public final Lo/bi;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Landroid/content/Intent;J)Lcom/netflix/mediaclient/protocol/nflx/NflxHandler;
    .locals 3

    .line 45
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lo/Am;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 46
    invoke-static {p1}, Lo/aeb;->c(Landroid/content/Intent;)V

    :cond_0
    const-string v0, "NflxHandler"

    const-string v1, "Handle NFLX intent starts...%s"

    .line 49
    invoke-static {v0, v1, p1}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    if-nez p1, :cond_1

    const-string p0, "null intent"

    .line 52
    invoke-static {v0, p0}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    new-instance p0, Lo/bk;

    invoke-direct {p0}, Lo/bk;-><init>()V

    return-object p0

    .line 56
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string p0, "unknown action"

    .line 57
    invoke-static {v0, p0}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    new-instance p0, Lo/bk;

    invoke-direct {p0}, Lo/bk;-><init>()V

    return-object p0

    .line 61
    :cond_2
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_3

    const-string p0, "no uri"

    .line 62
    invoke-static {v0, p0}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    new-instance p0, Lo/bk;

    invoke-direct {p0}, Lo/bk;-><init>()V

    return-object p0

    .line 66
    :cond_3
    invoke-static {v0, p1}, Lo/ChooserTargetService;->a(Ljava/lang/String;Landroid/content/Intent;)V

    .line 67
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-static {p0, p1, p2, p3}, Lo/bi;->b(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Landroid/net/Uri;J)Lcom/netflix/mediaclient/protocol/nflx/NflxHandler;

    move-result-object p0

    return-object p0
.end method

.method private static a(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/util/Map;JLjava/lang/String;)Lcom/netflix/mediaclient/protocol/nflx/NflxHandler;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/android/activity/NetflixActivity;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;J",
            "Ljava/lang/String;",
            ")",
            "Lcom/netflix/mediaclient/protocol/nflx/NflxHandler;"
        }
    .end annotation

    .line 177
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p4

    const-string v0, "NflxHandler"

    if-gtz p4, :cond_0

    const-string p0, "no params exist"

    .line 178
    invoke-static {v0, p0}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    new-instance p0, Lo/bk;

    invoke-direct {p0}, Lo/bk;-><init>()V

    return-object p0

    :cond_0
    const-string p4, "profileGate"

    .line 182
    invoke-interface {p1, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    if-eqz p4, :cond_1

    .line 183
    new-instance p4, Lo/bm;

    invoke-direct {p4, p0, p1, p2, p3}, Lo/bm;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/util/Map;J)V

    return-object p4

    .line 186
    :cond_1
    invoke-static {p1}, Lo/aeb;->c(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p4

    if-nez p4, :cond_2

    const-string p0, "Action is null!"

    .line 188
    invoke-static {v0, p0}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    new-instance p0, Lo/bk;

    invoke-direct {p0}, Lo/bk;-><init>()V

    return-object p0

    .line 191
    :cond_2
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p4, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p4

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 197
    sget-object v3, Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;->d:Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;

    const-string v4, "home"

    .line 199
    invoke-virtual {v4, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_3

    const-string p4, "handleHomeAction starts..."

    .line 200
    invoke-static {v0, p4}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    sget-object v1, Lcom/netflix/cl/model/AppView;->browseTitles:Lcom/netflix/cl/model/AppView;

    .line 203
    new-instance p4, Lo/ba;

    invoke-direct {p4, p0, p1}, Lo/ba;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/util/Map;)V

    :goto_0
    move-object v7, v1

    move-object v5, v3

    const/4 v6, 0x1

    goto/16 :goto_2

    .line 205
    :cond_3
    invoke-static {p4}, Lo/aeb;->e(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string p4, "handle play starts..."

    .line 206
    invoke-static {v0, p4}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    sget-object v1, Lcom/netflix/cl/model/AppView;->playback:Lcom/netflix/cl/model/AppView;

    .line 208
    new-instance p4, Lo/bj;

    invoke-direct {p4, p0, p1}, Lo/bj;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/util/Map;)V

    :goto_1
    move-object v7, v1

    move-object v5, v3

    const/4 v6, 0x0

    goto/16 :goto_2

    .line 210
    :cond_4
    invoke-static {p4}, Lo/aeb;->c(Ljava/lang/String;)Z

    move-result v4

    const/high16 v6, 0x3f800000    # 1.0f

    if-eqz v4, :cond_5

    const-string p4, "view details starts..."

    .line 211
    invoke-static {v0, p4}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    sget-object p4, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    new-instance v0, Lcom/netflix/cl/model/context/DeepLinkInput;

    invoke-static {p1}, Lo/bi;->c(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-direct {v0, v1, v4}, Lcom/netflix/cl/model/context/DeepLinkInput;-><init>(Ljava/lang/String;Ljava/lang/Float;)V

    invoke-virtual {p4, v0}, Lcom/netflix/cl/Logger;->addContext(Lcom/netflix/cl/model/context/CLContext;)J

    .line 216
    sget-object v1, Lcom/netflix/cl/model/AppView;->movieDetails:Lcom/netflix/cl/model/AppView;

    .line 217
    new-instance p4, Lo/bp;

    invoke-direct {p4, p0, p1}, Lo/bp;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/util/Map;)V

    goto :goto_1

    .line 219
    :cond_5
    invoke-static {p4}, Lo/aeb;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    const-string p4, "genre starts..."

    .line 220
    invoke-static {v0, p4}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    sget-object v1, Lcom/netflix/cl/model/AppView;->browseTitles:Lcom/netflix/cl/model/AppView;

    .line 223
    new-instance p4, Lo/bb;

    invoke-direct {p4, p0, p1}, Lo/bb;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/util/Map;)V

    goto :goto_0

    :cond_6
    const-string v4, "search"

    .line 225
    invoke-virtual {v4, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    const-string p4, "search starts..."

    .line 226
    invoke-static {v0, p4}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    sget-object v1, Lcom/netflix/cl/model/AppView;->search:Lcom/netflix/cl/model/AppView;

    .line 228
    new-instance p4, Lo/bl;

    invoke-direct {p4, p0, p1}, Lo/bl;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/util/Map;)V

    goto :goto_1

    :cond_7
    const-string v4, "sync"

    .line 230
    invoke-virtual {v4, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    const-string p4, "sync starts..."

    .line 231
    invoke-static {v0, p4}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    sget-object v1, Lcom/netflix/cl/model/AppView;->browseTitles:Lcom/netflix/cl/model/AppView;

    .line 235
    new-instance p4, Lo/br;

    invoke-direct {p4, p0, p1}, Lo/br;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/util/Map;)V

    goto :goto_0

    :cond_8
    const-string v4, "iq"

    .line 237
    invoke-virtual {v4, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    const-string p4, "Add to instant queue starts..."

    .line 238
    invoke-static {v0, p4}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    sget-object p4, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    new-instance v0, Lcom/netflix/cl/model/context/DeepLinkInput;

    invoke-static {p1}, Lo/bi;->c(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-direct {v0, v1, v4}, Lcom/netflix/cl/model/context/DeepLinkInput;-><init>(Ljava/lang/String;Ljava/lang/Float;)V

    invoke-virtual {p4, v0}, Lcom/netflix/cl/Logger;->addContext(Lcom/netflix/cl/model/context/CLContext;)J

    .line 243
    sget-object v1, Lcom/netflix/cl/model/AppView;->movieDetails:Lcom/netflix/cl/model/AppView;

    .line 244
    new-instance p4, Lo/aU;

    invoke-direct {p4, p0, p1}, Lo/aU;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/util/Map;)V

    goto/16 :goto_1

    :cond_9
    const-string v4, "download"

    .line 246
    invoke-virtual {v4, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    const-string p4, "Add to donwload queue starts..."

    .line 247
    invoke-static {v0, p4}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    sget-object v1, Lcom/netflix/cl/model/AppView;->movieDetails:Lcom/netflix/cl/model/AppView;

    .line 249
    new-instance p4, Lo/aZ;

    invoke-direct {p4, p0, p1}, Lo/aZ;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/util/Map;)V

    goto/16 :goto_1

    .line 252
    :cond_a
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown Nflx action: "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    new-instance p4, Lo/bk;

    invoke-direct {p4}, Lo/bk;-><init>()V

    .line 254
    sget-object v3, Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;->b:Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;

    goto/16 :goto_1

    :goto_2
    move-object v4, p0

    move-wide v8, p2

    .line 257
    invoke-static/range {v4 .. v9}, Lo/aeb;->c(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;ZLcom/netflix/cl/model/AppView;J)V

    return-object p4
.end method

.method public static b(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Landroid/net/Uri;J)Lcom/netflix/mediaclient/protocol/nflx/NflxHandler;
    .locals 3

    const-string v0, "NflxHandler"

    .line 81
    invoke-static {v0, p1}, Lo/adt;->b(Ljava/lang/String;Landroid/net/Uri;)V

    .line 83
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "http"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    const-string v2, "movi.es"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 84
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p2, p3}, Lo/bi;->e(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/lang/String;J)Lcom/netflix/mediaclient/protocol/nflx/NflxHandler;

    move-result-object p0

    return-object p0

    .line 87
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "nflx"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string p0, "unknown scheme"

    .line 88
    invoke-static {v0, p0}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    new-instance p0, Lo/bk;

    invoke-direct {p0}, Lo/bk;-><init>()V

    return-object p0

    .line 92
    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    const-string v2, "www.netflix.com"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string p0, "invalid host"

    .line 93
    invoke-static {v0, p0}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    new-instance p0, Lo/bk;

    invoke-direct {p0}, Lo/bk;-><init>()V

    return-object p0

    .line 97
    :cond_2
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/MemberReferral"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 98
    new-instance p1, Lo/bh;

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p1, p0, p2}, Lo/bh;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/util/Map;)V

    return-object p1

    .line 101
    :cond_3
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/browse"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string p0, "invalid path"

    .line 102
    invoke-static {v0, p0}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    new-instance p0, Lo/bk;

    invoke-direct {p0}, Lo/bk;-><init>()V

    return-object p0

    :cond_4
    const-string v1, "q"

    .line 106
    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 107
    invoke-static {p1}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string p0, "no nflx params"

    .line 108
    invoke-static {v0, p0}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    new-instance p0, Lo/bk;

    invoke-direct {p0}, Lo/bk;-><init>()V

    return-object p0

    .line 112
    :cond_5
    invoke-static {p0, p1, p2, p3}, Lo/bi;->c(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/lang/String;J)Lcom/netflix/mediaclient/protocol/nflx/NflxHandler;

    move-result-object p0

    return-object p0
.end method

.method private static c(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/lang/String;J)Lcom/netflix/mediaclient/protocol/nflx/NflxHandler;
    .locals 8

    const-string v0, "[?&]"

    .line 134
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 135
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 136
    array-length v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v0, v4

    const-string v6, "="

    .line 137
    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-gtz v6, :cond_0

    .line 139
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No params found for: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "NflxHandler"

    invoke-static {v6, v5}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 142
    :cond_0
    invoke-virtual {v5, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    .line 143
    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 147
    invoke-interface {v1, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 150
    :cond_1
    invoke-static {p0, v1, p2, p3, p1}, Lo/bi;->a(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/util/Map;JLjava/lang/String;)Lcom/netflix/mediaclient/protocol/nflx/NflxHandler;

    move-result-object p0

    return-object p0
.end method

.method private static c(Ljava/util/Map;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, "movieid"

    .line 266
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 267
    invoke-static {v0}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 270
    :cond_0
    invoke-static {p0}, Lo/aeb;->d(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static e(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/lang/String;J)Lcom/netflix/mediaclient/protocol/nflx/NflxHandler;
    .locals 8

    .line 280
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lo/Am;

    move-result-object v0

    invoke-virtual {v0}, Lo/Am;->p()Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    const-string v0, "NflxHandler"

    const-string v1, "view details from tiny url starts..."

    .line 281
    invoke-static {v0, v1}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    sget-object v0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    new-instance v1, Lcom/netflix/cl/model/context/DeepLinkInput;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lcom/netflix/cl/model/context/DeepLinkInput;-><init>(Ljava/lang/String;Ljava/lang/Float;)V

    invoke-virtual {v0, v1}, Lcom/netflix/cl/Logger;->addContext(Lcom/netflix/cl/model/context/CLContext;)J

    const-string v0, "source=android"

    .line 286
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 291
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "u"

    .line 292
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    sget-object v3, Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;->d:Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;

    .line 295
    sget-object v5, Lcom/netflix/cl/model/AppView;->movieDetails:Lcom/netflix/cl/model/AppView;

    const/4 v4, 0x0

    move-object v2, p0

    move-wide v6, p2

    invoke-static/range {v2 .. v7}, Lo/aeb;->c(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;ZLcom/netflix/cl/model/AppView;J)V

    .line 300
    new-instance p1, Lo/bp;

    invoke-direct {p1, p0, v0}, Lo/bp;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/util/Map;)V

    return-object p1
.end method
