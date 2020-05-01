.class public final Lo/afD;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/netflix/cl/NetflixAppPlatform$NetflixAppPlatformImpl;


# instance fields
.field private a:Lcom/netflix/cl/Platform$ErrorReporter;

.field private b:Lcom/netflix/mediaclient/NetflixApplication;

.field private d:Lcom/netflix/cl/Platform$LocalLogger;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/NetflixApplication;)V
    .locals 1

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Lo/afD$2;

    invoke-direct {v0, p0}, Lo/afD$2;-><init>(Lo/afD;)V

    iput-object v0, p0, Lo/afD;->d:Lcom/netflix/cl/Platform$LocalLogger;

    .line 87
    new-instance v0, Lo/afD$4;

    invoke-direct {v0, p0}, Lo/afD$4;-><init>(Lo/afD;)V

    iput-object v0, p0, Lo/afD;->a:Lcom/netflix/cl/Platform$ErrorReporter;

    if-eqz p1, :cond_0

    .line 84
    iput-object p1, p0, Lo/afD;->b:Lcom/netflix/mediaclient/NetflixApplication;

    return-void

    .line 81
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "App can not be null!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getCurrentTimeInMs()J
    .locals 2

    .line 116
    invoke-static {}, Lo/adq;->f()J

    move-result-wide v0

    return-wide v0
.end method

.method public getErrorReporter()Lcom/netflix/cl/Platform$ErrorReporter;
    .locals 1

    .line 111
    iget-object v0, p0, Lo/afD;->a:Lcom/netflix/cl/Platform$ErrorReporter;

    return-object v0
.end method

.method public getLocalLogger()Lcom/netflix/cl/Platform$LocalLogger;
    .locals 1

    .line 106
    iget-object v0, p0, Lo/afD;->d:Lcom/netflix/cl/Platform$LocalLogger;

    return-object v0
.end method

.method public getLoggingSchema()Lcom/netflix/cl/model/LoggingSchema;
    .locals 1

    .line 125
    sget-object v0, Lcom/netflix/cl/model/LoggingSchema;->netflixApp:Lcom/netflix/cl/model/LoggingSchema;

    return-object v0
.end method

.method public getLoggingSource()Lcom/netflix/cl/model/LoggingSource;
    .locals 1

    .line 121
    sget-object v0, Lcom/netflix/cl/model/LoggingSource;->android:Lcom/netflix/cl/model/LoggingSource;

    return-object v0
.end method

.method public getSchemaVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "2.2.1-1.93.0"

    return-object v0
.end method

.method public reInit()V
    .locals 1

    .line 193
    iget-object v0, p0, Lo/afD;->b:Lcom/netflix/mediaclient/NetflixApplication;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/NetflixApplication;->D()V

    return-void
.end method
