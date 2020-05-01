.class public Lo/PidHealthStats;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static d:Lo/PidHealthStats;


# instance fields
.field private a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lo/ProcessHealthStats<",
            "Ljava/lang/Integer;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private final e:[Ljava/lang/String;

.field private f:Lcom/netflix/cstatssamurai/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/netflix/cstatssamurai/LruCache<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private g:Z

.field private h:I

.field private i:Ljava/lang/String;

.field private final j:I

.field private final k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private n:Lo/SystemHealthManager;


# direct methods
.method private constructor <init>()V
    .locals 8

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "RANDOM-13184FEF-8ABF-4BBA-B995-E07DD7533917"

    const-string v1, "NFANDROIDD-PRV-P-LGE==NEXUS=5X-5911-C0A895E8B085608B2E11E44BB98763AB2395CE32EC6823C9CF3A08560119B593"

    const-string v2, "NFANDROID1-PRV-P-LGE==NEXUS=5X-5911-F1DFFFD908041FC15D630BBC3598EAF950856E85ADBCD155910CB9BD31EEAC51"

    .line 27
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/PidHealthStats;->e:[Ljava/lang/String;

    const/16 v0, 0x64

    .line 35
    iput v0, p0, Lo/PidHealthStats;->j:I

    .line 41
    invoke-static {}, Lo/PidHealthStats;->e()Ljava/util/HashMap;

    move-result-object v1

    iput-object v1, p0, Lo/PidHealthStats;->k:Ljava/util/Map;

    const/4 v1, 0x0

    .line 83
    iput-object v1, p0, Lo/PidHealthStats;->i:Ljava/lang/String;

    const/4 v1, 0x1

    .line 85
    iput-boolean v1, p0, Lo/PidHealthStats;->g:Z

    const-string v1, "[{\"category\":\"drop\",\"description\":\"ignore / don\\u0027t bucket, unless something above recursively resolves here\",\"remark\":\"also include arbitrary netflix + ccTLDs\",\"hostnamepatterns\":[\"netflix\\\\.net\",\"hailmary\\\\.netflix\\\\.com\",\"www\\\\.netflix\\\\.com\",\"nflxso\\\\.net\"]},{\"category\":\"awsapi\",\"description\":\"AWS API Calls\",\"hostnamepatterns\":[\"android\\\\..*\\\\.cloud\\\\.netflix\\\\.com\",\"api-global\\\\.netflix\\\\.com\",\"api-staging\\\\.netflix\\\\.com\",\"apis\\\\.netflix\\\\.com\",\"search\\\\.netflix\\\\.ca\",\"oca-api\\\\.netflix\\\\.com\"]},{\"category\":\"awslog\",\"description\":\"AWS logging requests\",\"hostnamepatterns\":[\"ichnaea\\\\.netflix\\\\.com\",\"customerevents\\\\.netflix\\\\.com\",\"presentationtracking\\\\.netflix\\\\.com\",\"beacon\\\\.netflix\\\\.com\"]},{\"category\":\"awsboot\",\"description\":\"AWS Boot Requests for client startup\",\"hostnamepatterns\":[\"uiboot\\\\.netflix\\\\.com\",\"appboot\\\\.netflix\\\\.com\"]},{\"category\":\"awslicense\",\"description\":\"AWS License Request traffic\",\"hostnamepatterns\":[\".*\\\\.nrd\\\\.netflix\\\\.com\",\"nrdp\\\\.nccp\\\\.netflix\\\\.com\",\"android\\\\.nccp\\\\.netflix\\\\.com\",\"ios\\\\.nccp\\\\.netflix\\\\.com\",\"cbp\\\\.nccp\\\\.netflix\\\\.com\",\".*\\\\.nccp\\\\.netflix\\\\.com\"]},{\"category\":\"aws\",\"description\":\"General AWS traffic\",\"hostnamepatterns\":[\"account\\\\.netflix\\\\.com\",\"signup\\\\.netflix\\\\.com\",\"fast\\\\.netflix\\\\.com\"]},{\"category\":\"akamai\",\"description\":\"Akamai CDN Resources\",\"hostnamepatterns\":[\"secure\\\\.netflix\\\\.com\",\".*\\\\.netflix\\\\.ca\",\".*\\\\.nflximg\\\\.net\",\".*\\\\.nflximg\\\\.com\",\".*\\\\.nflxext\\\\.com\"]},{\"category\":\"ocso\",\"description\":\"Open Connect small objects\",\"hostnamepatterns\":[\".*\\\\.nflxso\\\\.net\"]},{\"category\":\"ocftl\",\"description\":\"Open Connect FTL\",\"hostnamepatterns\":[\".*\\\\.ftl\\\\.netflix\\\\.com\",\"api-ftl\\\\.netflix\\\\.com\"]},{\"category\":\"oc\",\"description\":\"General Open Connect\",\"remark\":\"might catch too much, but don\\u0027t have a definitive list of OC hostnames\",\"hostnamepatterns\":[\".*\\\\.nflxvideo\\\\.net\",\".*\"]},{\"ignore\":true,\"date\":2.0170214E7,\"rev\":1.0}]"

    .line 87
    invoke-direct {p0, v1}, Lo/PidHealthStats;->a(Ljava/lang/String;)V

    .line 89
    new-instance v1, Ljava/util/HashMap;

    iget-object v2, p0, Lo/PidHealthStats;->e:[Ljava/lang/String;

    array-length v2, v2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, p0, Lo/PidHealthStats;->a:Ljava/util/HashMap;

    .line 90
    iget-object v1, p0, Lo/PidHealthStats;->e:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_0

    aget-object v5, v1, v4

    .line 91
    iget-object v6, p0, Lo/PidHealthStats;->a:Ljava/util/HashMap;

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v6, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 94
    :cond_0
    iput v3, p0, Lo/PidHealthStats;->h:I

    .line 95
    new-instance v1, Lcom/netflix/cstatssamurai/LruCache;

    invoke-direct {v1, v0}, Lcom/netflix/cstatssamurai/LruCache;-><init>(I)V

    iput-object v1, p0, Lo/PidHealthStats;->f:Lcom/netflix/cstatssamurai/LruCache;

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 13

    .line 105
    new-instance v0, Lo/SystemHealthManager;

    invoke-direct {v0, p1}, Lo/SystemHealthManager;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lo/PidHealthStats;->n:Lo/SystemHealthManager;

    .line 106
    iget-object p1, p0, Lo/PidHealthStats;->n:Lo/SystemHealthManager;

    .line 107
    invoke-virtual {p1}, Lo/SystemHealthManager;->b()[Ljava/lang/String;

    move-result-object p1

    .line 106
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 108
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    if-ge v0, v1, :cond_0

    const-string v0, "drop"

    .line 109
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lo/PidHealthStats;->b:Ljava/util/HashMap;

    .line 113
    iget-object v0, p0, Lo/PidHealthStats;->n:Lo/SystemHealthManager;

    invoke-virtual {v0}, Lo/SystemHealthManager;->b()[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_1

    aget-object v5, v0, v4

    .line 114
    iget-object v6, p0, Lo/PidHealthStats;->b:Ljava/util/HashMap;

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v6, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 117
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lo/PidHealthStats;->c:Ljava/util/HashMap;

    .line 119
    iget-object p1, p0, Lo/PidHealthStats;->n:Lo/SystemHealthManager;

    invoke-virtual {p1}, Lo/SystemHealthManager;->b()[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_3

    aget-object v4, p1, v1

    .line 120
    sget-object v5, Lo/PackageHealthStats;->b:[Ljava/lang/String;

    array-length v6, v5

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v6, :cond_2

    aget-object v8, v5, v7

    .line 121
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 124
    new-instance v10, Lo/ProcessHealthStats;

    const-class v11, Ljava/lang/Integer;

    invoke-direct {v10, v11}, Lo/ProcessHealthStats;-><init>(Ljava/lang/Class;)V

    const/16 v11, 0x7530

    .line 126
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/16 v12, 0x30

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v2, v11, v12}, Lo/ProcessHealthStats;->a(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Integer;)V

    const-string v11, "duration"

    .line 127
    invoke-virtual {v9, v11, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    new-instance v10, Lo/ProcessHealthStats;

    const-class v11, Ljava/lang/Integer;

    invoke-direct {v10, v11}, Lo/ProcessHealthStats;-><init>(Ljava/lang/Class;)V

    const/high16 v11, 0x20000

    .line 131
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/16 v12, 0x20

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v2, v11, v12}, Lo/ProcessHealthStats;->a(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Integer;)V

    const-string v11, "size"

    .line 132
    invoke-virtual {v9, v11, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    invoke-direct {p0, v4, v8}, Lo/PidHealthStats;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 137
    iget-object v10, p0, Lo/PidHealthStats;->c:Ljava/util/HashMap;

    invoke-virtual {v10, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public static b()Lo/PidHealthStats;
    .locals 1

    .line 151
    sget-object v0, Lo/PidHealthStats;->d:Lo/PidHealthStats;

    if-nez v0, :cond_0

    .line 152
    new-instance v0, Lo/PidHealthStats;

    invoke-direct {v0}, Lo/PidHealthStats;-><init>()V

    sput-object v0, Lo/PidHealthStats;->d:Lo/PidHealthStats;

    .line 155
    :cond_0
    sget-object v0, Lo/PidHealthStats;->d:Lo/PidHealthStats;

    return-object v0
.end method

.method private d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 p1, 0x2e

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private static e()Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "mobile"

    const-string v2, "m"

    .line 54
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "w"

    const-string v2, "wired"

    .line 55
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "wifi"

    .line 56
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "o"

    const-string v2, "wimax"

    .line 57
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "cdma"

    .line 58
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "gsm"

    .line 59
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "bluetooth"

    .line 60
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private static e(Ljava/util/Map;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 209
    new-instance v0, Ljava/util/HashMap;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 210
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 211
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz v2, :cond_0

    .line 212
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 266
    invoke-virtual {p0}, Lo/PidHealthStats;->toString()Ljava/lang/String;

    move-result-object v0

    .line 269
    iget v1, p0, Lo/PidHealthStats;->h:I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 270
    iget-object v1, p0, Lo/PidHealthStats;->f:Lcom/netflix/cstatssamurai/LruCache;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/netflix/cstatssamurai/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iput v0, p0, Lo/PidHealthStats;->h:I

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .line 313
    iput-object p1, p0, Lo/PidHealthStats;->i:Ljava/lang/String;

    return-void
.end method

.method public c()V
    .locals 2

    .line 143
    sget-object v0, Lo/PidHealthStats;->d:Lo/PidHealthStats;

    if-eqz v0, :cond_0

    const-string v0, "[{\"category\":\"drop\",\"description\":\"ignore / don\\u0027t bucket, unless something above recursively resolves here\",\"remark\":\"also include arbitrary netflix + ccTLDs\",\"hostnamepatterns\":[\"netflix\\\\.net\",\"hailmary\\\\.netflix\\\\.com\",\"www\\\\.netflix\\\\.com\",\"nflxso\\\\.net\"]},{\"category\":\"awsapi\",\"description\":\"AWS API Calls\",\"hostnamepatterns\":[\"android\\\\..*\\\\.cloud\\\\.netflix\\\\.com\",\"api-global\\\\.netflix\\\\.com\",\"api-staging\\\\.netflix\\\\.com\",\"apis\\\\.netflix\\\\.com\",\"search\\\\.netflix\\\\.ca\",\"oca-api\\\\.netflix\\\\.com\"]},{\"category\":\"awslog\",\"description\":\"AWS logging requests\",\"hostnamepatterns\":[\"ichnaea\\\\.netflix\\\\.com\",\"customerevents\\\\.netflix\\\\.com\",\"presentationtracking\\\\.netflix\\\\.com\",\"beacon\\\\.netflix\\\\.com\"]},{\"category\":\"awsboot\",\"description\":\"AWS Boot Requests for client startup\",\"hostnamepatterns\":[\"uiboot\\\\.netflix\\\\.com\",\"appboot\\\\.netflix\\\\.com\"]},{\"category\":\"awslicense\",\"description\":\"AWS License Request traffic\",\"hostnamepatterns\":[\".*\\\\.nrd\\\\.netflix\\\\.com\",\"nrdp\\\\.nccp\\\\.netflix\\\\.com\",\"android\\\\.nccp\\\\.netflix\\\\.com\",\"ios\\\\.nccp\\\\.netflix\\\\.com\",\"cbp\\\\.nccp\\\\.netflix\\\\.com\",\".*\\\\.nccp\\\\.netflix\\\\.com\"]},{\"category\":\"aws\",\"description\":\"General AWS traffic\",\"hostnamepatterns\":[\"account\\\\.netflix\\\\.com\",\"signup\\\\.netflix\\\\.com\",\"fast\\\\.netflix\\\\.com\"]},{\"category\":\"akamai\",\"description\":\"Akamai CDN Resources\",\"hostnamepatterns\":[\"secure\\\\.netflix\\\\.com\",\".*\\\\.netflix\\\\.ca\",\".*\\\\.nflximg\\\\.net\",\".*\\\\.nflximg\\\\.com\",\".*\\\\.nflxext\\\\.com\"]},{\"category\":\"ocso\",\"description\":\"Open Connect small objects\",\"hostnamepatterns\":[\".*\\\\.nflxso\\\\.net\"]},{\"category\":\"ocftl\",\"description\":\"Open Connect FTL\",\"hostnamepatterns\":[\".*\\\\.ftl\\\\.netflix\\\\.com\",\"api-ftl\\\\.netflix\\\\.com\"]},{\"category\":\"oc\",\"description\":\"General Open Connect\",\"remark\":\"might catch too much, but don\\u0027t have a definitive list of OC hostnames\",\"hostnamepatterns\":[\".*\\\\.nflxvideo\\\\.net\",\".*\"]},{\"ignore\":true,\"date\":2.0170214E7,\"rev\":1.0}]"

    .line 144
    invoke-direct {p0, v0}, Lo/PidHealthStats;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 145
    iput v0, p0, Lo/PidHealthStats;->h:I

    .line 146
    new-instance v0, Lcom/netflix/cstatssamurai/LruCache;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Lcom/netflix/cstatssamurai/LruCache;-><init>(I)V

    iput-object v0, p0, Lo/PidHealthStats;->f:Lcom/netflix/cstatssamurai/LruCache;

    :cond_0
    return-void
.end method

.method public c(Z)V
    .locals 0

    .line 204
    iput-boolean p1, p0, Lo/PidHealthStats;->g:Z

    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 6

    .line 276
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x7b

    .line 277
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 279
    iget-object v1, p0, Lo/PidHealthStats;->f:Lcom/netflix/cstatssamurai/LruCache;

    invoke-virtual {v1}, Lcom/netflix/cstatssamurai/LruCache;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_1

    :cond_0
    const-string v4, ", "

    .line 283
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "\":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const/16 v1, 0x7d

    .line 287
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 288
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    .line 296
    :try_start_0
    new-instance v1, Ljava/net/URI;

    invoke-direct {v1, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 297
    invoke-virtual {v1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 301
    iget-object p1, p0, Lo/PidHealthStats;->n:Lo/SystemHealthManager;

    invoke-virtual {v1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lo/SystemHealthManager;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p1

    :catch_0
    :cond_0
    return-object v0
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;I)V
    .locals 2

    .line 192
    iget-boolean v0, p0, Lo/PidHealthStats;->g:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/PidHealthStats;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 194
    iget-object v0, p0, Lo/PidHealthStats;->i:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lo/PidHealthStats;->k:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lo/PidHealthStats;->k:Ljava/util/Map;

    iget-object v1, p0, Lo/PidHealthStats;->i:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, "o"

    .line 197
    :goto_0
    iget-object v1, p0, Lo/PidHealthStats;->c:Ljava/util/HashMap;

    .line 198
    invoke-direct {p0, p1, v0}, Lo/PidHealthStats;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 197
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    .line 199
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/ProcessHealthStats;

    invoke-virtual {p1, p3, p4}, Lo/ProcessHealthStats;->c(Ljava/lang/Number;I)V

    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 16

    move-object/from16 v0, p0

    .line 225
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 226
    iget-object v2, v0, Lo/PidHealthStats;->n:Lo/SystemHealthManager;

    invoke-virtual {v2}, Lo/SystemHealthManager;->b()[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_4

    aget-object v6, v2, v5

    .line 227
    sget-object v7, Lo/PackageHealthStats;->b:[Ljava/lang/String;

    array-length v8, v7

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v8, :cond_3

    aget-object v10, v7, v9

    .line 228
    invoke-direct {v0, v6, v10}, Lo/PidHealthStats;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 230
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 232
    iget-object v12, v0, Lo/PidHealthStats;->c:Ljava/util/HashMap;

    invoke-virtual {v12, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/HashMap;

    invoke-virtual {v12}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_0
    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map$Entry;

    .line 233
    new-instance v14, Lorg/json/JSONObject;

    invoke-direct {v14}, Lorg/json/JSONObject;-><init>()V

    const-string v15, "name"

    .line 234
    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v14, v15, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "layout"

    .line 237
    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lo/ProcessHealthStats;

    invoke-virtual {v15}, Lo/ProcessHealthStats;->c()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v4, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 240
    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/ProcessHealthStats;

    invoke-virtual {v4}, Lo/ProcessHealthStats;->b()Ljava/util/Map;

    move-result-object v4

    .line 239
    invoke-static {v4}, Lo/PidHealthStats;->e(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v4

    const-string v13, "data"

    .line 241
    new-instance v15, Lorg/json/JSONObject;

    invoke-direct {v15, v4}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v14, v13, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 243
    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    if-eqz v4, :cond_0

    .line 244
    invoke-virtual {v11, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 248
    :cond_1
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 249
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4, v11}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, v10, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 255
    :cond_4
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    const-string v1, "{}"

    :goto_3
    return-object v1
.end method
