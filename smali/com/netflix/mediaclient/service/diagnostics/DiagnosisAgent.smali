.class public Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent;
.super Lcom/netflix/mediaclient/service/ServiceAgent;
.source "DiagnosisAgent.java"

# interfaces
.implements Lcom/netflix/mediaclient/servicemgr/IDiagnosis;


# static fields
.field private static final TAG:Ljava/lang/String; = "nf_service_diagnosisagent"

.field private static final name:Ljava/lang/String; = "name"

.field private static final ntwkDiagnostics:Ljava/lang/String; = "NetworkDiagnostics"

.field private static final resultArrayString:Ljava/lang/String; = "resultArray"

.field private static final source:Ljava/lang/String; = "source"


# instance fields
.field private mDiagnosisTool:Lcom/netflix/mediaclient/javabridge/ui/NetworkDiagnosis;

.field private mIndex:I

.field private mIsDiagnosisOngoing:Z

.field private mListener:Lcom/netflix/mediaclient/servicemgr/IDiagnosis$DiagnosisListener;

.field private mNrdp:Lcom/netflix/mediaclient/javabridge/ui/Nrdp;

.field private mNtwkListener:Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent$NetworkListener;

.field private mResultList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/netflix/mediaclient/service/diagnostics/UrlNetworkState;",
            ">;"
        }
    .end annotation
.end field

.field private mUrlList:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 27
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/ServiceAgent;-><init>()V

    .line 36
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "http://android.nccp.netflix.com"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string/jumbo v2, "http://ichnaea.netflix.com"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "http://www.google.com"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent;->mUrlList:[Ljava/lang/String;

    .line 47
    iput-boolean v3, p0, Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent;->mIsDiagnosisOngoing:Z

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent;->mListener:Lcom/netflix/mediaclient/servicemgr/IDiagnosis$DiagnosisListener;

    return-void
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent;)I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent;->mIndex:I

    return v0
.end method

.method static synthetic access$104(Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent;)I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent;->mIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent;->mIndex:I

    return v0
.end method

