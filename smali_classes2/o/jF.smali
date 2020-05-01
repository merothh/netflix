.class public final Lo/jF;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/SpinnerAdapter;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x4
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/jF$ActionBar;,
        Lo/jF$Application;
    }
.end annotation


# static fields
.field public static final c:Lo/jF$ActionBar;

.field private static final d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 47
    invoke-static {}, Lo/adk;->e()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lo/jF;->d:Z

    .line 50
    new-instance v0, Lo/jF$ActionBar;

    invoke-direct {v0}, Lo/jF$ActionBar;-><init>()V

    sput-object v0, Lo/jF;->c:Lo/jF$ActionBar;

    return-void
.end method

.method public constructor <init>(Lo/jF$Application;)V
    .locals 1

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 85
    invoke-static {v0, p1}, Lo/jF;->c(ZLo/jF$Application;)V

    return-void
.end method

.method private static synthetic a(Lo/jF$Application;ZLjava/lang/Thread$UncaughtExceptionHandler;Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 0

    .line 103
    invoke-interface {p0, p1, p3, p4, p2}, Lo/jF$Application;->a(ZLjava/lang/Thread;Ljava/lang/Throwable;Ljava/lang/Thread$UncaughtExceptionHandler;)V

    return-void
.end method

.method private static c(ZLo/jF$Application;)V
    .locals 2

    .line 101
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    .line 102
    new-instance v1, Lo/jD;

    invoke-direct {v1, p1, p0, v0}, Lo/jD;-><init>(Lo/jF$Application;ZLjava/lang/Thread$UncaughtExceptionHandler;)V

    invoke-static {v1}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    return-void
.end method

.method static synthetic e(Lo/jF$Application;ZLjava/lang/Thread$UncaughtExceptionHandler;Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lo/jF;->a(Lo/jF$Application;ZLjava/lang/Thread$UncaughtExceptionHandler;Ljava/lang/Thread;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 272
    sget-object v0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    invoke-virtual {v0}, Lcom/netflix/cl/Logger;->flush()V

    return-void
.end method

.method public a(Lcom/netflix/mediaclient/api/logging/error/ErrorType;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 145
    new-instance v0, Ljava/lang/Throwable;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/netflix/mediaclient/api/logging/error/ErrorType;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p3}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v0}, Lo/jF;->b(Ljava/lang/Throwable;)V

    return-void
.end method

.method public a(Lcom/netflix/mediaclient/api/logging/error/ErrorType;Ljava/lang/Throwable;)V
    .locals 2

    .line 226
    new-instance v0, Ljava/lang/Throwable;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/netflix/mediaclient/api/logging/error/ErrorType;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v0}, Lo/jF;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 198
    invoke-virtual {p0, p1}, Lo/jF;->b(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 265
    sget-object v0, Lo/jE;->b:Lo/jE$ActionBar;

    invoke-virtual {v0}, Lo/jE$ActionBar;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/jE;

    .line 266
    invoke-interface {v1, p1, p2}, Lo/jE;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 0

    .line 216
    invoke-virtual {p0, p1}, Lo/jF;->b(Ljava/lang/Throwable;)V

    return-void
.end method

.method public b(Lcom/netflix/mediaclient/api/logging/error/ErrorType;Ljava/lang/String;)V
    .locals 1

    .line 221
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/netflix/mediaclient/api/logging/error/ErrorType;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lo/jF;->a(Ljava/lang/String;)V

    return-void
.end method

.method public b(Lcom/netflix/mediaclient/api/logging/error/ErrorType;Ljava/lang/Throwable;)V
    .locals 2

    .line 140
    new-instance v0, Ljava/lang/Throwable;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/netflix/mediaclient/api/logging/error/ErrorType;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v0}, Lo/jF;->b(Ljava/lang/Throwable;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .line 119
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0, p1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lo/jF;->b(Ljava/lang/Throwable;)V

    return-void
.end method

.method public b(Ljava/lang/Throwable;)V
    .locals 4

    .line 156
    sget-object v0, Lo/jF;->c:Lo/jF$ActionBar;

    invoke-virtual {v0}, Lo/jF$ActionBar;->a()Z

    move-result v0

    const-string v1, "nf_log_crit"

    if-nez v0, :cond_0

    const-string v0, "Exception not sent to CL due to sampling"

    .line 157
    invoke-static {v1, v0}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 160
    invoke-static {p1, v0}, Lo/jB;->d(Ljava/lang/Throwable;Z)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "handledException"

    invoke-static {v2, v0, p1}, Lcom/netflix/cl/util/ExtCLUtils;->toError(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/Throwable;)Lcom/netflix/cl/model/Error;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 164
    :try_start_0
    sget-object v2, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    new-instance v3, Lcom/netflix/cl/model/event/discrete/ExceptionOccurred;

    invoke-virtual {v0}, Lcom/netflix/cl/model/Error;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/netflix/cl/model/event/discrete/ExceptionOccurred;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/netflix/cl/Logger;->logEvent(Lcom/netflix/cl/model/event/discrete/DiscreteEvent;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const-string v0, "HandledException"

    .line 166
    invoke-static {v1, v0, p1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_1
    const-string v0, "Unable to create an CLv2 error object, this should NOT happen"

    .line 168
    invoke-static {v1, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    :goto_0
    invoke-static {}, Lo/adk;->e()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lo/aek;->a()Z

    move-result v0

    if-nez v0, :cond_2

    .line 175
    :try_start_1
    const-class v0, Landroid/content/Context;

    invoke-static {v0}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0, p1}, Lo/NfcBarcode;->e(Landroid/content/Context;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    const-string v2, "Unable report handled exception via Insecticide"

    .line 177
    invoke-static {v1, v0, v2}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)I

    .line 181
    :cond_2
    :goto_1
    sget-object v0, Lo/jF;->c:Lo/jF$ActionBar;

    invoke-static {v0}, Lo/jF$ActionBar;->d(Lo/jF$ActionBar;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lo/jF;->c:Lo/jF$ActionBar;

    invoke-virtual {v0}, Lo/jF$ActionBar;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 182
    sget-object v0, Lo/jE;->b:Lo/jE$ActionBar;

    invoke-virtual {v0}, Lo/jE$ActionBar;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/jE;

    .line 183
    invoke-interface {v1, p1}, Lo/jE;->a(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_3
    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 207
    invoke-virtual {p0, p1, p2}, Lo/jF;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public e(Lcom/netflix/mediaclient/api/logging/error/ErrorType;Ljava/lang/String;)V
    .locals 1

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/netflix/mediaclient/api/logging/error/ErrorType;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lo/jF;->b(Ljava/lang/String;)V

    return-void
.end method

.method public e(Lcom/netflix/mediaclient/api/logging/error/ErrorType;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 231
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/netflix/mediaclient/api/logging/error/ErrorType;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p3}, Lo/jF;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 2

    .line 242
    invoke-static {p1}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 250
    :cond_0
    sget-object v0, Lo/jB;->c:Lo/jB;

    invoke-virtual {v0}, Lo/jB;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 252
    sget-object v0, Lo/jF;->c:Lo/jF$ActionBar;

    invoke-static {v0}, Lo/jF$ActionBar;->d(Lo/jF$ActionBar;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lo/jF;->c:Lo/jF$ActionBar;

    invoke-virtual {v0}, Lo/jF$ActionBar;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 253
    sget-object v0, Lo/jE;->b:Lo/jE$ActionBar;

    invoke-virtual {v0}, Lo/jE$ActionBar;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/jE;

    .line 254
    invoke-interface {v1, p1}, Lo/jE;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public e(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 130
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0, p1, p2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v0}, Lo/jF;->b(Ljava/lang/Throwable;)V

    return-void
.end method