.method static synthetic access$200(Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent;->mResultList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent;->runTestForCurrentIndex()V

    return-void
.end method

.method private getResultString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 118
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 119
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 120
    iget-object v0, p0, Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent;->mResultList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/diagnostics/UrlNetworkState;

    .line 121
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/diagnostics/UrlNetworkState;->toJson()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 127
    :catch_0
    move-exception v0

    .line 128
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    .line 123
    :cond_0
    :try_start_1
    const-string/jumbo v0, "name"

    const-string/jumbo v3, "NetworkDiagnostics"

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 124
    const-string/jumbo v0, "source"

    const-string/jumbo v3, "DiagnosticPage"

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 125
    const-string/jumbo v0, "resultArray"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 126
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_1
.end method

.method private isTestSuccess()Z
    .locals 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent;->mResultList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/diagnostics/UrlNetworkState;

    .line 94
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/diagnostics/UrlNetworkState;->getResult()I

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    const/4 v0, 0x0

    .line 98
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private notifyDiagnosisComplete()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 102
    iget-object v0, p0, Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent;->mListener:Lcom/netflix/mediaclient/servicemgr/IDiagnosis$DiagnosisListener;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent;->mIsDiagnosisOngoing:Z

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent;->mListener:Lcom/netflix/mediaclient/servicemgr/IDiagnosis$DiagnosisListener;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IDiagnosis$DiagnosisListener;->onDiagnosisComplete()V

    .line 104
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent;->isTestSuccess()Z

    move-result v0

    .line 106
    if-eqz v0, :cond_1

    .line 107
    new-instance v0, Lcom/netflix/mediaclient/javabridge/ui/LogArguments;

    sget-object v1, Lcom/netflix/mediaclient/javabridge/ui/LogArguments$LogLevel;->DEBUG:Lcom/netflix/mediaclient/javabridge/ui/LogArguments$LogLevel;

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent;->getResultString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "NetworkDiagnostics"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/netflix/mediaclient/javabridge/ui/LogArguments;-><init>(Lcom/netflix/mediaclient/javabridge/ui/LogArguments$LogLevel;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 111
    :goto_0
    iget-object v1, p0, Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent;->mNrdp:Lcom/netflix/mediaclient/javabridge/ui/Nrdp;

    invoke-interface {v1}, Lcom/netflix/mediaclient/javabridge/ui/Nrdp;->getLog()Lcom/netflix/mediaclient/javabridge/ui/Log;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/javabridge/ui/Log;->log(Lcom/netflix/mediaclient/javabridge/ui/LogArguments;)V

    .line 113
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent;->mIsDiagnosisOngoing:Z

    .line 114
    return-void

    .line 109
    :cond_1
    new-instance v0, Lcom/netflix/mediaclient/javabridge/ui/LogArguments;

    sget-object v1, Lcom/netflix/mediaclient/javabridge/ui/LogArguments$LogLevel;->ERROR:Lcom/netflix/mediaclient/javabridge/ui/LogArguments$LogLevel;

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent;->getResultString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "NetworkDiagnostics"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/netflix/mediaclient/javabridge/ui/LogArguments;-><init>(Lcom/netflix/mediaclient/javabridge/ui/LogArguments$LogLevel;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0
.end method

.method private runTestForCurrentIndex()V
    .locals 3

    .prologue
    .line 81
    iget v0, p0, Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent;->mIndex:I

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent;->mIndex:I

    iget-object v1, p0, Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent;->mUrlList:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 82
    iget-object v0, p0, Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent;->mResultList:Ljava/util/ArrayList;

    iget v1, p0, Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent;->mIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/diagnostics/UrlNetworkState;

    sget-object v1, Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent$UrlStatus;->TEST_ONGOING:Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent$UrlStatus;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/diagnostics/UrlNetworkState;->setStatus(Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent$UrlStatus;)V

    .line 83
    iget-object v0, p0, Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent;->mDiagnosisTool:Lcom/netflix/mediaclient/javabridge/ui/NetworkDiagnosis;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent;->mUrlList:[Ljava/lang/String;

    iget v2, p0, Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent;->mIndex:I

    aget-object v1, v1, v2

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/javabridge/ui/NetworkDiagnosis;->get(Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent;->mListener:Lcom/netflix/mediaclient/servicemgr/IDiagnosis$DiagnosisListener;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent;->mListener:Lcom/netflix/mediaclient/servicemgr/IDiagnosis$DiagnosisListener;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IDiagnosis$DiagnosisListener;->onDiagnosisListUpdated()V

    .line 90
    :cond_0
    :goto_0
    return-void

    .line 88
    :cond_1
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent;->notifyDiagnosisComplete()V

    goto :goto_0
.end method


# virtual methods
.method public abortDiagnosis()V
    .locals 2

    .prologue
    .line 191
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 192
    const-string/jumbo v0, "nf_service_diagnosisagent"

    const-string/jumbo v1, "abortDiagnosis"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent;->mIsDiagnosisOngoing:Z

    .line 195
    iget-object v0, p0, Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent;->mResultList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 196
    const/4 v0, -0x1

    iput v0, p0, Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent;->mIndex:I

    .line 197
    return-void
.end method

.method public addListener(Lcom/netflix/mediaclient/servicemgr/IDiagnosis$DiagnosisListener;)V
    .locals 0

    .prologue
    .line 169
    iput-object p1, p0, Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent;->mListener:Lcom/netflix/mediaclient/servicemgr/IDiagnosis$DiagnosisListener;

    .line 170
    return-void
.end method

.method protected doInit()V
    .locals 3

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent;->getNrdController()Lcom/netflix/mediaclient/service/NrdController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/NrdController;->getNrdp()Lcom/netflix/mediaclient/javabridge/ui/Nrdp;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent;->mNrdp:Lcom/netflix/mediaclient/javabridge/ui/Nrdp;

    .line 66
    iget-object v0, p0, Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent;->mNrdp:Lcom/netflix/mediaclient/javabridge/ui/Nrdp;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent;->mNrdp:Lcom/netflix/mediaclient/javabridge/ui/Nrdp;

    invoke-interface {v0}, Lcom/netflix/mediaclient/javabridge/ui/Nrdp;->isReady()Z

    move-result v0

    if-nez v0, :cond_1

    .line 67
    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/android/app/CommonStatus;->NRD_ERROR:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent;->initCompleted(Lcom/netflix/mediaclient/android/app/Status;)V

    .line 68
    const-string/jumbo v0, "nf_service_diagnosisagent"

    const-string/jumbo v1, "NRDP is NOT READY"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    :goto_0
    return-void

    .line 72
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent;->mNrdp:Lcom/netflix/mediaclient/javabridge/ui/Nrdp;

    invoke-interface {v0}, Lcom/netflix/mediaclient/javabridge/ui/Nrdp;->getDiagnosisTool()Lcom/netflix/mediaclient/javabridge/ui/NetworkDiagnosis;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent;->mDiagnosisTool:Lcom/netflix/mediaclient/javabridge/ui/NetworkDiagnosis;

    .line 73
    new-instance v0, Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent$NetworkListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent$NetworkListener;-><init>(Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent;Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent$1;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent;->mNtwkListener:Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent$NetworkListener;

    .line 74
    iget-object v0, p0, Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent;->mDiagnosisTool:Lcom/netflix/mediaclient/javabridge/ui/NetworkDiagnosis;

    const-string/jumbo v1, "INetwork"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent;->mNtwkListener:Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent$NetworkListener;

    invoke-interface {v0, v1, v2}, Lcom/netflix/mediaclient/javabridge/ui/NetworkDiagnosis;->addEventListener(Ljava/lang/String;Lcom/netflix/mediaclient/javabridge/ui/EventListener;)V

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent;->mResultList:Ljava/util/ArrayList;

    .line 76
    sget-object v0, Lcom/netflix/mediaclient/android/app/CommonStatus;->OK:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent;->initCompleted(Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0
.end method

.method public getNetworkStateList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/service/diagnostics/UrlNetworkState;",
            ">;"
        }
    .end annotation

    .prologue
    .line 206
    iget-object v0, p0, Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent;->mResultList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public isDiagnosisOngoing()Z
    .locals 1

    .prologue
    .line 201
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent;->mIsDiagnosisOngoing:Z

    return v0
.end method

.method public removeListener()V
    .locals 1

    .prologue
    .line 174
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent;->mListener:Lcom/netflix/mediaclient/servicemgr/IDiagnosis$DiagnosisListener;

    .line 175
    return-void
.end method

.method public startNetworkDiagnosis()V
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 179
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent;->abortDiagnosis()V

    .line 180
    iput v0, p0, Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent;->mIndex:I

    .line 181
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent;->mIsDiagnosisOngoing:Z

    .line 182
    iget-object v1, p0, Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent;->mUrlList:[Ljava/lang/String;

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 183
    iget-object v4, p0, Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent;->mResultList:Ljava/util/ArrayList;

    new-instance v5, Lcom/netflix/mediaclient/service/diagnostics/UrlNetworkState;

    sget-object v6, Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent$UrlStatus;->NOT_TESTED:Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent$UrlStatus;

    invoke-direct {v5, v3, v6}, Lcom/netflix/mediaclient/service/diagnostics/UrlNetworkState;-><init>(Ljava/lang/String;Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent$UrlStatus;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 182
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 186
    :cond_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent;->runTestForCurrentIndex()V

    .line 187
    return-void
.end method
